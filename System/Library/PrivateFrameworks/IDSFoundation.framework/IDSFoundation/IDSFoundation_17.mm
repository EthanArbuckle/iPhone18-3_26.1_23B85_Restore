uint64_t LinkEndpointInterface.interfaceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkEndpointInterface.delegatedInterfaceName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LinkEndpointInterface.uniqueIDSortableIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LinkEndpointInterface.uniqueID.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v0 + 56);
  v6 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v6);

  MEMORY[0x1AC561C90](32, 0xE100000000000000);
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1AC561C90](v7, v8);

  result = 4023913;
  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      v10 = sub_1A7E23090();
      MEMORY[0x1AC561C90](v10);

      MEMORY[0x1AC561C90](32, 0xE100000000000000);
      MEMORY[0x1AC561C90](v3, v4);
      MEMORY[0x1AC561C90](0x3D61697620, 0xE500000000000000);

      return 4023913;
    }
  }

  return result;
}

uint64_t sub_1A7D936AC()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LinkEndpoint.interfaceName.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v7[3] = v11;
  v7[4] = v12;
  v7[1] = v9;
  v7[2] = v10;
  v7[0] = v8;
  if (!*(&v12 + 1))
  {
    return 0;
  }

  v4 = *&v7[0];

  sub_1A7D5C958(v7);
  return v4;
}

uint64_t LinkEndpoint.delegatedInterfaceName.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v9 = v14;
  v10 = v15;
  v7[1] = v12;
  v8 = v13;
  v7[0] = v11;
  if (!*(&v15 + 1))
  {
    return 0;
  }

  v4 = v8;

  sub_1A7D5C958(v7);
  return v4;
}

uint64_t LinkEndpoint.delegatedInterfaceIndex.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_1A7CD0DFC(&type metadata for LinkEndpointInterface), (v3 & 1) == 0) || (sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040), (swift_dynamicCast() & 1) == 0))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v8 = v13;
  v9 = v14;
  v7[1] = v11;
  v7[2] = v12;
  v7[0] = v10;
  if (!*(&v14 + 1))
  {
    return 0;
  }

  v4 = v8;
  sub_1A7D5C958(v7);
  return v4;
}

__n128 sub_1A7D93994(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A7D939B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D939F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D93A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D93AFC(uint64_t a1)
{
  v2 = sub_1A7D93DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D93B38(uint64_t a1)
{
  v2 = sub_1A7D93DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D93B74(uint64_t a1)
{
  v2 = sub_1A7D93E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D93BB0(uint64_t a1)
{
  v2 = sub_1A7D93E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolIDSRelayConnectorRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6F98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B6FA0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D93DC4();
  sub_1A7E23260();
  sub_1A7D93E18();
  sub_1A7E22F80();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1A7D93DC4()
{
  result = qword_1EB2B6FA8;
  if (!qword_1EB2B6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FA8);
  }

  return result;
}

unint64_t sub_1A7D93E18()
{
  result = qword_1EB2B6FB0;
  if (!qword_1EB2B6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FB0);
  }

  return result;
}

uint64_t LEToolIDSRelayConnectorRequest.hashValue.getter()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](0);
  return sub_1A7E23240();
}

uint64_t LEToolIDSRelayConnectorRequest.init(from:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B6FB8);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B6FC0);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D93DC4();
  sub_1A7E23250();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1A7E22F70();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1A7CDB53C() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v18 = v17;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v18 = &type metadata for LEToolIDSRelayConnectorRequest;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7D93E18();
  sub_1A7E22E70();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return sub_1A7B0CD6C(v20);
}

unint64_t sub_1A7D94228()
{
  result = qword_1EB2B6FC8;
  if (!qword_1EB2B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FC8);
  }

  return result;
}

uint64_t sub_1A7D94294(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B6F98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B6FA0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D93DC4();
  sub_1A7E23260();
  sub_1A7D93E18();
  sub_1A7E22F80();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1A7D944A0()
{
  result = qword_1EB2B6FD0;
  if (!qword_1EB2B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FD0);
  }

  return result;
}

unint64_t sub_1A7D944F8()
{
  result = qword_1EB2B6FD8;
  if (!qword_1EB2B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FD8);
  }

  return result;
}

unint64_t sub_1A7D94550()
{
  result = qword_1EB2B6FE0;
  if (!qword_1EB2B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FE0);
  }

  return result;
}

unint64_t sub_1A7D945A8()
{
  result = qword_1EB2B6FE8;
  if (!qword_1EB2B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FE8);
  }

  return result;
}

unint64_t sub_1A7D94600()
{
  result = qword_1EB2B6FF0;
  if (!qword_1EB2B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6FF0);
  }

  return result;
}

uint64_t sub_1A7D94654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1A7D96148(a3, v26 - v11);
  v13 = sub_1A7E226D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A7D95E10(v12);
  }

  else
  {
    sub_1A7E226C0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A7E225F0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A7E22300() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1A7D95E10(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A7D95E10(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t idsGLRunInTaskWithInferredTaskPriority(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  if (IDSTransportThreadIsOnPrimaryTransportThread())
  {
    if (qword_1EB2B2D68 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B2D70);
    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "idsGLRunInTaskWithInferredTaskPriority: is on transport thread", v11, 2u);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    sub_1A7E226A0();
    v12 = sub_1A7E226D0();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = a2;

    sub_1A7D94FB8(0, 0, v7, &unk_1A7E4E610, v13);

    return sub_1A7D95E10(v7);
  }

  else
  {
    if (qword_1EB2B2D68 != -1)
    {
      swift_once();
    }

    v15 = sub_1A7E22060();
    sub_1A7B0CB00(v15, qword_1EB2B2D70);
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A7AD9000, v16, v17, "idsGLRunInTaskWithInferredTaskPriority: not on transport thread", v18, 2u);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

    v19 = sub_1A7E226D0();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a1;
    v20[5] = a2;

    sub_1A7D94654(0, 0, v7, &unk_1A7E4E600, v20);
  }
}

uint64_t sub_1A7D94C38()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D70);
  sub_1A7B0CB00(v0, qword_1EB2B2D70);
  return sub_1A7E22050();
}

uint64_t sub_1A7D94CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A7E226D0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D94D64, 0, 0);
}

uint64_t sub_1A7D94D64()
{
  v17 = v0;
  if (qword_1EB2B2D68 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B2D70);
  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1A7E22710();
    sub_1A7D960F0();
    v9 = sub_1A7E23090();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1A7B0CB38(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "idsGLRunInTaskWithInferredTaskPriority: in task at priority %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v15 = (v0[2] + *v0[2]);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1A7D961B8;

  return v15();
}

uint64_t sub_1A7D94FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1A7D96148(a3, v26 - v11);
  v13 = sub_1A7E226D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A7D95E10(v12);
  }

  else
  {
    sub_1A7E226C0();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A7E225F0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A7E22300() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1A7D95258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A7E226D0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D95318, 0, 0);
}

uint64_t sub_1A7D95318()
{
  v17 = v0;
  if (qword_1EB2B2D68 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B2D70);
  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1A7E22710();
    sub_1A7D960F0();
    v9 = sub_1A7E23090();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1A7B0CB38(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "idsGLRunInTaskWithInferredTaskPriority: in task at priority %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v15 = (v0[2] + *v0[2]);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1A7D9556C;

  return v15();
}

uint64_t sub_1A7D9556C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7D9567C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD22FC;

  return sub_1A7D95258(a1, v4, v5, v7, v6);
}

uint64_t idsGLRunInTaskImmediatelyWithInferredTaskPriority(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  if (IDSTransportThreadIsOnPrimaryTransportThread())
  {
    if (qword_1EB2B2D68 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B2D70);
    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "idsGLRunInTaskImmediatelyWithInferredTaskPriority: is on transport thread", v11, 2u);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    sub_1A7E226A0();
    v12 = sub_1A7E226D0();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    v13 = &unk_1A7E4E630;
  }

  else
  {
    if (qword_1EB2B2D68 != -1)
    {
      swift_once();
    }

    v14 = sub_1A7E22060();
    sub_1A7B0CB00(v14, qword_1EB2B2D70);
    v15 = sub_1A7E22040();
    v16 = sub_1A7E228F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A7AD9000, v15, v16, "idsGLRunInTaskImmediatelyWithInferredTaskPriority: not on transport thread", v17, 2u);
      MEMORY[0x1AC5654B0](v17, -1, -1);
    }

    v18 = sub_1A7E226D0();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v13 = &unk_1A7E4E620;
  }

  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;

  sub_1A7D9252C(0, 0, v7, 0, 0, v13, v19);

  return sub_1A7D95E10(v7);
}

uint64_t sub_1A7D95A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A7E226D0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D95AFC, 0, 0);
}

uint64_t sub_1A7D95AFC()
{
  v17 = v0;
  if (qword_1EB2B2D68 != -1)
  {
    swift_once();
  }

  v1 = sub_1A7E22060();
  sub_1A7B0CB00(v1, qword_1EB2B2D70);
  v2 = sub_1A7E22040();
  v3 = sub_1A7E228F0();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1A7E22710();
    sub_1A7D960F0();
    v9 = sub_1A7E23090();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1A7B0CB38(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A7AD9000, v2, v3, "idsGLRunInTaskImmediatelyWithInferredTaskPriority: in task at priority %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v15 = (v0[2] + *v0[2]);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1A7D961B8;

  return v15();
}

uint64_t sub_1A7D95D50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD2A2C;

  return sub_1A7D94CA4(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7D95E10(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D95E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD2A2C;

  return sub_1A7D95A3C(a1, v4, v5, v7, v6);
}

uint64_t sub_1A7D95F38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7D44DA0;

  return v6(a1);
}

uint64_t sub_1A7D96030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7CD2A2C;

  return sub_1A7D95A3C(a1, v4, v5, v7, v6);
}

unint64_t sub_1A7D960F0()
{
  result = qword_1EB2B30A0;
  if (!qword_1EB2B30A0)
  {
    sub_1A7E226D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B30A0);
  }

  return result;
}

uint64_t sub_1A7D96148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall IDSLinkQualityReportBurstMeasurement.init(start:end:averageRTT:burstPacketsSent:burstAcksReceived:)(IDSFoundation::IDSLinkQualityReportBurstMeasurement *__return_ptr retstr, Swift::Double start, Swift::Double end, Swift::Double averageRTT, Swift::Int burstPacketsSent, Swift::Int burstAcksReceived)
{
  retstr->start = start;
  retstr->end = end;
  retstr->averageRTT = averageRTT;
  retstr->burstPacketsSent = burstPacketsSent;
  retstr->burstAcksReceived = burstAcksReceived;
}

uint64_t sub_1A7D962BC()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x5265676172657661;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6581861;
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

uint64_t sub_1A7D96354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7D969C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7D9637C(uint64_t a1)
{
  v2 = sub_1A7D965FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D963B8(uint64_t a1)
{
  v2 = sub_1A7D965FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportBurstMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B6FF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - v7;
  v10 = *(v1 + 24);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D965FC();
  sub_1A7E23260();
  v15 = 0;
  sub_1A7E23010();
  if (!v2)
  {
    v14 = 1;
    sub_1A7E23010();
    v13 = 2;
    sub_1A7E23010();
    v12 = 3;
    sub_1A7E23020();
    v11 = 4;
    sub_1A7E23020();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A7D965FC()
{
  result = qword_1EB2B7000;
  if (!qword_1EB2B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7000);
  }

  return result;
}

uint64_t IDSLinkQualityReportBurstMeasurement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19[-v8];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D965FC();
  sub_1A7E23250();
  if (!v2)
  {
    v19[15] = 0;
    sub_1A7E22F10();
    v11 = v10;
    v19[14] = 1;
    sub_1A7E22F10();
    v13 = v12;
    v19[13] = 2;
    sub_1A7E22F10();
    v15 = v14;
    v19[12] = 3;
    v17 = sub_1A7E22F20();
    v19[11] = 4;
    v18 = sub_1A7E22F20();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;
    a2[4] = v18;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7D968C0()
{
  result = qword_1EB2B7010;
  if (!qword_1EB2B7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7010);
  }

  return result;
}

unint64_t sub_1A7D96918()
{
  result = qword_1EB2B7018;
  if (!qword_1EB2B7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7018);
  }

  return result;
}

unint64_t sub_1A7D96970()
{
  result = qword_1EB2B7020;
  if (!qword_1EB2B7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7020);
  }

  return result;
}

uint64_t sub_1A7D969C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5265676172657661 && a2 == 0xEA00000000005454 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A7EB0820 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EB0840 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

