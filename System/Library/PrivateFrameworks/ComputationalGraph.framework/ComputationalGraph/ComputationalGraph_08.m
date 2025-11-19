uint64_t sub_1C6E9D5FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9D644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9D6B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E9D72C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_137;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6E9D784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9D824(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9D890()
{
  sub_1C6E9F550(&qword_1EC1F9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9D90C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5CA54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6E9D9B4()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212E90);
  __swift_project_value_buffer(v0, qword_1EC212E90);
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

uint64_t sub_1C6E9DBC4()
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

uint64_t sub_1C6E9DC60()
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
        v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6E9DD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6E9DD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9DE10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E9DE84(uint64_t a1, uint64_t a2))()
{
  result = nullsub_138;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6E9DEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90D8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9DF7C(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9DFE8()
{
  sub_1C6E9F550(&qword_1EC1F9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9E068()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212EA8);
  __swift_project_value_buffer(v0, qword_1EC212EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requested_api_names";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input_features";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "retention_policy_data";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6E9E27C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
          sub_1C6E9F550(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6E9E39C();
          break;
        case 1:
          sub_1C6EE4570();
          break;
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6E9E39C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C6EE46B0(), !v4))
  {
    result = sub_1C6E9E570(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData(0);
        sub_1C6E9F550(&qword_1EC1F8070, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RetentionPolicyData);
        sub_1C6EE46D0();
      }

      v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6E9E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  sub_1C6EA130C(a1 + *(v14 + 28), v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EA1374(v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9E780@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  v5 = &a2[*(a1 + 24)];
  sub_1C6EE4420();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6E9E828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6E9E89C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6E9E910(uint64_t a1, uint64_t a2))()
{
  result = nullsub_139;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6E9E968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9EA08(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9EA74()
{
  sub_1C6E9F550(&qword_1EDEF6330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9EB14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
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

uint64_t sub_1C6E9EC84()
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
      sub_1C6E9ECF8();
    }
  }

  return result;
}

uint64_t sub_1C6E9ECF8()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6E9EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6E9EE04(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6E9EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0);
  sub_1C6EA130C(a1 + *(v14 + 20), v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EA1374(v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6E9FD60(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9F550(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6E9FDC8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6E9F014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6E9F0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6E9F110(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6E9F1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6E9F550(&qword_1EC1F90E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6E9F26C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6E9F308(uint64_t a1)
{
  v2 = sub_1C6E9F550(&qword_1EC1F9010, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6E9F374()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E9F3CC()
{
  sub_1C6E9F550(&qword_1EC1F9010, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6E9F448()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E9F550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E9F8A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E9FD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E9FDC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E9FE28(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if ((sub_1C6E59BCC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_DefaultFeatures(0);
  v28 = a2;
  v17 = *(v27 + 24);
  v18 = *(v13 + 48);
  sub_1C6EA130C(a1 + v17, v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6EA130C(v28 + v17, &v16[v18], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EA130C(v16, v12, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1C6E9FD60(&v16[v18], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v12, *v8))
      {
        v25 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v26 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if (v26)
        {
          goto LABEL_5;
        }

LABEL_10:
        v21 = 0;
        return v21 & 1;
      }

      sub_1C6E9FDC8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v22 = &qword_1EC1F7D68;
      v23 = &unk_1C6EE89B0;
LABEL_9:
      sub_1C6EA1374(v16, v22, v23);
      goto LABEL_10;
    }

    sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_8:
    v22 = &qword_1EC1F7D70;
    v23 = &unk_1C6EF2EA0;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_5:
  v20 = *(v27 + 20);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6EA023C(void *a1, void *a2)
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

  v6 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding(0) + 28);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA032C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v27 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiResponse(0) + 20);
  v18 = *(v13 + 56);
  v27[1] = a1;
  sub_1C6EA130C(a1 + v17, v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6EA130C(a2 + v17, &v16[v18], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EA130C(v16, v11, &qword_1EC1F7D68, &unk_1C6EE89B0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v27[0];
      sub_1C6E9FD60(&v16[v18], v27[0], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      if (sub_1C6E227C4(*v11, *v24))
      {
        v25 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v26 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
        sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
        if (v26)
        {
          goto LABEL_4;
        }

LABEL_9:
        v20 = 0;
        return v20 & 1;
      }

      sub_1C6E9FDC8(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
      v21 = &qword_1EC1F7D68;
      v22 = &unk_1C6EE89B0;
LABEL_8:
      sub_1C6EA1374(v16, v21, v22);
      goto LABEL_9;
    }

    sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_7:
    v21 = &qword_1EC1F7D70;
    v22 = &unk_1C6EF2EA0;
    goto LABEL_8;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
LABEL_4:
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v20 = sub_1C6EE4A50();
  return v20 & 1;
}

uint64_t sub_1C6EA071C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  if ((sub_1C6E59BCC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiRequest(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v31 = v17;
  v32 = v19;
  sub_1C6EA130C(v19 + v18, v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v21 = a2 + v18;
  v22 = a2;
  sub_1C6EA130C(v21, &v16[v20], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  sub_1C6EA130C(v16, v12, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_9:
    v26 = &qword_1EC1F7D70;
    v27 = &unk_1C6EF2EA0;
LABEL_10:
    sub_1C6EA1374(v16, v26, v27);
    goto LABEL_11;
  }

  sub_1C6E9FD60(&v16[v20], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v12, *v8) & 1) == 0)
  {
    sub_1C6E9FDC8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v26 = &qword_1EC1F7D68;
    v27 = &unk_1C6EE89B0;
    goto LABEL_10;
  }

  v29 = *(v4 + 20);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v22 = a2;
  v30 = sub_1C6EE4A50();
  sub_1C6E9FDC8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6E9FDC8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EA1374(v16, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((sub_1C6E5C428(v32[1], v22[1]) & 1) == 0)
  {
LABEL_11:
    v25 = 0;
    return v25 & 1;
  }

  v24 = *(v31 + 24);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v25 = sub_1C6EE4A50();
  return v25 & 1;
}

uint64_t sub_1C6EA0B4C(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v32 = a1;
  v17 = *(v31 + 24);
  v18 = *(v13 + 56);
  sub_1C6EA130C(a1 + v17, v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6EA130C(a2 + v17, &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EA130C(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v23 = v30;
      sub_1C6E9FD60(&v16[v18], v30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v24 = *v11 == *v23 && v11[1] == v23[1];
      if (v24 || (sub_1C6EE54B0() & 1) != 0)
      {
        v25 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v26 = sub_1C6EE4A50();
        sub_1C6E9FDC8(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EA1374(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v26 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }

      sub_1C6E9FDC8(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EA1374(v16, v20, v21);
      goto LABEL_8;
    }

    sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EA1374(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_15:
  if (*v32 == *a2 && v32[1] == a2[1] || (sub_1C6EE54B0() & 1) != 0)
  {
    v27 = *(v31 + 20);
    sub_1C6EE4430();
    sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6EE4A50();
    return v22 & 1;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6EA0F7C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF8, &unk_1C6EF23C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F90B8, &unk_1C6EF2E90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpec(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_1C6EA130C(a1 + v17, v16, &qword_1EC1F7EF8, &unk_1C6EF23C0);
  sub_1C6EA130C(a2 + v17, &v16[v18], &qword_1EC1F7EF8, &unk_1C6EF23C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EA130C(v16, v11, &qword_1EC1F7EF8, &unk_1C6EF23C0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_1C6E9FD60(&v16[v18], v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      v21 = sub_1C6EA0B4C(v11, v20);
      sub_1C6E9FDC8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
      sub_1C6EA1374(v16, &qword_1EC1F7EF8, &unk_1C6EF23C0);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    sub_1C6E9FDC8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiSpecHeader);
LABEL_6:
    sub_1C6EA1374(v16, &qword_1EC1F90B8, &unk_1C6EF2E90);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EA1374(v16, &qword_1EC1F7EF8, &unk_1C6EF23C0);
LABEL_8:
  v22 = v29;
  if ((sub_1C6E5CA94(*v29, *a2) & 1) == 0 || (sub_1C6E5CAE8(v22[1], a2[1]) & 1) == 0 || (sub_1C6E5CCDC(v22[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = *(v27 + 28);
  sub_1C6EE4430();
  sub_1C6E9F550(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v24 = sub_1C6EE4A50();
  return v24 & 1;
}

uint64_t sub_1C6EA130C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EA1374(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6EA13FC()
{
  sub_1C6E9B434(319, &qword_1EC1F90F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Gambit_TabiApiBinding, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA14D8()
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

void sub_1C6EA1594()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6E9B434(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA17C0()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EA18B4(319, qword_1EDEF7AC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    if (v1 <= 0x3F)
    {
      sub_1C6EA18B4(319, qword_1EDEF6C28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EA18B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1C6EA1950()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EA18B4(319, qword_1EDEF6878, MEMORY[0x1E69AA900]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA1A5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6EE49E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6EA1BB0()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C6EA1D28()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6EA1DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1C6EA1F20(319, a4);
  if (v4 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EA1F20(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C6EA1F94()
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6EA8620(&qword_1EDEF6318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA208C()
{
  if (!*(*v0 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0), sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures), sub_1C6EA8620(&qword_1EDEF6318, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures), result = sub_1C6EE4610(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6EA21FC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_142;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA2268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA2308(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA2374()
{
  sub_1C6EA8620(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA2408()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212EF0);
  __swift_project_value_buffer(v0, qword_1EC212EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "features";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA25D0()
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
      sub_1C6EA2664();
    }

    else if (result == 2)
    {
      sub_1C6EA2718();
    }
  }

  return result;
}

uint64_t sub_1C6EA2664()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA2718()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EA283C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EA2A58(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EAAB70(a1 + *(v14 + 20), v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EAABD8(v8, &qword_1EC1F7D68, &unk_1C6EE89B0);
  }

  sub_1C6EAAB08(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE46E0();
  return sub_1C6EAAAA8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

uint64_t sub_1C6EA2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  sub_1C6EAAB70(a1 + *(v14 + 24), v8, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EAABD8(v8, &qword_1EC1F7D58, &qword_1C6EE89A0);
  }

  sub_1C6EAAB08(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EE46E0();
  return sub_1C6EAAAA8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
}

uint64_t sub_1C6EA2C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EA2D54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EA2DBC(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EA2E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA2F18(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA2F84()
{
  sub_1C6EA8620(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA3024()
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  sub_1C6EA8620(&qword_1EDEF7BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA311C()
{
  if (!*(*v0 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0), sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature), sub_1C6EA8620(&qword_1EDEF7BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature), result = sub_1C6EE4610(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6EA328C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_144;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA32F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA3398(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA3404()
{
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA3498()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212F20);
  __swift_project_value_buffer(v0, qword_1EC212F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C6EEA120;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "float_list";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6EE46F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "int32_list";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int64_list";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bytes_list";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "float16_list";
  *(v14 + 8) = 12;
  *(v14 + 16) = 2;
  v8();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA3728(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C6EA3830(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6EA3DE0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6EA439C(v5, a1, a2, a3);
          break;
        case 4:
          sub_1C6EA4958(v5, a1, a2, a3);
          break;
        case 5:
          sub_1C6EA4F14(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6EA3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F91F8, &qword_1C6EF4150);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C6EAAB70(a1, v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C6EAAB08(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C6EAAAA8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v33 = v48;
    }

    else
    {
      sub_1C6EAABD8(v28, &qword_1EC1F91F8, &qword_1C6EF4150);
      v35 = v43;
      sub_1C6EAAB08(v20, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      sub_1C6EAAB08(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v37 = v47;
  sub_1C6EE45A0();
  if (v37)
  {
    return sub_1C6EAABD8(v28, &qword_1EC1F91F8, &qword_1C6EF4150);
  }

  sub_1C6EAAB70(v28, v36, &qword_1EC1F91F8, &qword_1C6EF4150);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C6EAABD8(v28, &qword_1EC1F91F8, &qword_1C6EF4150);
    return sub_1C6EAABD8(v36, &qword_1EC1F91F8, &qword_1C6EF4150);
  }

  else
  {
    v39 = v44;
    sub_1C6EAAB08(v36, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (v32 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v28, &qword_1EC1F91F8, &qword_1C6EF4150);
    v40 = v42;
    sub_1C6EAABD8(v42, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v39, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C6EA3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9200, &qword_1C6EF4158);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C6EAAB70(a1, v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C6EAAB08(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6EAABD8(v28, &qword_1EC1F9200, &qword_1C6EF4158);
      v35 = v44;
      sub_1C6EAAB08(v20, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      sub_1C6EAAB08(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C6EAAAA8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v37 = v47;
  sub_1C6EE45A0();
  if (v37)
  {
    return sub_1C6EAABD8(v28, &qword_1EC1F9200, &qword_1C6EF4158);
  }

  sub_1C6EAAB70(v28, v36, &qword_1EC1F9200, &qword_1C6EF4158);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C6EAABD8(v28, &qword_1EC1F9200, &qword_1C6EF4158);
    return sub_1C6EAABD8(v36, &qword_1EC1F9200, &qword_1C6EF4158);
  }

  else
  {
    v39 = v43;
    sub_1C6EAAB08(v36, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    if (v32 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v28, &qword_1EC1F9200, &qword_1C6EF4158);
    v40 = v42;
    sub_1C6EAABD8(v42, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v39, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C6EA439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9208, &qword_1C6EF4160);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C6EAAB70(a1, v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C6EAAB08(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6EAABD8(v28, &qword_1EC1F9208, &qword_1C6EF4160);
      v35 = v44;
      sub_1C6EAAB08(v20, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      sub_1C6EAAB08(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C6EAAAA8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v37 = v47;
  sub_1C6EE45A0();
  if (v37)
  {
    return sub_1C6EAABD8(v28, &qword_1EC1F9208, &qword_1C6EF4160);
  }

  sub_1C6EAAB70(v28, v36, &qword_1EC1F9208, &qword_1C6EF4160);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C6EAABD8(v28, &qword_1EC1F9208, &qword_1C6EF4160);
    return sub_1C6EAABD8(v36, &qword_1EC1F9208, &qword_1C6EF4160);
  }

  else
  {
    v39 = v43;
    sub_1C6EAAB08(v36, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    if (v32 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v28, &qword_1EC1F9208, &qword_1C6EF4160);
    v40 = v42;
    sub_1C6EAABD8(v42, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v39, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C6EA4958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9210, &qword_1C6EF4168);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C6EAAB70(a1, v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C6EAAB08(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6EAABD8(v28, &qword_1EC1F9210, &qword_1C6EF4168);
      v35 = v44;
      sub_1C6EAAB08(v20, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      sub_1C6EAAB08(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C6EAAAA8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v37 = v47;
  sub_1C6EE45A0();
  if (v37)
  {
    return sub_1C6EAABD8(v28, &qword_1EC1F9210, &qword_1C6EF4168);
  }

  sub_1C6EAAB70(v28, v36, &qword_1EC1F9210, &qword_1C6EF4168);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C6EAABD8(v28, &qword_1EC1F9210, &qword_1C6EF4168);
    return sub_1C6EAABD8(v36, &qword_1EC1F9210, &qword_1C6EF4168);
  }

  else
  {
    v39 = v43;
    sub_1C6EAAB08(v36, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (v32 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v28, &qword_1EC1F9210, &qword_1C6EF4168);
    v40 = v42;
    sub_1C6EAABD8(v42, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v39, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C6EA4F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_1C6EAAB70(a1, v14, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_1C6EAABD8(v14, &qword_1EC1F7A98, &qword_1C6EE7840);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_1C6EAAB08(v14, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6EAAB08(v22, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C6EAABD8(v28, &qword_1EC1F8328, &unk_1C6EEC750);
      v35 = v44;
      sub_1C6EAAB08(v20, v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6EAAB08(v35, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_1C6EAAAA8(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v37 = v47;
  sub_1C6EE45A0();
  if (v37)
  {
    return sub_1C6EAABD8(v28, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EAAB70(v28, v36, &qword_1EC1F8328, &unk_1C6EEC750);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_1C6EAABD8(v28, &qword_1EC1F8328, &unk_1C6EEC750);
    return sub_1C6EAABD8(v36, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  else
  {
    v39 = v43;
    sub_1C6EAAB08(v36, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v32 != 1)
    {
      sub_1C6EE44C0();
    }

    sub_1C6EAABD8(v28, &qword_1EC1F8328, &unk_1C6EEC750);
    v40 = v42;
    sub_1C6EAABD8(v42, &qword_1EC1F7A98, &qword_1C6EE7840);
    sub_1C6EAAB08(v39, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_1C6EA54D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1C6EAAB70(v3, &v16 - v10, &qword_1EC1F7A98, &qword_1C6EE7840);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6EA58FC(v3, a1, a2, a3);
    }

    else
    {
      sub_1C6EA56C8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C6EA5B34(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C6EA5D6C(v3, a1, a2, a3);
  }

  else
  {
    sub_1C6EA5FA4(v3, a1, a2, a3);
  }

  result = sub_1C6EAAAA8(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v8, &qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6EAABD8(v8, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6EAAB08(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  result = sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA58FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v8, &qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6EAABD8(v8, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6EAAB08(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  result = sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v8, &qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6EAABD8(v8, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6EAAB08(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  result = sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v8, &qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6EAABD8(v8, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6EAAB08(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  result = sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EAAB70(a1, v8, &qword_1EC1F7A98, &qword_1C6EE7840);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6EAABD8(v8, &qword_1EC1F7A98, &qword_1C6EE7840);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6EAAB08(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EE46E0();
    return sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  result = sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6EA61DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EA6268(uint64_t a1, uint64_t a2))()
{
  result = nullsub_145;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA62C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F91F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6360(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA63CC()
{
  sub_1C6EA8620(qword_1EDEF7BB8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return sub_1C6EE45F0();
}

uint64_t (*sub_1C6EA6488(uint64_t a1, uint64_t a2))()
{
  result = nullsub_146;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA651C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9218, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA65BC(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6628()
{
  sub_1C6EA8620(qword_1EDEF7910, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t (*sub_1C6EA6784(uint64_t a1, uint64_t a2))()
{
  result = nullsub_147;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA6818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9220, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA68B8(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6924()
{
  sub_1C6EA8620(qword_1EDEF7870, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return sub_1C6EE45F0();
}

uint64_t (*sub_1C6EA69F4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_148;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA6A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9228, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6B28(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6B94()
{
  sub_1C6EA8620(&qword_1EC1F9178, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA6C48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t (*sub_1C6EA6CE4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_149;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA6D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9230, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA6E18(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA6E84()
{
  sub_1C6EA8620(qword_1EDEF79B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA6F38()
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
      sub_1C6EE4520();
    }
  }

  return result;
}

uint64_t sub_1C6EA6FA8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1C6EE4670();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) + 20);
  return sub_1C6EE4410();
}

uint64_t sub_1C6EA7074@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1C6EE6B50;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EA70BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_150;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA7114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA71B4(uint64_t a1)
{
  v2 = sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA7220()
{
  sub_1C6EA8620(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C6E6B56C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA7348()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FB0);
  __swift_project_value_buffer(v0, qword_1EC212FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "last_modified";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "features_serialized_bytes_count";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EA7510()
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
      sub_1C6EA75A0();
    }

    else if (result == 2)
    {
      sub_1C6EE4560();
    }
  }

  return result;
}

uint64_t sub_1C6EA75A0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0) + 24);
  sub_1C6EE43E0();
  sub_1C6EA8620(qword_1EDEF6220, MEMORY[0x1E69AA900]);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EA7654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EA76F0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE46A0();
    }

    v6 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_1C6EE43E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  sub_1C6EAAB70(a1 + *(v14 + 24), v8, &qword_1EC1F7D48, &qword_1C6EE8990);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EAABD8(v8, &qword_1EC1F7D48, &qword_1C6EE8990);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6EA8620(qword_1EDEF6220, MEMORY[0x1E69AA900]);
  sub_1C6EE46E0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C6EA790C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = sub_1C6EE43E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6EA79AC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_151;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA7A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9240, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA7AA4(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA7B10()
{
  sub_1C6EA8620(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA7BB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
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

uint64_t sub_1C6EA7D20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1C6EA7DA4()
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EA8620(&qword_1EC1F91B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EA7E9C()
{
  if (!*(*v0 + 16) || (sub_1C6EE4400(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0), sub_1C6EA8620(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features), sub_1C6EA8620(&qword_1EC1F91B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features), result = sub_1C6EE4610(), !v3))
  {
    v2 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EA7FF0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  *a3 = a2(MEMORY[0x1E69E7CC0]);
  v5 = a3 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t sub_1C6EA8050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EA80C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EA8138(uint64_t a1, uint64_t a2))()
{
  result = nullsub_152;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EA81A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EA8620(&qword_1EC1F9248, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EA8244@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6EA82E0(uint64_t a1)
{
  v2 = sub_1C6EA8620(&qword_1EC1F9128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EA834C()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EA83A4()
{
  sub_1C6EA8620(&qword_1EC1F9128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturesStore);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EA8420()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EA848C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EA85A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EA8620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6EA9238(void *a1, void *a2)
{
  v4 = sub_1C6EE43E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D50, &qword_1C6EE8998);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C6EAAB70(a1 + v17, v16, &qword_1EC1F7D48, &qword_1C6EE8990);
  v29 = a2;
  sub_1C6EAAB70(a2 + v17, &v16[v18], &qword_1EC1F7D48, &qword_1C6EE8990);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6EAABD8(v16, &qword_1EC1F7D48, &qword_1C6EE8990);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6EAAB70(v16, v11, &qword_1EC1F7D48, &qword_1C6EE8990);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1C6EAABD8(v16, &qword_1EC1F7D50, &qword_1C6EE8998);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_1C6EA8620(&qword_1EC1F7D80, MEMORY[0x1E69AA900]);
  v21 = sub_1C6EE4A50();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_1C6EAABD8(v16, &qword_1EC1F7D48, &qword_1C6EE8990);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *v29)
  {
    goto LABEL_10;
  }

  v23 = *(v26 + 20);
  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v24 = sub_1C6EE4A50();
  return v24 & 1;
}

uint64_t sub_1C6EA95F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v47 - v9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D60, &qword_1C6EE89A8);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D70, &unk_1C6EF2EA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6EAAB70(a1 + v25, v24, &qword_1EC1F7D68, &unk_1C6EE89B0);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6EAAB70(v27, &v24[v26], &qword_1EC1F7D68, &unk_1C6EE89B0);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      sub_1C6EAABD8(v24, &qword_1EC1F7D68, &unk_1C6EE89B0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6EAAB70(v24, v19, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    sub_1C6EAAAA8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
LABEL_9:
    v35 = &qword_1EC1F7D70;
    v36 = &unk_1C6EF2EA0;
LABEL_10:
    v37 = v24;
LABEL_11:
    sub_1C6EAABD8(v37, v35, v36);
    goto LABEL_12;
  }

  v40 = v50;
  sub_1C6EAAB08(&v24[v26], v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  if ((sub_1C6E227C4(*v19, *v40) & 1) == 0)
  {
    sub_1C6EAAAA8(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    sub_1C6EAAAA8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v35 = &qword_1EC1F7D68;
    v36 = &unk_1C6EE89B0;
    goto LABEL_10;
  }

  v41 = *(v12 + 20);
  sub_1C6EE4430();
  sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v42 = sub_1C6EE4A50();
  sub_1C6EAAAA8(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EAAAA8(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EAABD8(v24, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  sub_1C6EAAB70(v56 + v30, v55, &qword_1EC1F7D58, &qword_1C6EE89A0);
  sub_1C6EAAB70(v28 + v30, v32 + v31, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_1C6EAABD8(v32, &qword_1EC1F7D58, &qword_1C6EE89A0);
LABEL_22:
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v38 = sub_1C6EE4A50();
      return v38 & 1;
    }

    goto LABEL_19;
  }

  v43 = v49;
  sub_1C6EAAB70(v32, v49, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_1C6EAAAA8(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
LABEL_19:
    v35 = &qword_1EC1F7D60;
    v36 = &qword_1C6EE89A8;
    v37 = v32;
    goto LABEL_11;
  }

  v44 = v32 + v31;
  v45 = v48;
  sub_1C6EAAB08(v44, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  v46 = sub_1C6EA9238(v43, v45);
  sub_1C6EAAAA8(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EAAAA8(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  sub_1C6EAABD8(v32, &qword_1EC1F7D58, &qword_1C6EE89A0);
  if (v46)
  {
    goto LABEL_22;
  }

LABEL_12:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1C6EA9CA4(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
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
LABEL_10:
    v8 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0) + 20);
    sub_1C6EE4430();
    sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    return sub_1C6EE4A50() & 1;
  }

  else
  {
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
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EA9D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D20, &qword_1C6EE94E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1C6EAAB70(a1, &v24 - v16, &qword_1EC1F7A98, &qword_1C6EE7840);
  sub_1C6EAAB70(a2, &v17[v18], &qword_1EC1F7A98, &qword_1C6EE7840);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1C6EAABD8(v17, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_9:
      v22 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6EAAB70(v17, v12, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_6:
    sub_1C6EAABD8(v17, &qword_1EC1F7D20, &qword_1C6EE94E0);
    goto LABEL_7;
  }

  sub_1C6EAAB08(&v17[v18], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v21 = sub_1C6EAA0D8(v12, v8);
  sub_1C6EAAAA8(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6EAAAA8(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6EAABD8(v17, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6EAA0D8(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v2 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v6 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v72 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v71 = (&v65 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v65 - v23);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v65 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F91D8, &unk_1C6EF4140);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v65 - v33;
  v35 = *(v32 + 56);
  sub_1C6EAAA44(v73, &v65 - v33);
  sub_1C6EAAA44(v74, &v34[v35]);
  v74 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v74;
      sub_1C6EAAA44(v74, v24);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v44 = v37 + v35;
        v45 = v68;
        sub_1C6EAAB08(v44, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        if (sub_1C6E6F908(*v24, *v45))
        {
          v46 = *(v65 + 20);
          sub_1C6EE4430();
          sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
          if (sub_1C6EE4A50())
          {
            v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
            sub_1C6EAAAA8(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
            v42 = v24;
            goto LABEL_25;
          }
        }

        v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
        sub_1C6EAAAA8(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v60 = v24;
LABEL_42:
        sub_1C6EAAAA8(v60, v59);
        v64 = v37;
LABEL_43:
        sub_1C6EAAAA8(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        return 0;
      }

      v56 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
      v57 = v24;
    }

    else
    {
      v37 = v74;
      if (EnumCaseMultiPayload != 3)
      {
        v27 = v72;
        sub_1C6EAAA44(v74, v72);
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 == 4)
        {
          v48 = v37 + v35;
          v49 = v70;
          sub_1C6EAAB08(v48, v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          if (sub_1C6E6B56C(*v27, *(v27 + 1), *v49, *(v49 + 8)))
          {
            v50 = *(v67 + 20);
            sub_1C6EE4430();
            sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
            if (sub_1C6EE4A50())
            {
              v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
              v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
              v52 = v49;
LABEL_24:
              sub_1C6EAAAA8(v52, v51);
              v42 = v27;
              goto LABEL_25;
            }
          }

          v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          v62 = v49;
LABEL_41:
          sub_1C6EAAAA8(v62, v61);
          v60 = v27;
          goto LABEL_42;
        }

        v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
LABEL_31:
        v56 = v58;
        v57 = v27;
        goto LABEL_32;
      }

      v38 = v71;
      sub_1C6EAAA44(v74, v71);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v39 = v69;
        sub_1C6EAAB08(v37 + v35, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        if (sub_1C6E597C0(*v38, *v39))
        {
          v40 = *(v66 + 20);
          sub_1C6EE4430();
          sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
          if (sub_1C6EE4A50())
          {
            v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
            sub_1C6EAAAA8(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
            v42 = v38;
LABEL_25:
            sub_1C6EAAAA8(v42, v41);
            v54 = v37;
LABEL_26:
            sub_1C6EAAAA8(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
            return 1;
          }
        }

        v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
        sub_1C6EAAAA8(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v60 = v38;
        goto LABEL_42;
      }

      v56 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
      v57 = v38;
    }

LABEL_32:
    sub_1C6EAAAA8(v57, v56);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    v37 = v74;
    sub_1C6EAAA44(v74, v27);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6EAAB08(v37 + v35, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      if (sub_1C6E59764(*v27, *v11))
      {
        v53 = *(v8 + 20);
        sub_1C6EE4430();
        sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        if (sub_1C6EE4A50())
        {
          v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          v52 = v11;
          goto LABEL_24;
        }
      }

      v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      v59 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      v62 = v11;
      goto LABEL_41;
    }

    v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
    goto LABEL_31;
  }

  v43 = v74;
  sub_1C6EAAA44(v74, v29);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6EAAB08(v43 + v35, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (sub_1C6E59708(*v29, *v15))
    {
      v63 = *(v12 + 20);
      sub_1C6EE4430();
      sub_1C6EA8620(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      if (sub_1C6EE4A50())
      {
        sub_1C6EAAAA8(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        sub_1C6EAAAA8(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v54 = v74;
        goto LABEL_26;
      }
    }

    sub_1C6EAAAA8(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6EAAAA8(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v64 = v74;
    goto LABEL_43;
  }

  sub_1C6EAAAA8(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v37 = v43;
LABEL_33:
  sub_1C6EAABD8(v37, &qword_1EC1F91D8, &unk_1C6EF4140);
  return 0;
}

uint64_t sub_1C6EAAA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EAAAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EAAB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EAAB70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EAABD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1C6EAADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = a6(319, a4, a5);
  if (v7 <= 0x3F)
  {
    result = sub_1C6EE4430();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6EAAFB0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FE0);
  __swift_project_value_buffer(v0, qword_1EC212FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA120;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "named_entity_id";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "editorial_description";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "other_language_equivalent_entities";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "examples";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "sub_sections";
  *(v16 + 8) = 12;
  *(v16 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EAB24C()
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
        if (result == 1)
        {
          sub_1C6EAB434();
        }

        else if (result == 2)
        {
          sub_1C6EE4580();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
            sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_5:
            v0 = v3;
            sub_1C6EE4590();
            break;
          case 4:
            v3 = v0;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
            sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example);
            goto LABEL_5;
          case 5:
            v3 = v0;
            type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
            sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
            goto LABEL_5;
        }
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EAB434()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0) + 36);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAB4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAB710(v3, a1, a2, a3);
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
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
      sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EE46D0();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
      sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example);
      sub_1C6EE46D0();
    }

    if (*(v3[4] + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
      sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);
      sub_1C6EE46D0();
    }

    v9 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0) + 32);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAB710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
  sub_1C6EB001C(a1 + *(v14 + 36), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAB920@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  v5 = &a2[*(a1 + 32)];
  sub_1C6EE4420();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1C6EAB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EABA48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EABABC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_153;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C6EABB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F92E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EABBB4(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F92D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EABC20()
{
  sub_1C6EAE430(&qword_1EC1F92D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EABCA0()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC212FF8);
  __swift_project_value_buffer(v0, qword_1EC212FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EEA170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "article_data";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rating";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "rating_justification";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "sub_section_id";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EABEF0()
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
        sub_1C6EAC138();
      }
    }

    else if (result == 1)
    {
      sub_1C6EABFD0();
    }

    else if (result == 2)
    {
      sub_1C6EAC084();
    }
  }

  return result;
}

uint64_t sub_1C6EABFD0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC084()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  sub_1C6EAE430(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC138()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0) + 32);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAC1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAC2CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EAC4DC(v3, a1, a2, a3);
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1C6EE46C0();
    }

    sub_1C6EAC6EC(v3, a1, a2, a3);
    v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v14 + 24), v8, &qword_1EC1F92F0, &qword_1C6EF4760);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F92F0, &qword_1C6EF4760);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
}

uint64_t sub_1C6EAC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v14 + 28), v8, &qword_1EC1F8308, &unk_1C6EEC730);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F8308, &unk_1C6EEC730);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EAE430(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
}

uint64_t sub_1C6EAC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  sub_1C6EB001C(a1 + *(v14 + 32), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAC900@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  sub_1C6EE4420();
  v5 = a1[6];
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v9], 1, 1, v10);
}

uint64_t sub_1C6EACA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EACAA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EACB1C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_154;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EACB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9300, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EACC14(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EACC80()
{
  sub_1C6EAE430(&qword_1EC1F92B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EACD00()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213010);
  __swift_project_value_buffer(v0, qword_1EC213010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C6EF41B0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C6EE46F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "article_id";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v19 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v19 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "short_excerpt";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v7();
  v14 = (v19 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "channel_name";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v7();
  v16 = (v19 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "url";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v7();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EACFD0()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_1C6EE4580();
      }
    }

    else if (result == 1)
    {
      sub_1C6EAD0AC();
    }

    else if (result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1C6EAD0AC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0) + 40);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EAD160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EAD2D0(v3, a1, a2, a3);
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

    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    v11 = v3[5];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1C6EE46C0();
    }

    v13 = v3[7];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[6] & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_1C6EE46C0();
    }

    v15 = v3[9];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3[8] & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_1C6EE46C0();
    }

    v17 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0) + 36);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EAD2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  sub_1C6EB001C(a1 + *(v14 + 40), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EAD4E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0xE000000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0xE000000000000000;
  v4 = &a2[*(a1 + 36)];
  sub_1C6EE4420();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6EAD598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EAD60C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EAD680(uint64_t a1, uint64_t a2))()
{
  result = nullsub_155;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1C6EAD6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9308, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EAD778(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EAD7E4()
{
  sub_1C6EAE430(&qword_1EC1F9290, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EAD864()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213028);
  __swift_project_value_buffer(v0, qword_1EC213028);
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
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "editorial_description";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EADA7C()
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
      sub_1C6EE4580();
    }

    else if (result == 1)
    {
      sub_1C6EADB20();
    }
  }

  return result;
}

uint64_t sub_1C6EADB20()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EADBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EADCB4(v3, a1, a2, a3);
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

    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1C6EE46C0();
    }

    v11 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EADCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  sub_1C6EB001C(a1 + *(v14 + 28), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB0084(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EB0144(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EAE430(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6EB00E4(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EADEC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6EADF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EADFE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EAE054(uint64_t a1, uint64_t a2))()
{
  result = nullsub_156;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EAE0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EAE430(&qword_1EC1F9310, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EAE14C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6EAE1E8(uint64_t a1)
{
  v2 = sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EAE254()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EAE2AC()
{
  sub_1C6EAE430(&qword_1EC1F9270, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EAE328()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EAE430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6EAE7F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EAE900(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection(0);
  v17 = *(v31 + 28);
  v18 = *(v13 + 56);
  v33 = a1;
  sub_1C6EB001C(a1 + v17, v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v34 = a2;
  sub_1C6EB001C(a2 + v17, &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EB001C(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v32;
      sub_1C6EB0144(&v16[v18], v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v25 = *v11 == *v24 && v11[1] == v24[1];
      if (v25 || (sub_1C6EE54B0() & 1) != 0)
      {
        v26 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v16, v20, v21);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v29 = v33;
  v28 = v34;
  if (*v33 == *v34 && v33[1] == v34[1] || (sub_1C6EE54B0()) && (v29[2] == v28[2] && v29[3] == v28[3] || (sub_1C6EE54B0()))
  {
    v30 = *(v31 + 24);
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6EE4A50();
    return v22 & 1;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6EAED5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Guidelines(0);
  v17 = *(v31 + 36);
  v18 = *(v13 + 56);
  v33 = a1;
  sub_1C6EB001C(a1 + v17, v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v34 = a2;
  sub_1C6EB001C(a2 + v17, &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EB001C(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v32;
      sub_1C6EB0144(&v16[v18], v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v25 = *v11 == *v24 && v11[1] == v24[1];
      if (v25 || (sub_1C6EE54B0() & 1) != 0)
      {
        v26 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v16, v20, v21);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v29 = v33;
  v28 = v34;
  if (*v33 == *v34 && v33[1] == v34[1] || (sub_1C6EE54B0()) && (sub_1C6E5B990(v29[2], v28[2]) & 1) != 0 && (sub_1C6E5BBFC(v29[3], v28[3]) & 1) != 0 && (sub_1C6E5BDF0(v29[4], v28[4]))
  {
    v30 = *(v31 + 32);
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6EE4A50();
    return v22 & 1;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6EAF1C4(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v17 = *(v31 + 40);
  v18 = *(v13 + 56);
  v33 = a1;
  sub_1C6EB001C(a1 + v17, v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v34 = a2;
  sub_1C6EB001C(a2 + v17, &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EB001C(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = v32;
      sub_1C6EB0144(&v16[v18], v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v25 = *v11 == *v24 && v11[1] == v24[1];
      if (v25 || (sub_1C6EE54B0() & 1) != 0)
      {
        v26 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if ((v27 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      sub_1C6EB00E4(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EB0084(v16, v20, v21);
      goto LABEL_8;
    }

    sub_1C6EB00E4(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EB0084(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_16:
  v29 = v33;
  v28 = v34;
  if (*v33 == *v34 && v33[1] == v34[1] || (sub_1C6EE54B0()) && (v29[2] == v28[2] && v29[3] == v28[3] || (sub_1C6EE54B0()) && (v29[4] == v28[4] && v29[5] == v28[5] || (sub_1C6EE54B0()) && (v29[6] == v28[6] && v29[7] == v28[7] || (sub_1C6EE54B0()) && (v29[8] == v28[8] && v29[9] == v28[9] || (sub_1C6EE54B0()))
  {
    v30 = *(v31 + 36);
    sub_1C6EE4430();
    sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    v22 = sub_1C6EE4A50();
    return v22 & 1;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6EAF68C(void *a1, void *a2)
{
  v81 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v67 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7EF0, &unk_1C6EE9280);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = (&v66 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8220, &qword_1C6EEC6E0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v66 - v10;
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = (&v66 - v16);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v66 - v18;
  v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F0, &qword_1C6EF4760);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v66 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F92F8, &qword_1C6EF4768);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v66 - v31;
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example(0);
  v80 = a1;
  v33 = *(v79 + 24);
  v34 = *(v29 + 56);
  sub_1C6EB001C(a1 + v33, v32, &qword_1EC1F92F0, &qword_1C6EF4760);
  sub_1C6EB001C(v81 + v33, &v32[v34], &qword_1EC1F92F0, &qword_1C6EF4760);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_1C6EB0084(v32, &qword_1EC1F92F0, &qword_1C6EF4760);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_1EC1F92F8;
    v37 = &qword_1C6EF4768;
    v38 = v32;
LABEL_25:
    sub_1C6EB0084(v38, v36, v37);
    goto LABEL_26;
  }

  sub_1C6EB001C(v32, v27, &qword_1EC1F92F0, &qword_1C6EF4760);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_1C6EB00E4(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
    goto LABEL_6;
  }

  sub_1C6EB0144(&v32[v34], v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  v39 = sub_1C6EAF1C4(v27, v23);
  sub_1C6EB00E4(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EB00E4(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData);
  sub_1C6EB0084(v32, &qword_1EC1F92F0, &qword_1C6EF4760);
  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  v41 = v79;
  v40 = v80;
  v42 = *(v79 + 28);
  v43 = *(v75 + 48);
  v44 = v78;
  sub_1C6EB001C(v80 + v42, v78, &qword_1EC1F8308, &unk_1C6EEC730);
  v45 = v81;
  sub_1C6EB001C(v81 + v42, v44 + v43, &qword_1EC1F8308, &unk_1C6EEC730);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v44, 1, v77) != 1)
  {
    v48 = v74;
    sub_1C6EB001C(v44, v74, &qword_1EC1F8308, &unk_1C6EEC730);
    if (v47(v44 + v43, 1, v46) != 1)
    {
      v49 = v44 + v43;
      v50 = v69;
      sub_1C6EB0144(v49, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      v51 = sub_1C6E700A8(v48, v50);
      sub_1C6EB00E4(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6EB00E4(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
      sub_1C6EB0084(v44, &qword_1EC1F8308, &unk_1C6EEC730);
      if ((v51 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    sub_1C6EB00E4(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
    goto LABEL_13;
  }

  if (v47(v44 + v43, 1, v46) != 1)
  {
LABEL_13:
    v36 = &qword_1EC1F8310;
    v37 = &unk_1C6EF53A0;
    v38 = v44;
    goto LABEL_25;
  }

  sub_1C6EB0084(v44, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_15:
  if ((*v40 != *v45 || v40[1] != v45[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v52 = *(v41 + 32);
  v53 = *(v70 + 48);
  v54 = v73;
  sub_1C6EB001C(v40 + v52, v73, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v55 = v45 + v52;
  v56 = v54;
  sub_1C6EB001C(v55, v54 + v53, &qword_1EC1F7EF0, &unk_1C6EE9280);
  v57 = v72;
  v58 = *(v71 + 48);
  if (v58(v54, 1, v72) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      sub_1C6EB0084(v54, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_32:
      v65 = *(v41 + 20);
      sub_1C6EE4430();
      sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v60 = sub_1C6EE4A50();
      return v60 & 1;
    }

    goto LABEL_23;
  }

  v59 = v68;
  sub_1C6EB001C(v56, v68, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    sub_1C6EB00E4(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_23:
    v36 = &qword_1EC1F8220;
    v37 = &qword_1C6EEC6E0;
LABEL_24:
    v38 = v56;
    goto LABEL_25;
  }

  v62 = v56 + v53;
  v63 = v67;
  sub_1C6EB0144(v62, v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*v59 != *v63 || v59[1] != v63[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6EB00E4(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    sub_1C6EB00E4(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    v36 = &qword_1EC1F7EF0;
    v37 = &unk_1C6EE9280;
    goto LABEL_24;
  }

  v64 = *(v57 + 20);
  sub_1C6EE4430();
  sub_1C6EAE430(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  LOBYTE(v64) = sub_1C6EE4A50();
  sub_1C6EB00E4(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EB00E4(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EB0084(v56, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if (v64)
  {
    goto LABEL_32;
  }

LABEL_26:
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_1C6EB001C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EB0084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EB00E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EB0144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6EB01D4()
{
  sub_1C6EB0370(319, &qword_1EC1F9328, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EB0370(319, &qword_1EC1F9330, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Example, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C6EB0370(319, &qword_1EC1F9338, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_SubSection, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C6EE4430();
        if (v3 <= 0x3F)
        {
          sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C6EB0370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EB03FC()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EB0370(319, &qword_1EC1F9350, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_ExampleArticleData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6EB0370(319, &qword_1EC1F9358, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6EB0578()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EB0670()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EB0370(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6EB07A4()
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

uint64_t sub_1C6EB0814()
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
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB08A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EB08EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_157;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EB0944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9480, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB09E4(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB0A50()
{
  sub_1C6EB45CC(&qword_1EC1F9468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionRequest);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB0ACC(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB0BA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
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

uint64_t sub_1C6EB0D18()
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
      sub_1C6EE44D0();
    }
  }

  return result;
}

uint64_t sub_1C6EB0D88()
{
  if (*v0 != 1 || (result = sub_1C6EE4650(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse(0) + 20)];
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB0E20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB0E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB0ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EB0F48(uint64_t a1, uint64_t a2))()
{
  result = nullsub_158;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EB0FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9488, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB1040(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB10AC()
{
  sub_1C6EB45CC(&qword_1EC1F9448, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_InitializeSessionResponse);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB1128(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB11CC()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213070);
  __swift_project_value_buffer(v0, qword_1EC213070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "article_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v12 = "plain_text";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB13E8()
{
  while (1)
  {
    result = sub_1C6EE44B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EB1478()
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
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1C6EE46C0(), !v1))
      {
        v10 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0) + 28);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6EB156C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_1C6EE4420();
}

uint64_t sub_1C6EB15B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB162C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EB16A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_159;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6EB16F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9490, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB1798(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB1804()
{
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB18A4()
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
      sub_1C6EB1938();
    }

    else if (result == 2)
    {
      sub_1C6EB19EC();
    }
  }

  return result;
}

uint64_t sub_1C6EB1938()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB19EC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  sub_1C6EB45CC(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB1AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB1B10(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EB1D20(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB1B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB64D8(a1 + *(v14 + 20), v8, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB6540(v8, &qword_1EC1F8318, &qword_1C6EEC740);
  }

  sub_1C6EB6410(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
}

uint64_t sub_1C6EB1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB64D8(a1 + *(v14 + 24), v8, &qword_1EC1F8308, &unk_1C6EEC730);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB6540(v8, &qword_1EC1F8308, &unk_1C6EEC730);
  }

  sub_1C6EB6410(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB45CC(&qword_1EC1F8468, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
}

uint64_t sub_1C6EB1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EB2010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EB2078(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EB2134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F9498, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB21D4(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB2240()
{
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB22E0()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
          sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
          sub_1C6EE4590();
          break;
        case 2:
          sub_1C6EB2400();
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

uint64_t sub_1C6EB2400()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB24B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_1C6EB25E0(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
        sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
        sub_1C6EE46D0();
      }

      v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB25E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94A8, &qword_1C6EF53B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
  sub_1C6EB64D8(a1 + *(v14 + 28), v8, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB6540(v8, &qword_1EC1F94A8, &qword_1C6EF53B0);
  }

  sub_1C6EB6410(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB45CC(&qword_1EC1F9408, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
}

uint64_t (*sub_1C6EB2824(uint64_t a1, uint64_t a2))()
{
  result = nullsub_161;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB287C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB291C(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB2988()
{
  sub_1C6EB45CC(&qword_1EC1F93E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB2A28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6EE65B0;
  v11 = (v10 + v9);
  v12 = v10 + v9 + v7[14];
  *v11 = 1;
  *v12 = "entity_id";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v14 = sub_1C6EE46F0();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = a3;
  *(v16 + 1) = 12;
  v16[16] = 2;
  v15();
  v17 = v11 + 2 * v8 + v7[14];
  *(v11 + 2 * v8) = 3;
  *v17 = a4;
  *(v17 + 8) = a5;
  *(v17 + 16) = 2;
  v15();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB2C34()
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
        sub_1C6EE4530();
        break;
      case 2:
        sub_1C6EB2CE4();
        break;
      case 1:
        sub_1C6EE4580();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB2CE4()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB2D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1C6EE46C0(), !v4))
  {
    result = sub_1C6EB2E68(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        sub_1C6EE4680();
      }

      v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  sub_1C6EB64D8(a1 + *(v14 + 28), v8, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB6540(v8, &qword_1EC1F8318, &qword_1C6EEC740);
  }

  sub_1C6EB6410(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB45CC(&qword_1EC1F9428, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
}

uint64_t sub_1C6EB3078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 24);
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_1C6EB3120(uint64_t a1, uint64_t a2))()
{
  result = nullsub_162;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB3178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB3218(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB3284()
{
  sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB3324(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6B40;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1C6EE46F0();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 6;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADC8];
  v17();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB34EC()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EE44D0();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
        sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB35E8()
{
  if (*v0 != 1 || (result = sub_1C6EE4650(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0), sub_1C6EB45CC(&qword_1EC1F93C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity), result = sub_1C6EE46D0(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB36F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EB3740(uint64_t a1, uint64_t a2))()
{
  result = nullsub_163;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB3798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB3838(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB38A4()
{
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB3920(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1C6E5AD34(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB39D8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2130E8);
  __swift_project_value_buffer(v0, qword_1EC2130E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE65B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article_ids";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "model_status";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB3BEC()
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
        sub_1C6EB3C9C();
        break;
      case 2:
        sub_1C6EE4570();
        break;
      case 1:
        sub_1C6EE4580();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB3C9C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB3D50(uint64_t a1, uint64_t a2, uint64_t a3)
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
      result = sub_1C6EB3E20(v3, a1, a2, a3);
      if (!v4)
      {
        v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0) + 24);
        return sub_1C6EE4410();
      }
    }
  }

  return result;
}

uint64_t sub_1C6EB3E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D0, &qword_1C6EF53C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
  sub_1C6EB64D8(a1 + *(v14 + 28), v8, &qword_1EC1F94D0, &qword_1C6EF53C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EB6540(v8, &qword_1EC1F94D0, &qword_1C6EF53C0);
  }

  sub_1C6EB6410(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
  sub_1C6EB45CC(&qword_1EC1F93A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
  sub_1C6EE46E0();
  return sub_1C6EB6478(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
}

uint64_t sub_1C6EB4048@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = MEMORY[0x1E69E7CC0];
  v6 = &a3[*(a1 + 24)];
  sub_1C6EE4420();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1C6EB4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EB417C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EB41F0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_164;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB4248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EB45CC(&qword_1EC1F94C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB42E8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6EB4384(uint64_t a1)
{
  v2 = sub_1C6EB45CC(&qword_1EC1F9388, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB43F0()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EB4448()
{
  sub_1C6EB45CC(&qword_1EC1F9388, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB44C4()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EB45CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6EB4E8C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EB4F9C(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D0, &qword_1C6EF53C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94D8, &qword_1C6EF53C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0 || (sub_1C6E59BCC(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v8;
  v30 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesResponse(0);
  v17 = *(v30 + 28);
  v18 = *(v13 + 48);
  sub_1C6EB64D8(a1 + v17, v16, &qword_1EC1F94D0, &qword_1C6EF53C0);
  sub_1C6EB64D8(a2 + v17, &v16[v18], &qword_1EC1F94D0, &qword_1C6EF53C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EB64D8(v16, v12, &qword_1EC1F94D0, &qword_1C6EF53C0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_1C6EB6410(v24, v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      if (*v12 == *v25 && (sub_1C6E5AD34(*(v12 + 1), *(v25 + 1)) & 1) != 0)
      {
        v26 = *(v4 + 24);
        sub_1C6EE4430();
        sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6EB6478(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
        sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
        sub_1C6EB6540(v16, &qword_1EC1F94D0, &qword_1C6EF53C0);
        if (v27)
        {
          goto LABEL_8;
        }

LABEL_18:
        v21 = 0;
        return v21 & 1;
      }

      sub_1C6EB6478(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
      v22 = &qword_1EC1F94D0;
      v23 = &qword_1C6EF53C0;
LABEL_17:
      sub_1C6EB6540(v16, v22, v23);
      goto LABEL_18;
    }

    sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus);
LABEL_11:
    v22 = &qword_1EC1F94D8;
    v23 = &qword_1C6EF53C8;
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1C6EB6540(v16, &qword_1EC1F94D0, &qword_1C6EF53C0);
LABEL_8:
  v20 = *(v30 + 24);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6EB53E4(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94A8, &qword_1C6EF53B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F94B0, &qword_1C6EF53B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = v8;
  v25 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_AddRatedArticlesRequest(0);
  v17 = *(v25 + 28);
  v18 = *(v13 + 48);
  sub_1C6EB64D8(a1 + v17, v16, &qword_1EC1F94A8, &qword_1C6EF53B0);
  sub_1C6EB64D8(a2 + v17, &v16[v18], &qword_1EC1F94A8, &qword_1C6EF53B0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6EB6540(v16, &qword_1EC1F94A8, &qword_1C6EF53B0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1C6EB64D8(v16, v12, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
LABEL_9:
    sub_1C6EB6540(v16, &qword_1EC1F94B0, &qword_1C6EF53B8);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_1C6EB6410(&v16[v18], v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  v21 = sub_1C6EB5C0C(v12, v20);
  sub_1C6EB6478(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData);
  sub_1C6EB6540(v16, &qword_1EC1F94A8, &qword_1C6EF53B0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_1C6E59C5C(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = *(v25 + 24);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v23 = sub_1C6EE4A50();
  return v23 & 1;
}

uint64_t sub_1C6EB5778(float *a1, float *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 1)) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_31;
  }

  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v34 = v17;
  v35 = v19;
  sub_1C6EB64D8(v19 + v18, v16, &qword_1EC1F8318, &qword_1C6EEC740);
  v21 = a2 + v18;
  v22 = a2;
  sub_1C6EB64D8(v21, &v16[v20], &qword_1EC1F8318, &qword_1C6EEC740);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v20], 1, v4) == 1)
    {
      sub_1C6EB6540(v16, &qword_1EC1F8318, &qword_1C6EEC740);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_1C6EB64D8(v16, v12, &qword_1EC1F8318, &qword_1C6EEC740);
  if (v23(&v16[v20], 1, v4) == 1)
  {
    sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
LABEL_11:
    v26 = &qword_1EC1F8320;
    v27 = &qword_1C6EEC748;
LABEL_30:
    sub_1C6EB6540(v16, v26, v27);
    goto LABEL_31;
  }

  sub_1C6EB6410(&v16[v20], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  v28 = *v12 == *v8 && v12[1] == v8[1];
  if (!v28 && (sub_1C6EE54B0() & 1) == 0 || (v12[2] == v8[2] ? (v29 = v12[3] == v8[3]) : (v29 = 0), !v29 && (sub_1C6EE54B0() & 1) == 0 || (v12[4] == v8[4] ? (v30 = v12[5] == v8[5]) : (v30 = 0), !v30 && (sub_1C6EE54B0() & 1) == 0)))
  {
    sub_1C6EB6478(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    v26 = &qword_1EC1F8318;
    v27 = &qword_1C6EEC740;
    goto LABEL_30;
  }

  v31 = *(v4 + 28);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v22 = a2;
  v32 = sub_1C6EE4A50();
  sub_1C6EB6478(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6478(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6540(v16, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((v32 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_7:
  if (v35[4] != v22[4])
  {
LABEL_31:
    v25 = 0;
    return v25 & 1;
  }

  v24 = *(v34 + 24);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v25 = sub_1C6EE4A50();
  return v25 & 1;
}

uint64_t sub_1C6EB5C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8308, &unk_1C6EEC730);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = (&v47 - v9);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8310, &unk_1C6EF53A0);
  v10 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v47 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8318, &qword_1C6EEC740);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v47 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8320, &qword_1C6EEC748);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  sub_1C6EB64D8(a1 + v25, v24, &qword_1EC1F8318, &qword_1C6EEC740);
  v27 = a2 + v25;
  v28 = a2;
  sub_1C6EB64D8(v27, &v24[v26], &qword_1EC1F8318, &qword_1C6EEC740);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) == 1)
  {
    if (v29(&v24[v26], 1, v12) == 1)
    {
      sub_1C6EB6540(v24, &qword_1EC1F8318, &qword_1C6EEC740);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C6EB64D8(v24, v19, &qword_1EC1F8318, &qword_1C6EEC740);
  if (v29(&v24[v26], 1, v12) == 1)
  {
    sub_1C6EB6478(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
LABEL_9:
    v35 = &qword_1EC1F8320;
    v36 = &qword_1C6EEC748;
LABEL_25:
    v41 = v24;
    goto LABEL_26;
  }

  v37 = v50;
  sub_1C6EB6410(&v24[v26], v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  if ((*v19 != *v37 || v19[1] != v37[1]) && (sub_1C6EE54B0() & 1) == 0 || (v19[2] != v37[2] || v19[3] != v37[3]) && (sub_1C6EE54B0() & 1) == 0 || (v19[4] != v37[4] || v19[5] != v37[5]) && (sub_1C6EE54B0() & 1) == 0)
  {
    sub_1C6EB6478(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    sub_1C6EB6478(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
    v35 = &qword_1EC1F8318;
    v36 = &qword_1C6EEC740;
    goto LABEL_25;
  }

  v38 = *(v12 + 28);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v39 = sub_1C6EE4A50();
  sub_1C6EB6478(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6478(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData);
  sub_1C6EB6540(v24, &qword_1EC1F8318, &qword_1C6EEC740);
  if ((v39 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  v30 = *(v51 + 24);
  v31 = *(v52 + 48);
  v32 = v55;
  sub_1C6EB64D8(v56 + v30, v55, &qword_1EC1F8308, &unk_1C6EEC730);
  sub_1C6EB64D8(v28 + v30, v32 + v31, &qword_1EC1F8308, &unk_1C6EEC730);
  v33 = v54;
  v34 = *(v53 + 48);
  if (v34(v32, 1, v54) == 1)
  {
    if (v34(v32 + v31, 1, v33) == 1)
    {
      sub_1C6EB6540(v32, &qword_1EC1F8308, &unk_1C6EEC730);
LABEL_30:
      sub_1C6EE4430();
      sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v42 = sub_1C6EE4A50();
      return v42 & 1;
    }

    goto LABEL_23;
  }

  v40 = v49;
  sub_1C6EB64D8(v32, v49, &qword_1EC1F8308, &unk_1C6EEC730);
  if (v34(v32 + v31, 1, v33) == 1)
  {
    sub_1C6EB6478(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
LABEL_23:
    v35 = &qword_1EC1F8310;
    v36 = &unk_1C6EF53A0;
    v41 = v32;
LABEL_26:
    sub_1C6EB6540(v41, v35, v36);
    goto LABEL_27;
  }

  v44 = v32 + v31;
  v45 = v48;
  sub_1C6EB6410(v44, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  v46 = sub_1C6E700A8(v40, v45);
  sub_1C6EB6478(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB6478(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating);
  sub_1C6EB6540(v32, &qword_1EC1F8308, &unk_1C6EEC730);
  if (v46)
  {
    goto LABEL_30;
  }

LABEL_27:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1C6EB630C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C6EE54B0() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData(0) + 28);
  sub_1C6EE4430();
  sub_1C6EB45CC(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB6410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EB6478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EB64D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EB6540(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EB6608()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6EB66A4()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6EB6750()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EB684C(319, &qword_1EC1F9520, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9358, type metadata accessor for Com_Apple_News_Algorithms_Proto_Ratings_Rating, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EB684C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EB68D8()
{
  sub_1C6EB684C(319, &qword_1EC1F9538, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9540, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_RatedArticleData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EB6A0C()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EB684C(319, &qword_1EC1F9520, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ArticleData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EB6B00()
{
  sub_1C6EB684C(319, &qword_1EC1F9568, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ScoredArticleEntity, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1C6EE4430();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_1C6EB6E6C()
{
  sub_1C6E953AC();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6EB684C(319, &qword_1EC1F9580, type metadata accessor for Com_Apple_News_Algorithms_Proto_Experimental_ModelStatus, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6EB7038()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6EB7138();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
        sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB7138()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB71EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6EB72E8(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
      sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
      sub_1C6EE46D0();
    }

    v8 = v5 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB72E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  sub_1C6EBD530(a1 + *(v14 + 24), v8, &qword_1EC1F9690, &qword_1C6EF6160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F9690, &qword_1C6EF6160);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
}

uint64_t sub_1C6EB74F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6EB75A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_165;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EB75F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F9688, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB7698(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9670, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB7704()
{
  sub_1C6EBB3D4(&qword_1EC1F9670, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB7784()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213118);
  __swift_project_value_buffer(v0, qword_1EC213118);
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
  *v11 = "normalizer_index";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB79A0()
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
        sub_1C6EB7B08();
        break;
      case 2:
        sub_1C6EE4540();
        break;
      case 1:
        sub_1C6EB7A54();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6EB7A54()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0) + 28);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  sub_1C6EBB3D4(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB7B08()
{
  sub_1C6EE4400();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
  sub_1C6EBB3D4(&qword_1EC1F9638, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
  return sub_1C6EE4490();
}

uint64_t sub_1C6EB7C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB7D78(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6EE4690();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_1C6EE4400();
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6EBB3D4(&qword_1EC1F9638, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6EE4610();
    }

    v6 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0) + 24);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB7D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6EBD530(a1 + *(v14 + 28), v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F7EF0, &unk_1C6EE9280);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EBB3D4(qword_1EDEF7D30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6EB7F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = sub_1C6E0CE3C(MEMORY[0x1E69E7CC0]);
  v4 = a2 + *(a1 + 24);
  sub_1C6EE4420();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*sub_1C6EB803C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_166;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB8094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8134(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB81A0()
{
  sub_1C6EBB3D4(&qword_1EC1F9650, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8220()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213130);
  __swift_project_value_buffer(v0, qword_1EC213130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6590;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "subs";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6EE46F0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB838C()
{
  result = sub_1C6EE44B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
        sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
        sub_1C6EE4590();
      }

      result = sub_1C6EE44B0();
    }
  }

  return result;
}

uint64_t sub_1C6EB846C()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0), sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub), result = sub_1C6EE46D0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0) + 20);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB8550@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 20);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EB8598(uint64_t a1, uint64_t a2))()
{
  result = nullsub_167;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EB85F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8690(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB86FC()
{
  sub_1C6EBB3D4(&qword_1EC1F9630, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8778(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6E5AAB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB8840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6EE6B40;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1C6EE46F0();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB89FC()
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

uint64_t sub_1C6EB8A7C()
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
      v8 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB8B40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t (*sub_1C6EB8B88(uint64_t a1, uint64_t a2))()
{
  result = nullsub_168;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EB8BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB8C80(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB8CEC()
{
  sub_1C6EBB3D4(&qword_1EC1F9610, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB8D68(void *a1, void *a2, uint64_t a3)
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
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EB8E44()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213160);
  __swift_project_value_buffer(v0, qword_1EC213160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "collab_token";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "float16_vector";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB900C()
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
      sub_1C6EB90A0();
    }

    else if (result == 2)
    {
      sub_1C6EB9154();
    }
  }

  return result;
}

uint64_t sub_1C6EB90A0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0) + 20);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9154()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6EBB3D4(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6EB9278(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6EB9488(v3, a1, a2, a3);
    return sub_1C6EE4410();
  }

  return result;
}

uint64_t sub_1C6EB9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6EBD530(a1 + *(v14 + 20), v8, &qword_1EC1F8358, &qword_1C6EEC780);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F8358, &qword_1C6EEC780);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
}

uint64_t sub_1C6EB9488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6EBD530(a1 + *(v14 + 24), v8, &qword_1EC1F8328, &unk_1C6EEC750);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6EBB3D4(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6EB9698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6EE4420();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6EB9778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6EB97E0(uint64_t a1)
{
  v3 = sub_1C6EE4430();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6EB989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EB993C(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EB99A8()
{
  sub_1C6EBB3D4(&qword_1EC1F95F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EB9A28()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213178);
  __swift_project_value_buffer(v0, qword_1EC213178);
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
  *v10 = "target_token_spec";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EB9BF8()
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
      sub_1C6EB9C88();
    }
  }

  return result;
}

uint64_t sub_1C6EB9C88()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EB9D3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_1C6EB9DE8(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0) + 20);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EB9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6EBD530(a1 + *(v14 + 24), v8, &qword_1EC1F8348, &qword_1C6EEC770);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F8348, &qword_1C6EEC770);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
}

uint64_t sub_1C6EB9FFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_1C6EBA0A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_170;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EBA0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBA198(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBA204()
{
  sub_1C6EBB3D4(&qword_1EC1F95D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBA284()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC213190);
  __swift_project_value_buffer(v0, qword_1EC213190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_target";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalization_spec";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBA44C()
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
      sub_1C6EE44D0();
    }

    else if (result == 2)
    {
      sub_1C6EBA4DC();
    }
  }

  return result;
}

uint64_t sub_1C6EBA4DC()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0) + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EBA590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6EE4650(), !v4))
  {
    result = sub_1C6EBA638(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = &v3[*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0) + 20)];
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6EBD530(a1 + *(v14 + 24), v8, &qword_1EC1F8338, &qword_1C6EEC760);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6EBD598(v8, &qword_1EC1F8338, &qword_1C6EEC760);
  }

  sub_1C6EBD4C8(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  sub_1C6EE46E0();
  return sub_1C6EBD468(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
}

uint64_t sub_1C6EBA84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6EBA8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBA960(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EBA9D4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_171;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EBAA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96C8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBAACC(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBAB38()
{
  sub_1C6EBB3D4(&qword_1EC1F95B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBABB8()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2131A8);
  __swift_project_value_buffer(v0, qword_1EC2131A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "should_normalize";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalizer_index_key";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBAD80()
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
      sub_1C6EE44D0();
    }

    else if (result == 2)
    {
      sub_1C6EE4580();
    }
  }

  return result;
}

uint64_t sub_1C6EBAE0C()
{
  if (*v0 != 1 || (result = sub_1C6EE4650(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1C6EE46C0(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0) + 24);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBAEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1C6EE4420();
}

uint64_t sub_1C6EBAF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBAF84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EBAFF8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_172;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6EBB050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBB3D4(&qword_1EC1F96D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBB0F0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
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

uint64_t sub_1C6EBB18C(uint64_t a1)
{
  v2 = sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBB1F8()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBB250()
{
  sub_1C6EBB3D4(&qword_1EC1F9590, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBB2CC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBB3D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6EBBC94(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EBBDA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_1C6EE54B0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0) + 24);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  return sub_1C6EE4A50() & 1;
}

uint64_t sub_1C6EBBE74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8338, &qword_1C6EEC760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8340, &qword_1C6EEC768);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v29 = a2;
  v17 = *(v28 + 24);
  v18 = *(v13 + 48);
  sub_1C6EBD530(&a1[v17], v16, &qword_1EC1F8338, &qword_1C6EEC760);
  sub_1C6EBD530(&v29[v17], &v16[v18], &qword_1EC1F8338, &qword_1C6EEC760);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EBD530(v16, v12, &qword_1EC1F8338, &qword_1C6EEC760);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1C6EBD4C8(&v16[v18], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      if (*v12 == *v8)
      {
        v25 = *(v12 + 1) == *(v8 + 1) && *(v12 + 2) == *(v8 + 2);
        if (v25 || (sub_1C6EE54B0() & 1) != 0)
        {
          v26 = *(v4 + 24);
          sub_1C6EE4430();
          sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
          v27 = sub_1C6EE4A50();
          sub_1C6EBD468(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6EBD468(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
          sub_1C6EBD598(v16, &qword_1EC1F8338, &qword_1C6EEC760);
          if (v27)
          {
            goto LABEL_5;
          }

LABEL_12:
          v21 = 0;
          return v21 & 1;
        }
      }

      sub_1C6EBD468(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6EBD468(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      v22 = &qword_1EC1F8338;
      v23 = &qword_1C6EEC760;
LABEL_11:
      sub_1C6EBD598(v16, v22, v23);
      goto LABEL_12;
    }

    sub_1C6EBD468(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
LABEL_8:
    v22 = &qword_1EC1F8340;
    v23 = &qword_1C6EEC768;
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C6EBD598(v16, &qword_1EC1F8338, &qword_1C6EEC760);
LABEL_5:
  v20 = *(v28 + 20);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v21 = sub_1C6EE4A50();
  return v21 & 1;
}

uint64_t sub_1C6EBC2A8(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8348, &qword_1C6EEC770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8350, &qword_1C6EEC778);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_1C6EBD530(a1 + v17, v16, &qword_1EC1F8348, &qword_1C6EEC770);
  sub_1C6EBD530(a2 + v17, &v16[v18], &qword_1EC1F8348, &qword_1C6EEC770);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6EBD598(v16, &qword_1EC1F8348, &qword_1C6EEC770);
LABEL_12:
      v23 = *(v26 + 20);
      sub_1C6EE4430();
      sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
      v20 = sub_1C6EE4A50();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6EBD530(v16, v12, &qword_1EC1F8348, &qword_1C6EEC770);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6EBD468(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_9:
    sub_1C6EBD598(v16, &qword_1EC1F8350, &qword_1C6EEC778);
    goto LABEL_10;
  }

  v21 = v25;
  sub_1C6EBD4C8(&v16[v18], v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v22 = sub_1C6EBBE74(v12, v21);
  sub_1C6EBD468(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBD468(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6EBD598(v16, &qword_1EC1F8348, &qword_1C6EEC770);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C6EBC628(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v42 - v9;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8358, &qword_1C6EEC780);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v42 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8360, &qword_1C6EEC788);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v45 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v24 = *(v45 + 20);
  v25 = *(v20 + 56);
  sub_1C6EBD530(v50 + v24, v23, &qword_1EC1F8358, &qword_1C6EEC780);
  sub_1C6EBD530(v51 + v24, &v23[v25], &qword_1EC1F8358, &qword_1C6EEC780);
  v26 = *(v11 + 48);
  if (v26(v23, 1, v10) == 1)
  {
    if (v26(&v23[v25], 1, v10) == 1)
    {
      sub_1C6EBD598(v23, &qword_1EC1F8358, &qword_1C6EEC780);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_1EC1F8360;
    v28 = &qword_1C6EEC788;
    v29 = v23;
LABEL_16:
    sub_1C6EBD598(v29, v27, v28);
    goto LABEL_17;
  }

  sub_1C6EBD530(v23, v18, &qword_1EC1F8358, &qword_1C6EEC780);
  if (v26(&v23[v25], 1, v10) == 1)
  {
    sub_1C6EBD468(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    goto LABEL_6;
  }

  sub_1C6EBD4C8(&v23[v25], v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v30 = sub_1C6EBC2A8(v18, v14);
  sub_1C6EBD468(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBD468(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6EBD598(v23, &qword_1EC1F8358, &qword_1C6EEC780);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v31 = *(v45 + 24);
  v32 = *(v46 + 48);
  v33 = v49;
  sub_1C6EBD530(v50 + v31, v49, &qword_1EC1F8328, &unk_1C6EEC750);
  sub_1C6EBD530(v51 + v31, v33 + v32, &qword_1EC1F8328, &unk_1C6EEC750);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v33, 1, v48) != 1)
  {
    v37 = v44;
    sub_1C6EBD530(v33, v44, &qword_1EC1F8328, &unk_1C6EEC750);
    if (v35(v33 + v32, 1, v34) == 1)
    {
      sub_1C6EBD468(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_14;
    }

    v39 = v33 + v32;
    v40 = v43;
    sub_1C6EBD4C8(v39, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if ((sub_1C6E6B56C(*v37, *(v37 + 8), *v40, *(v40 + 8)) & 1) == 0)
    {
      sub_1C6EBD468(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6EBD468(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v27 = &qword_1EC1F8328;
      v28 = &unk_1C6EEC750;
      goto LABEL_15;
    }

    v41 = *(v34 + 20);
    sub_1C6EE4430();
    sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
    LOBYTE(v41) = sub_1C6EE4A50();
    sub_1C6EBD468(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EBD468(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6EBD598(v33, &qword_1EC1F8328, &unk_1C6EEC750);
    if (v41)
    {
      goto LABEL_11;
    }

LABEL_17:
    v36 = 0;
    return v36 & 1;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_14:
    v27 = &qword_1EC1F8330;
    v28 = &unk_1C6EF6170;
LABEL_15:
    v29 = v33;
    goto LABEL_16;
  }

  sub_1C6EBD598(v33, &qword_1EC1F8328, &unk_1C6EEC750);
LABEL_11:
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v36 = sub_1C6EE4A50();
  return v36 & 1;
}

uint64_t sub_1C6EBCCC8(uint64_t a1, uint64_t a2)
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
  v30 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v17 = *(v30 + 28);
  v18 = *(v13 + 56);
  v32 = a1;
  sub_1C6EBD530(a1 + v17, v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
  sub_1C6EBD530(a2 + v17, &v16[v18], &qword_1EC1F7EF0, &unk_1C6EE9280);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6EBD530(v16, v11, &qword_1EC1F7EF0, &unk_1C6EE9280);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v31;
      sub_1C6EBD4C8(&v16[v18], v31, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v23 = *v11 == *v22 && v11[1] == v22[1];
      if (v23 || (sub_1C6EE54B0() & 1) != 0)
      {
        v24 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v25 = sub_1C6EE4A50();
        sub_1C6EBD468(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6EBD598(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
        if (v25)
        {
          goto LABEL_14;
        }

LABEL_17:
        v27 = 0;
        return v27 & 1;
      }

      sub_1C6EBD468(v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v20 = &qword_1EC1F7EF0;
      v21 = &unk_1C6EE9280;
LABEL_7:
      sub_1C6EBD598(v16, v20, v21);
      goto LABEL_17;
    }

    sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    v20 = &qword_1EC1F8220;
    v21 = &qword_1C6EEC6E0;
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6EBD598(v16, &qword_1EC1F7EF0, &unk_1C6EE9280);
LABEL_14:
  if (*v32 != *a2 || (sub_1C6E24F24(*(v32 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v26 = *(v30 + 24);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v27 = sub_1C6EE4A50();
  return v27 & 1;
}

uint64_t sub_1C6EBD0FC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9690, &qword_1C6EF6160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9698, &qword_1C6EF6168);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C6EBD530(a1 + v17, v16, &qword_1EC1F9690, &qword_1C6EF6160);
  sub_1C6EBD530(a2 + v17, &v16[v18], &qword_1EC1F9690, &qword_1C6EF6160);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6EBD598(v16, &qword_1EC1F9690, &qword_1C6EF6160);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6EBD530(v16, v11, &qword_1EC1F9690, &qword_1C6EF6160);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
LABEL_6:
    sub_1C6EBD598(v16, &qword_1EC1F9698, &qword_1C6EF6168);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_1C6EBD4C8(&v16[v18], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  v21 = sub_1C6EBCCC8(v11, v20);
  sub_1C6EBD468(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBD468(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6EBD598(v16, &qword_1EC1F9690, &qword_1C6EF6160);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C6E5D324(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  sub_1C6EE4430();
  sub_1C6EBB3D4(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v23 = sub_1C6EE4A50();
  return v23 & 1;
}

uint64_t sub_1C6EBD468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6EBD4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6EBD530(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6EBD598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6EBD620()
{
  sub_1C6EBD71C(319, &qword_1EC1F96E8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6EBD71C(319, &qword_1EC1F96F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBD71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6EBD7A8()
{
  sub_1C6EBD884();
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      sub_1C6EBD71C(319, qword_1EDEF7CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBD884()
{
  if (!qword_1EC1F9708)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(255);
    v0 = sub_1C6EE49E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1F9708);
    }
  }
}

void sub_1C6EBD914()
{
  sub_1C6EBD71C(319, &qword_1EC1F9720, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6EE4430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EBDA24()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EBD71C(319, &qword_1EC1F9748, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6EBD71C(319, &qword_1EC1F9750, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6EBDBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1C6EE4430();
  if (v8 <= 0x3F)
  {
    sub_1C6EBD71C(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6EBDCAC()
{
  result = sub_1C6EE4430();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6EBDE00()
{
  v0 = sub_1C6EE4720();
  __swift_allocate_value_buffer(v0, qword_1EC2131C0);
  __swift_project_value_buffer(v0, qword_1EC2131C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8210, &unk_1C6EEC6D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8218, &unk_1C6EECEC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6EE6B40;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "encoding_name";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6EE46F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "float16_list";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C6EE4700();
}

uint64_t sub_1C6EBDFC8()
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
      sub_1C6EBE058();
    }
  }

  return result;
}

uint64_t sub_1C6EBE058()
{
  v0 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 24);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6EBEEC8(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6EE45A0();
}

uint64_t sub_1C6EBE10C()
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
    result = sub_1C6EBE1B8(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding() + 20);
      return sub_1C6EE4410();
    }
  }

  return result;
}

uint64_t sub_1C6EBE1B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  sub_1C6EBE9B0(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6EBEE68(v5, &qword_1EC1F8328, &unk_1C6EEC750);
  }

  sub_1C6EBEA20(v5, v10);
  sub_1C6EBEEC8(qword_1EDEF7740, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6EE46E0();
  return sub_1C6EBEA84(v10);
}

uint64_t sub_1C6EBE398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6EE4420();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6EBE440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6EBE4B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6EE4430();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6EBE528(uint64_t a1, uint64_t a2))()
{
  result = nullsub_173;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C6EBE584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6EBEEC8(&qword_1EC1F97B8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6EBE604@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1F74C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6EE4720();
  v3 = __swift_project_value_buffer(v2, qword_1EC2131C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6EBE6AC(uint64_t a1)
{
  v2 = sub_1C6EBEEC8(&qword_1EC1F97A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6EBE718()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBE770()
{
  sub_1C6EBEEC8(&qword_1EC1F97A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding);

  return sub_1C6EE45F0();
}

uint64_t sub_1C6EBE7EC()
{
  sub_1C6EE5580();
  sub_1C6EE4A00();
  return sub_1C6EE55A0();
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding()
{
  result = qword_1EC1F97C0;
  if (!qword_1EC1F97C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6EBE9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EBEA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6EBEA84(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6EBEAE0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8328, &unk_1C6EEC750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F8330, &unk_1C6EF6170);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6EE54B0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Encoder_Float16Encoding();
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  sub_1C6EBE9B0(a1 + v18, v16);
  sub_1C6EBE9B0(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_1C6EBE9B0(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_1C6EBEA20(&v16[v19], v8);
      if (sub_1C6E6B56C(*v12, *(v12 + 1), *v8, *(v8 + 1)))
      {
        v26 = *(v4 + 20);
        sub_1C6EE4430();
        sub_1C6EBEEC8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
        v27 = sub_1C6EE4A50();
        sub_1C6EBEA84(v8);
        sub_1C6EBEA84(v12);
        sub_1C6EBEE68(v16, &qword_1EC1F8328, &unk_1C6EEC750);
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_12:
        v22 = 0;
        return v22 & 1;
      }

      sub_1C6EBEA84(v8);
      sub_1C6EBEA84(v12);
      v23 = &qword_1EC1F8328;
      v24 = &unk_1C6EEC750;
LABEL_11:
      sub_1C6EBEE68(v16, v23, v24);
      goto LABEL_12;
    }

    sub_1C6EBEA84(v12);
LABEL_10:
    v23 = &qword_1EC1F8330;
    v24 = &unk_1C6EF6170;
    goto LABEL_11;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1C6EBEE68(v16, &qword_1EC1F8328, &unk_1C6EEC750);
LABEL_7:
  v21 = *(v17 + 20);
  sub_1C6EE4430();
  sub_1C6EBEEC8(&qword_1EDEF6870, MEMORY[0x1E69AAC08]);
  v22 = sub_1C6EE4A50();
  return v22 & 1;
}

uint64_t sub_1C6EBEE68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6EBEEC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6EBEF38()
{
  sub_1C6EE4430();
  if (v0 <= 0x3F)
  {
    sub_1C6EBEFCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6EBEFCC()
{
  if (!qword_1EC1F9750)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(255);
    v0 = sub_1C6EE4FE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1F9750);
    }
  }
}

unint64_t ConfigurationType.cachePolicy.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ComputeServiceCachePolicy;
  result = sub_1C6EBF084();
  a1[4] = result;
  *a1 = 0x4143C68000000000;
  a1[1] = 1000000;
  return result;
}

unint64_t sub_1C6EBF084()
{
  result = qword_1EDEF80F8;
  if (!qword_1EDEF80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF80F8);
  }

  return result;
}

uint64_t ConfigurationManagerType.bundledConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1C6EBF184(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  sub_1C6EE51C0();
  v5 = (*(a2 + 72))(a1, a2);
  if (v6)
  {
    MEMORY[0x1CCA57F60](v5);
    MEMORY[0x1CCA57F60](41, 0xE100000000000000);

    v7 = 40;
    v8 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1CCA57F60](v7, v8);

  return v10;
}

ComputationalGraph::ComputeUnits_optional __swiftcall ComputeUnits.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6EE5360();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ComputeUnits.rawValue.getter()
{
  v1 = 7105633;
  v2 = 0x5047646E41757063;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x796C6E4F757063;
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

uint64_t sub_1C6EBF328()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF3EC()
{
  *v0;
  *v0;
  *v0;
  sub_1C6EE4B30();
}

uint64_t sub_1C6EBF49C()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

void sub_1C6EBF568(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7105633;
  v4 = 0xE900000000000055;
  v5 = 0x5047646E41757063;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001C6EF7AC0;
  }

  if (*v1)
  {
    v3 = 0x796C6E4F757063;
    v2 = 0xE700000000000000;
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

uint64_t Configuration.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double Configuration.cachePolicy.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1C6EBF744()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF7B8()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6EBF7FC()
{
  v1 = 25705;
  v2 = 0x55657475706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x6C6F506568636163;
  }

  if (*v0)
  {
    v1 = 0x496567616B636170;
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

uint64_t sub_1C6EBF880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6EC0900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6EBF8C0(uint64_t a1)
{
  v2 = sub_1C6EBFBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6EBF8FC(uint64_t a1)
{
  v2 = sub_1C6EBFBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F97D0, &unk_1C6EF6550);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v22 = v1[2];
  v21 = *(v1 + 24);
  v11 = v1[4];
  v20 = v1[5];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1C6EBFBA4();
  sub_1C6EE55C0();
  LOBYTE(v23) = 0;
  sub_1C6EE5410();
  if (!v2)
  {
    v17 = v21;
    v18 = v20;
    v23 = v22;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    sub_1C6EBFFBC(&qword_1EC1F97E0);
    sub_1C6EE5440();
    LOBYTE(v23) = v17;
    v25 = 2;
    sub_1C6EBFBF8();
    sub_1C6EE5440();
    v23 = v11;
    v24 = v18;
    v25 = 3;
    sub_1C6EBFC4C();
    sub_1C6EE5440();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_1C6EBFBA4()
{
  result = qword_1EC1F97D8;
  if (!qword_1EC1F97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F97D8);
  }

  return result;
}

unint64_t sub_1C6EBFBF8()
{
  result = qword_1EC1F97E8;
  if (!qword_1EC1F97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F97E8);
  }

  return result;
}

unint64_t sub_1C6EBFC4C()
{
  result = qword_1EDEF8108[0];
  if (!qword_1EDEF8108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8108);
  }

  return result;
}

uint64_t Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F97F0, &qword_1C6EF6560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6EBFBA4();
  sub_1C6EE55B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_1C6EE53A0();
  v13 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
  v23 = 1;
  sub_1C6EBFFBC(&qword_1EC1F97F8);
  sub_1C6EE53D0();
  v18 = v20;
  v23 = 2;
  sub_1C6EC0028();
  sub_1C6EE53D0();
  v22 = v20;
  v23 = 3;
  sub_1C6EC007C();
  sub_1C6EE53D0();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  v17 = v18;
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v22;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6EBFFBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1F9A50, &qword_1C6EE90D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6EC0028()
{
  result = qword_1EC1F9800;
  if (!qword_1EC1F9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9800);
  }

  return result;
}

unint64_t sub_1C6EC007C()
{
  result = qword_1EDEF8100;
  if (!qword_1EDEF8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF8100);
  }

  return result;
}

unint64_t sub_1C6EC00D4()
{
  result = qword_1EC1F9808;
  if (!qword_1EC1F9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9808);
  }

  return result;
}

unint64_t sub_1C6EC012C()
{
  result = qword_1EC1F9810;
  if (!qword_1EC1F9810)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9810);
  }

  return result;
}

unint64_t sub_1C6EC0198@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ComputeServiceCachePolicy;
  result = sub_1C6EBF084();
  a1[4] = result;
  *a1 = 0x4143C68000000000;
  a1[1] = 1000000;
  return result;
}

unint64_t sub_1C6EC01EC(void *a1)
{
  a1[1] = sub_1C6EC0224();
  a1[2] = sub_1C6EC0278();
  result = sub_1C6EC02CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1C6EC0224()
{
  result = qword_1EC1F9818;
  if (!qword_1EC1F9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9818);
  }

  return result;
}

unint64_t sub_1C6EC0278()
{
  result = qword_1EC1F9820;
  if (!qword_1EC1F9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9820);
  }

  return result;
}

unint64_t sub_1C6EC02CC()
{
  result = qword_1EC1F9828;
  if (!qword_1EC1F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9828);
  }

  return result;
}

uint64_t sub_1C6EC035C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t dispatch thunk of ConfigurationManagerType.fetchConfigurationIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C6EC04F8;

  return v11(a1, a2, a3);
}

uint64_t sub_1C6EC04F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6EC0600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C6EC0648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6EC06A4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C6EC0734(uint64_t result, unsigned int a2, unsigned int a3)
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