void sub_1A7D96B84(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v299 = a3;
  v305 = *a2;
  v304 = a1;
  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "compacting reports", v5, 2u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v354 = MEMORY[0x1E69E7CC0];
  v301 = *(v305 + 16);
  if (!v301)
  {
    goto LABEL_300;
  }

  v8 = 0;
  v303 = v305 + 32;
  *&v6 = 16777728;
  v300 = v6;
  v302 = vdupq_n_s64(0x408F400000000000uLL);
  v339 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = (v303 + 96 * v8);
    v10 = *v9;
    v350 = v9[1];
    v11 = v9[4];
    v12 = v9[5];
    v13 = v9[3];
    v351 = v9[2];
    v352 = v13;
    v349 = v10;
    *v353 = v11;
    *&v353[16] = v12;
    v14 = v350;
    v15 = *(&v350 + 1);
    v16 = v351;
    v17 = v13;
    v19 = DWORD2(v13);
    v18 = HIDWORD(v13);
    v321 = v8 + 1;
    sub_1A7D53B5C(&v349, &v345);
    v20 = sub_1A7E22040();
    v21 = sub_1A7E228F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = v300;
      *(v22 + 4) = v14;
      *(v22 + 5) = 2048;
      *(v22 + 7) = v321;
      _os_log_impl(&dword_1A7AD9000, v20, v21, "compacting reports for linkID %hhd, linkInstanceID %ld", v22, 0xFu);
      MEMORY[0x1AC5654B0](v22, -1, -1);
    }

    if (v19 <= 4)
    {
      if (v19 <= 1)
      {
        if (v19)
        {
          if (v19 != 1)
          {
LABEL_20:
            v344 = 0xE700000000000000;
            v23 = 0x6E776F6E6B6E55;
            if (v18 > 4)
            {
              goto LABEL_37;
            }

            goto LABEL_51;
          }

          v344 = 0xE400000000000000;
          v23 = 1398033749;
          if (v18 > 4)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v344 = 0xE700000000000000;
          v23 = 0x6C6C65436E6F4ELL;
          if (v18 > 4)
          {
            goto LABEL_37;
          }
        }
      }

      else if (v19 == 2)
      {
        v344 = 0xE300000000000000;
        v23 = 5067591;
        if (v18 > 4)
        {
          goto LABEL_37;
        }
      }

      else if (v19 == 3)
      {
        v344 = 0xE800000000000000;
        v23 = 0x30303032414D4443;
        if (v18 > 4)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v344 = 0xE400000000000000;
        v23 = 1480937039;
        if (v18 > 4)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v19 > 7)
    {
      if (v19 == 8)
      {
        v344 = 0xE200000000000000;
        v23 = 21070;
        if (v18 > 4)
        {
LABEL_37:
          if (v18 > 7)
          {
            if (v18 == 8)
            {
              v24 = 0xE200000000000000;
              v25 = 21070;
              if (v15 == 3)
              {
LABEL_73:
                v26 = 0xE300000000000000;
                v27 = 7352944;
                goto LABEL_74;
              }
            }

            else
            {
              if (v18 != 9)
              {
                goto LABEL_44;
              }

              v24 = 0xE500000000000000;
              v25 = 0x6465726957;
              if (v15 == 3)
              {
                goto LABEL_73;
              }
            }
          }

          else if (v18 == 5)
          {
            v24 = 0xE300000000000000;
            v25 = 4543564;
            if (v15 == 3)
            {
              goto LABEL_73;
            }
          }

          else if (v18 == 6)
          {
            v24 = 0xE800000000000000;
            v25 = 0x73756C5041505348;
            if (v15 == 3)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v24 = 0xE700000000000000;
            v25 = 0x414D4443534454;
            if (v15 == 3)
            {
              goto LABEL_73;
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v19 != 9)
        {
          goto LABEL_20;
        }

        v344 = 0xE500000000000000;
        v23 = 0x6465726957;
        if (v18 > 4)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v19 == 5)
    {
      v344 = 0xE300000000000000;
      v23 = 4543564;
      if (v18 > 4)
      {
        goto LABEL_37;
      }
    }

    else if (v19 == 6)
    {
      v344 = 0xE800000000000000;
      v23 = 0x73756C5041505348;
      if (v18 > 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v344 = 0xE700000000000000;
      v23 = 0x414D4443534454;
      if (v18 > 4)
      {
        goto LABEL_37;
      }
    }

LABEL_51:
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 != 1)
        {
LABEL_44:
          v24 = 0xE700000000000000;
          v25 = 0x6E776F6E6B6E55;
          if (v15 == 3)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v24 = 0xE400000000000000;
        v25 = 1398033749;
        if (v15 == 3)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        v25 = 0x6C6C65436E6F4ELL;
        if (v15 == 3)
        {
          goto LABEL_73;
        }
      }
    }

    else if (v18 == 2)
    {
      v24 = 0xE300000000000000;
      v25 = 5067591;
      if (v15 == 3)
      {
        goto LABEL_73;
      }
    }

    else if (v18 == 3)
    {
      v24 = 0xE800000000000000;
      v25 = 0x30303032414D4443;
      if (v15 == 3)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v24 = 0xE400000000000000;
      v25 = 1480937039;
      if (v15 == 3)
      {
        goto LABEL_73;
      }
    }

LABEL_67:
    if (v15 == 2)
    {
      v26 = 0xE200000000000000;
      v27 = 29302;
    }

    else if (v15 == 1)
    {
      v26 = 0xE500000000000000;
      v27 = 0x79616C6572;
    }

    else
    {
      v27 = 0x6E776F6E6B6E75;
      v26 = 0xE700000000000000;
    }

LABEL_74:
    if (v17 == 4)
    {
      v28 = 0xE400000000000000;
    }

    else if (v17 == 6)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v327 = *&v353[24];
    v347 = &type metadata for IDSLinksCompactQualityReport.MetadataMeasurement;
    v348 = sub_1A7D99348();
    v29 = swift_allocObject();
    *&v345 = v29;
    *(v29 + 16) = v14;
    *(v29 + 24) = v321;
    *(v29 + 32) = v16;
    *(v29 + 48) = v23;
    *(v29 + 56) = v344;
    *(v29 + 64) = v25;
    *(v29 + 72) = v24;
    *(v29 + 80) = v27;
    *(v29 + 88) = v26;
    *(v29 + 96) = v16;
    *(v29 + 104) = v28;
    *(v29 + 112) = vrndaq_f64(vmulq_f64(*&v353[8], v302));

    v30 = v339;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v354 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
      v354 = v339;
    }

    v33 = v339[2];
    v32 = v339[3];
    v34 = v327;
    if (v33 >= v32 >> 1)
    {
      v339 = sub_1A7CCD8FC((v32 > 1), v33 + 1, 1, v339);
      v354 = v339;
    }

    v35 = v347;
    v36 = v348;
    v37 = sub_1A7CC9920(&v345, v347);
    v38 = MEMORY[0x1EEE9AC00](v37, v37);
    v40 = &v298 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40, v38);
    sub_1A7D992B0(v33, v40, &v354, v35, v36);
    sub_1A7B0CD6C(&v345);
    v354 = v339;
    v344 = sub_1A7CE37CC(MEMORY[0x1E69E7CC0]);

    sub_1A7D9939C(&v349);
    v337 = *(v34 + 16);
    if (!v337)
    {

      v270 = 0;
      v42 = 0;
      goto LABEL_291;
    }

    v341 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v318 = 0;
    v314 = 0;
    v315 = 0;
    v316 = 0;
    v317 = 0;
    v309 = 0;
    v308 = 0;
    v46 = 0;
    v335 = 0;
    v333 = 0;
    v306 = 0;
    v319 = 0;
    v330 = 0;
    v331 = 0;
    v328 = 0;
    v329 = 0;
    v307 = 0;
    v332 = 0;
    v334 = 0;
    v343 = 0;
    v47 = 0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v336 = v34 + 32;
    do
    {
      if (v343 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_302;
      }

      v55 = v336 + (v343 << 6);
      v56 = *(v55 + 24);
      v342 = *(v55 + 16);
      v58 = *(v55 + 32);
      v57 = *(v55 + 40);
      v59 = *(v55 + 48);
      v60 = *(v55 + 56);
      v61 = v60 >> 13;
      if (v60 >> 13 <= 1)
      {
        if (v61)
        {
          v105 = 0.0;
          if (v332)
          {
            v106 = *&v56;
            if (*(v332 + 2) >= 0x64uLL)
            {
              v208 = v339;
              v209 = swift_isUniquelyReferenced_nonNull_native();
              v354 = v208;
              if ((v209 & 1) == 0)
              {
                v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
                v354 = v339;
              }

              v211 = v339[2];
              v210 = v339[3];
              v212 = v46;
              if (v211 >= v210 >> 1)
              {
                v339 = sub_1A7CCD8FC((v210 > 1), v211 + 1, 1, v339);
                v354 = v339;
              }

              v347 = &type metadata for IDSLinksCompactQualityReport.StatsMeasurement;
              v213 = sub_1A7D99508();
              *&v345 = v307;
              *(&v345 + 1) = v332;
              v348 = v213;
              v346 = v334;
              v214 = v339;
              v215 = &v339[5 * v211];
              v339[2] = v211 + 1;
              sub_1A7B14FF0(&v345, (v215 + 4));
              v354 = v214;
              v307 = v321;
              v334 = MEMORY[0x1E69E7CC0];
              v107 = MEMORY[0x1E69E7CC0];
              v46 = v212;
              v34 = v327;
            }

            else
            {
              v105 = v49;
              v107 = v332;
            }
          }

          else
          {
            v106 = *&v56;
            v307 = v321;
            v334 = MEMORY[0x1E69E7CC0];
            v107 = MEMORY[0x1E69E7CC0];
          }

          v216 = v107;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v217 = v216;
          }

          else
          {
            v217 = sub_1A7CCD7F8(0, *(v216 + 2) + 1, 1, v216);
          }

          v332 = v217;
          v219 = *(v217 + 2);
          v218 = *(v217 + 3);
          if (v219 >= v218 >> 1)
          {
            v332 = sub_1A7CCD7F8((v218 > 1), v219 + 1, 1, v332);
          }

          v49 = v342;
          v220 = round((v342 - v105) * 1000.0);
          v221 = v332;
          *(v332 + 2) = v219 + 1;
          *&v221[8 * v219 + 32] = v220;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v334 = sub_1A7CCD7F8(0, *(v334 + 2) + 1, 1, v334);
          }

          v223 = *(v334 + 2);
          v222 = *(v334 + 3);
          if (v223 >= v222 >> 1)
          {
            v334 = sub_1A7CCD7F8((v222 > 1), v223 + 1, 1, v334);
          }

          v224 = v334;
          *(v334 + 2) = v223 + 1;
          *&v224[8 * v223 + 32] = round((v106 - v49) * 1000.0);
        }

        else
        {
          v326 = v46;
          v324 = v42;
          v338 = v43;
          v320 = v44;
          v323 = v45;
          v325 = v57;
          v340 = v59;
          v322 = v56;
          v313 = v60;
          v312 = v60 & 0x100;
          if (v42)
          {
            v311 = v58;
            v89 = v318;
            v90 = *(v318 + 16);
            if (v90)
            {
              if (((((v60 & 0x100) != 0) ^ *(v318 + v90 + 31)) & 1) == 0)
              {
                v91 = *(v45 + 2);
                if (v91)
                {
                  if (v45[v91 + 31] == (v60 & 1))
                  {
                    v92 = *(v43 + 2);
                    if (v92)
                    {
                      v93 = &v43[16 * v92 + 16];
                      v94 = *v93 == v56 && v311 == *(v93 + 1);
                      if (v94 || (v95 = v57, v96 = sub_1A7E230D0(), LOWORD(v60) = v313, v57 = v95, (v96 & 1) != 0))
                      {
                        v97 = *(v44 + 2);
                        if (v97)
                        {
                          if (v98 = &v44[16 * v97 + 16], *v98 == v57) && v59 == *(v98 + 1) || (v99 = v56, v100 = v60, v101 = v57, v102 = sub_1A7E230D0(), LOWORD(v60) = v100, v56 = v99, v57 = v101, v89 = v318, (v102))
                          {
                            v46 = v326;
                            goto LABEL_87;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v310 = *(v42 + 2);
            v168 = *&v342;
            v169 = v56;
            v170 = v56;
            v171 = v60;
            v172 = v311;
            v173 = v44;
            v174 = v43;
            v175 = v42;
            v176 = v45;
            v177 = v57;
            sub_1A7D52320(*&v342, v169, v311, v57, v340, v60);
            v178 = v177;
            v179 = v174;
            sub_1A7D52320(v168, v170, v172, v178, v340, v171);
            v180 = v341;
            sub_1A7D99608(v341, v175);
            if (v310 > 0x63)
            {
              v225 = v339;
              v226 = swift_isUniquelyReferenced_nonNull_native();
              v354 = v225;
              if ((v226 & 1) == 0)
              {
                v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
                v354 = v339;
              }

              v58 = v311;
              v228 = v339[2];
              v227 = v339[3];
              if (v228 >= v227 >> 1)
              {
                v339 = sub_1A7CCD8FC((v227 > 1), v228 + 1, 1, v339);
                v354 = v339;
              }

              v347 = &type metadata for IDSLinksCompactQualityReport.ExpenseMeasurement;
              v348 = sub_1A7D9955C();
              v229 = swift_allocObject();
              *&v345 = v229;
              v229[2] = v180;
              v229[3] = v175;
              v229[4] = v174;
              v229[5] = v173;
              v230 = v318;
              v229[6] = v176;
              v229[7] = v230;
              v231 = v339;
              v232 = &v339[5 * v228];
              v339[2] = v228 + 1;
              sub_1A7B14FF0(&v345, (v232 + 4));
              v354 = v231;
              v310 = v321;
              v42 = MEMORY[0x1E69E7CC0];
              v181 = MEMORY[0x1E69E7CC0];
              v50 = 0.0;
              v179 = MEMORY[0x1E69E7CC0];
              v182 = MEMORY[0x1E69E7CC0];
              v183 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v310 = v180;
              v181 = v173;
              v182 = v89;
              v183 = v176;
              v42 = v175;
              v58 = v311;
            }
          }

          else
          {
            v184 = *&v342;
            v185 = v56;
            v186 = v56;
            v187 = v60;
            v188 = v57;
            sub_1A7D52320(*&v342, v185, v58, v57, v59, v60);
            sub_1A7D52320(v184, v186, v58, v188, v59, v187);
            v310 = v321;
            v42 = MEMORY[0x1E69E7CC0];
            v181 = MEMORY[0x1E69E7CC0];
            v50 = 0.0;
            v179 = MEMORY[0x1E69E7CC0];
            v182 = MEMORY[0x1E69E7CC0];
            v183 = MEMORY[0x1E69E7CC0];
            v180 = v341;
          }

          v233 = swift_isUniquelyReferenced_nonNull_native();
          v341 = v180;
          if ((v233 & 1) == 0)
          {
            v42 = sub_1A7CCD7F8(0, *(v42 + 2) + 1, 1, v42);
          }

          v234 = v322;
          v236 = *(v42 + 2);
          v235 = *(v42 + 3);
          if (v236 >= v235 >> 1)
          {
            v42 = sub_1A7CCD7F8((v235 > 1), v236 + 1, 1, v42);
          }

          v237 = *&v342;
          v238 = round((v342 - v50) * 1000.0);
          *(v42 + 2) = v236 + 1;
          *&v42[8 * v236 + 32] = v238;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v183 = sub_1A7CCD704(0, *(v183 + 2) + 1, 1, v183);
          }

          v240 = *(v183 + 2);
          v239 = *(v183 + 3);
          v241 = v313;
          if (v240 >= v239 >> 1)
          {
            v256 = v182;
            v257 = v313;
            v258 = sub_1A7CCD704((v239 > 1), v240 + 1, 1, v183);
            v241 = v257;
            v182 = v256;
            v183 = v258;
          }

          *(v183 + 2) = v240 + 1;
          v242 = v241;
          v183[v240 + 32] = v241 & 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_1A7CCD704(0, *(v182 + 2) + 1, 1, v182);
          }

          v244 = *(v182 + 2);
          v243 = *(v182 + 3);
          if (v244 >= v243 >> 1)
          {
            v182 = sub_1A7CCD704((v243 > 1), v244 + 1, 1, v182);
          }

          *(v182 + 2) = v244 + 1;
          v182[v244 + 32] = BYTE1(v312);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v179 = sub_1A7CCCAA4(0, *(v179 + 2) + 1, 1, v179);
          }

          v246 = *(v179 + 2);
          v245 = *(v179 + 3);
          if (v246 >= v245 >> 1)
          {
            v179 = sub_1A7CCCAA4((v245 > 1), v246 + 1, 1, v179);
          }

          *(v179 + 2) = v246 + 1;
          v247 = &v179[16 * v246];
          *(v247 + 4) = v234;
          *(v247 + 5) = *&v58;

          v248 = v181;
          v249 = swift_isUniquelyReferenced_nonNull_native();
          v311 = v182;
          if ((v249 & 1) == 0)
          {
            v248 = sub_1A7CCCAA4(0, *(v181 + 2) + 1, 1, v181);
          }

          v250 = v58;
          v252 = *(v248 + 2);
          v251 = *(v248 + 3);
          v253 = v248;
          v254 = v325;
          if (v252 >= v251 >> 1)
          {
            v255 = sub_1A7CCCAA4((v251 > 1), v252 + 1, 1, v248);
            v254 = v325;
            v253 = v255;
          }

          *(v253 + 2) = v252 + 1;
          v51 = &v253[16 * v252];
          v52 = v340;
          *(v51 + 4) = v254;
          *(v51 + 5) = v52;
          v53 = *&v342;
          v54 = v254;
          sub_1A7D52368(*&v342, v234, v250, v254, v52, v242);
          sub_1A7D52368(v53, v234, v250, v54, v52, v242);
          sub_1A7D993F0(v341, v324);
          v341 = v310;
          v43 = v179;
          v44 = v253;
          v45 = v183;
          v318 = v311;
          v50 = *&v237;
LABEL_86:
          v46 = v326;
          v34 = v327;
        }
      }

      else if (v61 != 2)
      {
        v338 = v43;
        if (v61 == 3)
        {
          v326 = v46;
          v323 = v45;
          v63 = *v55;
          v62 = *(v55 + 8);
          v324 = v42;
          v64 = v44;
          v65 = v58;
          v66 = v59;
          v67 = *&v342;
          v68 = v342;
          *v355 = v342;
          v355[1] = v56;
          v355[2] = v58;
          v355[3] = v57;
          v355[4] = v66;
          v69 = v57;
          v70 = v60;

          sub_1A7D52320(v67, v56, v58, v69, v66, v70);
          v71 = v344;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *&v345 = v71;
          sub_1A7DC4C88(v355, v63, v62, v72);

          v322 = v56;
          v73 = v56;
          v74 = v65;
          v325 = v69;
          v340 = v66;
          sub_1A7D52368(v67, v73, v65, v69, v66, v70);
          v75 = 0;
          v76 = 0;
          v77 = v345 + 64;
          v78 = *(v345 + 64);
          v344 = v345;
          v79 = 1 << *(v345 + 32);
          if (v79 < 64)
          {
            v80 = ~(-1 << v79);
          }

          else
          {
            v80 = -1;
          }

          v81 = v80 & v78;
          v82 = (v79 + 63) >> 6;
          v83 = v319;
          v84 = v341;
LABEL_96:
          if (v81)
          {
            v85 = v75;
            goto LABEL_102;
          }

          while (1)
          {
            v85 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              break;
            }

            if (v85 >= v82)
            {
              v320 = v64;
              v108 = 0;
              v109 = 0;
              v110 = 1 << *(v344 + 32);
              if (v110 < 64)
              {
                v111 = ~(-1 << v110);
              }

              else
              {
                v111 = -1;
              }

              v112 = v111 & *(v344 + 64);
              v113 = (v110 + 63) >> 6;
LABEL_132:
              if (v112)
              {
                v114 = v108;
                goto LABEL_138;
              }

              while (1)
              {
                v114 = v108 + 1;
                if (__OFADD__(v108, 1))
                {
                  goto LABEL_296;
                }

                if (v114 >= v113)
                {
                  break;
                }

                v112 = *(v77 + 8 * v114);
                ++v108;
                if (v112)
                {
                  v108 = v114;
LABEL_138:
                  v115 = __clz(__rbit64(v112));
                  v112 &= v112 - 1;
                  v116 = *(*(v344 + 56) + 40 * (v115 | (v114 << 6)) + 16);
                  v88 = __OFADD__(v109, v116);
                  v109 += v116;
                  if (!v88)
                  {
                    goto LABEL_132;
                  }

LABEL_303:
                  __break(1u);
                  goto LABEL_304;
                }
              }

              v117 = 0;
              v118 = 0;
              v119 = 1 << *(v344 + 32);
              if (v119 < 64)
              {
                v120 = ~(-1 << v119);
              }

              else
              {
                v120 = -1;
              }

              v121 = v120 & *(v344 + 64);
              v122 = (v119 + 63) >> 6;
LABEL_145:
              if (v121)
              {
                v123 = v117;
                goto LABEL_151;
              }

              while (1)
              {
                v123 = v117 + 1;
                if (__OFADD__(v117, 1))
                {
                  goto LABEL_297;
                }

                if (v123 >= v122)
                {
                  break;
                }

                v121 = *(v77 + 8 * v123);
                ++v117;
                if (v121)
                {
                  v117 = v123;
LABEL_151:
                  v124 = __clz(__rbit64(v121));
                  v121 &= v121 - 1;
                  v125 = *(*(v344 + 56) + 40 * (v124 | (v123 << 6)) + 24);
                  v88 = __OFADD__(v118, v125);
                  v118 += v125;
                  if (!v88)
                  {
                    goto LABEL_145;
                  }

LABEL_304:
                  __break(1u);
LABEL_305:
                  __break(1u);
LABEL_306:
                  __break(1u);
                  goto LABEL_307;
                }
              }

              v126 = 0;
              v127 = 0;
              v128 = 1 << *(v344 + 32);
              if (v128 < 64)
              {
                v129 = ~(-1 << v128);
              }

              else
              {
                v129 = -1;
              }

              v130 = v129 & *(v344 + 64);
              v131 = (v128 + 63) >> 6;
              while (v130)
              {
                v132 = v126;
LABEL_164:
                v133 = __clz(__rbit64(v130));
                v130 &= v130 - 1;
                v134 = *(*(v344 + 56) + 40 * (v133 | (v132 << 6)) + 32);
                v88 = __OFADD__(v127, v134);
                v127 += v134;
                if (v88)
                {
                  goto LABEL_305;
                }
              }

              while (1)
              {
                v132 = v126 + 1;
                if (__OFADD__(v126, 1))
                {
                  goto LABEL_298;
                }

                if (v132 >= v131)
                {
                  break;
                }

                v130 = *(v77 + 8 * v132);
                ++v126;
                if (v130)
                {
                  v126 = v132;
                  goto LABEL_164;
                }
              }

              if (v319)
              {
                if (*(v319 + 2) >= 0x64uLL)
                {
                  v135 = v339;
                  v136 = swift_isUniquelyReferenced_nonNull_native();
                  v354 = v135;
                  if ((v136 & 1) == 0)
                  {
                    v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
                    v354 = v339;
                  }

                  v138 = v339[2];
                  v137 = v339[3];
                  if (v138 >= v137 >> 1)
                  {
                    v339 = sub_1A7CCD8FC((v137 > 1), v138 + 1, 1, v339);
                    v354 = v339;
                  }

                  v347 = &type metadata for IDSLinksCompactQualityReport.PacketStatsMeasurement;
                  v348 = sub_1A7D994B4();
                  v139 = swift_allocObject();
                  *&v345 = v139;
                  v140 = v319;
                  v139[2] = v306;
                  v139[3] = v140;
                  v141 = v331;
                  v139[4] = v330;
                  v139[5] = v141;
                  v142 = v329;
                  v139[6] = v328;
                  v139[7] = v142;
                  v143 = v339;
                  v144 = &v339[5 * v138];
                  v339[2] = v138 + 1;
                  sub_1A7B14FF0(&v345, (v144 + 4));
                  v354 = v143;
                  v84 = v341;
                  goto LABEL_174;
                }
              }

              else
              {
LABEL_174:
                v83 = MEMORY[0x1E69E7CC0];
                v145 = sub_1A7CE37CC(MEMORY[0x1E69E7CC0]);

                v314 = 0;
                v315 = 0;
                v316 = 0;
                v317 = 0;
                v48 = 0.0;
                v306 = v321;
                v344 = v145;
                v328 = v83;
                v329 = v83;
                v330 = v83;
                v331 = v83;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v83 = sub_1A7CCD7F8(0, *(v83 + 2) + 1, 1, v83);
              }

              v146 = v83;
              v147 = *(v83 + 2);
              v319 = v146;
              v148 = *(v146 + 3);
              if (v147 >= v148 >> 1)
              {
                v319 = sub_1A7CCD7F8((v148 > 1), v147 + 1, 1, v319);
              }

              v149 = v319;
              *(v319 + 2) = v147 + 1;
              *&v149[8 * v147 + 32] = round((v68 - v48) * 1000.0);
              v150 = v109 - v317;
              if (__OFSUB__(v109, v317))
              {
                goto LABEL_309;
              }

              v151 = swift_isUniquelyReferenced_nonNull_native();
              v341 = v84;
              if ((v151 & 1) == 0)
              {
                v331 = sub_1A7CCD5F4(0, *(v331 + 2) + 1, 1, v331);
              }

              v153 = *(v331 + 2);
              v152 = *(v331 + 3);
              if (v153 >= v152 >> 1)
              {
                v331 = sub_1A7CCD5F4((v152 > 1), v153 + 1, 1, v331);
              }

              v154 = v331;
              *(v331 + 2) = v153 + 1;
              *&v154[8 * v153 + 32] = v150;
              v155 = v76 - v316;
              if (__OFSUB__(v76, v316))
              {
                goto LABEL_310;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v330 = sub_1A7CCD5F4(0, *(v330 + 2) + 1, 1, v330);
              }

              v157 = *(v330 + 2);
              v156 = *(v330 + 3);
              if (v157 >= v156 >> 1)
              {
                v330 = sub_1A7CCD5F4((v156 > 1), v157 + 1, 1, v330);
              }

              v158 = v330;
              *(v330 + 2) = v157 + 1;
              *&v158[8 * v157 + 32] = v155;
              v159 = v127 - v315;
              if (__OFSUB__(v127, v315))
              {
                goto LABEL_311;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v329 = sub_1A7CCD5F4(0, *(v329 + 2) + 1, 1, v329);
              }

              v161 = *(v329 + 2);
              v160 = *(v329 + 3);
              if (v161 >= v160 >> 1)
              {
                v329 = sub_1A7CCD5F4((v160 > 1), v161 + 1, 1, v329);
              }

              v162 = v329;
              *(v329 + 2) = v161 + 1;
              *&v162[8 * v161 + 32] = v159;
              v163 = v118 - v314;
              if (!__OFSUB__(v118, v314))
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v328 = sub_1A7CCD5F4(0, *(v328 + 2) + 1, 1, v328);
                }

                v165 = *(v328 + 2);
                v164 = *(v328 + 3);
                v166 = v325;
                if (v165 >= v164 >> 1)
                {
                  v259 = sub_1A7CCD5F4((v164 > 1), v165 + 1, 1, v328);
                  v166 = v325;
                  v328 = v259;
                }

                sub_1A7D52368(*&v342, v322, v74, v166, v340, v70);
                v167 = v328;
                v314 = v118;
                *(v328 + 2) = v165 + 1;
                *&v167[8 * v165 + 32] = v163;
                v315 = v127;
                v316 = v76;
                v317 = v109;
                v48 = v68;
                v42 = v324;
                v43 = v338;
                v44 = v320;
                v45 = v323;
                goto LABEL_86;
              }

              goto LABEL_312;
            }

            v81 = *(v77 + 8 * v85);
            ++v75;
            if (v81)
            {
              v75 = v85;
LABEL_102:
              v86 = __clz(__rbit64(v81));
              v81 &= v81 - 1;
              v87 = *(*(v344 + 56) + 40 * (v86 | (v85 << 6)) + 8);
              v88 = __OFADD__(v76, v87);
              v76 += v87;
              if (!v88)
              {
                goto LABEL_96;
              }

LABEL_302:
              __break(1u);
              goto LABEL_303;
            }
          }

          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

        v103 = 0.0;
        v104 = v57;
        if (v46)
        {
          if (*(v46 + 2) >= 0x64uLL)
          {
            v189 = v339;
            v190 = swift_isUniquelyReferenced_nonNull_native();
            v354 = v189;
            if ((v190 & 1) == 0)
            {
              v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
              v354 = v339;
            }

            v192 = v339[2];
            v191 = v339[3];
            if (v192 >= v191 >> 1)
            {
              v339 = sub_1A7CCD8FC((v191 > 1), v192 + 1, 1, v339);
              v354 = v339;
            }

            v347 = &type metadata for IDSLinksCompactQualityReport.BurstMeasurement;
            v348 = sub_1A7D99460();
            v193 = swift_allocObject();
            *&v345 = v193;
            *(v193 + 16) = v309;
            *(v193 + 24) = v308;
            v194 = v335;
            *(v193 + 32) = v46;
            *(v193 + 40) = v194;
            *(v193 + 48) = v333;
            v195 = v339;
            v196 = &v339[5 * v192];
            v339[2] = v192 + 1;
            sub_1A7B14FF0(&v345, (v196 + 4));
            v309 = v321;
            v354 = v195;
            v308 = 100;
            v46 = MEMORY[0x1E69E7CC0];
            v333 = MEMORY[0x1E69E7CC0];
            v335 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v103 = *&v47;
          }
        }

        else
        {
          v309 = v321;
          v308 = 100;
          v46 = MEMORY[0x1E69E7CC0];
          v333 = MEMORY[0x1E69E7CC0];
          v335 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1A7CCD7F8(0, *(v46 + 2) + 1, 1, v46);
        }

        v198 = *(v46 + 2);
        v197 = *(v46 + 3);
        if (v198 >= v197 >> 1)
        {
          v46 = sub_1A7CCD7F8((v197 > 1), v198 + 1, 1, v46);
        }

        v47 = *&v342;
        v199 = round((v342 - v103) * 1000.0);
        *(v46 + 2) = v198 + 1;
        *&v46[8 * v198 + 32] = v199;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v335 = sub_1A7CCD7F8(0, *(v335 + 2) + 1, 1, v335);
        }

        v201 = *(v335 + 2);
        v200 = *(v335 + 3);
        if (v201 >= v200 >> 1)
        {
          v335 = sub_1A7CCD7F8((v200 > 1), v201 + 1, 1, v335);
        }

        v202 = v335;
        *(v335 + 2) = v201 + 1;
        *&v202[8 * v201 + 32] = round(*&v58 * 1000.0);
        v203 = v104 - v59;
        if (__OFSUB__(v104, v59))
        {
          goto LABEL_306;
        }

        if (v203 < 0xFFFFFFFF80000000)
        {
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        if (v203 > 0x7FFFFFFF)
        {
          goto LABEL_308;
        }

        v204 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v333 = sub_1A7CCD4F0(0, *(v333 + 2) + 1, 1, v333);
        }

        v206 = *(v333 + 2);
        v205 = *(v333 + 3);
        if (v206 >= v205 >> 1)
        {
          v333 = sub_1A7CCD4F0((v205 > 1), v206 + 1, 1, v333);
        }

        v207 = v333;
        *(v333 + 2) = v206 + 1;
        *&v207[4 * v206 + 32] = v203;
        v46 = v204;
        v34 = v327;
        v43 = v338;
      }

LABEL_87:
      ++v343;
    }

    while (v343 != v337);

    if (v42)
    {

      v260 = v43;

      v261 = v318;

      v262 = v339;
      v263 = swift_isUniquelyReferenced_nonNull_native();
      v354 = v262;
      if ((v263 & 1) == 0)
      {
        v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
        v354 = v339;
      }

      v265 = v339[2];
      v264 = v339[3];
      v266 = v46;
      if (v265 >= v264 >> 1)
      {
        v339 = sub_1A7CCD8FC((v264 > 1), v265 + 1, 1, v339);
        v354 = v339;
      }

      v347 = &type metadata for IDSLinksCompactQualityReport.ExpenseMeasurement;
      v348 = sub_1A7D9955C();
      v267 = swift_allocObject();
      *&v345 = v267;
      v267[2] = v341;
      v267[3] = v42;
      v267[4] = v260;
      v267[5] = v44;
      v267[6] = v45;
      v267[7] = v261;
      v268 = v339;
      v269 = &v339[5 * v265];
      v339[2] = v265 + 1;
      sub_1A7B14FF0(&v345, (v269 + 4));
      v354 = v268;
      v46 = v266;
    }

    if (v332)
    {
      v271 = v339;
      v272 = swift_isUniquelyReferenced_nonNull_native();
      v354 = v271;
      if ((v272 & 1) == 0)
      {
        v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
        v354 = v339;
      }

      v274 = v339[2];
      v273 = v339[3];
      v275 = v46;
      if (v274 >= v273 >> 1)
      {
        v339 = sub_1A7CCD8FC((v273 > 1), v274 + 1, 1, v339);
        v354 = v339;
      }

      v347 = &type metadata for IDSLinksCompactQualityReport.StatsMeasurement;
      v276 = sub_1A7D99508();
      *&v345 = v307;
      *(&v345 + 1) = v332;
      v348 = v276;
      v346 = v334;
      v277 = v339;
      v278 = &v339[5 * v274];
      v339[2] = v274 + 1;
      sub_1A7B14FF0(&v345, (v278 + 4));
      v354 = v277;
      v46 = v275;
    }

    v270 = v341;
    if (v319)
    {
      v279 = v339;
      v280 = swift_isUniquelyReferenced_nonNull_native();
      v354 = v279;
      if ((v280 & 1) == 0)
      {
        v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
        v354 = v339;
      }

      v282 = v339[2];
      v281 = v339[3];
      v283 = v46;
      if (v282 >= v281 >> 1)
      {
        v339 = sub_1A7CCD8FC((v281 > 1), v282 + 1, 1, v339);
        v354 = v339;
      }

      v347 = &type metadata for IDSLinksCompactQualityReport.PacketStatsMeasurement;
      v348 = sub_1A7D994B4();
      v284 = swift_allocObject();
      *&v345 = v284;
      v285 = v319;
      v284[2] = v306;
      v284[3] = v285;
      v286 = v331;
      v284[4] = v330;
      v284[5] = v286;
      v287 = v329;
      v284[6] = v328;
      v284[7] = v287;
      v288 = v339;
      v289 = &v339[5 * v282];
      v339[2] = v282 + 1;
      sub_1A7B14FF0(&v345, (v289 + 4));
      v354 = v288;
      v46 = v283;
      v270 = v341;
    }

    if (v46)
    {
      v290 = v339;
      v291 = swift_isUniquelyReferenced_nonNull_native();
      v354 = v290;
      if ((v291 & 1) == 0)
      {
        v339 = sub_1A7CCD8FC(0, v339[2] + 1, 1, v339);
        v354 = v339;
      }

      v293 = v339[2];
      v292 = v339[3];
      if (v293 >= v292 >> 1)
      {
        v339 = sub_1A7CCD8FC((v292 > 1), v293 + 1, 1, v339);
        v354 = v339;
      }

      v347 = &type metadata for IDSLinksCompactQualityReport.BurstMeasurement;
      v348 = sub_1A7D99460();
      v294 = swift_allocObject();
      *&v345 = v294;
      *(v294 + 16) = v309;
      *(v294 + 24) = v308;
      v295 = v335;
      *(v294 + 32) = v46;
      *(v294 + 40) = v295;
      *(v294 + 48) = v333;
      v296 = v339;
      v297 = &v339[5 * v293];
      v339[2] = v293 + 1;
      sub_1A7B14FF0(&v345, (v297 + 4));

      v354 = v296;
      goto LABEL_292;
    }

LABEL_291:

LABEL_292:
    sub_1A7D993F0(v270, v42);
    v8 = v321;
    if (v321 == v301)
    {
LABEL_299:
      v7 = v354;
LABEL_300:
      *v299 = v7;
      return;
    }
  }

  while (v321 < *(v305 + 16));
LABEL_313:
  __break(1u);
}

uint64_t sub_1A7D99170(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 4543564;
      }

      if (a1 == 6)
      {
        return 0x73756C5041505348;
      }

      return 0x414D4443534454;
    }

    if (a1 == 8)
    {
      return 21070;
    }

    if (a1 == 9)
    {
      return 0x6465726957;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C6C65436E6F4ELL;
    }

    if (a1 == 1)
    {
      return 1398033749;
    }

    return 0x6E776F6E6B6E55;
  }

  if (a1 == 2)
  {
    return 5067591;
  }

  if (a1 == 3)
  {
    return 0x30303032414D4443;
  }

  return 1480937039;
}

uint64_t sub_1A7D992B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1A7CC98BC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1A7B14FF0(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_1A7D99348()
{
  result = qword_1EB2B2A10;
  if (!qword_1EB2B2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A10);
  }

  return result;
}

uint64_t sub_1A7D993F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1A7D99460()
{
  result = qword_1EB2B2A58;
  if (!qword_1EB2B2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A58);
  }

  return result;
}

unint64_t sub_1A7D994B4()
{
  result = qword_1EB2B29F8;
  if (!qword_1EB2B29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B29F8);
  }

  return result;
}

unint64_t sub_1A7D99508()
{
  result = qword_1EB2B2A40;
  if (!qword_1EB2B2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A40);
  }

  return result;
}

unint64_t sub_1A7D9955C()
{
  result = qword_1EB2B2A28;
  if (!qword_1EB2B2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A28);
  }

  return result;
}

uint64_t sub_1A7D995B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A7D99608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A7D99678(uint64_t a1, void *a2)
{
  sub_1A7CC7FFC(&qword_1EB2B4C00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A7E418C0;
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[4];
  v7 = a2[5];
  type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  swift_allocObject();

  v9 = sub_1A7DFE80C(v8, v4, v5, 100, v6, v7);

  *(v3 + 32) = v9;
  *(v3 + 40) = &protocol witness table for IDSLinksQualityBurstsOngoingTask;
  return v3;
}

uint64_t sub_1A7D99750()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D997B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A7D99870;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1A7E45260;
  *(v4 + 24) = v3;

  sub_1A7DA09B8(v5, &unk_1A7E4E210, v4, v2);
}

uint64_t sub_1A7D99878(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1A7D998C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D99910()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2C58);
  sub_1A7B0CB00(v0, qword_1EB2B2C58);
  return sub_1A7E22050();
}

void sub_1A7D99998(void *a1@<X8>)
{
  v3 = sub_1A7CC7FFC(&unk_1EB2B7BF0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for IDSLinksQualityReportBuilder();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v1 + 4);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 4);
  if (Strong)
  {
    os_unfair_lock_lock((Strong + 200));
    sub_1A7CC9600((Strong + 208), v25);
    os_unfair_lock_unlock((Strong + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    type metadata accessor for IDSLinksQualityReportBuilderComponent();
    if ((swift_dynamicCast() & 1) != 0 && v26)
    {
      v13 = (v26 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
      os_unfair_lock_lock((v26 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
      v14 = sub_1A7CC7FFC(&qword_1EB2B53D8);
      sub_1A7CEB564(v13 + *(v14 + 28), v6);
      os_unfair_lock_unlock(v13);

      (*(v8 + 56))(v6, 0, 1, v7);
      sub_1A7CEB4A4(v6, v11);
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_1A7E22050();
      v15 = *(v7 + 20);
      *&v11[v15] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_1A7D99ED0(v6);
      }
    }

    v17 = sub_1A7DBB5A0(v16);

    sub_1A7CEB508(v11);
    *&v25[0] = v17;
    if (qword_1EB2B2C50 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E22060();
    v19 = sub_1A7B0CB00(v18, qword_1EB2B2C58);
    sub_1A7D96B84(v19, v25, a1);
  }

  else
  {
    if (qword_1EB2B2C50 != -1)
    {
      swift_once();
    }

    v20 = sub_1A7E22060();
    sub_1A7B0CB00(v20, qword_1EB2B2C58);
    v21 = sub_1A7E22040();
    v22 = sub_1A7E228E0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A7AD9000, v21, v22, "no link engine; returning empty compact report", v23, 2u);
      MEMORY[0x1AC5654B0](v23, -1, -1);
    }

    *a1 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A7D99D9C()
{
  sub_1A7D99F38(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for IDSLinkQualityReport.SyncToken(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IDSLinkQualityReport.SyncToken(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7D99E58()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_1A7D99E88()
{
  os_unfair_lock_lock(v0 + 4);
  swift_weakAssign();

  os_unfair_lock_unlock(v0 + 4);
}

uint64_t sub_1A7D99ED0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B7BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for IDSObservedRemoteRAT(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSObservedRemoteRAT(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IDSObservedRemoteRAT(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t IDSDataChannelLinkEngine.__allocating_init(timeFn:enableQualityMetrics:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  type metadata accessor for LinkEngine();
  swift_allocObject();
  v7 = LinkEngine.init()();
  *(v6 + 16) = v7;
  if (a3)
  {
    v8 = v7;
    type metadata accessor for IDSLinksQualityBasicStatsPlugin();
    v9 = swift_allocObject();
    *(v9 + 16) = 0xD00000000000001FLL;
    *(v9 + 24) = 0x80000001A7EAFA90;

    v10 = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    *(v9 + 64) = 0;
    *(v9 + 72) = v10;
    *(v9 + 48) = xmmword_1A7E494C0;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    sub_1A7D9A2BC(v11, v8);
  }

  return v6;
}

uint64_t IDSDataChannelLinkEngine.init(timeFn:enableQualityMetrics:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for LinkEngine();
  swift_allocObject();
  v8 = LinkEngine.init()();
  *(v3 + 16) = v8;
  if (a3)
  {
    v9 = v8;
    type metadata accessor for IDSLinksQualityBasicStatsPlugin();
    v10 = swift_allocObject();
    *(v10 + 16) = 0xD00000000000001FLL;
    *(v10 + 24) = 0x80000001A7EAFA90;

    v11 = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    *(v10 + 64) = 0;
    *(v10 + 72) = v11;
    *(v10 + 48) = xmmword_1A7E494C0;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    sub_1A7D9A2BC(v12, v9);
  }

  return v4;
}

uint64_t sub_1A7D9A1F8(uint64_t a1, unint64_t a2)
{
  LinkEngine.add(linkWithUniqueName:)(a1, a2);
}

uint64_t IDSDataChannelLinkEngine.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A7D9A2BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7D01714;
  *(v5 + 24) = a1;

  sub_1A7DA01FC(v6, sub_1A7D0171C, v5, v4);

  v7 = *(a2 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A7D01724;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_1A7E4E9E8;
  *(v9 + 24) = v8;

  sub_1A7DA06A0(v10, &unk_1A7E4E9F0, v9, v7);

  os_unfair_lock_lock((a2 + 72));
  v11 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1A7CCD4CC(0, v11[2] + 1, 1, v11);
    *(a2 + 80) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1A7CCD4CC((v13 > 1), v14 + 1, 1, v11);
    *(a2 + 80) = v11;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = a1;
  v15[5] = &off_1F1AAECD8;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9A480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7D99870;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1A7E45260;
  *(v6 + 24) = v5;

  sub_1A7DA09B8(v7, &unk_1A7E4E210, v6, v4);

  os_unfair_lock_lock((a2 + 72));
  v8 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A7CCD4CC(0, v8[2] + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A7CCD4CC((v10 > 1), v11 + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = a1;
  v12[5] = &off_1F1AB4F70;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9A5E4(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  swift_weakAssign();
  os_unfair_lock_unlock(a1 + 4);
  os_unfair_lock_lock((a2 + 72));
  v4 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCD4CC(0, v4[2] + 1, 1, v4);
    *(a2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1A7CCD4CC((v6 > 1), v7 + 1, 1, v4);
    *(a2 + 80) = v4;
  }

  v4[2] = v7 + 1;
  v8 = &v4[2 * v7];
  v8[4] = a1;
  v8[5] = &off_1F1AB50E0;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9A6D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1A7E41D60;
  *(v5 + 24) = a1;

  sub_1A7D20E08(v6, &unk_1A7E4E9C8, v5, v4);

  os_unfair_lock_lock((a2 + 72));
  v7 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A7CCD4CC(0, v7[2] + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCD4CC((v9 > 1), v10 + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = &off_1F1AAC820;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9A810(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1A7E4E9C0;
  *(v5 + 24) = a1;

  sub_1A7D219A8(v6, &unk_1A7E44460, v5, v4);

  os_unfair_lock_lock((a2 + 72));
  v7 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A7CCD4CC(0, v7[2] + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCD4CC((v9 > 1), v10 + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = &protocol witness table for IDSConnectRelayLinksByInterfaceTypePlugin;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9A948(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = a1[8];
  sub_1A7CC9878(a1 + 4, v4);
  v6 = (*(v5 + 8))(v4, v5);
  sub_1A7D65220(a1, sub_1A7D64F7C, 0, v6);

  os_unfair_lock_lock((a2 + 72));
  v7 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A7CCD4CC(0, v7[2] + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCD4CC((v9 > 1), v10 + 1, 1, v7);
    *(a2 + 80) = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = &protocol witness table for IDSLinkDefinitionPortOverridingPlugin;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9AA80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  sub_1A7DA0388(v5, sub_1A7D9B1E0, v5, v4);

  os_unfair_lock_lock((a2 + 72));
  v6 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A7CCD4CC(0, v6[2] + 1, 1, v6);
    *(a2 + 80) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1A7CCD4CC((v8 > 1), v9 + 1, 1, v6);
    *(a2 + 80) = v6;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = &off_1F1ABA228;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9AB88(uint64_t a1, uint64_t a2)
{
  IDSLinkQualityMonitorPlugin.register(engine:)(a2);
  os_unfair_lock_lock((a2 + 72));
  v4 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCD4CC(0, v4[2] + 1, 1, v4);
    *(a2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1A7CCD4CC((v6 > 1), v7 + 1, 1, v4);
    *(a2 + 80) = v4;
  }

  v4[2] = v7 + 1;
  v8 = &v4[2 * v7];
  v8[4] = a1;
  v8[5] = &protocol witness table for IDSLinkQualityMonitorPlugin;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9AC68(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1A7DBA3CC() + 16);

  sub_1A7DEE438(v5, sub_1A7D9B12C, a1, v4);

  v6 = *(a2 + 40);

  sub_1A7DA0B44(v7, &unk_1A7E4E9D0, a1, v6);

  os_unfair_lock_lock((a2 + 72));
  v8 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A7CCD4CC(0, v8[2] + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A7CCD4CC((v10 > 1), v11 + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = a1;
  v12[5] = &off_1F1AB96D8;

  os_unfair_lock_unlock((a2 + 72));
}

void sub_1A7D9ADC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A7D9B1E8;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1A7E46F20;
  *(v6 + 24) = v5;

  sub_1A7D212B4(v7, &unk_1A7E4E9E0, v6, v4);

  os_unfair_lock_lock((a2 + 72));
  v8 = *(a2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 80) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A7CCD4CC(0, v8[2] + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A7CCD4CC((v10 > 1), v11 + 1, 1, v8);
    *(a2 + 80) = v8;
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = a1;
  v12[5] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;

  os_unfair_lock_unlock((a2 + 72));
}

uint64_t sub_1A7D9AF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = LinkEngine.link(_:)(a2, a3);
  if (result)
  {
    v9 = result;
    swift_unknownObjectRetain_n();
    os_unfair_lock_lock(v9 + 10);
    v10[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v10[0] = a1;
    v10[1] = a6;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(v10, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v9 + 10);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1A7D9B094(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7DB624C(a1);
}

uint64_t sub_1A7D9B134(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7DEE1D8(a1, a2, v2);
}

Swift::UInt64 __swiftcall monotonicTimeInMicroseconds()()
{
  result = mach_continuous_time();
  v1 = result;
  if (qword_1EB2B3368 != -1)
  {
    result = swift_once();
  }

  v2 = *&qword_1EB2B3370 * v1;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 1.84467441e19)
  {
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_1A7D9B290()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v1) = v3[0].denom;
  LODWORD(v0) = v3[0].numer;
  result = v0 / v1 / 1000.0;
  qword_1EB2B3370 = *&result;
  return result;
}

double bstMachTimeRate.getter()
{
  if (qword_1EB2B3368 != -1)
  {
    swift_once();
  }

  return *&qword_1EB2B3370;
}

uint64_t sub_1A7D9B378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747265766E69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D9B3FC(uint64_t a1)
{
  v2 = sub_1A7D9B6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D9B438(uint64_t a1)
{
  v2 = sub_1A7D9B6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D9B474(uint64_t a1)
{
  v2 = sub_1A7D9B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D9B4B0(uint64_t a1)
{
  v2 = sub_1A7D9B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolSorterRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7030);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7038);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D9B6C4();
  sub_1A7E23260();
  sub_1A7D9B718();
  sub_1A7E22F80();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1A7D9B6C4()
{
  result = qword_1EB2B7040;
  if (!qword_1EB2B7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7040);
  }

  return result;
}

unint64_t sub_1A7D9B718()
{
  result = qword_1EB2B7048;
  if (!qword_1EB2B7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7048);
  }

  return result;
}

uint64_t LEToolSorterRequest.hashValue.getter()
{
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](0);
  return sub_1A7E23240();
}

uint64_t LEToolSorterRequest.init(from:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7050);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7058);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D9B6C4();
  sub_1A7E23250();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_1A7E22F70();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_1A7CDB53C() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_1A7E22BD0();
    swift_allocError();
    v18 = v17;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v18 = &type metadata for LEToolSorterRequest;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7D9B718();
  sub_1A7E22E70();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return sub_1A7B0CD6C(v20);
}

unint64_t sub_1A7D9BB28()
{
  result = qword_1EB2B7060;
  if (!qword_1EB2B7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7060);
  }

  return result;
}

uint64_t sub_1A7D9BB94(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7030);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7038);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D9B6C4();
  sub_1A7E23260();
  sub_1A7D9B718();
  sub_1A7E22F80();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1A7D9BDA0()
{
  result = qword_1EB2B7068;
  if (!qword_1EB2B7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7068);
  }

  return result;
}

unint64_t sub_1A7D9BDF8()
{
  result = qword_1EB2B7070;
  if (!qword_1EB2B7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7070);
  }

  return result;
}

unint64_t sub_1A7D9BE50()
{
  result = qword_1EB2B7078;
  if (!qword_1EB2B7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7078);
  }

  return result;
}

unint64_t sub_1A7D9BEA8()
{
  result = qword_1EB2B7080;
  if (!qword_1EB2B7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7080);
  }

  return result;
}

unint64_t sub_1A7D9BF00()
{
  result = qword_1EB2B7088;
  if (!qword_1EB2B7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7088);
  }

  return result;
}

IDSFoundation::LinkDefinition __swiftcall LinkDefinition.init(from:to:)(IDSFoundation::LinkEndpoint from, IDSFoundation::LinkEndpoint to)
{
  v3 = v2;
  v4 = *from.components._rawValue;
  v5 = *to.components._rawValue;
  v6 = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  *v3 = v6;
  v3[1] = v4;
  v3[2] = v5;
  result.to.components._rawValue = v8;
  result.from.components._rawValue = v7;
  result.components._rawValue = v6;
  return result;
}

void *LinkDefinition.uniqueID.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v34 = v0[1];
  v35 = v0[2];
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = ((v3 + 63) >> 6);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    while (1)
    {
LABEL_10:
      v10 = __clz(__rbit64(v5)) | (v7 << 6);
      v11 = *(*(v1 + 48) + 8 * v10);
      sub_1A7B0CD10(*(v1 + 56) + 32 * v10, v42);
      v41 = v11;
      sub_1A7B0CD10(v42, v36);
      sub_1A7CC7FFC(&qword_1EB2B5040);
      sub_1A7CC7FFC(&qword_1EB2B4C90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
      }

      v5 &= v5 - 1;
      sub_1A7CC9970(&v41, &qword_1EB2B5D28);
      if (*(&v38 + 1))
      {
        break;
      }

      sub_1A7CC9970(&v37, &qword_1EB2B5D30);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    sub_1A7B14FF0(&v37, v40);
    sub_1A7B14FF0(v40, &v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7CCCCBC(0, v8[2] + 1, 1, v8);
    }

    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1A7CCCCBC((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    sub_1A7B14FF0(&v37, &v8[5 * v13 + 4]);
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v41 = v8;

  sub_1A7D2C8A8(&v41);

  v14 = v41;
  v15 = v41[2];
  if (v15)
  {
    *&v40[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v15, 0);
    v16 = *&v40[0];
    v17 = (v14 + 4);
    do
    {
      sub_1A7CC99E0(v17, &v41);
      v18 = v43;
      v19 = v44;
      sub_1A7CC9878(&v41, v43);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      sub_1A7B0CD6C(&v41);
      *&v40[0] = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_1A7CCE918((v23 > 1), v24 + 1, 1);
        v16 = *&v40[0];
      }

      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v17 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v41 = v16;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v26 = sub_1A7E221F0();
  v28 = v27;

  *&v40[0] = v34;
  v41 = LinkEndpoint.uniqueID.getter();
  v42[0] = v29;
  MEMORY[0x1AC561C90](540945696, 0xE400000000000000);
  *&v40[0] = v35;
  v30 = LinkEndpoint.uniqueID.getter();
  MEMORY[0x1AC561C90](v30);

  v31 = v41;
  v32 = v42[0];
  if (sub_1A7E22360() <= 0)
  {
  }

  else
  {
    v41 = v31;
    v42[0] = v32;
    MEMORY[0x1AC561C90](32, 0xE100000000000000);
    MEMORY[0x1AC561C90](v26, v28);

    return v41;
  }

  return v31;
}

uint64_t LinkDefinition.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LinkDefinition.from.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t LinkDefinition.to.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

__n128 sub_1A7D9C4F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A7D9C510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A7D9C558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D9C5C0()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7090);
  sub_1A7B0CB00(v0, qword_1EB2B7090);
  return sub_1A7E22050();
}

uint64_t sub_1A7D9C650@<X0>(os_unfair_lock_s *a1@<X0>, double *p_os_unfair_lock_opaque@<X8>)
{
  v4 = a1;
  os_unfair_lock_lock(a1 + 10);
  sub_1A7CCBD20(&v4[12], v86);
  os_unfair_lock_unlock(v4 + 10);
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v7 = v90) == 0)
  {
    v13 = 0.0;
    v14 = 1.0;
LABEL_68:
    *p_os_unfair_lock_opaque = v14;
    p_os_unfair_lock_opaque[1] = v13;
    return result;
  }

  v83 = (*v2)();
  os_unfair_lock_lock(v4 + 10);
  sub_1A7CCBDBC(&v4[12], v86);
  os_unfair_lock_unlock(v4 + 10);
  v85 = v7;
  if (swift_dynamicCast() & 1) != 0 && v90 != 2 && (v90)
  {
    v8 = 6;
    v9 = 5;
    v10 = 4;
    v11 = 3;
    v12 = 2;
  }

  else
  {
    v8 = 11;
    v9 = 10;
    v10 = 9;
    v11 = 8;
    v12 = 7;
  }

  v81 = v2[v8];
  v15 = v2[v9];
  v16 = *&v2[v10];
  v14 = *&v2[v11];
  v17 = *&v2[v12];
  os_unfair_lock_lock((v7 + 40));
  v18 = *(v7 + 176);
  v19 = *(v7 + 184);
  v20 = *(v7 + 208);
  v86[1] = *(v7 + 192);
  v86[2] = v20;
  v21 = *(v7 + 232);
  v87 = *(v7 + 224);
  v22 = *(v7 + 240);
  sub_1A7D641E0(v18);
  *&v86[0] = v18;
  *(&v86[0] + 1) = v19;
  v88 = v21;
  v89 = v22;
  v23 = sub_1A7D5E3B0();
  v24 = v83 - v23;
  if (v83 < v23)
  {
    goto LABEL_80;
  }

  __y = v16;
  if (v24)
  {
    v25 = v21 / (v24 / 1000000.0);
  }

  else
  {
    v25 = v21;
  }

  os_unfair_lock_unlock(v85 + 10);
  if (v17 > v25)
  {
    v3 = v17;
  }

  else
  {
    v3 = v25;
  }

  v16 = 1.0;
  v84 = v17;
  if (v17 > 1.0)
  {
    v26 = v17;
  }

  else
  {
    v26 = 1.0;
  }

  v14 = exp2(1.0 - v22 / v26 / v14) * -0.5;
  if (qword_1EB2B4840 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v13 = v14 + v16;
    v27 = sub_1A7E22060();
    sub_1A7B0CB00(v27, qword_1EB2B7090);

    v28 = sub_1A7E22040();
    v29 = sub_1A7E228D0();

    v79 = p_os_unfair_lock_opaque;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v86[0] = v31;
      *v30 = 136315650;
      *(v30 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
      *(v30 + 12) = 2048;
      *(v30 + 14) = v22;
      *(v30 + 22) = 2048;
      *(v30 + 24) = v13;
      _os_log_impl(&dword_1A7AD9000, v28, v29, "Confidence for %s: %ld -> %f", v30, 0x20u);
      sub_1A7B0CD6C(v31);
      MEMORY[0x1AC5654B0](v31, -1, -1);
      MEMORY[0x1AC5654B0](v30, -1, -1);
    }

    v32 = *&v15[4]._os_unfair_lock_opaque;
    if (!v32)
    {
      break;
    }

    p_os_unfair_lock_opaque = &v15[10]._os_unfair_lock_opaque;
    v22 = 2048;
    v15 = v85;
    while (1)
    {
      v33 = ceil(v3 * *(p_os_unfair_lock_opaque - 1));
      if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v33 <= -9.22337204e18)
      {
        goto LABEL_70;
      }

      if (v33 >= 9.22337204e18)
      {
        goto LABEL_71;
      }

      v34 = *p_os_unfair_lock_opaque;
      v35 = v33;
      os_unfair_lock_lock(v15 + 10);
      v36 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(v35);
      os_unfair_lock_unlock(v15 + 10);
      if (v36.outOf)
      {
        v14 = 1.0 - v36._0 / fmax(v36.outOf, 1.0);
        v37 = v34 * v14;

        v38 = sub_1A7E22040();
        v39 = sub_1A7E228D0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v86[0] = v41;
          *v40 = 136316418;
          *(v40 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
          *(v40 + 12) = 2048;
          *(v40 + 14) = v36._0;
          *(v40 + 22) = 2048;
          *(v40 + 24) = v36.outOf;
          *(v40 + 32) = 2048;
          *(v40 + 34) = v14;
          *(v40 + 42) = 2048;
          *(v40 + 44) = v34;
          *(v40 + 52) = 2048;
          *(v40 + 54) = v37;
          _os_log_impl(&dword_1A7AD9000, v38, v39, "score(forLink:): knownPacketLossScoring: %s: received %ld/%ld packets -> %f loss, %f weight -> %f", v40, 0x3Eu);
          sub_1A7B0CD6C(v41);
          v42 = v41;
          v15 = v85;
          MEMORY[0x1AC5654B0](v42, -1, -1);
          MEMORY[0x1AC5654B0](v40, -1, -1);
        }

        if (v37 > 0.0)
        {
          v16 = v16 * (1.0 - v37);
        }
      }

      p_os_unfair_lock_opaque += 2;
      if (!--v32)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

  v15 = v85;
LABEL_34:
  v14 = pow(v16, __y);

  v43 = sub_1A7E22040();
  v44 = sub_1A7E228D0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v86[0] = v46;
    *v45 = 136315650;
    *(v45 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v16;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v14;
    _os_log_impl(&dword_1A7AD9000, v43, v44, "Score adjusted for score curve: %s: %f -> %f", v45, 0x20u);
    sub_1A7B0CD6C(v46);
    v47 = v46;
    v15 = v85;
    MEMORY[0x1AC5654B0](v47, -1, -1);
    MEMORY[0x1AC5654B0](v45, -1, -1);
  }

  p_os_unfair_lock_opaque = v83;
  os_unfair_lock_lock(v4 + 10);
  sub_1A7CCBDBC(&v4[12], v86);
  os_unfair_lock_unlock(v4 + 10);
  result = swift_dynamicCast();
  v48 = v83;
  if (result)
  {
    if (v90 == 2)
    {
      v48 = v83;
    }

    else
    {
      v48 = v91;
    }
  }

  if (((v48 | v83) & 0x8000000000000000) == 0)
  {
    v49 = *(v81 + 2);
    if (v49)
    {
      v16 = (v83 - v48) / 1000000.0;
      v50 = (v81 + 48);
      v22 = &dword_1A7AD9000;
      v3 = -1.0;
      v82 = v4;
      while (1)
      {
        v52 = *(v50 - 2);
        if (v16 < v52)
        {
          break;
        }

        v60 = v52 * 1000000.0;
        if (COERCE__INT64(fabs(v52 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_72;
        }

        if (v60 <= -1.0)
        {
          goto LABEL_73;
        }

        if (v60 >= 1.84467441e19)
        {
          goto LABEL_74;
        }

        v61 = p_os_unfair_lock_opaque - v60;
        if (p_os_unfair_lock_opaque < v60)
        {
          goto LABEL_75;
        }

        v62 = *(v50 - 1);
        v63 = *v50;
        os_unfair_lock_lock(v15 + 10);
        v64 = IDSLinkPacketBitfield.packetsReceived(since:)(v61);
        v65 = v64;
        v66 = *(&v64 + 1);
        os_unfair_lock_unlock(v15 + 10);
        if (v66 < 0)
        {
          goto LABEL_76;
        }

        v67 = (p_os_unfair_lock_opaque - v66) / 1000000.0;
        if (v67 < v52)
        {

          v53 = sub_1A7E22040();
          v68 = sub_1A7E228D0();

          if (os_log_type_enabled(v53, v68))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v86[0] = v56;
            *v55 = 136315650;
            *(v55 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
            *(v55 + 12) = 2048;
            *(v55 + 14) = v52;
            *(v55 + 22) = 2048;
            *(v55 + 24) = v67;
            v57 = v68;
            v58 = v53;
            v59 = "score(forLink:): unknownPacketLossScoring: Skipping penalty for %s because oldest packet is younger than %f seconds (%f)";
LABEL_43:
            _os_log_impl(&dword_1A7AD9000, v58, v57, v59, v55, 0x20u);
            sub_1A7B0CD6C(v56);
            MEMORY[0x1AC5654B0](v56, -1, -1);
            v51 = v55;
            v15 = v85;
            MEMORY[0x1AC5654B0](v51, -1, -1);
          }

LABEL_44:

          goto LABEL_45;
        }

        v69 = v84 * (v52 - v62);
        if (COERCE__INT64(fabs(v69)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_77;
        }

        if (v69 <= -9.22337204e18)
        {
          goto LABEL_78;
        }

        if (v69 >= 9.22337204e18)
        {
          goto LABEL_79;
        }

        v70 = v69;
        v71 = *(v65 + 16);
        if (v71 >= v69)
        {
          v71 = v69;
        }

        v72 = v63 * (v13 * (1.0 - v71 / v69));

        v73 = sub_1A7E22040();
        v74 = sub_1A7E228D0();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *&v86[0] = v76;
          *v75 = 136316418;
          *(v75 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
          *(v75 + 12) = 2048;
          *(v75 + 14) = v72;
          *(v75 + 22) = 2048;
          *(v75 + 24) = v14;
          *(v75 + 32) = 2048;
          *(v75 + 34) = v13;
          *(v75 + 42) = 2048;
          v77 = *(v65 + 16);

          *(v75 + 44) = v77;
          p_os_unfair_lock_opaque = v83;

          *(v75 + 52) = 2048;
          v4 = v82;
          *(v75 + 54) = v70;
          v22 = &dword_1A7AD9000;
          _os_log_impl(&dword_1A7AD9000, v73, v74, "score(forLink:): unknownPacketLossScoring: %s: %f (score: %f, confidence: %f, actualPackets: %ld, expectedPackets: %ld)", v75, 0x3Eu);
          sub_1A7B0CD6C(v76);
          v78 = v76;
          v15 = v85;
          MEMORY[0x1AC5654B0](v78, -1, -1);
          MEMORY[0x1AC5654B0](v75, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v22 = &dword_1A7AD9000;
        }

        if (v72 > 0.0)
        {
          v14 = (1.0 - v72) * v14;
        }

LABEL_45:
        v50 += 3;
        if (!--v49)
        {
          goto LABEL_67;
        }
      }

      v53 = sub_1A7E22040();
      v54 = sub_1A7E228D0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v86[0] = v56;
        *v55 = 136315650;
        *(v55 + 4) = sub_1A7B0CB38(*&v4[4]._os_unfair_lock_opaque, *&v4[6]._os_unfair_lock_opaque, v86);
        *(v55 + 12) = 2048;
        *(v55 + 14) = v52;
        *(v55 + 22) = 2048;
        *(v55 + 24) = v16;
        v57 = v54;
        v58 = v53;
        v59 = "score(forLink:): unknownPacketLossScoring: Skipping penalty for %s because we haven't been in probing state for %f seconds (%f)";
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_67:

    p_os_unfair_lock_opaque = v79;
    goto LABEL_68;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D9D190()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B70A8);
  sub_1A7B0CB00(v0, qword_1EB2B70A8);
  return sub_1A7E22050();
}

uint64_t sub_1A7D9D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((a1 + 40));
  sub_1A7CCBD20((a1 + 48), v58);
  os_unfair_lock_unlock((a1 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v6 = v57) == 0)
  {
    v43 = 0.0;
    v44 = 1.0;
    goto LABEL_33;
  }

  v7 = v2;
  (*(v57 + 344))();
  os_unfair_lock_lock((v57 + 40));
  v8 = *(v57 + 104);
  v9 = *(v57 + 112);
  v10 = *(v57 + 136);
  v58[1] = *(v57 + 120);
  v58[2] = v10;
  v58[3] = *(v57 + 152);
  v59 = *(v57 + 168);
  sub_1A7D641E0(v8);
  *&v58[0] = v8;
  *(&v58[0] + 1) = v9;
  sub_1A7D5E3B0();
  v56 = *(v57 + 88);
  v11 = *(v57 + 90);
  os_unfair_lock_unlock((v57 + 40));
  os_unfair_lock_lock((a1 + 40));
  sub_1A7CCBDBC((a1 + 48), v58);
  os_unfair_lock_unlock((a1 + 40));
  v54 = v11;
  v55 = a2;
  if (swift_dynamicCast() & 1) != 0 && v57 != 2 && (v57)
  {
    v13 = 3;
    v14 = 2;
    v15 = 1;
    v12 = v7;
  }

  else
  {
    v12 = v7 + 4;
    v13 = 7;
    v14 = 6;
    v15 = 5;
  }

  v16 = v7[v13];
  v17 = v7[v14];
  v18 = *v12;
  v19 = 0.0;
  if (*v12 > 0.0)
  {
    v19 = *v12;
  }

  v20 = exp2(1.0 - v56 / v19 / v7[v15]);
  v21 = *(*&v16 + 16);
  p_inst_meths = &OBJC_PROTOCOL___IDSCTPNRResponseData.inst_meths;
  v23 = 1.0;
  if (v21)
  {
    v24 = (*&v16 + 40);
    while (1)
    {
      v25 = ceil(v18 * *(v24 - 1));
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_37;
      }

      if (v25 >= 9.22337204e18)
      {
        goto LABEL_38;
      }

      v26 = *v24;
      v27 = v25;
      os_unfair_lock_lock(v6 + 10);
      v28 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(v27);
      os_unfair_lock_unlock(v6 + 10);
      if (v28.outOf)
      {
        if (p_inst_meths[265] != -1)
        {
          swift_once();
        }

        v29 = 1.0 - v28._0 / fmax(v28.outOf, 1.0);
        v30 = v26 * v29;
        v31 = sub_1A7E22060();
        sub_1A7B0CB00(v31, qword_1EB2B70A8);

        v32 = sub_1A7E22040();
        v33 = sub_1A7E228D0();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = p_inst_meths;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v58[0] = v36;
          *v35 = 136316418;
          *(v35 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), v58);
          *(v35 + 12) = 2048;
          *(v35 + 14) = v28._0;
          *(v35 + 22) = 2048;
          *(v35 + 24) = v28.outOf;
          *(v35 + 32) = 2048;
          *(v35 + 34) = v29;
          *(v35 + 42) = 2048;
          *(v35 + 44) = v26;
          *(v35 + 52) = 2048;
          *(v35 + 54) = v30;
          _os_log_impl(&dword_1A7AD9000, v32, v33, "score(forLink:): knownPacketLossScoring: %s: remote received %ld/%ld packets -> %f loss, %f weight -> %f", v35, 0x3Eu);
          sub_1A7B0CD6C(v36);
          MEMORY[0x1AC5654B0](v36, -1, -1);
          v37 = v35;
          p_inst_meths = v34;
          v6 = v57;
          MEMORY[0x1AC5654B0](v37, -1, -1);
        }

        if (v30 > 0.0)
        {
          v23 = v23 * (1.0 - v30);
        }
      }

      else
      {
        if (p_inst_meths[265] != -1)
        {
          swift_once();
        }

        v38 = sub_1A7E22060();
        sub_1A7B0CB00(v38, qword_1EB2B70A8);

        v39 = sub_1A7E22040();
        v40 = sub_1A7E228D0();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v58[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), v58);
          _os_log_impl(&dword_1A7AD9000, v39, v40, "score(forLink:): knownPacketLossScoring: %s: no packets known yet, skipping", v41, 0xCu);
          sub_1A7B0CD6C(v42);
          MEMORY[0x1AC5654B0](v42, -1, -1);
          MEMORY[0x1AC5654B0](v41, -1, -1);
        }
      }

      v24 += 2;
      if (!--v21)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_27:
  if (p_inst_meths[265] != -1)
  {
LABEL_39:
    swift_once();
  }

  v45 = sub_1A7E22060();
  sub_1A7B0CB00(v45, qword_1EB2B70A8);

  v46 = sub_1A7E22040();
  v47 = sub_1A7E228D0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v58[0] = v49;
    *v48 = 136315906;
    *(v48 + 4) = sub_1A7B0CB38(*(a1 + 16), *(a1 + 24), v58);
    *(v48 + 12) = 2048;
    *(v48 + 14) = v23;
    *(v48 + 22) = 2048;
    *(v48 + 24) = v54;
    *(v48 + 32) = 2048;
    *(v48 + 34) = v56;
    _os_log_impl(&dword_1A7AD9000, v46, v47, "Uplink raw score for %s: %f (uplinkPacketsRemoteThinksAreMissing: %ld, uplinkPacketsRemoteKnowsOf: %ld)", v48, 0x2Au);
    sub_1A7B0CD6C(v49);
    MEMORY[0x1AC5654B0](v49, -1, -1);
    MEMORY[0x1AC5654B0](v48, -1, -1);
  }

  a2 = v55;
  v50 = v20 * -0.5;
  v44 = pow(v23, v17);
  v51 = sub_1A7E22040();
  v52 = sub_1A7E228D0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v44;
    _os_log_impl(&dword_1A7AD9000, v51, v52, "Uplink curved score: %f", v53, 0xCu);
    MEMORY[0x1AC5654B0](v53, -1, -1);
  }

  v43 = v50 + 1.0;

LABEL_33:
  *a2 = v44;
  *(a2 + 8) = v43;
  return result;
}

Swift::Double __swiftcall interpolate(value:points:)(Swift::Double value, Swift::OpaquePointer points)
{
  v2 = *(points._rawValue + 2);
  if (!v2)
  {
    return 0.0;
  }

  v5 = *(points._rawValue + 4);
  result = *(points._rawValue + 5);
  v6 = v2 - 1;
  if (v2 != 1 && v5 < value)
  {
    v8 = (points._rawValue + 16 * v2 + 32);
    v9 = *(v8 - 2);
    v10 = *(v8 - 1);
    if (v9 <= value)
    {
      return *(v8 - 1);
    }

    else
    {
      v12 = *(points._rawValue + 6);
      v11 = *(points._rawValue + 7);
      if (v12 <= value)
      {
        for (i = (points._rawValue + 72); ; i += 2)
        {
          result = v11;
          v5 = v12;
          if (!--v6)
          {
            break;
          }

          v12 = *(i - 1);
          v11 = *i;
          if (v12 > value)
          {
            return result + (v11 - result) * ((value - v5) / (v12 - v5));
          }
        }

        v11 = v10;
        v12 = v9;
      }

      return result + (v11 - result) * ((value - v5) / (v12 - v5));
    }
  }

  return result;
}

Swift::Double __swiftcall interpolate(value:points:)(Swift::Int value, Swift::OpaquePointer points)
{
  v2 = *(points._rawValue + 2);
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(points._rawValue + 4);
  result = *(points._rawValue + 5);
  v5 = v2 - 1;
  if (v2 != 1 && v3 < value)
  {
    v7 = points._rawValue + 16 * v2 + 32;
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    if (v8 <= value)
    {
      return *(v7 - 1);
    }

    v10 = *(points._rawValue + 7);
    v11 = *(points._rawValue + 6);
    if (v11 <= value)
    {
      v12 = (points._rawValue + 72);
      while (1)
      {
        result = v10;
        v3 = v11;
        if (!--v5)
        {
          break;
        }

        v10 = *v12;
        v11 = *(v12 - 1);
        v12 += 2;
        if (v11 > value)
        {
          goto LABEL_16;
        }
      }

      v10 = v9;
      v11 = v8;
    }

LABEL_16:
    v13 = value - v3;
    if (__OFSUB__(value, v3))
    {
      __break(1u);
    }

    else
    {
      v14 = __OFSUB__(v11, v3);
      v15 = v11 - v3;
      if (!v14)
      {
        return result + (v10 - result) * (v13 / v15);
      }
    }

    __break(1u);
  }

  return result;
}

IDSFoundation::LinkQualityScore __swiftcall LinkQualityScore.init(score:confidence:)(Swift::Double score, Swift::Double confidence)
{
  *v2 = score;
  v2[1] = confidence;
  result.confidence = confidence;
  result.score = score;
  return result;
}

__n128 LinkQualityScoredLink.init(link:score:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t LinkQualityScoredLink.link.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 LinkQualityScoredLink.score.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 LinkQualityScoredLink.score.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t LinkQualityScoredLink.init(link:score:confidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t LinkQualityScoreResolvedLink.scoredLink.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

uint64_t LinkQualityScoreResolvedLink.scoredLink.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t LinkQualityScoreResolvedLink.init(scoredLink:adjustedScore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = a3;
  return result;
}

uint64_t static LinkQualityScoreRuleBasedResolver.Adjustment.preferNonCellular(byAmount:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD00000000000001CLL, 0x80000001A7EADDE0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7CD2014;
  a1[3] = result;
  return result;
}

uint64_t LinkQualityScoreRuleBasedResolver.Adjustment.init(name:adjustor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double sub_1A7D9DD8C(uint64_t *a1, double a2, double a3)
{
  v5 = *a1;
  LinkEngineLink.definition.getter(&v13);
  v6 = v13;
  if (v13)
  {
    v7 = *(&v13 + 1);

    sub_1A7CDB84C(v6);
    v15 = v7;
    v8 = LinkEndpoint.isCellular.getter();

    if (v8)
    {
      a2 = a2 / a3;
    }
  }

  else
  {
    sub_1A7CDB84C(0);
  }

  LinkEngineLink.definition.getter(&v13);
  v9 = v13;
  if (v13)
  {
    v10 = v14;

    sub_1A7CDB84C(v9);
    v15 = v10;
    v11 = LinkEndpoint.isCellular.getter();

    if (v11)
    {
      return a2 / a3;
    }
  }

  else
  {
    sub_1A7CDB84C(0);
  }

  os_unfair_lock_lock((v5 + 40));
  sub_1A7CCBE5C((v5 + 48), &v13);
  os_unfair_lock_unlock((v5 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if ((swift_dynamicCast() & 1) != 0 && (v15 & 0x100000000) == 0 && (v15 > 0xA || ((1 << v15) & 0x601) == 0))
  {
    return a2 / a3;
  }

  return a2;
}

void sub_1A7D9DF10()
{
  qword_1EB2B70C0 = 0xD000000000000014;
  *algn_1EB2B70C8 = 0x80000001A7EB0910;
  qword_1EB2B70D0 = sub_1A7D9DF4C;
  qword_1EB2B70D8 = 0;
}

uint64_t static LinkQualityScoreRuleBasedResolver.Adjustment.multiplyByConfidence.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4850 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB2B70D8;
  *a1 = qword_1EB2B70C0;
  *(a1 + 8) = *algn_1EB2B70C8;
  *(a1 + 24) = v1;
}

uint64_t static LinkQualityScoreRuleBasedResolver.Adjustment.toPower(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  MEMORY[0x1AC561C90](678915952, 0xE400000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = sub_1A7D9E0A4;
  a1[3] = result;
  return result;
}

uint64_t LinkQualityScoreRuleBasedResolver.adjustments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LinkQualityScoreRuleBasedResolver.adjustedScores(forScoredLinks:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = *v1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A7CCE8D8(0, v2, 0);
    v6 = 0;
    v3 = v21;
    v19 = a1 + 32;
    do
    {
      v7 = (v19 + 24 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 2);
      v11 = *(v5 + 16);

      v12 = v9;
      if (v11)
      {
        v13 = v5 + 56;
        v12 = v9;
        do
        {
          v14 = *(v13 - 8);
          v13 += 32;
          *v20 = v8;
          *&v20[1] = v9;
          v20[2] = v10;

          v12 = v14(v20, v12);

          --v11;
        }

        while (v11);
      }

      v21 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A7CCE8D8((v15 > 1), v16 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v16 + 1;
      v17 = (v3 + 32 * v16);
      v17[4] = v8;
      ++v6;
      v17[5] = v9;
      *(v17 + 6) = v10;
      v17[7] = v12;
    }

    while (v6 != v2);
  }

  return v3;
}

uint64_t MultiplicativeLinkQualityScorer.Input.scorer.setter(__int128 *a1)
{
  sub_1A7B0CD6C(v1);

  return sub_1A7B14FF0(a1, v1);
}

uint64_t MultiplicativeLinkQualityScorer.inputs.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_1A7D9E384(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 16));

  *(v3 + 24) = v2;

  os_unfair_lock_unlock((v3 + 16));
}

void MultiplicativeLinkQualityScorer.inputs.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

void (*MultiplicativeLinkQualityScorer.inputs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7D9E488;
}

void sub_1A7D9E488(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 16));

    *(v3 + 24) = v2;
    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    os_unfair_lock_lock((v3 + 16));

    *(v3 + 24) = v2;

    os_unfair_lock_unlock((v3 + 16));
  }
}

uint64_t MultiplicativeLinkQualityScorer.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_lock((v2 + 16));

  *(v2 + 24) = a1;
  os_unfair_lock_unlock((v2 + 16));
  return v2;
}

uint64_t MultiplicativeLinkQualityScorer.init(inputs:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;
  os_unfair_lock_unlock((v1 + 16));
  return v1;
}

void MultiplicativeLinkQualityScorer.score(forLink:)(uint64_t a1@<X0>, double *a2@<X8>)
{
  os_unfair_lock_lock(v2 + 4);
  sub_1A7D9E648(&v2[6], a1, a2);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1A7D9E648@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = *(*result + 16);
  if (v4)
  {
    v6 = *result + 32;
    v7 = 1.0;
    v8 = 1.0;
    do
    {
      sub_1A7D9E974(v6, v15);
      v9 = v16;
      v10 = v17;
      sub_1A7CC9878(v15, v16);
      (*(v10 + 8))(v14, a2, v9, v10);
      v11 = v14[1];
      v12 = 1.0 - v14[0];
      v13 = v18;
      result = sub_1A7D9E9AC(v15);
      v8 = v8 * (1.0 - v12 * v13);
      v7 = v7 * (1.0 - (1.0 - v11) * v13);
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 1.0;
    v8 = 1.0;
  }

  *a3 = v8;
  a3[1] = v7;
  return result;
}

uint64_t sub_1A7D9E778(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B70E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultiplicativeLinkQualityScorer.__deallocating_deinit()
{
  sub_1A7D9E778(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1A7D9E818(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock(v5 + 4);
  sub_1A7D9E648(&v5[6], a1, a2);

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_1A7D9E8D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7D9E918(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t WeightedLinkQualityScorer.weightedInputs.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void WeightedLinkQualityScorer.weightedInputs.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;

  os_unfair_lock_unlock((v1 + 16));
}

void (*WeightedLinkQualityScorer.weightedInputs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 16));
  *a1 = v3;
  return sub_1A7D9E488;
}

uint64_t WeightedLinkQualityScorer.__allocating_init(weightedInputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_lock((v2 + 16));

  *(v2 + 24) = a1;
  os_unfair_lock_unlock((v2 + 16));
  return v2;
}

uint64_t WeightedLinkQualityScorer.init(weightedInputs:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;
  os_unfair_lock_unlock((v1 + 16));
  return v1;
}

void WeightedLinkQualityScorer.score(forLink:)(uint64_t a1@<X0>, double *a2@<X8>)
{
  os_unfair_lock_lock(v2 + 4);
  sub_1A7D9EC0C(&v2[6], a1, a2);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1A7D9EC0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = *(*result + 16);
  if (v4)
  {
    v6 = *result + 32;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      sub_1A7D9EF48(v6, &v16);
      v10 = v18;
      v11 = v19;
      sub_1A7CC9878(v17, v18);
      (*(v11 + 8))(v15, a2, v10, v11);
      v12 = *v15;
      v13 = *&v15[1];
      v14 = v16;
      result = sub_1A7D9EF80(&v16);
      v9 = v9 + v12 * v14;
      v8 = v8 + v13 * v14;
      v7 = v7 + v14;
      v6 += 48;
      --v4;
    }

    while (v4);
    if (v7 > 0.0)
    {
      v9 = v9 / v7;
      v8 = v8 / v7;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  *a3 = v9;
  a3[1] = v8;
  return result;
}

uint64_t sub_1A7D9ED4C(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B70F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeightedLinkQualityScorer.__deallocating_deinit()
{
  sub_1A7D9ED4C(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1A7D9EDEC(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock(v5 + 4);
  sub_1A7D9EC0C(&v5[6], a1, a2);

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_1A7D9EEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A7D9EEEC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t LinkEngineLink.idsSemiActiveQualityMonitor.getter()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBD20((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7D9F084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_1A7D9F0E8(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1A7D9F1E0;

  return v7(v4);
}

uint64_t sub_1A7D9F1E0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A7D9F2F0()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7100);
  sub_1A7B0CB00(v0, qword_1EB2B7100);
  return sub_1A7E22050();
}

uint64_t IDSLinkQualityMonitorPlugin.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSLinkQualityMonitorPlugin.__allocating_init(allowedOverheadPerExistingPacket:allowedAdditionalPacketsPerSecond:allowedAdditionalPacketsPerSecondWhenPassive:timeFn:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000018;
  *(result + 24) = 0x80000001A7EB09B0;
  *(result + 32) = a1;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

uint64_t IDSLinkQualityMonitorPlugin.init(allowedOverheadPerExistingPacket:allowedAdditionalPacketsPerSecond:allowedAdditionalPacketsPerSecondWhenPassive:timeFn:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 16) = 0xD000000000000018;
  *(v5 + 24) = 0x80000001A7EB09B0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  return v5;
}

uint64_t IDSLinkQualityMonitorPlugin.register(engine:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB2B4858 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B7100);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "Registering with link engine", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(IDSLinkSelectorPrimarySecondary) init];
  os_unfair_lock_lock((a1 + 200));
  v9 = type metadata accessor for IDSLinkSelectorPrimarySecondary();
  v10 = v9;
  if (!v8)
  {
    v10 = 0;
    v39 = 0;
    v40 = 0;
  }

  v38 = v8;
  v41 = v10;
  v11 = v8;
  sub_1A7CC8D74(&v38, v9);
  os_unfair_lock_unlock((a1 + 200));

  sub_1A7CC7FFC(&qword_1EB2B4D28);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A7E418C0;
  v38 = 0;
  v39 = 0xE000000000000000;
  MEMORY[0x1AC561C90](678915952, 0xE400000000000000);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v13 = v38;
  v14 = v39;
  v15 = swift_allocObject();
  *(v15 + 16) = 0x400C000000000000;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  *(v12 + 48) = sub_1A7DA0CD0;
  *(v12 + 56) = v15;
  v42 = &type metadata for LinkQualityScoreRuleBasedResolver;
  v43 = &protocol witness table for LinkQualityScoreRuleBasedResolver;
  v39 = v12;
  sub_1A7CC7FFC(&qword_1EB2B7118);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A7E47530;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000030, 0x80000001A7EB05D0);
  MEMORY[0x1AC561C90](1702195828, 0xE400000000000000);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  *(v16 + 48) = sub_1A7D84244;
  *(v16 + 56) = v17;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000014, 0x80000001A7EB0660);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4022000000000000;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0xE000000000000000;
  *(v16 + 80) = sub_1A7D8426C;
  *(v16 + 88) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A7E4F1A0;
  *(v16 + 96) = 0xD00000000000001FLL;
  *(v16 + 104) = 0x80000001A7EB0640;
  *(v16 + 112) = sub_1A7D8425C;
  *(v16 + 120) = v19;
  *(&v35 + 1) = 0xE000000000000000;
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000026, 0x80000001A7EB05A0);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4024000000000000;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0xE000000000000000;
  *(v16 + 144) = sub_1A7D8423C;
  *(v16 + 152) = v20;
  if (qword_1EB2B4838 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB2B6E88;
  *(v16 + 160) = qword_1EB2B6E70;
  *(v16 + 168) = *algn_1EB2B6E78;
  *(v16 + 184) = v21;
  v38 = v16;
  v44 = 0x3FC999999999999ALL;
  v22 = type metadata accessor for LinksProbingController();
  v23 = swift_allocObject();
  v36 = &type metadata for LinksProbingSelectorRuleBased;
  v37 = &protocol witness table for LinksProbingSelectorRuleBased;
  *&v35 = swift_allocObject();
  sub_1A7DA0CD8(&v38, v35 + 16);
  sub_1A7CC7FFC(&qword_1EB2B6E50);
  v24 = swift_allocObject();

  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1A7CE34F8(MEMORY[0x1E69E7CC0]);
  *(v24 + 16) = 0;
  *(v24 + 24) = v26;
  *(v24 + 32) = v25;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 40) = 0;
  *(v23 + 56) = v24;
  sub_1A7B14FF0(&v35, v23 + 16);
  sub_1A7DA0D34(&v38);

  os_unfair_lock_lock((a1 + 200));
  v41 = v22;
  v38 = v23;

  sub_1A7CC8D74(&v38, v22);
  os_unfair_lock_unlock((a1 + 200));

  v27 = *(a1 + 56);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1A7DA0D88;
  *(v28 + 24) = v2;

  sub_1A7DA0514(v29, sub_1A7DA0D90, v28, v27);

  v30 = *(a1 + 40);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1A7DA0DCC;
  *(v31 + 24) = v2;
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_1A7E45260;
  *(v32 + 24) = v31;

  sub_1A7DA082C(v33, &unk_1A7E4E210, v32, v30);
}

uint64_t sub_1A7D9FB38(uint64_t a1)
{
  if (qword_1EB2B4858 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E22060();
  sub_1A7B0CB00(v2, qword_1EB2B7100);
  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, v4, "starting ongoing tasks", v5, 2u);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  sub_1A7CC7FFC(&qword_1EB2B4C00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A7E418C0;
  *(v6 + 32) = IDSLinkQualityMonitorPlugin.semiActiveMonitorTask(for:start:)(a1, 1);
  *(v6 + 40) = &protocol witness table for IDSLinksQualitySemiActiveMonitorTask;
  return v6;
}

uint64_t IDSLinkQualityMonitorPlugin.qualityMonitor(forLink:)(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));
  sub_1A7CCBD20((a1 + 48), &v12);
  os_unfair_lock_unlock((a1 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  active = type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  if ((swift_dynamicCast() & 1) == 0 || (v4 = v11[0]) == 0)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    *&v12 = v1[4];
    v7 = v1[6];
    *(&v12 + 1) = v1[5];
    v11[0] = v12;
    v11[1] = v7;
    v8 = v1[7];
    v9 = v1[8];
    swift_allocObject();

    v4 = sub_1A7D63604(v5, v6, &v12, v11, v8, v9);

    swift_retain_n();
    os_unfair_lock_lock((a1 + 40));
    v13 = active;
    *&v12 = v4;

    sub_1A7CC8D74(&v12, active);
    os_unfair_lock_unlock((a1 + 40));
  }

  return v4;
}

uint64_t IDSLinkQualityMonitorPlugin.semiActiveMonitorTask(for:start:)(uint64_t a1, char a2)
{
  v3 = sub_1A7E232B0();
  v5 = v4;
  v6 = sub_1A7E232B0();
  v8 = v7;
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  type metadata accessor for IDSLinksQualitySemiActiveMonitorTask();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000023;
  *(v11 + 24) = 0x80000001A7EB09D0;
  swift_weakInit();
  *(v11 + 32) = 0;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  sub_1A7DA0DD0(v14, v11 + 40);
  os_unfair_lock_lock((v11 + 32));
  swift_weakAssign();
  os_unfair_lock_unlock((v11 + 32));
  *(v11 + 104) = v9;
  *(v11 + 112) = v10;
  *(v11 + 72) = v3;
  *(v11 + 80) = v5;
  *(v11 + 88) = v6;
  *(v11 + 96) = v8;

  if (a2)
  {
    os_unfair_lock_lock((v11 + 32));
    sub_1A7CFE980(v11 + 40, v11);
    os_unfair_lock_unlock((v11 + 32));
  }

  return v11;
}

uint64_t LinkEngineLink.idsSemiActiveQualityMonitor.setter(uint64_t a1)
{
  sub_1A7DA1188(a1);
}

uint64_t IDSLinkQualityMonitorPlugin.deinit()
{

  return v0;
}

uint64_t IDSLinkQualityMonitorPlugin.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*LinkEngineLink.idsSemiActiveQualityMonitor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  os_unfair_lock_lock((v1 + 40));
  sub_1A7CCBD20((v1 + 48), v4);
  os_unfair_lock_unlock((v1 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  *(v4 + 64) = type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  v5 = swift_dynamicCast();
  v6 = *(v4 + 40);
  if (!v5)
  {
    v6 = 0;
  }

  *(v4 + 32) = v6;
  return sub_1A7DA00B8;
}

void sub_1A7DA00B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);

  v5 = v3[7];
  if (a2)
  {

    os_unfair_lock_lock(v5 + 10);
    if (v4)
    {
      v6 = v3[8];
      v7 = v4;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v15 = 0;
      v16 = 0;
      v6 = v3[8];
    }

    v12 = v3[7];
    v14 = v7;
    v17 = v8;

    sub_1A7CC8D74(&v14, v6);
    os_unfair_lock_unlock(v12 + 10);
  }

  else
  {
    os_unfair_lock_lock(v5 + 10);
    if (v4)
    {
      v9 = v3[8];
      v10 = v4;
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v15 = 0;
      v16 = 0;
      v9 = v3[8];
    }

    v13 = v3[7];
    v14 = v10;
    v17 = v11;

    sub_1A7CC8D74(&v14, v9);
    os_unfair_lock_unlock(v13 + 10);
  }

  free(v3);
}

void sub_1A7DA01FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AAECD8;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC43C0(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B30);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AAECD8;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA0388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1ABA228;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC43C0(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B30);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1ABA228;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA0514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSLinkQualityMonitorPlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC43C0(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B30);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSLinkQualityMonitorPlugin;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AAECD8;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC41D4(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B18);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D21854;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AAECD8;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSLinkQualityMonitorPlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC41D4(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B18);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSLinkQualityMonitorPlugin;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AB4F70;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC41D4(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B18);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AB4F70;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

void sub_1A7DA0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AB96D8;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC41D4(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4B18);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AB96D8;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

uint64_t sub_1A7DA0E2C(os_unfair_lock_s *a1)
{
  v2 = v1;
  if (qword_1EB2B4858 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B7100);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "adding quality monitor and scorer to newly-added LinkEngine link", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  IDSLinkQualityMonitorPlugin.qualityMonitor(forLink:)(a1);

  sub_1A7CC7FFC(&qword_1EB2B7120);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A7E418D0;
  v9 = v2[5];
  v10 = v2[6];
  *(v8 + 56) = &type metadata for IDSSemiActiveUplinkQualityMonitorScorer;
  *(v8 + 64) = &off_1F1AB5688;
  v11 = swift_allocObject();
  *(v8 + 32) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = xmmword_1A7E4F1B0;
  *(v11 + 40) = &unk_1F1AABE68;
  *(v11 + 48) = v10;
  *(v11 + 56) = xmmword_1A7E4F1B0;
  *(v11 + 72) = &unk_1F1AABEA8;
  *(v8 + 72) = 0x3FE8000000000000;
  v13 = v2[7];
  v12 = v2[8];
  *(v8 + 104) = &type metadata for IDSSemiActiveDownlinkQualityMonitorScorer;
  *(v8 + 112) = &off_1F1AB5568;
  v14 = swift_allocObject();
  *(v8 + 80) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  *(v14 + 32) = v9;
  *(v14 + 40) = xmmword_1A7E4F1C0;
  *(v14 + 56) = &unk_1F1AABDC0;
  *(v14 + 64) = &unk_1F1AABE00;
  *(v14 + 72) = v10;
  *(v14 + 80) = xmmword_1A7E4F1C0;
  *(v14 + 96) = &unk_1F1AABDC0;
  *(v14 + 104) = &unk_1F1AABE00;
  *(v8 + 120) = 0x3FE8000000000000;
  v15 = type metadata accessor for MultiplicativeLinkQualityScorer();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_lock((v16 + 16));

  *(v16 + 24) = v8;
  os_unfair_lock_unlock((v16 + 16));
  v25[3] = v15;
  v25[4] = &protocol witness table for MultiplicativeLinkQualityScorer;
  v25[0] = v16;
  sub_1A7DA1274(v25, v24);

  os_unfair_lock_lock(a1 + 10);
  v17 = sub_1A7CC7FFC(&qword_1EB2B4A88);
  sub_1A7DA1274(v24, &v21);
  if (v23)
  {
    v18 = swift_allocObject();
    sub_1A7B14FF0(&v21, v18 + 16);
    v19 = v17;
  }

  else
  {
    sub_1A7CC9970(&v21, &qword_1EB2B4A90);
    v18 = 0;
    v19 = 0;
    *(&v21 + 1) = 0;
    v22 = 0;
  }

  *&v21 = v18;
  v23 = v19;
  sub_1A7CC8D74(&v21, v17);
  os_unfair_lock_unlock(a1 + 10);

  sub_1A7CC9970(v25, &qword_1EB2B4A90);
  return sub_1A7CC9970(v24, &qword_1EB2B4A90);
}

uint64_t sub_1A7DA1188(uint64_t a1)
{

  os_unfair_lock_lock(v1 + 10);
  active = type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  v4 = active;
  if (!a1)
  {
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = a1;
  v6[3] = v4;

  sub_1A7CC8D74(v6, active);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_1A7DA1274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LEToolResponseMessage.print(to:style:)(void *a1, uint64_t a2)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[9];
  if ((v7 & 0x800000000000000) != 0)
  {
    v13 = *v2;
    v14 = v3;
    v15 = v5;
    v16 = v4;
    v17 = v6;
    v11 = *a2;
    v12 = *(a2 + 8);
    return LEToolP2PEngineResponseMessage.print(to:style:)(a1, &v11);
  }

  else
  {
    v8 = v2[10];
    v13 = *v2;
    v14 = v3;
    v15 = v5;
    v16 = v4;
    v17 = v6;
    v9 = *(v2 + 7);
    v18 = *(v2 + 5);
    v19 = v9;
    v20 = v7;
    v21 = v8;
    v11 = *a2;
    v12 = *(a2 + 8);
    return LEToolRelayEngineResponseMessage.print(to:style:)(a1, &v11);
  }
}

uint64_t getEnumTagSinglePayload for IDSLinkIDComponent(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for IDSLinkIDComponent(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1A7DA149C()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBD00((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DA1520(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IDSLinksQualityReportBuilder();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v20 - v11;
  sub_1A7CEB564(a1, v20 - v11);
  v13 = type metadata accessor for IDSLinksQualityReportBuilderComponent();
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
  sub_1A7E22050();
  v16 = *(v5 + 28);
  *&v8[v16] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
  v15->_os_unfair_lock_opaque = 0;
  v17 = *(sub_1A7CC7FFC(&qword_1EB2B53D8) + 28);
  v18 = sub_1A7CC7FFC(&qword_1EB2B53E0);
  bzero(v15 + v17, *(*(v18 - 8) + 64));
  sub_1A7CEB4A4(v8, v15 + v17);
  os_unfair_lock_lock(v15);
  sub_1A7CEB508(v15 + v17);
  sub_1A7CEB564(v12, v15 + v17);
  os_unfair_lock_unlock(v15);
  sub_1A7CEB508(v12);
  os_unfair_lock_lock(v2 + 50);
  v20[3] = v13;
  v20[0] = v14;

  sub_1A7CC8D74(v20, v13);
  os_unfair_lock_unlock(v2 + 50);
  sub_1A7CEB508(a1);
}

uint64_t IDSLinksQualityReportBuilderComponent.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder;
  v2 = sub_1A7CC7FFC(&qword_1EB2B53D8);
  sub_1A7CEB508(v1 + *(v2 + 28));
  return v0;
}

uint64_t IDSLinksQualityReportBuilderComponent.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder;
  v2 = sub_1A7CC7FFC(&qword_1EB2B53D8);
  sub_1A7CEB508(v1 + *(v2 + 28));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IDSLinksQualityReportBuilderComponent()
{
  result = qword_1EB2B30D0;
  if (!qword_1EB2B30D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7DA1844()
{
  sub_1A7DA18EC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A7DA18EC()
{
  if (!qword_1EB2B30B8)
  {
    type metadata accessor for IDSLinksQualityReportBuilder();
    v0 = sub_1A7E21CA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B30B8);
    }
  }
}

unint64_t LinkEndpoint.toolRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1A7CE0318(*v1, &v40);
  if (v42)
  {
    sub_1A7CC99E0(&v40, v44);
    sub_1A7CE23DC(&v40);
    sub_1A7B14FF0(v44, &v40);
    v4 = sub_1A7CC9878(&v40, v42);
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    (*(v7 + 16))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v8 = sub_1A7E222F0();
    v37 = v9;
    v38 = v8;
    sub_1A7B0CD6C(&v40);
  }

  else
  {
    sub_1A7DA1C64(&v40);
    v37 = 0;
    v38 = 0;
  }

  *&v44[0] = v3;
  LinkEndpoint.family.getter(&v39);
  v36 = v39;
  sub_1A7CE0318(v3, &v40);
  if (v42)
  {
    v35 = v43;
    sub_1A7CE23DC(&v40);
  }

  else
  {
    sub_1A7DA1C64(&v40);
    v35 = 0;
  }

  sub_1A7CE072C(v3, &v40);
  v10 = v40;
  v11 = BYTE4(v40);
  sub_1A7CE0674(v3, &v40);
  v12 = v41;
  if (v41)
  {
    v34 = v40;
  }

  else
  {
    v34 = 0;
  }

  sub_1A7CE07D8(v3, &v40);
  v13 = v42;
  if (v42)
  {
    v14 = *(&v40 + 1);
    v15 = v41;
    v16 = v40;

    v33 = v16;
    sub_1A7D25988(v16, v14, v15, v13);
  }

  else
  {
    v33 = 0;
    v14 = 0;
  }

  sub_1A7CE03C4(v3, &v40);
  v17 = v40;
  sub_1A7CE0874(v3, &v40);
  if (v41 & 0x100) != 0 || (v41)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v27 = nw_nat64_prefix_t.asData.getter(v40, *(&v40 + 1));
    if (v28 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      v29 = v27;
      v32 = v28;
      v18 = sub_1A7D0E774(v27, v28);
      v19 = v30;
      sub_1A7B1516C(v29, v32);
    }
  }

  v20 = v12 == 0;
  if (v17 == 1)
  {
    v17 = 0;
  }

  if (v11)
  {
    v10 = 0;
  }

  sub_1A7CE0668(v3, &v40);
  v21 = v11;
  v22 = v40;
  result = sub_1A7CE0928(v3, &v40);
  v24 = v40 & 1;
  *a1 = v36;
  v25 = v37;
  *(a1 + 8) = v38;
  *(a1 + 16) = v25;
  *(a1 + 24) = v35;
  *(a1 + 26) = 0;
  *(a1 + 28) = v10;
  *(a1 + 32) = v21;
  v26 = v33;
  *(a1 + 40) = v34;
  *(a1 + 48) = v20;
  *(a1 + 56) = v26;
  *(a1 + 64) = v14;
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v22 & 1;
  *(a1 + 97) = v24;
  return result;
}

uint64_t sub_1A7DA1C64(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IDSToolPacketLogClearCommand()
{
  result = qword_1EB2B7128;
  if (!qword_1EB2B7128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7DA1D40()
{
  sub_1A7D183C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A7DA1DAC()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = sub_1A7E21F80();
  sub_1A7CC7A10(v4, qword_1EB2DC310);
  sub_1A7B0CB00(v4, qword_1EB2DC310);
  v5 = sub_1A7E21EF0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_1A7E21F40();
}

uint64_t sub_1A7DA1EE4()
{
  v1[7] = v0;
  type metadata accessor for IDSToolRequest(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for IDSToolOptions();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DA1FB8, 0, 0);
}

uint64_t sub_1A7DA1FB8()
{
  sub_1A7CC7FFC(&qword_1EB2B5A40);
  sub_1A7E21DC0();
  sub_1A7CC7FFC(&qword_1EB2B5A88);
  sub_1A7E21FC0();
  v1 = nullsub_15;
  if (!*(v0 + 121))
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4720 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (*(v0 + 121) == 1)
  {
    v1 = sub_1A7D2B464;
    if (qword_1EB2B4728 != -1)
    {
LABEL_19:
      swift_once();
      v1 = sub_1A7D2B464;
    }
  }

LABEL_6:
  v2 = v1;
  sub_1A7DA2C74(*(v0 + 88), type metadata accessor for IDSToolOptions);
  *(v0 + 40) = &type metadata for CLIDefaultPrinter;
  *(v0 + 48) = &protocol witness table for CLIDefaultPrinter;
  v3 = *(v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 24) = 0;
  *v3 = 1;
  type metadata accessor for IDSToolRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7E21DC0();
  sub_1A7E21DC0();
  sub_1A7E21FC0();
  v4 = *(v0 + 122);
  if (!*(v0 + 122))
  {
    if (qword_1EB2B4720 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB2B53E8;
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    if (qword_1EB2B4728 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB2B53F1;
LABEL_14:
    v4 = *v5;
    v6 = *(v5 + 8);
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  sub_1A7DA2C74(*(v0 + 72), type metadata accessor for IDSToolOptions);
  *(v0 + 112) = v4;
  *(v0 + 120) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1A7DA22A8;
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  return sub_1A7DDD6B0(v9, v8, (v0 + 112), v0 + 16);
}

uint64_t sub_1A7DA22A8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  sub_1A7DA2C74(v2, type metadata accessor for IDSToolOptions);
  sub_1A7DA2C74(v3, type metadata accessor for IDSToolRequest);
  if (v0)
  {
    v4 = sub_1A7DA24B8;
  }

  else
  {
    v4 = sub_1A7DA2424;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A7DA2424()
{
  sub_1A7B0CD6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DA24B8()
{
  sub_1A7B0CD6C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DA254C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5A40);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7148);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = type metadata accessor for IDSToolPacketLogClearCommand();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7DA2BD8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DA2C20();
  v17 = v24;
  sub_1A7E23250();
  if (!v17)
  {
    v18 = v22;
    sub_1A7DA2CD4();
    sub_1A7E22F30();
    (*(v23 + 8))(v10, v7);
    (*(v18 + 40))(v16, v6, v3);
    sub_1A7DA2D38(v16, v21);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7DA2C74(v16, type metadata accessor for IDSToolPacketLogClearCommand);
}

uint64_t sub_1A7DA2868(uint64_t a1)
{
  v2 = sub_1A7DA2C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DA28A4(uint64_t a1)
{
  v2 = sub_1A7DA2C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DA28E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7DA1EE4();
}

uint64_t sub_1A7DA296C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4860 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E21F80();
  v3 = sub_1A7B0CB00(v2, qword_1EB2DC310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A7DA2A14()
{
  v0 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions();
  sub_1A7DA2BD8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7DA2BD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A7DA2C20()
{
  result = qword_1EB2B7150;
  if (!qword_1EB2B7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7150);
  }

  return result;
}

uint64_t sub_1A7DA2C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A7DA2CD4()
{
  result = qword_1EB2B5AA0;
  if (!qword_1EB2B5AA0)
  {
    sub_1A7CC9830(&qword_1EB2B5A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AA0);
  }

  return result;
}

uint64_t sub_1A7DA2D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSToolPacketLogClearCommand();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7DA2DB0()
{
  result = qword_1EB2B7158;
  if (!qword_1EB2B7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7158);
  }

  return result;
}

unint64_t sub_1A7DA2E08()
{
  result = qword_1EB2B7160;
  if (!qword_1EB2B7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7160);
  }

  return result;
}

unint64_t sub_1A7DA2E60()
{
  result = qword_1EB2B7168;
  if (!qword_1EB2B7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7168);
  }

  return result;
}

uint64_t IDSDataChannelLinkEngineHandle.allowOngoingTasks.getter()
{
  v1 = *(v0 + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine);
  if (v1)
  {
    v2 = *(v1 + 16);

    os_unfair_lock_lock((v2 + 32));
    v3 = *(v2 + 36);
    os_unfair_lock_unlock((v2 + 32));

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IDSDataChannelLinkEngineHandle.allowOngoingTasks.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 16);

    os_unfair_lock_lock((v4 + 32));
    *(v4 + 36) = v3 & 1;
    os_unfair_lock_unlock((v4 + 32));
    LinkEngine.scheduleUpdate()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DA3354(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_1A7CC7FFC(&unk_1EB2B7BF0);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for IDSLinksQualityReportBuilder();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DA344C, 0, 0);
}

void sub_1A7DA344C()
{
  v26 = v0;
  v1 = *(*(v0 + 120) + OBJC_IVAR___IDSDataChannelLinkEngineHandle_linkEngine);
  if (v1)
  {
    v2 = *(v1 + 16);

    os_unfair_lock_lock((v2 + 200));
    sub_1A7CC9600((v2 + 208), (v0 + 16));
    os_unfair_lock_unlock((v2 + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    type metadata accessor for IDSLinksQualityReportBuilderComponent();
    if ((swift_dynamicCast() & 1) != 0 && (v3 = *(v0 + 96)) != 0)
    {
      v5 = *(v0 + 144);
      v4 = *(v0 + 152);
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = (v3 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
      os_unfair_lock_lock((v3 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
      v9 = sub_1A7CC7FFC(&qword_1EB2B53D8);
      sub_1A7CEB564(v8 + *(v9 + 28), v7);
      os_unfair_lock_unlock(v8);

      (*(v5 + 56))(v7, 0, 1, v6);
      sub_1A7CEB4A4(v7, v4);
    }

    else
    {
      v12 = *(v0 + 144);
      v11 = *(v0 + 152);
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);
      (*(v12 + 56))(v14, 1, 1, v13);
      sub_1A7E22050();
      v15 = *(v13 + 20);
      v16 = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);

      *(v11 + v15) = v16;
      if ((*(v12 + 48))(v14, 1, v13) != 1)
      {
        sub_1A7D99ED0(*(v0 + 128));
      }
    }

    if (*(v0 + 112))
    {
      swift_beginAccess();
    }

    else
    {
      v10.value.syncTokenByLinkCycle._rawValue = 0;
    }

    v17 = *(v0 + 152);
    rawValue = v10.value.syncTokenByLinkCycle._rawValue;
    v10.value.syncTokenByLinkCycle._rawValue = &rawValue;
    IDSLinksQualityReportBuilder.delta(since:)(v10);

    sub_1A7CEB508(v17);
    v18 = [objc_allocWithZone(IDSLinksQualityReportDeltaObject) init];
    v19 = &v18[OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta];
    swift_beginAccess();
    v20 = *v19;
    *v19 = v23;
    v19[1] = v24;
    v21 = v18;
    sub_1A7CD3BC0(v20);

    v22 = *(v0 + 8);

    v22(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A7DA3918(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A7D4DFD4;

  return sub_1A7DA3354(a1);
}

void __swiftcall IDSDataChannelLinkEngineHandle.init()(IDSDataChannelLinkEngineHandle *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for IDSDataChannelLinkEngineHandle()
{
  result = qword_1EB2B7178;
  if (!qword_1EB2B7178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B7178);
  }

  return result;
}

uint64_t sub_1A7DA3AD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7DA3918(v2, v3, v4);
}

uint64_t sub_1A7DA3B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7D5AF44();
  result = LinkEngine.link(_:)(a2, a3);
  if (result)
  {
    v8 = result;
    swift_retain_n();
    os_unfair_lock_lock(v8 + 10);
    v9[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v9[0] = a1;
    v9[1] = v6;

    sub_1A7CC8D74(v9, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v8 + 10);
  }

  return result;
}

void *sub_1A7DA3C48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A7E22DB0();

    if (v4)
    {
      type metadata accessor for EventTracingOperation(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1A7CD162C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

unint64_t sub_1A7DA3D1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A7DA9EB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id IDSRegistrationEventTracingRegistrationEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IDSRegistrationEventTracingRegistrationEvent.init()()
{
  v1 = &v0[OBJC_IVAR___IDSRegistrationEventTracingRegistrationEvent_name];
  *v1 = 0x7265747369676552;
  *(v1 + 1) = 0xE800000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IDSRegistrationEventTracingRegistrationEvent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id IDSRegistrationEventTracingAuthenticationEvent.__allocating_init(authenticationType:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name];
  strcpy(&v5[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name], "Authentication");
  v6[15] = -18;
  v7 = 0x6E776F6E6B6E55;
  if (a2)
  {
    v7 = a1;
  }

  v8 = 0xE700000000000000;
  if (a2)
  {
    v8 = a2;
  }

  v9 = &v5[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_authenticationType];
  *v9 = v7;
  v9[1] = v8;
  v11.receiver = v5;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id IDSRegistrationEventTracingAuthenticationEvent.init(authenticationType:)(uint64_t a1, unint64_t a2)
{
  v3 = &v2[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name];
  strcpy(&v2[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name], "Authentication");
  v3[15] = -18;
  v4 = 0x6E776F6E6B6E55;
  if (a2)
  {
    v4 = a1;
  }

  v5 = 0xE700000000000000;
  if (a2)
  {
    v5 = a2;
  }

  v6 = &v2[OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_authenticationType];
  *v6 = v4;
  v6[1] = v5;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for IDSRegistrationEventTracingAuthenticationEvent();
  return objc_msgSendSuper2(&v8, sel_init);
}

id IDSRegistrationEventTracingPNREvent.init(simUniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___IDSRegistrationEventTracingPNREvent_name];
  *v3 = 5394000;
  *(v3 + 1) = 0xE300000000000000;
  v4 = &v2[OBJC_IVAR___IDSRegistrationEventTracingPNREvent_simUniqueIdentifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for IDSRegistrationEventTracingPNREvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1A7DA4590()
{
  v1 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A7DA45D4(uint64_t a1)
{
  v3 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id IDSRegistrationEventTracingSMSValidationEvent.__allocating_init(mechanismType:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name];
  strcpy(&v3[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name], "SMS Validation");
  v4[15] = -18;
  v5 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  *&v3[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType] = 0;
  swift_beginAccess();
  *&v3[v5] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IDSRegistrationEventTracingSMSValidationEvent.init(mechanismType:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name];
  strcpy(&v1[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name], "SMS Validation");
  v3[15] = -18;
  v4 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  *&v1[OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType] = 0;
  swift_beginAccess();
  *&v1[v4] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IDSRegistrationEventTracingSMSValidationEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A7DA48FC()
{
  swift_beginAccess();

  v0 = sub_1A7E22260();

  return v0;
}

uint64_t sub_1A7DA498C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A7E22290();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A7DA4A64(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1A7DA4AD8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1A7DA4B38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id sub_1A7DA4C28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[*a3];
  *v14 = a4;
  *(v14 + 1) = a5;
  v15 = &v13[*a6];
  *v15 = a1;
  *(v15 + 1) = a2;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id IDSRegistrationEventTracingConstructKTClientDataEvent.init(registerID:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_name];
  strcpy(&v2[OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_name], "KT Client Data");
  v3[15] = -18;
  v4 = &v2[OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_registerID];
  *v4 = a1;
  *(v4 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for IDSRegistrationEventTracingConstructKTClientDataEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1A7DA4E38()
{
}

id sub_1A7DA4E88()
{
  result = [objc_allocWithZone(type metadata accessor for IDSRegistrationEventTracing()) init];
  qword_1EB2DC080 = result;
  return result;
}

uint64_t sub_1A7DA4F94()
{
  sub_1A7E22B70();
  v0 = NSHomeDirectory();
  v1 = sub_1A7E22290();
  v3 = v2;

  MEMORY[0x1AC561C90](v1, v3);

  result = MEMORY[0x1AC561C90](0xD000000000000031, 0x80000001A7EB0EE0);
  qword_1EB2DC070 = 0;
  *algn_1EB2DC078 = 0xE000000000000000;
  return result;
}

id IDSRegistrationEventTracing.init()()
{
  v82[2] = *MEMORY[0x1E69E9840];
  v69 = sub_1A7E21940();
  isa = v69[-1].isa;
  MEMORY[0x1EEE9AC00](v69, v1);
  v72 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v66 - v5);
  v7 = sub_1A7E22060();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E22050();
  v12 = &v0[OBJC_IVAR___IDSRegistrationEventTracing_coreAnalyticsPublisher];
  v13 = type metadata accessor for CAOperationPublisher();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___IDSCAOperationPublisher_prefix] = xmmword_1A7E4F570;
  v15 = &v14[OBJC_IVAR___IDSCAOperationPublisher_reporter];
  strcpy(&v14[OBJC_IVAR___IDSCAOperationPublisher_reporter], "com.apple.IDS");
  *(v15 + 7) = -4864;
  v81.receiver = v14;
  v81.super_class = v13;
  v16 = objc_msgSendSuper2(&v81, sel_init);
  *(v12 + 3) = v13;
  *(v12 + 4) = &protocol witness table for CAOperationPublisher;
  *v12 = v16;
  v17 = &v0[OBJC_IVAR___IDSRegistrationEventTracing_logPublisher];
  sub_1A7E22050();
  v18 = type metadata accessor for LogOperationPublisher(0);
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR___IDSLogOperationPublisher_separateLogLines] = 0;
  (*(v8 + 16))(&v19[OBJC_IVAR___IDSLogOperationPublisher_logger], v11, v7);
  v80.receiver = v19;
  v80.super_class = v18;
  v20 = objc_msgSendSuper2(&v80, sel_init);
  (*(v8 + 8))(v11, v7);
  *(v17 + 3) = v18;
  *(v17 + 4) = &protocol witness table for LogOperationPublisher;
  *v17 = v20;
  v21 = OBJC_IVAR___IDSRegistrationEventTracing_filePublishersByService;
  v22 = MEMORY[0x1E69E7CC0];
  *&v0[v21] = sub_1A7CE4ADC(MEMORY[0x1E69E7CC0]);
  v23 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  *&v0[v23] = sub_1A7CE4BEC(v22);
  v24 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
  *&v0[v24] = sub_1A7CE4BEC(v22);
  v25 = OBJC_IVAR___IDSRegistrationEventTracing_ktDataFetchOperations;
  *&v0[v25] = sub_1A7CE4BEC(v22);
  v26 = type metadata accessor for IDSRegistrationEventTracing();
  v79.receiver = v0;
  v79.super_class = v26;
  v74 = objc_msgSendSuper2(&v79, sel_init);
  v27 = [objc_opt_self() defaultManager];
  if (qword_1EB2B2A70 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_1A7E218A0();
    v28 = sub_1A7E218E0();
    v29 = *(isa + 1);
    v30 = v69;
    v71 = isa + 8;
    v78 = v29;
    v29(v6, v69);
    sub_1A7CC7FFC(&qword_1EB2B5758);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1A7E418C0;
    v32 = *MEMORY[0x1E695DB78];
    *(v31 + 32) = *MEMORY[0x1E695DB78];
    type metadata accessor for URLResourceKey(0);
    v33 = v32;
    v34 = sub_1A7E22520();

    v82[0] = 0;
    v35 = [v27 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:v34 options:0 error:v82];

    v36 = v82[0];
    if (v35)
    {
      v37 = sub_1A7E22530();
      v38 = v36;
    }

    else
    {
      v40 = v82[0];
      v41 = sub_1A7E217F0();

      swift_willThrow();
      v37 = MEMORY[0x1E69E7CC0];
    }

    v6 = isa;
    v42 = v72;
    v77 = *(v37 + 16);
    if (!v77)
    {
      break;
    }

    v43 = 0;
    v76 = v37 + ((*(isa + 80) + 32) & ~*(isa + 80));
    v70 = OBJC_IVAR___IDSRegistrationEventTracing_debugLogger;
    v75 = isa + 16;
    *&v39 = 136315138;
    v66 = v39;
    v73 = v37;
    while (v43 < *(v37 + 16))
    {
      v6[2](v42, v76 + v6[9] * v43, v30);
      v44 = sub_1A7E21870();
      v27 = v45;
      v78(v42, v30);
      v82[0] = v44;
      v82[1] = v27;
      sub_1A7CC7DFC();
      v46 = sub_1A7E22A40();

      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = (v46 + 32 * v47);
        v49 = *v48;
        v50 = v48[1];
        v27 = v48[2];
        v51 = v48[3];
        swift_bridgeObjectRetain_n();

        if (sub_1A7DA9D40(778923875, 0xE400000000000000, v49, v50))
        {

          v52 = sub_1A7E22040();
          v53 = sub_1A7E228F0();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v69 = v52;
            v55 = v54;
            v68 = swift_slowAlloc();
            v82[0] = v68;
            *v55 = v66;
            v56 = MEMORY[0x1AC561BF0](v49, v50, v27, v51);
            v58 = v30;
            v59 = sub_1A7B0CB38(v56, v57, v82);
            v6 = isa;

            *(v55 + 4) = v59;
            v30 = v58;
            v60 = v69;
            _os_log_impl(&dword_1A7AD9000, v69, v53, "Found folder of operations for service %s, creating new file publisher", v55, 0xCu);
            v61 = v68;
            sub_1A7B0CD6C(v68);
            MEMORY[0x1AC5654B0](v61, -1, -1);
            MEMORY[0x1AC5654B0](v55, -1, -1);
          }

          else
          {
          }

          v62 = MEMORY[0x1AC561BF0](v49, v50, v27, v51);
          v64 = sub_1A7DA84AC(v62, v63);
          swift_bridgeObjectRelease_n();

          v42 = v72;
          v37 = v73;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v37 = v73;
        }
      }

      else
      {
      }

      if (v77 == ++v43)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:

  return v74;
}

void sub_1A7DA5910(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventTracingValue(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v11 = *&v2[v10];

  v12 = sub_1A7DA3C48(a2, v11);

  type metadata accessor for IDSRegistrationEventTracingRegistrationEvent();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    if (v12)
    {
      v14 = a2;
      v15 = sub_1A7E22040();
      v16 = sub_1A7E228F0();

      if (!os_log_type_enabled(v15, v16))
      {
LABEL_6:

        v21 = v12;
LABEL_29:

        return;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      v20 = "GUID %@ has an open operation already! Not overwriting";
LABEL_5:
      _os_log_impl(&dword_1A7AD9000, v15, v16, v20, v17, 0xCu);
      sub_1A7D13CA0(v18);
      MEMORY[0x1AC5654B0](v18, -1, -1);
      MEMORY[0x1AC5654B0](v17, -1, -1);
      goto LABEL_6;
    }

    v42 = (v13 + OBJC_IVAR___IDSRegistrationEventTracingRegistrationEvent_name);
    swift_beginAccess();
    v44 = *v42;
    v43 = v42[1];
    v45 = sub_1A7E22290();
    v41 = v46;
    objc_allocWithZone(type metadata accessor for EventTracingOperation(0));

    v21 = EventTracingOperation.init(name:uniqueIdentifier:)(v44, v43, v45, v41);
    swift_beginAccess();
    v47 = *&v3[v10];
    if ((v47 & 0xC000000000000001) == 0)
    {
      v62 = v21;
      goto LABEL_28;
    }

    if (v47 < 0)
    {
      v12 = *&v3[v10];
    }

    else
    {
      v12 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    v48 = v21;
    v49 = sub_1A7E22DA0();
    if (!__OFADD__(v49, 1))
    {
      *&v3[v10] = sub_1A7DA9B1C(v12, v49 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = *&v3[v10];
      sub_1A7DC5F74(v21, a2, isUniquelyReferenced_nonNull_native);
      *&v3[v10] = v149;
      swift_endAccess();
      goto LABEL_29;
    }

    __break(1u);
LABEL_89:
    sub_1A7E22560();
LABEL_12:
    sub_1A7E225A0();
    swift_endAccess();

    sub_1A7B0CF18(v3);
    goto LABEL_29;
  }

  type metadata accessor for IDSRegistrationEventTracingAuthenticationEvent();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    if (v12)
    {
      v145 = v22;
      v23 = [a1 name];
      v24 = sub_1A7E22290();
      v26 = v25;

      v21 = sub_1A7D71540(v24, v26);

      if (v21)
      {
        v27 = OBJC_IVAR___IDSEventTracingOperation_stopped;
        swift_beginAccess();
        if ((*(&v21->isa + v27) & 1) == 0)
        {
          v80 = a2;
          v81 = sub_1A7E22040();
          v82 = sub_1A7E228F0();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v83 = 138412290;
            *(v83 + 4) = v80;
            *v84 = v80;
            v85 = v80;
            _os_log_impl(&dword_1A7AD9000, v81, v82, "GUID %@ already has an open authentication in progress", v83, 0xCu);
            sub_1A7D13CA0(v84);
            MEMORY[0x1AC5654B0](v84, -1, -1);
            MEMORY[0x1AC5654B0](v83, -1, -1);
          }

          goto LABEL_29;
        }
      }

      v28 = [a1 name];
      v29 = sub_1A7E22290();
      v31 = v30;

      v32 = objc_allocWithZone(type metadata accessor for EventTracingOperation(0));
      v3 = EventTracingOperation.init(name:uniqueIdentifier:)(v29, v31, 0, 0);
      v33 = (v145 + OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_authenticationType);
      swift_beginAccess();
      v34 = *v33;
      v35 = v33[1];
      *v9 = v34;
      v9[1] = v35;
      swift_storeEnumTagMultiPayload();
      v36 = type metadata accessor for EventTracingField(0);
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
      *v38 = 0xD000000000000012;
      v38[1] = 0x80000001A7EB0E90;
      sub_1A7B0C9B0(v9, &v37[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
      v37[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 0;
      v146.receiver = v37;
      v146.super_class = v36;

      v39 = objc_msgSendSuper2(&v146, sel_init);
      sub_1A7B0CAA4(v9);
      v40 = OBJC_IVAR___IDSEventTracingOperation_fields;
      swift_beginAccess();
      v41 = v39;
      MEMORY[0x1AC561DF0]();
      if (*((*&v3[v40] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v3[v40] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_12;
      }

      goto LABEL_89;
    }

    v56 = a2;
    v21 = sub_1A7E22040();
    v57 = sub_1A7E228F0();

    if (!os_log_type_enabled(v21, v57))
    {
      goto LABEL_29;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v56;
    *v59 = v56;
    v60 = v56;
    v61 = "GUID %@ has no open registration operation to add an authenticate";
LABEL_26:
    _os_log_impl(&dword_1A7AD9000, v21, v57, v61, v58, 0xCu);
    sub_1A7D13CA0(v59);
    MEMORY[0x1AC5654B0](v59, -1, -1);
    MEMORY[0x1AC5654B0](v58, -1, -1);
    goto LABEL_29;
  }

  type metadata accessor for IDSRegistrationEventTracingPNREvent();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for IDSRegistrationEventTracingSMSValidationEvent();
    v66 = swift_dynamicCastClass();
    if (!v66)
    {
      type metadata accessor for IDSRegistrationEventTracingConstructKTClientDataEvent();
      if (!swift_dynamicCastClass())
      {
LABEL_72:
        v21 = v12;
        goto LABEL_29;
      }

      if (!v12)
      {
        v112 = a2;
        v21 = sub_1A7E22040();
        v57 = sub_1A7E228F0();

        if (!os_log_type_enabled(v21, v57))
        {
          goto LABEL_29;
        }

        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        *(v58 + 4) = v112;
        *v59 = v112;
        v113 = v112;
        v61 = "GUID %@ has no open registration operation to add a KT data fetch";
        goto LABEL_26;
      }

      swift_beginAccess();

      v86 = sub_1A7E22260();

      v87 = OBJC_IVAR___IDSRegistrationEventTracing_ktDataFetchOperations;
      swift_beginAccess();
      v88 = *&v3[v87];

      v89 = sub_1A7DA3C48(v86, v88);

      if (v89)
      {
      }

      else
      {
        v124 = v86;
        v125 = [a1 name];
        v126 = sub_1A7E22290();
        v128 = v127;

        v129 = sub_1A7E22290();
        v131 = v130;
        v132 = objc_allocWithZone(type metadata accessor for EventTracingOperation(0));
        v133 = EventTracingOperation.init(name:uniqueIdentifier:)(v126, v128, v129, v131);
        swift_beginAccess();
        if (v133)
        {
          v134 = *&v3[v87];
          if ((v134 & 0xC000000000000001) != 0)
          {
            if (v134 < 0)
            {
              v135 = *&v3[v87];
            }

            else
            {
              v135 = v134 & 0xFFFFFFFFFFFFFF8;
            }

            v136 = sub_1A7E22DA0();
            if (__OFADD__(v136, 1))
            {
              goto LABEL_91;
            }

            *&v3[v87] = sub_1A7DA9B1C(v135, v136 + 1);
          }

          v137 = swift_isUniquelyReferenced_nonNull_native();
          v148 = *&v3[v87];
          sub_1A7DC5F74(v133, v124, v137);
          *&v3[v87] = v148;
        }

        else
        {
          v138 = sub_1A7DA99D0(v124);
        }

        swift_endAccess();
      }

      v139 = *&v3[v87];

      v21 = sub_1A7DA3C48(v86, v139);

      if (v21)
      {
        sub_1A7B0CF18(v21);
      }

      else
      {
        v140 = v86;
        v21 = sub_1A7E22040();
        v141 = sub_1A7E228F0();

        if (os_log_type_enabled(v21, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *v142 = 138412290;
          *(v142 + 4) = v140;
          *v143 = v140;
          v144 = v140;
          _os_log_impl(&dword_1A7AD9000, v21, v141, "Failed to create KT data fetch operation for %@", v142, 0xCu);
          sub_1A7D13CA0(v143);
          MEMORY[0x1AC5654B0](v143, -1, -1);
          MEMORY[0x1AC5654B0](v142, -1, -1);

          v21 = v144;
        }

        else
        {
        }
      }

      goto LABEL_29;
    }

    v67 = v66;
    v68 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
    swift_beginAccess();
    v69 = *&v3[v68];

    v21 = sub_1A7DA3C48(a2, v69);

    if (!v21)
    {
      v104 = a2;
      v15 = sub_1A7E22040();
      v16 = sub_1A7E228F0();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_6;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v104;
      *v18 = v104;
      v105 = v104;
      v20 = "No PNR operation for %@ to add sms validation ";
      goto LABEL_5;
    }

    v70 = [a1 name];
    v71 = sub_1A7E22290();
    v73 = v72;

    v74 = objc_allocWithZone(type metadata accessor for EventTracingOperation(0));
    v75 = EventTracingOperation.init(name:uniqueIdentifier:)(v71, v73, 0, 0);
    v76 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
    swift_beginAccess();
    v77 = *(v67 + v76);
    if (v77 > 1)
    {
      if (v77 == 3)
      {
        v78 = 0xE800000000000000;
        v79 = 0x6E656B6F54534352;
        goto LABEL_68;
      }

      if (v77 == 2)
      {
        v78 = 0xE700000000000000;
        v79 = 0x7373656C534D53;
        goto LABEL_68;
      }
    }

    else if (v77 == 1)
    {
      v78 = 0xE300000000000000;
      v79 = 5459283;
LABEL_68:
      v114 = [a1 name];
      v115 = sub_1A7E22290();
      v117 = v116;

      *v9 = v79;
      v9[1] = v78;
      swift_storeEnumTagMultiPayload();
      v118 = type metadata accessor for EventTracingField(0);
      v119 = objc_allocWithZone(v118);
      v120 = &v119[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_name];
      *v120 = v115;
      v120[1] = v117;
      sub_1A7B0C9B0(v9, &v119[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_value]);
      v119[OBJC_IVAR____TtC13IDSFoundation17EventTracingField_privacyMode] = 0;
      v147.receiver = v119;
      v147.super_class = v118;
      v121 = objc_msgSendSuper2(&v147, sel_init);
      sub_1A7B0CAA4(v9);
      v122 = OBJC_IVAR___IDSEventTracingOperation_fields;
      swift_beginAccess();
      v123 = v121;
      MEMORY[0x1AC561DF0]();
      if (*((*&v75[v122] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v75[v122] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A7E22560();
      }

      sub_1A7E225A0();
      swift_endAccess();

      sub_1A7B0CF18(v75);
LABEL_71:

      goto LABEL_72;
    }

    v78 = 0xE700000000000000;
    v79 = 0x6E776F6E6B6E55;
    goto LABEL_68;
  }

  if (!v12 || (v50 = v12, v51 = sub_1A7D71540(0x69746E6568747541, 0xEE006E6F69746163), v50, !v51))
  {
    v64 = a2;
    v15 = sub_1A7E22040();
    v16 = sub_1A7E228F0();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_6;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v64;
    *v18 = v64;
    v65 = v64;
    v20 = "GUID %@ has no open authentication operation to add a PNR";
    goto LABEL_5;
  }

  swift_beginAccess();

  v52 = sub_1A7E22260();

  v53 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
  swift_beginAccess();
  v54 = *&v3[v53];

  v55 = sub_1A7DA3C48(v52, v54);

  if (v55)
  {

LABEL_60:
    v107 = *&v3[v53];

    v21 = sub_1A7DA3C48(v52, v107);

    if (v21)
    {
      sub_1A7B0CF18(v21);

      goto LABEL_29;
    }

    v108 = v52;
    v21 = sub_1A7E22040();
    v109 = sub_1A7E228F0();

    if (!os_log_type_enabled(v21, v109))
    {

      goto LABEL_29;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v110 = 138412290;
    *(v110 + 4) = v108;
    *v111 = v108;
    v12 = v108;
    _os_log_impl(&dword_1A7AD9000, v21, v109, "Failed to create PNR operation for %@", v110, 0xCu);
    sub_1A7D13CA0(v111);
    MEMORY[0x1AC5654B0](v111, -1, -1);
    MEMORY[0x1AC5654B0](v110, -1, -1);

    goto LABEL_71;
  }

  v90 = v52;
  v91 = [a1 name];
  v92 = sub_1A7E22290();
  v94 = v93;

  v95 = sub_1A7E22290();
  v97 = v96;
  v98 = objc_allocWithZone(type metadata accessor for EventTracingOperation(0));
  v99 = EventTracingOperation.init(name:uniqueIdentifier:)(v92, v94, v95, v97);
  swift_beginAccess();
  if (!v99)
  {
    v106 = sub_1A7DA99D0(v90);

    goto LABEL_59;
  }

  v100 = *&v3[v53];
  if ((v100 & 0xC000000000000001) == 0)
  {
LABEL_51:
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *&v3[v53];
    sub_1A7DC5F74(v99, v90, v103);
    *&v3[v53] = v148;

LABEL_59:
    swift_endAccess();
    goto LABEL_60;
  }

  if (v100 < 0)
  {
    v101 = *&v3[v53];
  }

  else
  {
    v101 = v100 & 0xFFFFFFFFFFFFFF8;
  }

  v102 = sub_1A7E22DA0();
  if (!__OFADD__(v102, 1))
  {
    *&v3[v53] = sub_1A7DA9B1C(v101, v102 + 1);
    goto LABEL_51;
  }

  __break(1u);
LABEL_91:
  __break(1u);
}

void sub_1A7DA6A30(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_1A7DA3C48(a2, v8);

  type metadata accessor for IDSRegistrationEventTracingRegistrationEvent();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for IDSRegistrationEventTracingAuthenticationEvent();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      if (v9)
      {
        v27 = (v26 + OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name);
        swift_beginAccess();
        v28 = *v27;
        v29 = v27[1];

        v30 = v9;
        v31 = sub_1A7D71540(v28, v29);

        if (v31)
        {
          sub_1A7B0DD98(a3);

LABEL_25:
          return;
        }
      }

      v41 = a2;
      v25 = sub_1A7E22040();
      v42 = sub_1A7E228F0();

      if (!os_log_type_enabled(v25, v42))
      {
        goto LABEL_21;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v41;
      *v44 = v41;
      v45 = v41;
      v46 = "GUID %@ has no open authentication operation";
LABEL_16:
      _os_log_impl(&dword_1A7AD9000, v25, v42, v46, v43, 0xCu);
      sub_1A7D13CA0(v44);
      MEMORY[0x1AC5654B0](v44, -1, -1);
      MEMORY[0x1AC5654B0](v43, -1, -1);
      goto LABEL_21;
    }

    type metadata accessor for IDSRegistrationEventTracingPNREvent();
    if (swift_dynamicCastClass())
    {
      v47 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
      swift_beginAccess();
      v48 = *(v3 + v47);

      v49 = sub_1A7DA3C48(a2, v48);

      if (!v49)
      {
        v57 = a2;
        v25 = sub_1A7E22040();
        v42 = sub_1A7E228F0();

        if (!os_log_type_enabled(v25, v42))
        {
          goto LABEL_21;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v57;
        *v44 = v57;
        v58 = v57;
        v46 = "No PNR to close for %@ ";
        goto LABEL_16;
      }

      sub_1A7B0DD98(a3);
      swift_beginAccess();
      v25 = sub_1A7DA99D0(a2);
      swift_endAccess();
LABEL_20:

      goto LABEL_21;
    }

    type metadata accessor for IDSRegistrationEventTracingSMSValidationEvent();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      type metadata accessor for IDSRegistrationEventTracingConstructKTClientDataEvent();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_22;
      }

      swift_beginAccess();

      v59 = sub_1A7E22260();

      v60 = OBJC_IVAR___IDSRegistrationEventTracing_ktDataFetchOperations;
      swift_beginAccess();
      v61 = *(v3 + v60);

      v62 = sub_1A7DA3C48(v59, v61);

      if (v62)
      {
        sub_1A7B0DD98(a3);
        swift_beginAccess();
        v63 = v59;
        v25 = sub_1A7DA99D0(v63);
        swift_endAccess();
      }

      else
      {
        v63 = v59;
        v25 = sub_1A7E22040();
        v66 = sub_1A7E228F0();

        if (os_log_type_enabled(v25, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          *(v67 + 4) = v63;
          *v68 = v63;
          v69 = v63;
          _os_log_impl(&dword_1A7AD9000, v25, v66, "No KT data operation to close for %@ ", v67, 0xCu);
          sub_1A7D13CA0(v68);
          MEMORY[0x1AC5654B0](v68, -1, -1);
          MEMORY[0x1AC5654B0](v67, -1, -1);

          goto LABEL_22;
        }
      }

LABEL_21:
LABEL_22:

      return;
    }

    v51 = v50;
    v52 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
    swift_beginAccess();
    v53 = *(v4 + v52);

    v49 = sub_1A7DA3C48(a2, v53);

    if (v49)
    {
      v54 = (v51 + OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name);
      swift_beginAccess();
      v55 = *v54;
      v56 = v54[1];

      v25 = sub_1A7D71540(v55, v56);

      if (v25)
      {
        sub_1A7B0DD98(a3);
        goto LABEL_20;
      }
    }

    v64 = a2;
    v25 = sub_1A7E22040();
    v42 = sub_1A7E228F0();

    if (!os_log_type_enabled(v25, v42))
    {
      goto LABEL_21;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v64;
    *v44 = v64;
    v65 = v64;
    v46 = "No PNR operation for %@ to end sms validation ";
    goto LABEL_16;
  }

  if (!v9)
  {
    v32 = a2;
    v9 = sub_1A7E22040();
    v33 = sub_1A7E228F0();

    if (os_log_type_enabled(v9, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&dword_1A7AD9000, v9, v33, "GUID %@ has no open operation to close", v34, 0xCu);
      sub_1A7D13CA0(v35);
      MEMORY[0x1AC5654B0](v35, -1, -1);
      MEMORY[0x1AC5654B0](v34, -1, -1);
    }

    goto LABEL_22;
  }

  sub_1A7B0DD98(a3);
  swift_beginAccess();
  v10 = sub_1A7DA99D0(a2);
  swift_endAccess();

  v11 = *(v4 + OBJC_IVAR___IDSRegistrationEventTracing_logPublisher + 24);
  v12 = *(v4 + OBJC_IVAR___IDSRegistrationEventTracing_logPublisher + 32);
  sub_1A7CC9878((v4 + OBJC_IVAR___IDSRegistrationEventTracing_logPublisher), v11);
  (*(v12 + 8))(v9, 1, v11, v12);
  v13 = sub_1A7E22290();
  v15 = v14;
  v70[0] = v13;
  v70[1] = v14;
  sub_1A7CC7DFC();
  v16 = sub_1A7E22A40();
  if (*(v16 + 16) != 3)
  {

    v31 = sub_1A7E22040();
    v37 = sub_1A7E228F0();

    if (os_log_type_enabled(v31, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v38 = 136315138;
      v40 = sub_1A7B0CB38(v13, v15, v70);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_1A7AD9000, v31, v37, "Unexpected registration GUID format! %s", v38, 0xCu);
      sub_1A7B0CD6C(v39);
      MEMORY[0x1AC5654B0](v39, -1, -1);
      MEMORY[0x1AC5654B0](v38, -1, -1);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v17 = v16;

  if (v17[2] >= 2uLL)
  {
    v18 = v17[8];
    v19 = v17[9];
    v20 = v17[10];
    v21 = v17[11];

    v22 = MEMORY[0x1AC561BF0](v18, v19, v20, v21);
    v24 = v23;

    v25 = sub_1A7DA84AC(v22, v24);

    sub_1A7D777F4(v9);
    goto LABEL_21;
  }

  __break(1u);
}

void sub_1A7DA73C0(void *a1, uint64_t a2, char *a3)
{
  v7 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_1A7DA3C48(a1, v8);

  if (a2 == 1)
  {
    if (v9)
    {
      v13 = v9;
      v14 = sub_1A7D71540(0x69746E6568747541, 0xEE006E6F69746163);

      if (v14)
      {
        sub_1A7B0CF18(a3);

        v9 = v14;
        goto LABEL_16;
      }
    }

    v15 = a1;
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      v21 = "No authentication operation for %@ to add authenticate message ";
LABEL_14:
      _os_log_impl(&dword_1A7AD9000, v16, v17, v21, v18, 0xCu);
      sub_1A7D13CA0(v19);
      MEMORY[0x1AC5654B0](v19, -1, -1);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (a2 == 3)
  {
    v10 = OBJC_IVAR___IDSRegistrationEventTracing_pnrOperations;
    swift_beginAccess();
    v11 = *(v3 + v10);

    v12 = sub_1A7DA3C48(a1, v11);

    if (v12)
    {
      sub_1A7B0CF18(a3);

      goto LABEL_16;
    }

    v22 = a1;
    v16 = sub_1A7E22040();
    v17 = sub_1A7E228F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v22;
      *v19 = v22;
      v23 = v22;
      v21 = "No PNR operation for %@ to add preflight ";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v9)
  {
    sub_1A7B0CF18(a3);
  }

  else
  {
    v24 = a1;
    v9 = sub_1A7E22040();
    v25 = sub_1A7E228F0();

    if (os_log_type_enabled(v9, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&dword_1A7AD9000, v9, v25, "No registration operation for %@ to add message ", v26, 0xCu);
      sub_1A7D13CA0(v27);
      MEMORY[0x1AC5654B0](v27, -1, -1);
      MEMORY[0x1AC5654B0](v26, -1, -1);
    }
  }

LABEL_16:
}

uint64_t sub_1A7DA77A8(unint64_t a1, int a2)
{
  v3 = v2;
  v144 = a2;
  v137 = OBJC_IVAR___IDSRegistrationEventTracing_debugLogger;
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "Fetching previous registration operations", v7, 2u);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v8 = MEMORY[0x1E69E7CC0];
  v149 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v9 = sub_1A7E22DA0();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_18:
    v27 = OBJC_IVAR___IDSRegistrationEventTracing_filePublishersByService;
    swift_beginAccess();
    v28 = *(v3 + v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = sub_1A7CE0AF0(*(v28 + 16), 0);
      v31 = sub_1A7CE10F8(&v145, v30 + 4, v29, v28);

      sub_1A7CC9770();
      if (v31 == v29)
      {
LABEL_22:
        v26 = v30;
        goto LABEL_23;
      }

      __break(1u);
    }

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_5:
  v145 = v8;
  sub_1A7CCE918(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);

    __break(1u);
    goto LABEL_99;
  }

  v10 = v145;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    do
    {
      MEMORY[0x1AC562480](v11, a1);
      v12 = sub_1A7E22290();
      v14 = v13;
      swift_unknownObjectRelease();
      v145 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A7CCE918((v15 > 1), v16 + 1, 1);
        v10 = v145;
      }

      ++v11;
      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v9 != v11);
  }

  else
  {
    v18 = a1 + 32;
    do
    {
      v19 = sub_1A7E22290();
      v145 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = v19;
        v25 = v20;
        sub_1A7CCE918((v21 > 1), v22 + 1, 1);
        v20 = v25;
        v19 = v24;
        v10 = v145;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += 8;
      --v9;
    }

    while (v9);
  }

  v26 = v10;
LABEL_23:
  sub_1A7DDEE7C(v26);
  v32 = sub_1A7CE4CE4(MEMORY[0x1E69E7CC0]);
  v33 = OBJC_IVAR___IDSRegistrationEventTracing_registrationOperations;
  swift_beginAccess();
  v34 = *(v3 + v33);
  v141 = v3;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = sub_1A7E22D90() | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(v34 + 32);
    v36 = ~v39;
    v35 = v34 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v37 = v41 & *(v34 + 64);
    v38 = v34;
  }

  v142 = v32;

  v132 = 0;
  v42 = 0;
  v9 = 0;
  v138 = v36;
  v43 = (v36 + 64) >> 6;
  for (i = v38; ; v38 = i)
  {
    v44 = v42;
    if ((v38 & 0x8000000000000000) != 0)
    {
LABEL_39:
      v51 = sub_1A7E22DC0();
      if (v51)
      {
        v53 = v52;
        v148 = v51;
        sub_1A7CD1EB4();
        swift_dynamicCast();
        v49 = v146;
        v148 = v53;
        type metadata accessor for EventTracingOperation(0);
        swift_dynamicCast();
        v50 = v146;
        v42 = v44;
        v143 = v37;
        if (v49)
        {
          goto LABEL_41;
        }
      }

LABEL_57:
      sub_1A7CC9770();
      v82 = sub_1A7CE4DF4(MEMORY[0x1E69E7CC0]);
      v84 = v149;
      v136 = *(v149 + 16);
      if (!v136)
      {

        v129 = 0;
LABEL_92:

        sub_1A7B15088(v132);
        sub_1A7B15088(v129);
        return v82;
      }

      v85 = 0;
      v86 = 0;
      v135 = v149 + 32;
      *&v83 = 136315138;
      v133 = v83;
      v87 = v142;
      v134 = v149;
      while (1)
      {
        if (v86 >= *(v84 + 16))
        {
          goto LABEL_94;
        }

        v88 = (v135 + 16 * v86);
        v90 = *v88;
        v89 = v88[1];

        v140 = sub_1A7DA84AC(v90, v89);
        v91 = sub_1A7D7673C();
        sub_1A7B15088(v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v87;
        v143 = v90;
        v93 = sub_1A7CD1248(v90, v89);
        v95 = v87[2];
        v96 = (v94 & 1) == 0;
        v97 = __OFADD__(v95, v96);
        v98 = v95 + v96;
        if (v97)
        {
          goto LABEL_95;
        }

        v99 = v94;
        v100 = v87[3];
        v138 = v86;
        if (v100 >= v98)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v128 = v93;
            sub_1A7DC8E64();
            v93 = v128;
          }
        }

        else
        {
          sub_1A7DC3138(v98, isUniquelyReferenced_nonNull_native);
          v93 = sub_1A7CD1248(v143, v89);
          if ((v99 & 1) != (v101 & 1))
          {
            goto LABEL_99;
          }
        }

        v102 = MEMORY[0x1E69E7CC0];
        v103 = v146;
        if ((v99 & 1) == 0)
        {
          sub_1A7DC6538(v93, v143, v89, MEMORY[0x1E69E7CC0], v146);
        }

        sub_1A7DDF664(v91);
        v148 = v102;
        if (v103[2])
        {
          sub_1A7CD1248(v143, v89);
          if (v104)
          {
          }
        }

        i = v82;
        v142 = v103;

        v146 = sub_1A7DB25D4(v105);
        sub_1A7DA87CC(&v146);

        v106 = v146;
        if (v146 < 0 || (v146 & 0x4000000000000000) != 0)
        {
          v107 = sub_1A7E22DA0();
          if (v107)
          {
LABEL_75:
            if (v107 < 1)
            {
              goto LABEL_96;
            }

            v108 = 0;
            do
            {
              if ((v106 & 0xC000000000000001) != 0)
              {
                v109 = MEMORY[0x1AC562480](v108, v106);
              }

              else
              {
                v109 = *(v106 + 8 * v108 + 32);
              }

              v110 = v109;
              v111 = &selRef_description;
              if ((v144 & 1) == 0)
              {
                v111 = &selRef_debugDescription;
              }

              v112 = [v109 *v111];
              v113 = swift_beginAccess();
              MEMORY[0x1AC561DF0](v113);
              if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1A7E22560();
              }

              ++v108;
              sub_1A7E225A0();
              v114 = v148;
              swift_endAccess();
            }

            while (v107 != v108);
            goto LABEL_88;
          }
        }

        else
        {
          v107 = *(v146 + 16);
          if (v107)
          {
            goto LABEL_75;
          }
        }

        v114 = v102;
LABEL_88:

        v115 = sub_1A7E22260();

        v116 = i;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v116;
        sub_1A7DC60DC(v114, v115, v117);

        v82 = v146;
        v118 = sub_1A7E22040();
        v119 = sub_1A7E228F0();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v146 = v121;
          *v120 = v133;
          v122 = sub_1A7CD1EB4();

          v124 = MEMORY[0x1AC561E20](v123, v122);
          v126 = v125;

          v127 = sub_1A7B0CB38(v124, v126, &v146);

          *(v120 + 4) = v127;
          _os_log_impl(&dword_1A7AD9000, v118, v119, "%s", v120, 0xCu);
          sub_1A7B0CD6C(v121);
          MEMORY[0x1AC5654B0](v121, -1, -1);
          MEMORY[0x1AC5654B0](v120, -1, -1);
        }

        v87 = v142;
        v86 = v138 + 1;
        v85 = sub_1A7DAA840;
        v84 = v134;
        if (v138 + 1 == v136)
        {

          v129 = sub_1A7DAA840;
          goto LABEL_92;
        }
      }
    }

    while (1)
    {
      while (1)
      {
        v45 = v44;
        v46 = v37;
        v42 = v44;
        if (!v37)
        {
          while (1)
          {
            v42 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              break;
            }

            if (v42 >= v43)
            {
              goto LABEL_57;
            }

            v46 = *(v35 + 8 * v42);
            ++v45;
            if (v46)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

LABEL_37:
        v143 = (v46 - 1) & v46;
        v47 = (v42 << 9) | (8 * __clz(__rbit64(v46)));
        v48 = *(*(v38 + 56) + v47);
        v49 = *(*(v38 + 48) + v47);
        v50 = v48;
        if (!v49)
        {
          goto LABEL_57;
        }

LABEL_41:
        v140 = v50;
        v146 = sub_1A7E22290();
        v147 = v54;
        sub_1A7CC7DFC();
        v55 = sub_1A7E22A40();

        if (v55[2] == 3)
        {
          break;
        }

        v44 = v42;
        v37 = v143;
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      v56 = v55[8];
      v57 = v55[9];
      v59 = v55[10];
      v58 = v55[11];

      v60 = MEMORY[0x1AC561BF0](v56, v57, v59, v58);
      v62 = v61;

      v146 = v60;
      v147 = v62;
      MEMORY[0x1EEE9AC00](v63, v64);
      v131[2] = &v146;
      if (sub_1A7DB1B08(sub_1A7DAA790, v131, v65))
      {
        break;
      }

      v44 = v42;
      v37 = v143;
      v38 = i;
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }
    }

    sub_1A7B15088(v132);
    v66 = v142;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v66;
    v69 = sub_1A7CD1248(v60, v62);
    v70 = v66[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_98;
    }

    if (v66[3] < v72)
    {
      break;
    }

    if ((v67 & 1) == 0)
    {
      v81 = v68;
      sub_1A7DC8E64();
      v68 = v81;
    }

    v76 = v69;
    v77 = v146;
    if (v68)
    {
      goto LABEL_53;
    }

LABEL_49:
    sub_1A7DC6538(v76, v60, v62, MEMORY[0x1E69E7CC0], v77);
LABEL_54:
    v78 = v77;
    v37 = v143;
    v79 = (v77[7] + 8 * v76);
    v80 = v140;
    MEMORY[0x1AC561DF0]();
    if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    v142 = v78;
    sub_1A7E225A0();

    v132 = sub_1A7DAA840;
  }

  v73 = v68;
  sub_1A7DC3138(v72, v67);
  v74 = sub_1A7CD1248(v60, v62);
  if ((v73 & 1) == (v75 & 1))
  {
    v76 = v74;
    v77 = v146;
    if ((v73 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_99:
  result = sub_1A7E23140();
  __break(1u);
  return result;
}

NSObject *sub_1A7DA84AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A7E21940();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___IDSRegistrationEventTracing_filePublishersByService;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_1A7CD1248(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      return v14;
    }
  }

  if (qword_1EB2B2A70 != -1)
  {
    swift_once();
  }

  v22[0] = qword_1EB2DC070;
  v22[1] = *algn_1EB2DC078;

  MEMORY[0x1AC561C90](a1, a2);
  MEMORY[0x1AC561C90](47, 0xE100000000000000);
  sub_1A7E21890();

  LOBYTE(v22[0]) = 0;
  v16 = objc_allocWithZone(type metadata accessor for FileOperationPublisher(0));
  v17 = FileOperationPublisher.init(directory:outputFormatStyle:maxFileCount:)(v9, v22, 11);
  swift_beginAccess();

  v18 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v3 + v10);
  *(v3 + v10) = 0x8000000000000000;
  sub_1A7DC5DD8(v18, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v10) = v21;
  swift_endAccess();
  return v18;
}