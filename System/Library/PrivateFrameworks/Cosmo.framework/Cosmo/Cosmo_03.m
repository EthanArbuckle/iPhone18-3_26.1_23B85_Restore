void sub_247D9B824()
{
  if (qword_27EE73260 != -1)
  {
    swift_once();
  }

  v1 = sub_247DD23CC();
  __swift_project_value_buffer(v1, qword_27EE7B878);

  v2 = sub_247DD23AC();
  v3 = sub_247DD2F2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_247D9A2D0();
    v8 = sub_247D72868(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_247D56000, v2, v3, "[Browser] Stopping browser for Bonjour type=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x24C1BAF60](v5, -1, -1);
    MEMORY[0x24C1BAF60](v4, -1, -1);
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser))
  {
    v9 = *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser);

    sub_247DD29EC();
  }
}

uint64_t CosmoBrowser.deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor);

  v2 = *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser);

  return v0;
}

uint64_t CosmoBrowser.__deallocating_deinit()
{
  v1 = v0[3];
  sub_247D6A24C(v0[2]);
  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor);

  v2 = *(v0 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_247D9BAAC()
{
  result = qword_27EE73CC8;
  if (!qword_27EE73CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73CC8);
  }

  return result;
}

uint64_t type metadata accessor for CosmoBrowser()
{
  result = qword_27EE73CD8;
  if (!qword_27EE73CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247D9BB6C()
{
  result = type metadata accessor for NetworkDescriptor();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247D9BCA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D9BCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D08, &unk_247DD5E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D9BD5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

SecKeyRef getLocalKeyPair(serializedKeyPair:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = *MEMORY[0x277CDC040];

    return createKeyPair(v2, 256);
  }

  else
  {
    sub_247D6A2E8(a1, a2);
    v6 = deserialize(serializedKeyPair:)();
    if (v6)
    {
      v7 = v6;
      sub_247D6C0AC(a1, a2);
      return v7;
    }

    else
    {
      result = sub_247DD30AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t getPublicKey(identity:)(void *a1)
{
  v1 = publicKeyFromIdentity(a1);
  v2 = sub_247DD217C();

  return v2;
}

uint64_t copyPublicKeyFrom(identity:)(NSObject *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = sec_identity_copy_ref(a1);
  if (!v1)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_247D56000, v12, v13, "Unable to copy secIdentity", v14, 2u);
      MEMORY[0x24C1BAF60](v14, -1, -1);
    }

    goto LABEL_23;
  }

  v2 = v1;
  v30[0] = 0;
  v3 = SecIdentityCopyPrivateKey(v1, v30);
  if (v3 != sub_247DD23DC())
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B8F0);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "SecIdentityCopyPrivateKey failed";
    goto LABEL_20;
  }

  if (!v30[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE7B8F0);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Could not copy privateKey";
LABEL_20:
    _os_log_impl(&dword_247D56000, v16, v17, v19, v18, 2u);
    MEMORY[0x24C1BAF60](v18, -1, -1);
LABEL_21:

LABEL_22:
LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  v4 = v30[0];
  v5 = SecKeyCopyPublicKey(v4);
  if (!v5)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v22 = sub_247DD23CC();
    __swift_project_value_buffer(v22, qword_27EE7B8F0);
    v23 = sub_247DD23AC();
    v24 = sub_247DD2F0C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_247D56000, v23, v24, "Could not create publicKey from privateKey", v25, 2u);
      MEMORY[0x24C1BAF60](v25, -1, -1);
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = SecKeyCopySubjectPublicKeyInfo();
  if (!v7)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v26 = sub_247DD23CC();
    __swift_project_value_buffer(v26, qword_27EE7B8F0);
    v27 = sub_247DD23AC();
    v28 = sub_247DD2F0C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_247D56000, v27, v28, "Could not create data from publicKey", v29, 2u);
      MEMORY[0x24C1BAF60](v29, -1, -1);
    }

    goto LABEL_22;
  }

  v8 = v7;
  v9 = sub_247DD217C();

  result = v9;
LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t copyPrivateKeyFrom(identity:)(NSObject *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = sec_identity_copy_ref(a1);
  if (!v1)
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v7 = sub_247DD23CC();
    __swift_project_value_buffer(v7, qword_27EE7B8F0);
    v8 = sub_247DD23AC();
    v9 = sub_247DD2F0C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_247D56000, v8, v9, "Unable to copy secIdentity", v10, 2u);
      MEMORY[0x24C1BAF60](v10, -1, -1);
    }

    goto LABEL_20;
  }

  v2 = v1;
  v18[0] = 0;
  v3 = SecIdentityCopyPrivateKey(v1, v18);
  if (v3 != sub_247DD23DC())
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v11 = sub_247DD23CC();
    __swift_project_value_buffer(v11, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "SecIdentityCopyPrivateKey failed";
    goto LABEL_18;
  }

  if (!v18[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B8F0);
    v12 = sub_247DD23AC();
    v13 = sub_247DD2F0C();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Could not copy privateKey";
LABEL_18:
    _os_log_impl(&dword_247D56000, v12, v13, v15, v14, 2u);
    MEMORY[0x24C1BAF60](v14, -1, -1);
LABEL_19:

LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  v4 = v18[0];
  v5 = serializeKeyPair(keyPair:)(v4);

  result = v5;
LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t serializeKeyPair(keyPair:)(__SecKey *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, error);
  v2 = v1;
  v3 = error[0];
  if (error[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v4 = sub_247DD23CC();
    __swift_project_value_buffer(v4, qword_27EE7B8F0);
    v5 = sub_247DD23AC();
    v6 = sub_247DD2F0C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      type metadata accessor for CFError(0);
      sub_247D9CDE4(&qword_27EE73D10, type metadata accessor for CFError);
      v9 = sub_247DD324C();
      v11 = v10;

      v12 = sub_247D72868(v9, v11, &v19);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_247D56000, v5, v6, "Error encountered during serialization of keyPair, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
    }
  }

  else
  {
    if (v1)
    {
      v14 = sub_247DD217C();

      result = v14;
      goto LABEL_10;
    }

    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B8F0);
    v2 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    if (os_log_type_enabled(v2, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_247D56000, v2, v17, "Failed to serialize keyPair", v18, 2u);
      MEMORY[0x24C1BAF60](v18, -1, -1);
    }
  }

  result = 0;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

NSObject *deserialize(serializedKeyPair:)()
{
  error[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D18, &qword_247DD5E80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247DD5E70;
  v1 = *MEMORY[0x277CDC028];
  *(inited + 32) = *MEMORY[0x277CDC028];
  v2 = *MEMORY[0x277CDC040];
  v3 = *MEMORY[0x277CDBFE0];
  *(inited + 40) = *MEMORY[0x277CDC040];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x277CDBFF0];
  v5 = *MEMORY[0x277CDC018];
  *(inited + 56) = *MEMORY[0x277CDBFF0];
  *(inited + 64) = v5;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  *(inited + 72) = sub_247DD2EDC();
  sub_247D9CCEC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D20, &qword_247DD5E88);
  swift_arrayDestroy();
  error[0] = 0;
  v11 = sub_247DD215C();
  type metadata accessor for CFString(0);
  sub_247D9CDE4(&qword_27EE734E0, type metadata accessor for CFString);
  v12 = sub_247DD2C2C();

  v13 = SecKeyCreateWithData(v11, v12, error);

  v14 = error[0];
  if (error[0])
  {
    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B8F0);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      type metadata accessor for CFError(0);
      sub_247D9CDE4(&qword_27EE73D10, type metadata accessor for CFError);
      v20 = sub_247DD324C();
      v22 = v21;

      v23 = sub_247D72868(v20, v22, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_247D56000, v16, v17, "Error encountered during deserialization of keyPair, error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x24C1BAF60](v19, -1, -1);
      MEMORY[0x24C1BAF60](v18, -1, -1);
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_9;
    }

    if (qword_27EE73288 != -1)
    {
      swift_once();
    }

    v26 = sub_247DD23CC();
    __swift_project_value_buffer(v26, qword_27EE7B8F0);
    v13 = sub_247DD23AC();
    v27 = sub_247DD2F0C();
    if (os_log_type_enabled(v13, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_247D56000, v13, v27, "Failed to deserialize keyPair", v28, 2u);
      MEMORY[0x24C1BAF60](v28, -1, -1);
    }
  }

  v13 = 0;
LABEL_9:
  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

unint64_t sub_247D9CCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73D28, &qword_247DD5E90);
    v3 = sub_247DD30EC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_247D94D54(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_247D9CDE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247D9CE2C()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE73D30);
  v1 = __swift_project_value_buffer(v0, qword_27EE73D30);
  if (qword_27EE73270 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B8A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Cosmo::CosmoMultiplexChannelClient::State_optional __swiftcall CosmoMultiplexChannelClient.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

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

uint64_t CosmoMultiplexChannelClient.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6164696C61766E69;
  }

  else
  {
    result = 0x7964616572;
  }

  *v0;
  return result;
}

uint64_t sub_247D9CF98@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD312C();

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

uint64_t CosmoMultiplexChannelClient.Configuration.init(maxOutstandingRequests:httpConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  return sub_247DA5238(a2, a3 + *(v5 + 20), type metadata accessor for CosmoHttpConnection.Configuration);
}

uint64_t sub_247D9D0C0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247D9D154(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

uint64_t CosmoMultiplexChannelClient.__allocating_init(config:name:descriptor:queue:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  CosmoMultiplexChannelClient.init(config:name:descriptor:queue:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t CosmoMultiplexChannelClient.init(config:name:descriptor:queue:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v59 = a2;
  v11 = sub_247DD249C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NetworkDescriptor();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v64 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = v55 - v18;
  v19 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v61 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = v55 - v23;
  v24 = sub_247DD2F6C();
  v57 = *(v24 - 8);
  v58 = v24;
  v25 = *(v57 + 64);
  MEMORY[0x28223BE20](v24);
  v56 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_247DD2F3C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v29 = sub_247DD2A2C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 0;
  v31 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests) = v31;
  v32 = a1;
  sub_247D9D8B8(a1, v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  v33 = (v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name);
  *v33 = v59;
  v33[1] = a3;
  if (a5)
  {
    v34 = a5;
  }

  else
  {
    v55[0] = sub_247D6A0F4();
    v59 = &qword_247DD5E90;
    sub_247DD2A1C();
    v65 = v31;
    v55[1] = sub_247DA4BD4(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v57 + 104))(v56, *MEMORY[0x277D85260], v58);
    v34 = sub_247DD2F8C();
  }

  v35 = a5;
  *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue) = v34;
  v36 = a4;
  sub_247D9D8B8(a4, v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);
  v37 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  v38 = v60;
  sub_247D9D8B8(v32 + *(v37 + 20), v60, type metadata accessor for CosmoHttpConnection.Configuration);
  v39 = v62;
  sub_247D9D8B8(a4, v62, type metadata accessor for NetworkDescriptor);
  v59 = v35;
  v40 = v34;
  sub_247D873E8(v63);
  sub_247D879F4();
  v41 = sub_247DD26FC();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_247DD265C();
  v45 = v61;
  sub_247D9D8B8(v38, v61, type metadata accessor for CosmoHttpConnection.Configuration);
  v46 = v64;
  sub_247D9D8B8(v39, v64, type metadata accessor for NetworkDescriptor);
  v47 = type metadata accessor for CosmoHttpConnection(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_247D755C4(v45, v46, 1, v44, v34);

  sub_247D9D920(v36, type metadata accessor for NetworkDescriptor);
  sub_247D9D920(v32, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247D9D920(v39, type metadata accessor for NetworkDescriptor);
  sub_247D9D920(v38, type metadata accessor for CosmoHttpConnection.Configuration);
  *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection) = v50;
  v51 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v52 = *(v50 + 2);
  v53 = *(v50 + 3);
  *(v50 + 2) = sub_247DA5308;
  *(v50 + 3) = v51;

  sub_247D6A24C(v52);

  return v6;
}

uint64_t sub_247D9D8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D9D920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247D9D980()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D9D9F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = sub_247DA52A0;
  *(v1 + 24) = v2;

  sub_247D6A24C(v3);

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE73D30);

  v6 = sub_247DD23AC();
  v7 = sub_247DD2F2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = CosmoMultiplexChannelClient.description.getter();
    v12 = sub_247D72868(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_247D56000, v6, v7, "[Start] Starting parent channel, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x24C1BAF60](v9, -1, -1);
    MEMORY[0x24C1BAF60](v8, -1, -1);
  }

  return sub_247D765E0();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D9DC0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247D9DEA4(uint64_t a1)
{
  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v2 = sub_247DD23CC();
  __swift_project_value_buffer(v2, qword_27EE73D30);

  v3 = sub_247DD23AC();
  v4 = sub_247DD2F2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = CosmoMultiplexChannelClient.description.getter();
    v9 = sub_247D72868(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_247D56000, v3, v4, "[Stop] Stopping parent channel, %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C1BAF60](v6, -1, -1);
    MEMORY[0x24C1BAF60](v5, -1, -1);
  }

  v10 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);
  return sub_247D781D4();
}

void sub_247D9E018(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v9)
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) & 1) == 0)
    {
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v12 = sub_247DD23CC();
      __swift_project_value_buffer(v12, qword_27EE73D30);

      v13 = sub_247DD23AC();
      v14 = sub_247DD2F2C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v36[0] = v16;
        *v15 = 136315394;
        HIBYTE(v35) = v9;
        v17 = sub_247DD2CFC();
        v19 = sub_247D72868(v17, v18, v36);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        v20 = CosmoMultiplexChannelClient.description.getter();
        v22 = sub_247D72868(v20, v21, v36);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_247D56000, v13, v14, "Parent channel invalidated, connection-state=%s %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v16, -1, -1);
        MEMORY[0x24C1BAF60](v15, -1, -1);
      }

      sub_247D9E484();
      swift_beginAccess();
      v23 = *(v2 + 16);
      if (v23)
      {
        v24 = *(v2 + 24);
        HIBYTE(v35) = 1;

        v23(&v35 + 7);
        sub_247D6A24C(v23);
      }
    }

    return;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 1;
  if (qword_27EE732B0 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE73D30);

  v26 = sub_247DD23AC();
  v27 = sub_247DD2F2C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 136315138;
    v30 = CosmoMultiplexChannelClient.description.getter();
    v32 = sub_247D72868(v30, v31, v36);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_247D56000, v26, v27, "Parent channel ready, %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x24C1BAF60](v29, -1, -1);
    MEMORY[0x24C1BAF60](v28, -1, -1);
  }

  swift_beginAccess();
  v33 = *(v2 + 16);
  if (v33)
  {
    v34 = *(v2 + 24);
    HIBYTE(v35) = 0;

    v33(&v35 + 7);
    sub_247D6A24C(v33);
  }

  sub_247DA049C();
}

void sub_247D9E484()
{
  v1 = v0;
  v50 = sub_247DD2A0C();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_247DD2A2C();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_247DD2ADC();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v12, v8);
  if (v15)
  {
    *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
    *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 1;
    v16 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();
    v18 = *(v1 + v16);
    if (!(v18 >> 62))
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  if (!sub_247DD30BC())
  {
    return;
  }

LABEL_4:
  v19 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v39 = *(v1 + v19);
    }

    if (!sub_247DD30BC())
    {
      return;
    }
  }

  else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v21 = sub_247DD23CC();
  __swift_project_value_buffer(v21, qword_27EE73D30);

  v22 = sub_247DD23AC();
  v23 = sub_247DD2F2C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    v26 = CosmoMultiplexChannelClient.description.getter();
    v28 = sub_247D72868(v26, v27, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_247D56000, v22, v23, "Failing pending requests, %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x24C1BAF60](v25, -1, -1);
    MEMORY[0x24C1BAF60](v24, -1, -1);
  }

  v29 = *(v1 + v16);
  if (v29 >> 62)
  {
    v30 = sub_247DD30BC();
    if (!v30)
    {
      return;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      return;
    }
  }

  if (v30 < 1)
  {
    __break(1u);
  }

  else
  {
    v45 = v29 & 0xC000000000000001;
    v44 = 0x8000000247DD9920;
    v43 = v53;
    v42 = (v2 + 8);
    v41 = (v5 + 8);

    v31 = 0;
    v40 = xmmword_247DD52A0;
    v46 = v29;
    do
    {
      if (v45)
      {
        v32 = MEMORY[0x24C1BA360](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      ++v31;
      v33 = *(v32 + 32);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = 0xD00000000000001DLL;
      *(v34 + 32) = v44;
      *(v34 + 40) = v40;
      *(v34 + 56) = 2;
      v53[2] = sub_247DA52EC;
      v53[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v53[0] = sub_247D598D4;
      v53[1] = &block_descriptor_71;
      v35 = _Block_copy(aBlock);

      v36 = v47;
      sub_247DD2A1C();
      v51 = MEMORY[0x277D84F90];
      sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
      sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
      v38 = v49;
      v37 = v50;
      sub_247DD2FFC();
      MEMORY[0x24C1BA270](0, v36, v38, v35);
      _Block_release(v35);
      (*v42)(v38, v37);
      (*v41)(v36, v48);

      v29 = v46;
    }

    while (v30 != v31);
  }
}

uint64_t sub_247D9EB38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a3;
  v30 = a6;
  v31 = a2;
  v33 = sub_247DD2A0C();
  v36 = *(v33 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247DD2A2C();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v32 = *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  (*(v19 + 16))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v21 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  *(v22 + 2) = a5;
  *(v22 + 3) = v24;
  *(v22 + 4) = v7;
  *(v22 + 5) = v23;
  *(v22 + 6) = a4;
  (*(v19 + 32))(&v22[v21], &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v22[v21 + v20] = v31;
  aBlock[4] = sub_247D9F4FC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_9;
  v25 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v37 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  v26 = v33;
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v18, v13, v25);
  _Block_release(v25);
  (*(v36 + 8))(v13, v26);
  (*(v34 + 8))(v18, v35);
}

void sub_247D9EEEC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v51 = a5;
  v50 = a4;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C10, &qword_247DD4330);
  v12 = sub_247DD32FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v48 - v16);
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    sub_247D6AFB0();
    v22 = swift_allocError();
    *v23 = xmmword_247DD52A0;
    *(v23 + 16) = 2;
    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    a2(v17);
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v49 = type metadata accessor for PendingRequest(0);
    v24 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = a6;
    v26[3] = a7;
    v26[4] = v25;
    v26[5] = a2;
    v26[6] = a3;
    (*(v18 + 16))(v21, v50, a6);
    v27 = v24;

    v28 = v51;
    v50 = a7;
    v29 = sub_247DA4AB8(v21, v51 & 1, v27, sub_247DA5220, v26, v49, a6, a7);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = v29[2];
    v32 = v29[3];
    v29[2] = sub_247DA5230;
    v29[3] = v30;

    sub_247D6A24C(v31);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) != 1)
    {
      goto LABEL_8;
    }

    v33 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v34 = *(a1 + v33);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v47 = *(a1 + v33);
      }

      v35 = sub_247DD30BC();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (v28 & 1) != 0)
    {
      sub_247DA0CDC(v29);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v29, v28 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v36 = sub_247DD23CC();
      __swift_project_value_buffer(v36, qword_27EE73D30);

      v37 = sub_247DD23AC();
      v38 = sub_247DD2F2C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v52 = v40;
        *v39 = 136315650;
        v41 = (*(v50 + 48))(a6);
        v43 = sub_247D72868(v41, v42, &v52);

        *(v39 + 4) = v43;
        *(v39 + 12) = 1024;
        *(v39 + 14) = v28 & 1;
        *(v39 + 18) = 2080;
        v44 = CosmoMultiplexChannelClient.description.getter();
        v46 = sub_247D72868(v44, v45, &v52);

        *(v39 + 20) = v46;
        _os_log_impl(&dword_247D56000, v37, v38, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v39, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v40, -1, -1);
        MEMORY[0x24C1BAF60](v39, -1, -1);
      }
    }
  }
}

uint64_t sub_247D9F434()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_247D9F560(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v33 = a4;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C10, &qword_247DD4330);
  v36 = sub_247DD32FC();
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = (&v31 - v8);
  v32 = *(AssociatedTypeWitness - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = type metadata accessor for CosmoHttpResponseContent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v20, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v20;
      v23 = *(v20 + 1);
      v24 = v20[16];
      sub_247D6AFB0();
      v25 = swift_allocError();
      *v26 = v22;
      *(v26 + 8) = v23;
      *(v26 + 16) = v24;
      *v9 = v25;
      v27 = v36;
      swift_storeEnumTagMultiPayload();
      v35(v9);

      return (*(v34 + 8))(v9, v27);
    }

    else
    {
      sub_247DA5238(v20, v16, type metadata accessor for CosmoHttpResponseContent);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 40))(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = v32;
      (*(v32 + 16))(v9, v12, AssociatedTypeWitness);
      v30 = v36;
      swift_storeEnumTagMultiPayload();
      v35(v9);

      (*(v34 + 8))(v9, v30);
      (*(v29 + 8))(v12, AssociatedTypeWitness);
      return sub_247D9D920(v16, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t sub_247D9FBE0(uint64_t a1)
{
  v2 = sub_247DD20DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CosmoHttpResponseContent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D9D8B8(a1, v10, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = *v10;
    v13 = v10[1];
    sub_247D6A2E8(*v10, v13);
    v15 = sub_247DD03F8(v14, v13);
    if (v16)
    {
      v12 = v15;
      sub_247D6A1F8(v14, v13);
    }

    else
    {
      v21 = v14;
      v22 = v13;
      sub_247D6A2E8(v14, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
      if (swift_dynamicCast())
      {
        sub_247D6B5A8(v19, v23);
        __swift_project_boxed_opaque_existential_1(v23, v24);
        v17 = sub_247DD310C();
        sub_247D6A1F8(v14, v13);
        if (v17)
        {
          __swift_project_boxed_opaque_existential_1(v23, v24);
          sub_247DD30FC();
          sub_247D6A1F8(v14, v13);
          v12 = *&v19[0];
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          return v12;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v23);
      }

      else
      {
        sub_247D6A1F8(v14, v13);
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        sub_247D6BAD4(v19, &qword_27EE73538, &qword_247DD6100);
      }

      v12 = sub_247DD0170(v14, v13);
    }

    sub_247D6A1F8(v14, v13);
    return v12;
  }

  (*(v3 + 32))(v6, v10, v2);
  v23[0] = 0x3D4C5255656C6966;
  v23[1] = 0xE800000000000000;
  v11 = sub_247DD20BC();
  MEMORY[0x24C1BA0A0](v11);

  v12 = v23[0];
  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t sub_247D9FF0C()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v5 = v8;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v9 = v8;
  v10 = sub_247DD2ADC();
  (*(v2 + 8))(v5, v1);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v17[1] = v11;
    v17[2] = v7;
    v1 = *(v7 + v11);
    v0 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!(v1 >> 62))
    {
      v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v12 = sub_247DD30BC();
LABEL_5:

  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {

      goto LABEL_17;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1BA360](v13, v1);
    }

    else
    {
      if (v13 >= *(v0 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = *(v1 + 8 * v13 + 32);
    }

    v15 = sub_247DD221C();

    if (v15)
    {
      break;
    }

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  sub_247DC8DD4(v13);
  swift_endAccess();

LABEL_17:
  sub_247DA049C();
}

uint64_t sub_247DA0190(unint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((a2 & 1) == 0)
  {
LABEL_18:
    v20 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();

    MEMORY[0x24C1BA170](v21);
    if (*((*(v3 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_247DD2EBC();
      return swift_endAccess();
    }

LABEL_23:
    sub_247DD2E9C();
    goto LABEL_19;
  }

  v13 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v22 = *(v3 + v13);
    }

    v15 = sub_247DD30BC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  while (1)
  {
    if (v15 == v16)
    {

      goto LABEL_18;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ((*(*(v14 + 8 * v16 + 32) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (__OFADD__(v16++, 1))
    {
      goto LABEL_21;
    }
  }

  v25 = *(MEMORY[0x24C1BA360](v16, v14) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
  swift_unknownObjectRelease();
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_14:

  swift_beginAccess();
  v18 = *(v3 + v13);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v23 = *(v3 + v13);
    }

    result = sub_247DD30BC();
    if (result >= v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v16)
    {
LABEL_16:

      sub_247DA5060(v16, v16, a1, type metadata accessor for PendingRequest);
      swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_247DA049C()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_247DD2ADC();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) != 1)
    {
      return;
    }

    v1 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();
    v10 = *(v2 + v1);
    if (!(v10 >> 62))
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
LABEL_94:
    __break(1u);
  }

  if (!sub_247DD30BC())
  {
    return;
  }

LABEL_5:
  v11 = *(v2 + v1);
  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v68 = *(v2 + v1);
    v13 = sub_247DD30BC();
    v11 = v68;
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v11 & 0xC000000000000001;
  v15 = v11 + 32;
  v73 = v11;

  v16 = 0;
  v17 = 0;
  while (v16 != v13)
  {
    if (v14)
    {
      v21 = MEMORY[0x24C1BA360](v16, v73);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_111;
      }

      v22 = *(v21 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
      swift_unknownObjectRelease();
      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      if (v16 >= *(v12 + 16))
      {
        goto LABEL_86;
      }

      v20 = v16 + 1;
      if ((*(*(v15 + 8 * v16) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) & 1) == 0)
      {
LABEL_15:
        v18 = 0;
        goto LABEL_9;
      }
    }

    v18 = 1;
LABEL_9:
    v16 = v20;
    v19 = __OFADD__(v17, v18);
    v17 += v18;
    if (v19)
    {
      goto LABEL_85;
    }
  }

  v23 = *(v2 + v1);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v69 = *(v2 + v1);
    }

    v24 = sub_247DD30BC();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config);
  v26 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v25 - v28;
    if (!__OFSUB__(v25, v28))
    {
      goto LABEL_23;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v27 < 0)
  {
    v70 = *(v2 + v26);
  }

  v71 = sub_247DD30BC();
  v29 = v25 - v71;
  if (__OFSUB__(v25, v71))
  {
    goto LABEL_105;
  }

LABEL_23:
  if (v29 >= v24)
  {
    v29 = v24;
  }

  if (v29 <= v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = v29;
  }

  if (v15 <= 0)
  {
    if (qword_27EE732B0 != -1)
    {
      swift_once();
    }

    v60 = sub_247DD23CC();
    __swift_project_value_buffer(v60, qword_27EE73D30);

    v61 = sub_247DD23AC();
    v62 = sub_247DD2F2C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v74[0] = v64;
      *v63 = 136315138;
      v65 = CosmoMultiplexChannelClient.description.getter();
      v67 = sub_247D72868(v65, v66, v74);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_247D56000, v61, v62, "[Flush] Skipping, %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x24C1BAF60](v64, -1, -1);
      MEMORY[0x24C1BAF60](v63, -1, -1);
    }

    return;
  }

  if (qword_27EE732B0 != -1)
  {
LABEL_106:
    swift_once();
  }

  v30 = sub_247DD23CC();
  __swift_project_value_buffer(v30, qword_27EE73D30);

  v31 = sub_247DD23AC();
  v32 = sub_247DD2F2C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v74[0] = v34;
    *v33 = 134218242;
    *(v33 + 4) = v15;
    *(v33 + 12) = 2080;
    v35 = CosmoMultiplexChannelClient.description.getter();
    v37 = sub_247D72868(v35, v36, v74);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_247D56000, v31, v32, "[Flush] Flushing count=%ld requests, %s", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x24C1BAF60](v34, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);
  }

  v75 = MEMORY[0x277D84F90];
  v38 = 1;
  while (2)
  {
    swift_beginAccess();
    v39 = *(v2 + v1);
    v40 = v39 >> 62;
    if (v39 >> 62)
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        v44 = *(v2 + v1);
      }

      if (!sub_247DD30BC())
      {
        goto LABEL_112;
      }

      if (!sub_247DD30BC())
      {
        goto LABEL_113;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1BA360](0, v39);
      v42 = v39 & 0xFFFFFFFFFFFFFF8;
      if (v40)
      {
        goto LABEL_46;
      }

LABEL_38:
      v43 = *(v42 + 16);
      if (!v43)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v41 = *(v39 + 32);

      v42 = v39 & 0xFFFFFFFFFFFFFF8;
      if (!v40)
      {
        goto LABEL_38;
      }

LABEL_46:
      if (!sub_247DD30BC())
      {
        goto LABEL_92;
      }

      if (sub_247DD30BC() < 1)
      {
        goto LABEL_93;
      }

      v43 = sub_247DD30BC();
    }

    v45 = v43 - 1;
    if (__OFSUB__(v43, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + v1) = v39;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v40)
      {
        v47 = (v39 & 0xFFFFFFFFFFFFFF8);
        if (v45 > *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_56:
          v48 = v47[2];
          goto LABEL_58;
        }

        goto LABEL_59;
      }
    }

    else if (!v40)
    {
      v47 = (v39 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_56;
    }

    sub_247DD30BC();
LABEL_58:
    v39 = sub_247DD307C();
    *(v2 + v1) = v39;
    v47 = (v39 & 0xFFFFFFFFFFFFFF8);
LABEL_59:
    v49 = v47[4];

    if (v39 >> 62)
    {
      v53 = sub_247DD30BC();
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_114;
      }

      memmove(v47 + 4, v47 + 5, 8 * (v53 - 1));
      v54 = sub_247DD30BC();
      v51 = v54 - 1;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_90;
      }
    }

    else
    {
      v50 = v47[2];
      memmove(v47 + 4, v47 + 5, 8 * v50 - 8);
      v51 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
        goto LABEL_90;
      }
    }

    v47[2] = v51;
    *(v2 + v1) = v39;
    v52 = swift_endAccess();
    MEMORY[0x24C1BA170](v52);
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_247DD2E9C();
    }

    sub_247DD2EBC();
    if (v15 != v38)
    {
      v19 = __OFADD__(v38++, 1);
      if (v19)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v56 = v75;
  if (v75 >> 62)
  {
    v57 = sub_247DD30BC();
    if (!v57)
    {
      goto LABEL_108;
    }

LABEL_73:
    if (v57 >= 1)
    {
      for (i = 0; i != v57; ++i)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x24C1BA360](i, v56);
        }

        else
        {
          v59 = *(v56 + 8 * i + 32);
        }

        sub_247DA0CDC(v59);
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    return;
  }

  v57 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    goto LABEL_73;
  }

LABEL_108:
}

void sub_247DA0CDC(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for NetworkDescriptor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2ABC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_247DD2ADC();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247D9D8B8(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, v14, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247DA5238(&v14[*(v11 + 20)], v10, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247D9D8B8(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, v6, type metadata accessor for NetworkDescriptor);
  v23 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);

  v24 = sub_247D81B94(v10, v6, v23, v21);
  if (v24)
  {
    v10 = v24;
    v25 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();

    MEMORY[0x24C1BA170](v26);
    if (*((*(v2 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_4:
      sub_247DD2EBC();
      swift_endAccess();
      sub_247DA1F7C(v10);

      return;
    }

LABEL_11:
    sub_247DD2E9C();
    goto LABEL_4;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v27 = sub_247DD23CC();
  __swift_project_value_buffer(v27, qword_27EE73D30);

  v28 = sub_247DD23AC();
  v29 = sub_247DD2F2C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136315138;
    v32 = CosmoMultiplexChannelClient.description.getter();
    v34 = sub_247D72868(v32, v33, &v36);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_247D56000, v28, v29, "[Request] Could not create outbound request stream, %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x24C1BAF60](v31, -1, -1);
    MEMORY[0x24C1BAF60](v30, -1, -1);
  }

  v36 = 0xD000000000000021;
  v37 = 0x8000000247DD98F0;
  v38 = 0;
  sub_247DA250C(0xD000000000000021, 0x8000000247DD98F0, &v36);
  sub_247D6AD68(v36, v37, v38);
  sub_247DA049C();
}

uint64_t CosmoMultiplexChannelClient.deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  sub_247D9D920(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  v2 = *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name + 8);

  sub_247D9D920(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests);

  return v0;
}

uint64_t CosmoMultiplexChannelClient.__deallocating_deinit()
{
  CosmoMultiplexChannelClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CosmoMultiplexChannelClient.description.getter()
{
  v1 = v0;
  v71[0] = 0x3D656D616ELL;
  v71[1] = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name), *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name + 8));
  strcpy(v71, "endpoint=");
  HIDWORD(v71[1]) = -385875968;
  v2 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v2);

  v66 = v71[0];
  v67 = v71[1];
  strcpy(v71, "isReady=");
  BYTE1(v71[1]) = 0;
  HIDWORD(v71[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v3, v4);

  v6 = v71[0];
  v5 = v71[1];
  strcpy(v71, "isTerminated=");
  HIWORD(v71[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v7, v8);

  v9 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
  swift_beginAccess();
  v68 = v5;
  v69 = v9;
  v10 = *(v0 + v9);
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_53:
    v12 = sub_247DD30BC();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      if (v13 == v12)
      {
        goto LABEL_27;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v13 >= *(v11 + 16))
      {
        goto LABEL_50;
      }

      v15 = *(v10 + 32 + 8 * v13++);
      v16 = *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        v20 = 0xE000000000000000;
        if (v14)
        {
          sub_247DD304C();

          v10 = *(v1 + v69);
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            if (v10 < 0)
            {
              v58 = *(v1 + v69);
            }

            v21 = sub_247DD30BC();
          }

          else
          {
            v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v22 = 0;
          v23 = 0;
          while (v22 != v21)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x24C1BA360](v22, v10);
              v17 = __OFADD__(v22++, 1);
              if (v17)
              {
                goto LABEL_118;
              }

              v26 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              swift_unknownObjectRelease();
              v17 = __OFADD__(v23, v26);
              v23 += v26;
              if (v17)
              {
                goto LABEL_41;
              }
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_51;
              }

              if (v22 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_52;
              }

              v24 = *(v10 + 32 + 8 * v22++);
              v25 = *(v24 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              v17 = __OFADD__(v23, v25);
              v23 += v25;
              if (v17)
              {
LABEL_41:
                __break(1u);
                break;
              }
            }
          }

          v27 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v27);

          v20 = 0x8000000247DD9650;
          v64 = 0xD000000000000017;
        }

        else
        {
          v64 = 0;
        }

        v65 = v20;
        v28 = *(v1 + v69);
        if (v28 >> 62)
        {
          if (v28 < 0)
          {
            v32 = *(v1 + v69);
          }

          if (!sub_247DD30BC())
          {
            goto LABEL_57;
          }

LABEL_46:
          sub_247DD304C();

          v29 = *(v1 + v69);
          if (v29 >> 62)
          {
            if (v29 < 0)
            {
              v59 = *(v1 + v69);
            }

            sub_247DD30BC();
          }

          else
          {
            v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v31);

          v62 = 0xD00000000000001ALL;
          v63 = 0x8000000247DD9670;
        }

        else
        {
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

LABEL_57:
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        v33 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
        swift_beginAccess();
        v70 = v33;
        v34 = *(v1 + v33);
        v35 = v34 & 0xFFFFFFFFFFFFFF8;
        if (v34 >> 62)
        {
LABEL_98:
          v36 = sub_247DD30BC();
        }

        else
        {
          v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = 0;
        v38 = 0;
        while (v37 != v36)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x24C1BA360](v37, v34);
            v17 = __OFADD__(v37++, 1);
            if (v17)
            {
              goto LABEL_117;
            }

            v41 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
            swift_unknownObjectRelease();
            v17 = __OFADD__(v38, v41);
            v38 += v41;
            if (v17)
            {
              goto LABEL_71;
            }
          }

          else
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            if (v37 >= *(v35 + 16))
            {
              goto LABEL_95;
            }

            v39 = *(v34 + 32 + 8 * v37++);
            v40 = *(v39 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
            v17 = __OFADD__(v38, v40);
            v38 += v40;
            if (v17)
            {
LABEL_71:
              __break(1u);
              break;
            }
          }
        }

        v42 = 0xE000000000000000;
        if (v38)
        {
          sub_247DD304C();

          v34 = *(v1 + v70);
          v35 = v34 & 0xFFFFFFFFFFFFFF8;
          if (v34 >> 62)
          {
            if (v34 < 0)
            {
              v60 = *(v1 + v70);
            }

            v43 = sub_247DD30BC();
          }

          else
          {
            v43 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v44 = 0;
          v45 = 0;
          while (v44 != v43)
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x24C1BA360](v44, v34);
              v17 = __OFADD__(v44++, 1);
              if (v17)
              {
                goto LABEL_119;
              }

              v48 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              swift_unknownObjectRelease();
              v17 = __OFADD__(v45, v48);
              v45 += v48;
              if (v17)
              {
                goto LABEL_86;
              }
            }

            else
            {
              if ((v44 & 0x8000000000000000) != 0)
              {
                goto LABEL_96;
              }

              if (v44 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_97;
              }

              v46 = *(v34 + 32 + 8 * v44++);
              v47 = *(v46 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              v17 = __OFADD__(v45, v47);
              v45 += v47;
              if (v17)
              {
LABEL_86:
                __break(1u);
                break;
              }
            }
          }

          v49 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v49);

          v50 = 0xD000000000000019;
          v42 = 0x8000000247DD9690;
        }

        else
        {
          v50 = 0;
        }

        v51 = *(v1 + v70);
        if (v51 >> 62)
        {
          if (v51 < 0)
          {
            v57 = *(v1 + v70);
          }

          if (!sub_247DD30BC())
          {
            goto LABEL_102;
          }

LABEL_91:
          sub_247DD304C();

          v52 = *(v1 + v70);
          if (v52 >> 62)
          {
            if (v52 < 0)
            {
              v61 = *(v1 + v70);
            }

            sub_247DD30BC();
          }

          else
          {
            v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v54);

          v55 = 0xD00000000000001CLL;
          v56 = 0x8000000247DD96B0;
        }

        else
        {
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

LABEL_102:
          v55 = 0;
          v56 = 0xE000000000000000;
        }

        sub_247DD304C();

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v66, v67);

        MEMORY[0x24C1BA0A0](v64, v65);

        MEMORY[0x24C1BA0A0](v62, v63);

        MEMORY[0x24C1BA0A0](v50, v42);

        MEMORY[0x24C1BA0A0](v55, v56);

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v6, v68);

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v71[0], v71[1]);

        return 0x3D656D616ELL;
      }
    }

    result = MEMORY[0x24C1BA360](v13, v10);
    v17 = __OFADD__(v13++, 1);
    if (v17)
    {
      break;
    }

    v19 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
    swift_unknownObjectRelease();
    v17 = __OFADD__(v14, v19);
    v14 += v19;
    if (v17)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}

unint64_t sub_247DA1AFC()
{
  result = qword_27EE73D78;
  if (!qword_27EE73D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73D78);
  }

  return result;
}

uint64_t sub_247DA1BB4()
{
  result = type metadata accessor for CosmoMultiplexChannelClient.Configuration(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NetworkDescriptor();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_247DA1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247DA1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247DA1F00()
{
  result = type metadata accessor for CosmoHttpConnection.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247DA1F7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_247DA4D44;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_59;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_247DA2244(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);
  *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = a2;

  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v5 = a2[2];
  v6 = a2[3];
  a2[2] = sub_247DA4D4C;
  a2[3] = v4;

  sub_247D6A24C(v5);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = a2[8];
  v9 = a2[9];
  a2[8] = sub_247DA4D7C;
  a2[9] = v7;

  sub_247D6A24C(v8);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = a2[10];
  v12 = a2[11];
  a2[10] = sub_247DA4D84;
  a2[11] = v10;

  sub_247D6A24C(v11);

  return sub_247D765E0();
}

uint64_t sub_247DA23BC(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

uint64_t sub_247DA2430(unsigned __int16 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DA34D4(a1);
  }

  return result;
}

uint64_t sub_247DA2490(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v1;
    v5[1] = v2;
    v6 = v3;
    sub_247DA3C8C(v5);
  }

  return result;
}

uint64_t sub_247DA250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2A2C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v16 = *(a3 + 8);
  v21 = *(v4 + 32);
  LOBYTE(a3) = *(a3 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v17;
  *(v18 + 48) = v16;
  *(v18 + 56) = a3;
  aBlock[4] = sub_247DA4CA4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_53;
  v19 = _Block_copy(aBlock);

  sub_247D6B69C(v17, v16, a3);
  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v19);
  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_247DA2804(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);
  if (v17)
  {
    v18 = qword_27EE732B0;
    v19 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);

    if (v18 != -1)
    {
      swift_once();
    }

    v76 = a2;
    v20 = sub_247DD23CC();
    __swift_project_value_buffer(v20, qword_27EE73D30);

    sub_247D6B69C(a4, a5, a6);

    v21 = sub_247DD23AC();
    v22 = sub_247DD2F2C();

    sub_247D6AD68(a4, a5, a6);

    v23 = os_log_type_enabled(v21, v22);
    v77 = a3;
    v24 = a6;
    if (v23)
    {
      v25 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81 = v75;
      *v25 = 136315906;
      v26 = *(v17 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

      v74 = v22;
      v28 = sub_247D76840(v27);
      v30 = v29;

      v31 = sub_247D72868(v28, v30, &v81);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v32 = v76;
      *(v25 + 14) = sub_247D72868(v76, v77, &v81);
      *(v25 + 22) = 2080;
      v78 = a4;
      v79 = a5;
      v80 = v24;
      sub_247D6B69C(a4, a5, v24);
      v33 = sub_247DD2CFC();
      v35 = sub_247D72868(v33, v34, &v81);

      *(v25 + 24) = v35;
      *(v25 + 32) = 2080;
      v36 = sub_247DA4208();
      v38 = sub_247D72868(v36, v37, &v81);

      *(v25 + 34) = v38;
      _os_log_impl(&dword_247D56000, v21, v74, "[Stop] Stopping channel %s, reason='%s' error=%s, %s", v25, 0x2Au);
      v39 = v75;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v39, -1, -1);
      MEMORY[0x24C1BAF60](v25, -1, -1);
    }

    else
    {

      v32 = v76;
    }

    v65 = a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v66 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith);
    v67 = *(v65 + 8);
    v68 = *(v65 + 16);
    v69 = *(v65 + 24);
    v70 = v77;
    *v65 = v32;
    *(v65 + 8) = v70;
    *(v65 + 16) = a4;
    *(v65 + 24) = a5;
    v71 = *(v65 + 32);
    *(v65 + 32) = v24;

    sub_247D6B69C(a4, a5, v24);
    sub_247DA4CA8(v66, v67, v68, v69, v71);
    sub_247D781D4();
  }

  else
  {
    v77 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    if (v77)
    {
      v40 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8);
      v41 = qword_27EE732B0;
      v75 = (a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
      v76 = v40;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = sub_247DD23CC();
      __swift_project_value_buffer(v42, qword_27EE73D30);

      sub_247D6B69C(a4, a5, a6);

      v43 = sub_247DD23AC();
      v44 = sub_247DD2F2C();

      sub_247D6AD68(a4, a5, a6);

      v74 = v44;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v73 = v43;
        v46 = a2;
        v47 = v45;
        v48 = swift_slowAlloc();
        v81 = v48;
        *v47 = 136315650;
        *(v47 + 4) = sub_247D72868(v46, a3, &v81);
        *(v47 + 12) = 2080;
        v78 = a4;
        v79 = a5;
        v80 = a6;
        sub_247D6B69C(a4, a5, a6);
        v49 = sub_247DD2CFC();
        v51 = a4;
        v52 = a5;
        v53 = a6;
        v54 = sub_247D72868(v49, v50, &v81);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        v55 = sub_247DA4208();
        v57 = sub_247D72868(v55, v56, &v81);

        *(v47 + 24) = v57;
        a6 = v53;
        a5 = v52;
        a4 = v51;
        v43 = v73;
        _os_log_impl(&dword_247D56000, v73, v74, "[Stop] Failing, no channel stream found, reason='%s' error=%s %s", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v48, -1, -1);
        MEMORY[0x24C1BAF60](v47, -1, -1);
      }

      *v16 = a4;
      *(v16 + 1) = a5;
      v16[16] = a6;
      swift_storeEnumTagMultiPayload();
      sub_247D6B69C(a4, a5, a6);
      v58 = v77;
      v77(v16);
      sub_247D6BAD4(v16, &unk_27EE73DD8, &unk_247DD60F0);
      v59 = v75;
      v60 = *v75;
      v61 = v75[1];
      *v75 = 0;
      v59[1] = 0;
      sub_247D6A24C(v60);
      v62 = *(a1 + 16);
      if (v62)
      {
        v63 = *(a1 + 24);

        v62(a1);
        sub_247D6A24C(v58);
        v64 = v62;
      }

      else
      {
        v64 = v58;
      }

      return sub_247D6A24C(v64);
    }
  }

  return result;
}

uint64_t sub_247DA2E3C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - v6;
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = v2[4];
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v15 = v14;
  LOBYTE(v14) = sub_247DD2ADC();
  result = (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_20;
  }

  v17 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);
  if (!v17)
  {
    return result;
  }

  if (!v13)
  {
    v49 = qword_27EE732B0;
    v50 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);

    if (v49 != -1)
    {
      swift_once();
    }

    v51 = sub_247DD23CC();
    __swift_project_value_buffer(v51, qword_27EE73D30);

    v52 = sub_247DD23AC();
    v53 = sub_247DD2F2C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81[0] = v55;
      *v54 = 136315138;
      v56 = sub_247DA4208();
      v58 = sub_247D72868(v56, v57, v81);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_247D56000, v52, v53, "Channel stream ready, sending request, %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x24C1BAF60](v55, -1, -1);
      MEMORY[0x24C1BAF60](v54, -1, -1);
    }

    v59 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    v60 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 24);
    v61 = v59[4];
    v62 = __swift_project_boxed_opaque_existential_1(v59, v60);
    sub_247D81480(v62, 0, 0, v17, v60, *(v61 + 8));
  }

  v80 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (!v80)
  {

    v63 = v2[2];
    if (!v63)
    {
    }

    goto LABEL_31;
  }

  v78 = v4;
  v79 = v17;
  v77 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v18 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8);
  v19 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith);
  v20 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 8);
  v21 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16);
  v22 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24);
  v23 = 3;
  if (v20)
  {
    v23 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16);
  }

  v24 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 32);
  if (v20)
  {
    v25 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24);
  }

  else
  {
    v25 = 0;
  }

  v74 = v25;
  v75 = v23;
  if (v20)
  {
    v26 = v24;
  }

  else
  {
    v26 = 2;
  }

  v73 = v26;
  if (v20)
  {
    v27 = v19;
  }

  else
  {
    v27 = 0xD00000000000002ELL;
  }

  v72 = v27;
  if (v20)
  {
    v8 = v20;
  }

  else
  {
    v8 = 0x8000000247DD98A0;
  }

  v76 = v18;
  sub_247D6ACFC(v80);
  sub_247DA4C44(v19, v20, v21, v22, v24);
  if (qword_27EE732B0 != -1)
  {
    goto LABEL_35;
  }

LABEL_20:
  v28 = sub_247DD23CC();
  __swift_project_value_buffer(v28, qword_27EE73D30);

  v29 = v8;

  v31 = v74;
  v30 = v75;
  v32 = v73;
  sub_247D6B69C(v75, v74, v73);
  v33 = sub_247DD23AC();
  v34 = sub_247DD2F2C();

  sub_247D6AD68(v30, v31, v32);

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v83 = v71;
    *v35 = 136316162;
    *(v35 + 4) = sub_247D72868(0xD00000000000001FLL, 0x8000000247DD98D0, &v83);
    *(v35 + 12) = 2080;
    LOBYTE(v81[0]) = v13;
    v36 = sub_247DD2CFC();
    v70 = v33;
    v38 = sub_247D72868(v36, v37, &v83);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2080;
    v39 = sub_247D72868(v72, v29, &v83);

    *(v35 + 24) = v39;
    *(v35 + 32) = 2080;
    v81[0] = v30;
    v81[1] = v31;
    v82 = v32;
    sub_247D6B69C(v30, v31, v32);
    v40 = sub_247DD2CFC();
    v42 = sub_247D72868(v40, v41, &v83);

    *(v35 + 34) = v42;
    *(v35 + 42) = 2080;
    v43 = sub_247DA4208();
    v45 = sub_247D72868(v43, v44, &v83);

    *(v35 + 44) = v45;
    v46 = v34;
    v47 = v70;
    _os_log_impl(&dword_247D56000, v70, v46, "%s channel stream ended, state=%s reason='%s' error=%s %s", v35, 0x34u);
    v48 = v71;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v48, -1, -1);
    MEMORY[0x24C1BAF60](v35, -1, -1);
  }

  else
  {
  }

  *v7 = v30;
  *(v7 + 1) = v31;
  v7[16] = v32;
  swift_storeEnumTagMultiPayload();
  v64 = v80;
  v80(v7);
  sub_247D6A24C(v64);
  sub_247D6BAD4(v7, &unk_27EE73DD8, &unk_247DD60F0);
  v65 = v77;
  v66 = *v77;
  v67 = v77[1];
  *v77 = 0;
  v65[1] = 0;
  sub_247D6A24C(v66);
  v63 = v2[2];
  if (!v63)
  {
  }

LABEL_31:
  v68 = v2[3];

  v63(v2);
  sub_247D6A24C(v63);
}

void sub_247DA34D4(unsigned __int16 *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for RawHTTPResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_247DD20DC();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v15 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v17 = &v52 - v16;
  v18 = sub_247DD2ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 32);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_247DD2ADC();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v25 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v26 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v26)
  {
    v27 = v25[1];
    v28 = *v56;
    if (v28 > 0x193)
    {
      if (v28 == 404)
      {
        v29 = xmmword_247DD3F10;
        goto LABEL_20;
      }

      if (v28 == 500)
      {
        v29 = xmmword_247DD5EA0;
        goto LABEL_20;
      }
    }

    else
    {
      if (v28 == 200)
      {
        v44 = *(v56 + 2);
        if (v44 >> 60 != 15)
        {
          v49 = *(v56 + 1);
          *v17 = v49;
          *(v17 + 1) = v44;
          type metadata accessor for CosmoHttpResponseContent(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_247D6C0B0(v49, v44, v50);
          sub_247D6C0B0(v49, v44, v51);
          sub_247D6ACFC(v26);
          v26(v17);
          sub_247D6A24C(v26);
          sub_247D6C0AC(v49, v44);
          goto LABEL_22;
        }

        sub_247D6BA6C(v56 + *(v3 + 24), v10, &unk_27EE73500, &unk_247DD4310);
        v46 = v53;
        v45 = v54;
        if ((*(v53 + 48))(v10, 1, v54) != 1)
        {
          (*(v46 + 32))(v14, v10, v45);
          (*(v46 + 16))(v17, v14, v45);
          type metadata accessor for CosmoHttpResponseContent(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();

          v26(v17);
          sub_247D6A24C(v26);
          sub_247D6BAD4(v17, &unk_27EE73DD8, &unk_247DD60F0);
          (*(v46 + 8))(v14, v45);
          goto LABEL_23;
        }

        sub_247D6BAD4(v10, &unk_27EE73500, &unk_247DD4310);
        *v17 = 0xD000000000000026;
        *(v17 + 1) = 0x8000000247DD9870;
        goto LABEL_15;
      }

      if (v28 == 400)
      {
        v29 = xmmword_247DD3EF0;
LABEL_20:
        *v17 = v29;
        v17[16] = 2;
        swift_storeEnumTagMultiPayload();

        goto LABEL_21;
      }
    }

    v58 = 0;
    v59 = 0xE000000000000000;

    sub_247DD304C();

    v58 = 0xD000000000000012;
    v59 = 0x8000000247DD9850;
    v57 = v28;
    v42 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v42);

    v43 = v59;
    *v17 = v58;
    *(v17 + 1) = v43;
LABEL_15:
    v17[16] = 0;
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v26(v17);
    sub_247D6A24C(v26);
LABEL_22:
    sub_247D6BAD4(v17, &unk_27EE73DD8, &unk_247DD60F0);
LABEL_23:
    v47 = *v25;
    v48 = v25[1];
    *v25 = 0;
    v25[1] = 0;
    sub_247D6A24C(v47);
    return;
  }

  if (qword_27EE732B0 != -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  v30 = sub_247DD23CC();
  __swift_project_value_buffer(v30, qword_27EE73D30);
  sub_247D9D8B8(v56, v6, type metadata accessor for RawHTTPResponse);

  v31 = sub_247DD23AC();
  v32 = sub_247DD2F0C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v58 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_247D72868(0xD000000000000016, 0x8000000247DD9830, &v58);
    *(v33 + 12) = 2080;
    v35 = sub_247D74A3C();
    v37 = v36;
    sub_247D9D920(v6, type metadata accessor for RawHTTPResponse);
    v38 = sub_247D72868(v35, v37, &v58);

    *(v33 + 14) = v38;
    *(v33 + 22) = 2080;
    v39 = sub_247DA4208();
    v41 = sub_247D72868(v39, v40, &v58);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_247D56000, v31, v32, "%s ignoring response, no completion handler, response=%s %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v34, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);
  }

  else
  {

    sub_247D9D920(v6, type metadata accessor for RawHTTPResponse);
  }
}

void sub_247DA3C8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v47 - v6;
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(v2 + 32);
  *v12 = v16;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v17 = v16;
  LOBYTE(v16) = sub_247DD2ADC();
  v19 = *(v9 + 8);
  v18 = (v9 + 8);
  v19(v12, v8);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v12) = v15;
  v8 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v18 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v18)
  {
    v20 = qword_27EE732B0;
    v47[2] = v8[1];
    v48 = v15;

    if (v20 == -1)
    {
LABEL_4:
      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE73D30);
      sub_247DA4C1C(v14, v13, v12);

      v22 = sub_247DD23AC();
      v23 = sub_247DD2F0C();
      sub_247D82AF0(v14, v13, v12);

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v47[1] = v4;
        v25 = v24;
        v47[0] = swift_slowAlloc();
        v52 = v47[0];
        *v25 = 136315394;
        v49 = v14;
        v50 = v13;
        v51 = v12;
        sub_247DA4C1C(v14, v13, v12);
        v26 = sub_247DD2CFC();
        v27 = v23;
        v29 = sub_247D72868(v26, v28, &v52);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        v30 = sub_247DA4208();
        v32 = sub_247D72868(v30, v31, &v52);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_247D56000, v22, v27, "Encountered error while receiving HTTP response, error=%s %s", v25, 0x16u);
        v33 = v47[0];
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v33, -1, -1);
        MEMORY[0x24C1BAF60](v25, -1, -1);
      }

      *v7 = qword_247DD6108[v48];
      *(v7 + 1) = 0;
      v7[16] = 2;
      swift_storeEnumTagMultiPayload();
      v18(v7);
      sub_247D6A24C(v18);
      sub_247D6BAD4(v7, &unk_27EE73DD8, &unk_247DD60F0);
      v34 = *v8;
      v35 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      sub_247D6A24C(v34);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v36 = sub_247DD23CC();
  __swift_project_value_buffer(v36, qword_27EE73D30);
  sub_247DA4C1C(v14, v13, v15);

  v37 = sub_247DD23AC();
  v38 = sub_247DD2F0C();
  sub_247D82AF0(v14, v13, v15);

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52 = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_247D72868(0xD00000000000001DLL, 0x8000000247DD9810, &v52);
    *(v39 + 12) = 2080;
    v49 = v14;
    v50 = v13;
    v51 = v15;
    sub_247DA4C1C(v14, v13, v15);
    v41 = sub_247DD2CFC();
    v43 = sub_247D72868(v41, v42, &v52);

    *(v39 + 14) = v43;
    *(v39 + 22) = 2080;
    v44 = sub_247DA4208();
    v46 = sub_247D72868(v44, v45, &v52);

    *(v39 + 24) = v46;
    _os_log_impl(&dword_247D56000, v37, v38, "%s ignoring error, no completion handler, error=%s %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v40, -1, -1);
    MEMORY[0x24C1BAF60](v39, -1, -1);
  }
}

uint64_t sub_247DA4208()
{
  v1 = sub_247DA43CC(v0);
  v3 = v2;
  sub_247DD304C();

  sub_247DD225C();
  sub_247DA4BD4(&unk_27EE73510, MEMORY[0x277CC95F0]);
  v4 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v4);

  MEMORY[0x24C1BA0A0](v1, v3);

  MEMORY[0x24C1BA0A0](0x662D6563726F6620, 0xED00003D6873756CLL);
  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v5, v6);

  MEMORY[0x24C1BA0A0](0x74656C706D6F6320, 0xEB000000003D6465);
  v7 = *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v7)
  {
    v8 = 0x65736C6166;
  }

  else
  {
    v8 = 1702195828;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v8, v9);

  return 4023401;
}

uint64_t sub_247DA43CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v34 - v4;
  v6 = sub_247DD20DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_247DD304C();

  v37 = 0x3D6874617020;
  v38 = 0xE600000000000000;
  v11 = (a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
  v12 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 24);
  v13 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 32);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = _s5Cosmo0A11HttpRequestPAAE12instancePathSSvg_0(v12, v13);
  MEMORY[0x24C1BA0A0](v14);

  MEMORY[0x24C1BA0A0](0x3D646F6874656D20, 0xE800000000000000);
  v15 = v11[3];
  v16 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v15);
  v17 = _s5Cosmo0A11HttpRequestPAAE14instanceMethodSSvg_0(v15, v16);
  MEMORY[0x24C1BA0A0](v17);

  v19 = v11[3];
  v18 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v19);
  v20 = (*(*(v18 + 8) + 16))(v19);
  if (v21 >> 60 == 15)
  {
    v23 = v11[3];
    v22 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v23);
    (*(*(v22 + 8) + 24))(v23);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_247D6BAD4(v5, &unk_27EE73500, &unk_247DD4310);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v35 = 0x3D656C696620;
      v36 = 0xE600000000000000;
      sub_247DA4BD4(&qword_27EE735C0, MEMORY[0x277CC9260]);
      v29 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v29);

      MEMORY[0x24C1BA0A0](v35, v36);

      (*(v7 + 8))(v10, v6);
    }

    return v37;
  }

  v24 = v20;
  v25 = v21;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_247DD304C();

  v35 = 0xD000000000000016;
  v36 = 0x8000000247DD97F0;
  v27 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_14;
    }

    v31 = *(v24 + 16);
    v30 = *(v24 + 24);
    v32 = __OFSUB__(v30, v31);
    v28 = v30 - v31;
    if (!v32)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(v25);
LABEL_14:
    v34[1] = v28;
    v33 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v33);

    MEMORY[0x24C1BA0A0](v35, v36);

    sub_247D6C0AC(v24, v25);
    return v37;
  }

  LODWORD(v28) = HIDWORD(v24) - v24;
  if (!__OFSUB__(HIDWORD(v24), v24))
  {
    v28 = v28;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_247DA47E4()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));

  v2 = OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_id;
  v3 = sub_247DD225C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage));
  v4 = *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);

  v5 = *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8);
  sub_247D6A24C(*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion));
  sub_247DA4CA8(*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 8), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 32));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_247DA4908()
{
  result = sub_247DD225C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247DA49D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_247DD221C();
}

uint64_t sub_247DA4A18(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_247DD30BC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_247DD307C();
  *v1 = result;
  return result;
}

void *sub_247DA4AB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v15 = type metadata accessor for PendingRequest(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  sub_247DD224C();
  *(v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
  v19 = (v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  *v19 = 0;
  v19[1] = 0;
  v20 = v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
  v20[32] = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_247D6B5A8(&v23, v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
  *(v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a2;
  v18[4] = a3;
  v21 = (v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  *v21 = a4;
  v21[1] = a5;
  return v18;
}

uint64_t sub_247DA4BD4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_247DA4C1C(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void sub_247DA4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {

    sub_247D6B69C(a3, a4, a5);
  }
}

void sub_247DA4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {

    sub_247D6AD68(a3, a4, a5);
  }
}

uint64_t sub_247DA4D04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247DA4DA4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_247DA4E7C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_247D98724(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_247DA4DA4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_247DA4F3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_247DD30BC();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_247DD30BC();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_247DA5060(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_247DD30BC();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_247DD30BC();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_247DA4A18(result);
    return sub_247DA4F3C(v8, v7, 1, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_247D6AD68(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_247DA51A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247DA51E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247DA5220(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_247D9F560(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_247DA5238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247DA530C(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_247DD2A0C();
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_247DD2A2C();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v24);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 48);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  aBlock[4] = sub_247DBAEE0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_172;
  v21 = _Block_copy(aBlock);

  sub_247D6A2E8(a2, a3);
  sub_247DD2A1C();
  v26 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v19, v15, v21);
  _Block_release(v21);
  (*(v25 + 8))(v15, v12);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_247DA5614(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 48);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = sub_247DBB058;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_185;
  v20 = _Block_copy(aBlock);

  sub_247D6A2E8(a1, a2);
  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_247DA5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + 48);
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = sub_247DBB1E8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_196;
  v20 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_247DA5C08(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v37 = a6;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v33 = xmmword_247DD52A0;
    LOWORD(v34) = 258;
    a2(&v33);
    return sub_247D868B0(v33, *(&v33 + 1), v34, SBYTE1(v34));
  }

  else
  {
    v9 = sub_247DD1F8C();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBAF04();
    v12 = sub_247DD1F6C();
    v14 = v13;

    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v16[4] = a3;
    v17 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v18 = *(a1 + v17);

    sub_247D6A2E8(v12, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v17) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_247D98724(0, *(v18 + 2) + 1, 1, v18);
      *(a1 + v17) = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_247D98724((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[40 * v21];
    *(v22 + 8) = 1;
    *(v22 + 5) = v12;
    *(v22 + 6) = v14;
    *(v22 + 7) = sub_247DBAF58;
    *(v22 + 8) = v16;
    *(a1 + v17) = v18;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      v23 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
      sub_247D8EB14(v12, v14, 1);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v25 = sub_247DD23CC();
      __swift_project_value_buffer(v25, qword_27EE739E0);

      v26 = sub_247DD23AC();
      v27 = sub_247DD2F2C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v33 = v29;
        *v28 = 136315138;
        v30 = sub_247D86568();
        v32 = sub_247D72868(v30, v31, &v33);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_247D56000, v26, v27, "[Request] Queueing, %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x24C1BAF60](v29, -1, -1);
        MEMORY[0x24C1BAF60](v28, -1, -1);
      }
    }

    sub_247D6A1F8(v12, v14);
  }
}

uint64_t sub_247DA61C0(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v32 = xmmword_247DD52A0;
    v33 = 258;
    a2(&v32);
    return sub_247D868B0(v32, *(&v32 + 1), v33, SHIBYTE(v33));
  }

  else
  {
    v8 = sub_247DD1F8C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBB070();
    v11 = sub_247DD1F6C();
    v13 = v12;

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    v16 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v17 = *(a1 + v16);

    sub_247D6A2E8(v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_247D98724(0, *(v17 + 2) + 1, 1, v17);
      *(a1 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_247D98724((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[40 * v20];
    *(v21 + 8) = 3;
    *(v21 + 5) = v11;
    *(v21 + 6) = v13;
    *(v21 + 7) = sub_247DBB0C4;
    *(v21 + 8) = v15;
    *(a1 + v16) = v17;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      v22 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
      sub_247D8EB14(v11, v13, 3);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v24 = sub_247DD23CC();
      __swift_project_value_buffer(v24, qword_27EE739E0);

      v25 = sub_247DD23AC();
      v26 = sub_247DD2F2C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v32 = v28;
        *v27 = 136315138;
        v29 = sub_247D86568();
        v31 = sub_247D72868(v29, v30, &v32);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_247D56000, v25, v26, "[Request] Queueing, %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v27, -1, -1);
      }
    }

    sub_247D6A1F8(v11, v13);
  }
}

uint64_t sub_247DA6758(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v32 = xmmword_247DD52A0;
    v33 = xmmword_247DD52A0;
    v34 = 1;
    a2(&v32);
    return sub_247DBB26C(v32, *(&v32 + 1), v33, *(&v33 + 1), v34);
  }

  else
  {
    v8 = sub_247DD1F8C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBB218();
    v11 = sub_247DD1F6C();
    v13 = v12;

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    v16 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v17 = *(a1 + v16);

    sub_247D6A2E8(v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_247D98724(0, *(v17 + 2) + 1, 1, v17);
      *(a1 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_247D98724((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[40 * v20];
    *(v21 + 8) = 5;
    *(v21 + 5) = v11;
    *(v21 + 6) = v13;
    *(v21 + 7) = sub_247DBB2BC;
    *(v21 + 8) = v15;
    *(a1 + v16) = v17;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      v22 = *(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_connection);
      sub_247D8EB14(v11, v13, 5);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v24 = sub_247DD23CC();
      __swift_project_value_buffer(v24, qword_27EE739E0);

      v25 = sub_247DD23AC();
      v26 = sub_247DD2F2C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v32 = v28;
        *v27 = 136315138;
        v29 = sub_247D86568();
        v31 = sub_247D72868(v29, v30, &v32);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_247D56000, v25, v26, "[Request] Queueing, %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v27, -1, -1);
      }
    }

    sub_247D6A1F8(v11, v13);
  }
}

uint64_t sub_247DA6CE8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t (*a9)(void, void, void, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 0x100) != 0)
    {
      *&v19 = a1;
      *(&v19 + 1) = a2;
      LOBYTE(v20) = a3;
      HIBYTE(v20) = 1;
      sub_247D6B69C(a1, a2, a3);
      a5(&v19);

      return a9(v19, *(&v19 + 1), v20, HIBYTE(v20));
    }

    else
    {
      v15 = sub_247DD1F5C();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_247DD1F4C();
      a7();
      sub_247DD1F3C();

      v19 = v18;
      v20 = 0;
      sub_247D6A2E8(v18, *(&v18 + 1));
      a5(&v19);

      a9(v19, *(&v19 + 1), v20, HIBYTE(v20));
      return sub_247D6A1F8(v18, *(&v18 + 1));
    }
  }

  return result;
}

uint64_t sub_247DA71D4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void (*a5)(__int128 *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 0x100) != 0)
    {
      *&v15 = a1;
      *(&v15 + 1) = a2;
      v16 = a3;
      LOBYTE(v17) = 1;
      sub_247D6B69C(a1, a2, a3);
      a5(&v15);

      return sub_247DBB26C(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
    }

    else
    {
      v10 = sub_247DD1F5C();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_247DD1F4C();
      sub_247DBB2E4();
      sub_247DD1F3C();

      v15 = v13;
      v16 = v14;
      LOBYTE(v17) = 0;

      a5(&v15);

      sub_247DBB26C(v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
    }
  }

  return result;
}

uint64_t sub_247DA76B4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a1;
  *(v19 + 41) = a2;
  aBlock[4] = sub_247DBB4D8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_223;
  v20 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_247DA79B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v7 = v6;
  v11 = sub_247DD2A0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_247DD2A2C();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v7 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a1;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v28 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v27);
}

uint64_t sub_247DA7CA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a2;
  v8 = sub_247DD2A0C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_247DD2A2C();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FileRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  sub_247DBAB44(a1, v19, type metadata accessor for FileRequest);
  v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v21 = v20 + v18;
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = a4;
  sub_247DBAA04(v19, v22 + v20, type metadata accessor for FileRequest);
  *(v22 + v21) = v27;
  aBlock[4] = sub_247DBAD44;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_159;
  v24 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v31 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v24);
  _Block_release(v24);
  (*(v30 + 8))(v11, v8);
  (*(v12 + 8))(v15, v29);
}

uint64_t sub_247DA806C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a2;
  v8 = sub_247DD2A0C();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_247DD2A2C();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RejectFileRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  sub_247DBAB44(a1, v19, type metadata accessor for RejectFileRequest);
  v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v21 = v20 + v18;
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = v5;
  v22[3] = v23;
  v22[4] = a4;
  sub_247DBAA04(v19, v22 + v20, type metadata accessor for RejectFileRequest);
  *(v22 + v21) = v27;
  aBlock[4] = sub_247DBABC4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_143;
  v24 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v31 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v24);
  _Block_release(v24);
  (*(v30 + 8))(v11, v8);
  (*(v12 + 8))(v15, v29);
}

void sub_247DA8438(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v6 = swift_allocError();
    *v7 = xmmword_247DD52A0;
    *(v7 + 16) = 2;
    *&v37 = v6;
    BYTE8(v37) = 1;
    a2(&v37);
    sub_247D6B9F8(v37, SBYTE8(v37));
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = a2;
    *(v12 + 4) = a3;
    v38 = &type metadata for CloseRequest;
    v39 = sub_247DBA9B0();
    v13 = type metadata accessor for PendingRequest(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v10;

    sub_247DD224C();
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v18 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v18 = 0;
    v18[1] = 0;
    v19 = v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v19[32] = 0;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    sub_247D6B5A8(&v37, v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a4 & 1;
    v16[4] = v17;
    v20 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v20 = sub_247DBA968;
    v20[1] = v12;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v16[2];
    v23 = v16[3];
    v16[2] = sub_247DA5230;
    v16[3] = v21;

    sub_247D6A24C(v22);

    if ((*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) == 0)
    {
      goto LABEL_8;
    }

    v24 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v25 = *(a1 + v24);
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v35 = *(a1 + v24);
      }

      v26 = sub_247DD30BC();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a4 & 1) != 0)
    {
      sub_247DA0CDC(v16);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v16, a4 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v27 = sub_247DD23CC();
      __swift_project_value_buffer(v27, qword_27EE73D30);

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F2C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315650;
        *(v30 + 4) = sub_247D72868(0x65736F6C632FLL, 0xE600000000000000, &v36);
        *(v30 + 12) = 1024;
        *(v30 + 14) = a4 & 1;
        *(v30 + 18) = 2080;
        v32 = CosmoMultiplexChannelClient.description.getter();
        v34 = sub_247D72868(v32, v33, &v36);

        *(v30 + 20) = v34;
        _os_log_impl(&dword_247D56000, v28, v29, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v30, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v31, -1, -1);
        MEMORY[0x24C1BAF60](v30, -1, -1);
      }
    }
  }
}

void sub_247DA8870(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v6 = swift_allocError();
    *v7 = xmmword_247DD52A0;
    *(v7 + 16) = 2;
    *&v37 = v6;
    v38 = 1;
    a2(&v37);
    sub_247DBB490(v37, *(&v37 + 1), v38);
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = a2;
    *(v12 + 4) = a3;
    v39 = &type metadata for FileListRequest;
    v40 = sub_247DBB43C();
    v13 = type metadata accessor for PendingRequest(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v10;

    sub_247DD224C();
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v18 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v18 = 0;
    v18[1] = 0;
    v19 = v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v19[32] = 0;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    sub_247D6B5A8(&v37, v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a4 & 1;
    v16[4] = v17;
    v20 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v20 = sub_247DBB430;
    v20[1] = v12;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v16[2];
    v23 = v16[3];
    v16[2] = sub_247DBB680;
    v16[3] = v21;

    sub_247D6A24C(v22);

    if ((*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) == 0)
    {
      goto LABEL_8;
    }

    v24 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v25 = *(a1 + v24);
    if (v25 >> 62)
    {
      if (v25 < 0)
      {
        v35 = *(a1 + v24);
      }

      v26 = sub_247DD30BC();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a4 & 1) != 0)
    {
      sub_247DA0CDC(v16);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v16, a4 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v27 = sub_247DD23CC();
      __swift_project_value_buffer(v27, qword_27EE73D30);

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F2C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v36 = v31;
        *v30 = 136315650;
        *(v30 + 4) = sub_247D72868(0x73656C69662FLL, 0xE600000000000000, &v36);
        *(v30 + 12) = 1024;
        *(v30 + 14) = a4 & 1;
        *(v30 + 18) = 2080;
        v32 = CosmoMultiplexChannelClient.description.getter();
        v34 = sub_247D72868(v32, v33, &v36);

        *(v30 + 20) = v34;
        _os_log_impl(&dword_247D56000, v28, v29, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v30, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v31, -1, -1);
        MEMORY[0x24C1BAF60](v30, -1, -1);
      }
    }
  }
}

void sub_247DA8CA8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4, char a5)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v7 = swift_allocError();
    *v8 = xmmword_247DD52A0;
    *(v8 + 16) = 2;
    *&v39 = v7;
    LOBYTE(v41) = 1;
    a2(&v39);
    sub_247DBB5A8(v39, *(&v39 + 1), v40, v41);
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v41 = &type metadata for LeaseRequest;
    v42 = sub_247DBB554();
    LOBYTE(v39) = a4;
    v15 = type metadata accessor for PendingRequest(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v19 = v12;

    sub_247DD224C();
    *(v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v20 = (v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v20 = 0;
    v20[1] = 0;
    v21 = v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v21[32] = 0;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    sub_247D6B5A8(&v39, v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v18[4] = v19;
    v22 = (v18 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v22 = sub_247DBB548;
    v22[1] = v14;
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = v18[2];
    v25 = v18[3];
    v18[2] = sub_247DBB680;
    v18[3] = v23;

    sub_247D6A24C(v24);

    if ((*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) == 0)
    {
      goto LABEL_8;
    }

    v26 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v27 = *(a1 + v26);
    if (v27 >> 62)
    {
      if (v27 < 0)
      {
        v37 = *(a1 + v26);
      }

      v28 = sub_247DD30BC();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5 & 1) != 0)
    {
      sub_247DA0CDC(v18);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v18, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v29 = sub_247DD23CC();
      __swift_project_value_buffer(v29, qword_27EE73D30);

      v30 = sub_247DD23AC();
      v31 = sub_247DD2F2C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v33;
        *v32 = 136315650;
        *(v32 + 4) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, &v38);
        *(v32 + 12) = 1024;
        *(v32 + 14) = a5 & 1;
        *(v32 + 18) = 2080;
        v34 = CosmoMultiplexChannelClient.description.getter();
        v36 = sub_247D72868(v34, v35, &v38);

        *(v32 + 20) = v36;
        _os_log_impl(&dword_247D56000, v30, v31, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v32, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v33, -1, -1);
        MEMORY[0x24C1BAF60](v32, -1, -1);
      }
    }
  }
}

void sub_247DA90EC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v43 - v12);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v14 = swift_allocError();
    *v15 = xmmword_247DD52A0;
    *(v15 + 16) = 2;
    *v13 = v14;
    swift_storeEnumTagMultiPayload();
    a2(v13);
    sub_247D6BAD4(v13, &qword_27EE73F10, &unk_247DD6588);
  }

  else
  {
    v16 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 2) = v17;
    *(v18 + 3) = a2;
    *(v18 + 4) = a3;
    v45 = type metadata accessor for FileRequest(0);
    v46 = sub_247DBAE20(&qword_27EE73F18, type metadata accessor for FileRequest);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_247DBAB44(a4, boxed_opaque_existential_1, type metadata accessor for FileRequest);
    v20 = type metadata accessor for PendingRequest(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = v16;

    sub_247DD224C();
    *(v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v25 = (v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v25 = 0;
    v25[1] = 0;
    v26 = v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v26[32] = 0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    sub_247D6B5A8(&v44, v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v23[4] = v24;
    v27 = (v23 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v27 = sub_247DBAE14;
    v27[1] = v18;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v23[2];
    v30 = v23[3];
    v23[2] = sub_247DBB680;
    v23[3] = v28;

    sub_247D6A24C(v29);

    if ((*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) == 0)
    {
      goto LABEL_8;
    }

    v31 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v32 = *(a1 + v31);
    if (v32 >> 62)
    {
      if (v32 < 0)
      {
        v42 = *(a1 + v31);
      }

      v33 = sub_247DD30BC();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v33 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5 & 1) != 0)
    {
      sub_247DA0CDC(v23);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v23, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v34 = sub_247DD23CC();
      __swift_project_value_buffer(v34, qword_27EE73D30);

      v35 = sub_247DD23AC();
      v36 = sub_247DD2F2C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v43 = v38;
        *v37 = 136315650;
        *(v37 + 4) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, &v43);
        *(v37 + 12) = 1024;
        *(v37 + 14) = a5 & 1;
        *(v37 + 18) = 2080;
        v39 = CosmoMultiplexChannelClient.description.getter();
        v41 = sub_247D72868(v39, v40, &v43);

        *(v37 + 20) = v41;
        _os_log_impl(&dword_247D56000, v35, v36, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v37, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v38, -1, -1);
        MEMORY[0x24C1BAF60](v37, -1, -1);
      }
    }
  }
}

void sub_247DA95E4(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v7 = swift_allocError();
    *v8 = xmmword_247DD52A0;
    *(v8 + 16) = 2;
    *&v40 = v7;
    BYTE8(v40) = 1;
    a2(&v40);
    sub_247D6B9F8(v40, SBYTE8(v40));
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v41 = type metadata accessor for RejectFileRequest(0);
    v42 = sub_247DBAE20(&qword_27EE73F00, type metadata accessor for RejectFileRequest);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
    sub_247DBAB44(a4, boxed_opaque_existential_1, type metadata accessor for RejectFileRequest);
    v16 = type metadata accessor for PendingRequest(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v20 = v12;

    sub_247DD224C();
    *(v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v21 = (v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v21 = 0;
    v21[1] = 0;
    v22 = v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v22[32] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    sub_247D6B5A8(&v40, v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v19[4] = v20;
    v23 = (v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v23 = sub_247DBABF0;
    v23[1] = v14;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v19[2];
    v26 = v19[3];
    v19[2] = sub_247DBB680;
    v19[3] = v24;

    sub_247D6A24C(v25);

    if ((*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) == 0)
    {
      goto LABEL_8;
    }

    v27 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v28 = *(a1 + v27);
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v38 = *(a1 + v27);
      }

      v29 = sub_247DD30BC();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5 & 1) != 0)
    {
      sub_247DA0CDC(v19);
    }

    else
    {
LABEL_8:
      sub_247DA0190(v19, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v30 = sub_247DD23CC();
      __swift_project_value_buffer(v30, qword_27EE73D30);

      v31 = sub_247DD23AC();
      v32 = sub_247DD2F2C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v39 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, &v39);
        *(v33 + 12) = 1024;
        *(v33 + 14) = a5 & 1;
        *(v33 + 18) = 2080;
        v35 = CosmoMultiplexChannelClient.description.getter();
        v37 = sub_247D72868(v35, v36, &v39);

        *(v33 + 20) = v37;
        _os_log_impl(&dword_247D56000, v31, v32, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v33, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v34, -1, -1);
        MEMORY[0x24C1BAF60](v33, -1, -1);
      }
    }
  }
}

void sub_247DA9A84(uint64_t a1, uint64_t a2, void (*a3)(unint64_t *))
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247D6BA6C(a1, v12, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = v12[16];
      sub_247D6AFB0();
      v16 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      v21 = v16;
      v23 = 1;
      a3(&v21);

      sub_247DBB490(v21, v22, v23);
    }

    else
    {
      sub_247DBAA04(v12, v8, type metadata accessor for CosmoHttpResponseContent);
      sub_247D6DB68(v8);
      v21 = v19;
      v22 = v20;
      v23 = 0;

      a3(&v21);

      sub_247DBB490(v21, v22, v23);

      sub_247DBAA6C(v8, type metadata accessor for CosmoHttpResponseContent);
    }
  }
}

void sub_247DA9F28(uint64_t a1, uint64_t a2, void (*a3)(unint64_t *))
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247D6BA6C(a1, v12, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = v12[16];
      sub_247D6AFB0();
      v16 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v14;
      *(v17 + 16) = v15;
      v22 = v16;
      v25 = 1;
      a3(&v22);

      sub_247DBB5A8(v22, v23, v24, v25);
    }

    else
    {
      sub_247DBAA04(v12, v8, type metadata accessor for CosmoHttpResponseContent);
      sub_247D6D9E8(v8);
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v25 = 0;

      a3(&v22);

      sub_247DBB5A8(v22, v23, v24, v25);

      sub_247DBAA6C(v8, type metadata accessor for CosmoHttpResponseContent);
    }
  }
}

uint64_t sub_247DAA3DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v26 - v6);
  v8 = type metadata accessor for CosmoFileHttpResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CosmoHttpResponseContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v19, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *v19;
      v22 = *(v19 + 1);
      v23 = v19[16];
      sub_247D6AFB0();
      v24 = swift_allocError();
      *v25 = v21;
      *(v25 + 8) = v22;
      *(v25 + 16) = v23;
      *v7 = v24;
      swift_storeEnumTagMultiPayload();
      v27(v7);

      return sub_247D6BAD4(v7, &qword_27EE73F10, &unk_247DD6588);
    }

    else
    {
      sub_247DBAA04(v19, v15, type metadata accessor for CosmoHttpResponseContent);
      static CosmoFileHttpResponse._create(from:)(v15, v11);
      sub_247DBAB44(v11, v7, type metadata accessor for CosmoFileHttpResponse);
      swift_storeEnumTagMultiPayload();
      v27(v7);

      sub_247D6BAD4(v7, &qword_27EE73F10, &unk_247DD6588);
      sub_247DBAA6C(v11, type metadata accessor for CosmoFileHttpResponse);
      return sub_247DBAA6C(v15, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t sub_247DAA99C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *), uint64_t (*a6)(uint64_t, void))
{
  v10 = type metadata accessor for CosmoHttpResponseContent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v17, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v17;
      v20 = *(v17 + 1);
      v21 = v17[16];
      sub_247D6AFB0();
      v22 = swift_allocError();
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
      v26 = v22;
      v27 = 1;
      a3(&v26);

      return a6(v26, v27);
    }

    else
    {
      sub_247DBAA04(v17, v13, type metadata accessor for CosmoHttpResponseContent);
      a5(&v25, v13);
      v26 = v25;
      v27 = 0;
      a3(&v26);

      a6(v26, v27);
      return sub_247DBAA6C(v13, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t TransferClient.FileDescriptor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD225C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransferClient.FileDescriptor.name.getter()
{
  v1 = (v0 + *(type metadata accessor for TransferClient.FileDescriptor(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TransferClient.FileDescriptor.description.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v2 setCountStyle_];
  result = type metadata accessor for TransferClient.FileDescriptor(0);
  if ((*(v0 + *(result + 24)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = [v2 stringFromByteCount_];
    v6 = sub_247DD2CAC();
    v8 = v7;

    sub_247DD304C();

    sub_247DD225C();
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0]);
    v9 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v9);

    MEMORY[0x24C1BA0A0](0x3D656D616E202CLL, 0xE700000000000000);
    MEMORY[0x24C1BA0A0](*(v1 + *(v4 + 20)), *(v1 + *(v4 + 20) + 8));
    MEMORY[0x24C1BA0A0](0x3D657A6973202CLL, 0xE700000000000000);
    MEMORY[0x24C1BA0A0](v6, v8);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);

    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_247DAB108@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD225C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t TransferClient.State.description.getter()
{
  result = 0x6C616974696E69;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 0xA:
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xE:
      result = 0xD000000000000024;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
    case 0x11:
      result = 0x656E6E6F63736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TransferClient.State.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

Cosmo::TransferClient::AttestationResult_optional __swiftcall TransferClient.AttestationResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

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

uint64_t TransferClient.AttestationResult.rawValue.getter()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_247DAB500(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6572756C696166;
  }

  else
  {
    v2 = 0x73736563637573;
  }

  if (*a2)
  {
    v3 = 0x6572756C696166;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_247DD322C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_247DAB588()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247DAB600()
{
  *v0;
  sub_247DD2D7C();
}

uint64_t sub_247DAB65C()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247DAB6D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD312C();

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

void sub_247DAB730(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x6572756C696166;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

double TransferClient.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_247DAB77C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_247DD241C();

  *a2 = v5;
  return result;
}

uint64_t sub_247DAB7FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_247DD242C();
}

uint64_t sub_247DAB878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_247DD241C();

  return v1;
}

uint64_t sub_247DAB8F4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD23FC();
  return swift_endAccess();
}

uint64_t sub_247DAB96C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73EF0, &qword_247DD6578);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD240C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_247DABAF0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD23FC();
  return swift_endAccess();
}

uint64_t sub_247DABB64()
{
  v1 = v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t TransferClient.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0x3FF0000000000000;
  v6 = type metadata accessor for TransferClient(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  TransferClient.init(delegate:config:queue:)(a1, a2, &v11, a3);
  return v9;
}

uint64_t TransferClient.__allocating_init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TransferClient.init(delegate:config:queue:)(a1, a2, a3, a4);
  return v11;
}

uint64_t TransferClient.init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v30 = a2;
  v7 = sub_247DD2F6C();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2F3C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_247DD2A2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *a3;
  v20 = OBJC_IVAR____TtC5Cosmo14TransferClient__fileTransfers;
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF8, &unk_247DD61A0);
  sub_247DD23EC();
  (*(v15 + 32))(v4 + v20, v18, v14);
  v21 = v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  *(v21 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect) = 18;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret) = xmmword_247DD3EC0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel) = 0;
  v22 = (v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
  *v23 = 0;
  v23[1] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult) = 2;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey) = xmmword_247DD3EC0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey) = xmmword_247DD3EC0;
  v24 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
  v25 = sub_247DD225C();
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount) = 0;
  swift_beginAccess();
  *(v21 + 8) = v30;
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = v19;
  if (!a4)
  {
    sub_247D6A0F4();
    sub_247DD2A1C();
    v31 = MEMORY[0x277D84F90];
    sub_247DBAE20(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
    a4 = sub_247DD2F8C();
  }

  swift_unknownObjectRelease();
  *(v4 + 16) = a4;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) = 0;
  return v4;
}

void sub_247DAC1A4(char *a1)
{
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *(v1 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) = v9;
    if (qword_27EE73290 == -1)
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
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B908);
  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315394;
    v23[7] = v2;
    v17 = TransferClient.State.description.getter();
    v19 = sub_247D72868(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v23[6] = v9;
    v20 = TransferClient.State.description.getter();
    v22 = sub_247D72868(v20, v21, &v24);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_247D56000, v13, v14, "[State] Updated, old-state='%s' new-state='%s'", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }
}

uint64_t TransferClient.deinit()
{
  v1 = OBJC_IVAR____TtC5Cosmo14TransferClient__fileTransfers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_247D6A1D0(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate);
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8));
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8);
  sub_247D6A24C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected));
  v6 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode + 8);

  v7 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);

  v8 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser);

  v9 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity);
  swift_unknownObjectRelease();
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8));
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID, &qword_27EE733A8, &unk_247DD61B0);
  v10 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient);

  return v0;
}

uint64_t TransferClient.__deallocating_deinit()
{
  TransferClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t TransferClient.connect(secret:onConnect:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_247DD2A2C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = *(v4 + 16);
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = v16;
  v19[6] = v17;
  aBlock[4] = sub_247DACE14;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  sub_247D6A2E8(v16, v17);
  sub_247DD2A1C();
  v25 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v20);
  _Block_release(v20);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

void sub_247DAC8DC(uint64_t a1, void (*a2)(void *, uint64_t), void (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5)
{
  v8 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (!*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state))
  {
    v21 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v22 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v23 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    *v21 = a4;
    v21[1] = a5;
    sub_247D6A2E8(a4, a5);
    sub_247D6A25C(v22, v23);
    v24 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
    v25 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
    v26 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8);
    *v24 = a2;
    v24[1] = a3;

    sub_247D6A24C(v25);
    v51 = a4;
    v52 = a5;
    v27 = SharedSecret.protocolVersion.getter();
    v28 = (v27 & 0x100) == 0;
    if ((v27 & 0xFE) == 0)
    {
      v28 = 0;
    }

    v29 = OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair;
    *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) = v28;
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v30 = sub_247DD23CC();
    __swift_project_value_buffer(v30, qword_27EE7B908);
    sub_247D6A2E8(a4, a5);

    v31 = sub_247DD23AC();
    v32 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v33 = 67109634;
      *(v33 + 4) = *(a1 + v29);

      *(v33 + 8) = 2080;
      v34 = sub_247D94008(a4, a5);
      v36 = v35;
      v37 = sub_247DD2D8C();
      if (v37)
      {
        v38 = v37;
        v39 = sub_247D993D8(v37, 0);

        v40 = sub_247D99310(&v51, v39 + 4, v38, v34, v36);

        if (v40 != v38)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        v39 = MEMORY[0x277D84F90];
      }

      v41 = v39[2];
      v42 = v41 - 5;
      if (v41 < 5)
      {
        v42 = 0;
      }

      v51 = v39;
      v52 = v39 + 4;
      v53 = v42;
      v54 = (2 * v41) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
      sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0);
      v43 = sub_247DD2E3C();
      v45 = sub_247D72868(v43, v44, &v55);

      *(v33 + 10) = v45;
      *(v33 + 18) = 2080;
      v51 = a4;
      v52 = a5;
      if ((SharedSecret.protocolVersion.getter() & 0x100) != 0)
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      else
      {
        v46 = sub_247DD2CFC();
        v48 = v47;
      }

      v49 = sub_247D72868(v46, v48, &v55);

      *(v33 + 20) = v49;
      _os_log_impl(&dword_247D56000, v31, v32, "[Connect] Using pinless-pair=%{BOOL}d, shared-secret=%s, protocol-version=%s", v33, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v50, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
    }

    else
    {
    }

    sub_247DACE3C();
    return;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v9 = sub_247DD23CC();
  __swift_project_value_buffer(v9, qword_27EE7B908);

  v10 = sub_247DD23AC();
  v11 = sub_247DD2F2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51 = v13;
    *v12 = 136315138;
    LOBYTE(v55) = *(a1 + v8);
    v14 = TransferClient.State.description.getter();
    v16 = sub_247D72868(v14, v15, &v51);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_247D56000, v10, v11, "[Connect] Must be invoked while in the initial state, state=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x24C1BAF60](v13, -1, -1);
    MEMORY[0x24C1BAF60](v12, -1, -1);
  }

  sub_247D6ADD0();
  v17 = swift_allocError();
  *v18 = xmmword_247DD3ED0;
  a2(v17, 1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247DACE3C()
{
  v1 = type metadata accessor for NetworkDescriptor();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v30[-v6];
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_247DD2ADC();
  result = (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v17 = (v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v18 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    if (v18 >> 60 != 15)
    {
      v19 = *v17;
      *v7 = *v17;
      *(v7 + 1) = v18;
      v7[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_247DBAB44(v7, v5, type metadata accessor for NetworkDescriptor);
      v20 = type metadata accessor for CosmoBrowser();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      v23 = swift_allocObject();
      *(v23 + 24) = 0;
      *(v23 + 16) = 0;
      *(v23 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = 0;
      sub_247DBAB44(v5, v23 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, type metadata accessor for NetworkDescriptor);
      sub_247D6B278(v19, v18);
      v24 = v14;
      sub_247D6B278(v19, v18);
      sub_247DBAA6C(v5, type metadata accessor for NetworkDescriptor);
      *(v23 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_queue) = v24;
      v25 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser;
      v26 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser);
      *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser) = v23;

      v27 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v28 = *(v23 + 16);
      v29 = *(v23 + 24);
      *(v23 + 16) = sub_247DBB5C8;
      *(v23 + 24) = v27;

      sub_247D6A24C(v28);

      v31 = 1;
      sub_247DAC1A4(&v31);
      if (*(v0 + v25))
      {

        sub_247D9A43C();
      }

      sub_247D6A25C(v19, v18);
      return sub_247DBAA6C(v7, type metadata accessor for NetworkDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247DAD1AC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v4 = sub_247DD23CC();
      __swift_project_value_buffer(v4, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v18 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v9 = TransferClient.State.description.getter();
      v11 = sub_247D72868(v9, v10, &v20);

      *(v7 + 4) = v11;
      v12 = "[AttestationSetup] Advertised attestation-endpoint removed, state=%s";
LABEL_12:
      _os_log_impl(&dword_247D56000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
LABEL_13:

      return;
    }

    v13 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
    if (*(Strong + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 1u)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v14 = sub_247DD23CC();
      __swift_project_value_buffer(v14, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v19 = *(v3 + v13);
      v15 = TransferClient.State.description.getter();
      v17 = sub_247D72868(v15, v16, &v20);

      *(v7 + 4) = v17;
      v12 = "[AttestationSetup] Ignoring add of file-transfer-endpoint, state=%s";
      goto LABEL_12;
    }

    sub_247DAD45C();
  }
}

uint64_t sub_247DAD45C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v9 = sub_247DD225C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  v20 = sub_247DD2ADC();
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  result = v22(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v24 = (v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
  v20 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
  if (v20 >> 60 == 15)
  {
    return result;
  }

  v54 = v2;
  v21 = *v24;
  sub_247D6A2E8(*v24, v20);
  if (qword_27EE73290 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v53 = v19;
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE7B908);
  sub_247D6A2E8(v21, v20);
  v26 = sub_247DD23AC();
  v27 = sub_247DD2F2C();
  sub_247D6A25C(v21, v20);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50 = v28;
    v52 = swift_slowAlloc();
    v57[1] = v20;
    v58 = v52;
    *v28 = 136315138;
    v57[0] = v21;
    v51 = v27;
    SharedSecret.advertisementIdentifer.getter(v12);
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0]);
    v29 = v56;
    v30 = sub_247DD321C();
    v31 = v6;
    v33 = v32;
    (*(v55 + 8))(v12, v29);
    v34 = sub_247D72868(v30, v33, &v58);
    v6 = v31;

    v35 = v50;
    *(v50 + 1) = v34;
    v36 = v35;
    _os_log_impl(&dword_247D56000, v26, v51, "[Connect] Starting attestation-channel with Bonjour attestationServiceUUID=%s", v35, 0xCu);
    v37 = v52;
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x24C1BAF60](v37, -1, -1);
    MEMORY[0x24C1BAF60](v36, -1, -1);
  }

  *v8 = v21;
  *(v8 + 1) = v20;
  v8[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_247DBAB44(v8, v6, type metadata accessor for NetworkDescriptor);
  v38 = type metadata accessor for CosmoSerialChannelClient();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v53;
  v42 = v53;
  sub_247D6B278(v21, v20);
  v43 = sub_247D845FC(0xD000000000000013, 0x8000000247DDA1B0, v6, v41);
  v44 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel;
  v45 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel);
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel) = v43;

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = v43[2];
  v48 = v43[3];
  v43[2] = sub_247DBB5D0;
  v43[3] = v46;

  sub_247D6A24C(v47);

  LOBYTE(v57[0]) = 2;
  sub_247DAC1A4(v57);
  if (*(v1 + v44))
  {
    v49 = *(v1 + v44);

    sub_247D84AFC();
  }

  sub_247D6A25C(v21, v20);
  return sub_247DBAA6C(v8, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DAD9AC(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DADA0C(a1 & 1);
  }

  return result;
}

void sub_247DADA0C(char a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v12 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v12 <= 0xF)
  {
    if (a1)
    {
      if (v12 <= 0xB)
      {
        BYTE6(v26) = 2;
        sub_247DAEE90(&v26 + 6, 0xD00000000000001FLL, 0x8000000247DDA1D0);
      }
    }

    else
    {
      BYTE5(v26) = 3;
      sub_247DAC1A4(&v26 + 5);
      v21 = (v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
      v22 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
      if (v22)
      {
        v23 = v21[1];

        v22(0, 0);
        sub_247D6A24C(v22);
        v24 = *v21;
      }

      else
      {
        v24 = 0;
      }

      v25 = v21[1];
      *v21 = 0;
      v21[1] = 0;
      sub_247D6A24C(v24);
      sub_247DADD20();
    }

    return;
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = sub_247DD23CC();
  __swift_project_value_buffer(v13, qword_27EE7B908);

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    HIBYTE(v26) = *(v3 + v2);
    v18 = TransferClient.State.description.getter();
    v20 = sub_247D72868(v18, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_247D56000, v14, v15, "Disconnect: Ignoring attestation-channel state change, state=%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }
}

void sub_247DADD20()
{
  v1 = v0;
  v2 = sub_247DD235C();
  v139 = *(v2 - 8);
  v3 = *(v139 + 64);
  MEMORY[0x28223BE20](v2);
  v138 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247DD2C1C();
  v137 = *(v5 - 8);
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247DD2B3C();
  v136 = *(v9 - 8);
  v10 = *(v136 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  v20 = sub_247DD2ADC();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_31:
    v88 = sub_247DD23CC();
    __swift_project_value_buffer(v88, qword_27EE7B908);
    v26 = sub_247DD23AC();
    v27 = sub_247DD2F0C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v141[0] = v29;
      *v28 = 136315138;
      v89 = sub_247DB0BB0(v1);
      v91 = sub_247D72868(v89, v90, v141);

      *(v28 + 4) = v91;
      v33 = "[Initiate SPAKE2] Unexpected state, %s";
      goto LABEL_33;
    }

LABEL_34:

    return;
  }

  v21 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v21 == 3)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v21 != 7)
  {

    goto LABEL_30;
  }

  v22 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult);
  if (v22 == 2)
  {
    goto LABEL_5;
  }

  if ((v22 & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_30;
  }

  v67 = sub_247DD322C();

  swift_bridgeObjectRelease_n();
  if (v67)
  {
LABEL_30:
    if (qword_27EE73290 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_6:
  v135 = v2;
  v23 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel);
  if (!v23)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v25 = sub_247DD23CC();
    __swift_project_value_buffer(v25, qword_27EE7B908);
    v26 = sub_247DD23AC();
    v27 = sub_247DD2F2C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v141[0] = v29;
      *v28 = 136315138;
      v30 = sub_247DB0BB0(v1);
      v32 = sub_247D72868(v30, v31, v141);

      *(v28 + 4) = v32;
      v33 = "[Initiate SPAKE2] Could not find attestation-channel, %s";
LABEL_33:
      _os_log_impl(&dword_247D56000, v26, v27, v33, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x24C1BAF60](v29, -1, -1);
      MEMORY[0x24C1BAF60](v28, -1, -1);

      goto LABEL_50;
    }

    goto LABEL_34;
  }

  if (*(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) == 1)
  {
    v24 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    if (v24 >> 60 == 15)
    {
      LOBYTE(v141[0]) = 0;

      sub_247DAEE90(v141, 0xD000000000000037, 0x8000000247DD8A10);
LABEL_49:

      goto LABEL_50;
    }

    v68 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount;
    v69 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount);
    v36 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v20 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
      *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = v70;
      v134 = v23;

      sub_247D6B278(v20, v24);
      if (qword_27EE73290 == -1)
      {
LABEL_27:
        v71 = sub_247DD23CC();
        __swift_project_value_buffer(v71, qword_27EE7B908);
        sub_247D6A2E8(v20, v24);
        v72 = sub_247DD23AC();
        v73 = sub_247DD2F2C();
        sub_247D6A25C(v20, v24);
        v74 = v72;
        if (os_log_type_enabled(v72, v73))
        {
          v75 = swift_slowAlloc();
          LODWORD(v136) = v73;
          v76 = v75;
          v137 = swift_slowAlloc();
          v141[0] = v137;
          *v76 = 136315394;
          v77 = sub_247DC2028(v20, v24);
          v79 = v78;
          v80 = sub_247DD216C();
          v82 = v81;
          sub_247D6A1F8(v77, v79);
          v83 = sub_247D72868(v80, v82, v141);

          *(v76 + 4) = v83;
          *(v76 + 12) = 2080;
          v84 = sub_247DB0BB0(v1);
          v86 = sub_247D72868(v84, v85, v141);

          *(v76 + 14) = v86;
          v72 = v74;
          _os_log_impl(&dword_247D56000, v74, v136, "[Initiate SPAKE2] password=%s, %s", v76, 0x16u);
          v87 = v137;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v87, -1, -1);
          MEMORY[0x24C1BAF60](v76, -1, -1);
        }

        v66 = v138;
        v65 = v139;
        v102 = *(v1 + v68);
        sub_247D6A2E8(v20, v24);
        v103 = sub_247DC2028(v20, v24);
        v105 = v104;
        sub_247D6A25C(v20, v24);
        v106 = type metadata accessor for Spake2Verifier(0);
        v107 = *(v106 + 48);
        v108 = *(v106 + 52);
        swift_allocObject();
        v109 = sub_247DBFFD4(v103, v105, v102);
        v64 = v134;
        if (!v109)
        {
          LOBYTE(v141[0]) = 0;
          sub_247DAEE90(v141, 0xD00000000000001FLL, 0x8000000247DD9E30);
          sub_247D6A25C(v20, v24);
          goto LABEL_49;
        }

        v63 = v109;
        sub_247D6A25C(v20, v24);
        goto LABEL_41;
      }
    }

    swift_once();
    goto LABEL_27;
  }

  v34 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode + 8);
  if (v34)
  {
    v35 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
      v133 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount;
      *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = v37;
      v38 = qword_27EE73290;

      if (v38 == -1)
      {
LABEL_18:
        v39 = sub_247DD23CC();
        __swift_project_value_buffer(v39, qword_27EE7B908);

        v40 = sub_247DD23AC();
        v41 = sub_247DD2F2C();

        v130 = v41;
        v42 = os_log_type_enabled(v40, v41);
        v134 = v23;
        if (v42)
        {
          v43 = swift_slowAlloc();
          v131 = v17;
          v44 = v43;
          v45 = swift_slowAlloc();
          v141[0] = v45;
          *v44 = 136315394;

          v46 = sub_247D72868(v131, v34, v141);
          v129 = v40;
          v47 = v46;

          *(v44 + 4) = v47;
          *(v44 + 12) = 2080;
          v48 = sub_247DB0BB0(v1);
          v50 = v34;
          v51 = sub_247D72868(v48, v49, v141);

          *(v44 + 14) = v51;
          v34 = v50;
          v40 = v129;
          _os_log_impl(&dword_247D56000, v129, v130, "[Initiate SPAKE2] pin=%s, %s", v44, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v45, -1, -1);
          v52 = v44;
          v17 = v131;
          MEMORY[0x24C1BAF60](v52, -1, -1);
        }

        v53 = *(v1 + v133);
        v132 = v34;
        v133 = v53;

        v54 = sub_247D97644(v17, v34);
        v56 = v55;
        sub_247DBAE20(&qword_27EE73AC0, MEMORY[0x277CC5540]);
        sub_247DD2B1C();
        sub_247D6A2E8(v54, v56);
        sub_247DB9ECC(v54, v56);
        sub_247D6A1F8(v54, v56);
        sub_247DD2B0C();
        sub_247D6A1F8(v54, v56);
        (*(v137 + 8))(v8, v5);
        sub_247DD2B2C();
        (*(v136 + 8))(v12, v9);

        v57 = v141[0];
        v58 = v141[1];
        v59 = type metadata accessor for Spake2Verifier(0);
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        swift_allocObject();
        v62 = sub_247DBFFD4(v57, v58, v133);
        if (!v62)
        {
          LOBYTE(v141[0]) = 0;
          sub_247DAEE90(v141, 0xD00000000000001FLL, 0x8000000247DD9E30);
          goto LABEL_49;
        }

        v63 = v62;
        v64 = v134;
        v66 = v138;
        v65 = v139;
LABEL_41:
        v110 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
        *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier) = v63;
        swift_retain_n();

        v111 = OBJC_IVAR____TtC5Cosmo14Spake2Verifier_verifier;
        swift_beginAccess();
        v112 = v135;
        (*(v65 + 16))(v66, v63 + v111, v135);
        v113 = sub_247DD234C();
        v115 = v114;

        (*(v65 + 8))(v66, v112);
        if (qword_27EE73290 != -1)
        {
          swift_once();
        }

        v116 = sub_247DD23CC();
        __swift_project_value_buffer(v116, qword_27EE7B908);
        sub_247D6A2E8(v113, v115);
        v117 = sub_247DD23AC();
        v118 = sub_247DD2F2C();
        sub_247D6A1F8(v113, v115);
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v134 = v64;
          v121 = v120;
          v140 = v120;
          *v119 = 136315650;
          v122 = sub_247DD216C();
          v124 = sub_247D72868(v122, v123, &v140);

          *(v119 + 4) = v124;
          *(v119 + 12) = 537002240;
          *(v119 + 16) = 8;
          v125 = sub_247DB0BB0(v1);
          v127 = sub_247D72868(v125, v126, &v140);

          *(v119 + 17) = v127;
          _os_log_impl(&dword_247D56000, v117, v118, "[SPAKE2 Share] Sending shareV=%s, protocol-version=%hhu, %s", v119, 0x19u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v121, -1, -1);
          MEMORY[0x24C1BAF60](v119, -1, -1);
        }

        v128 = swift_allocObject();
        swift_weakInit();
        sub_247DA530C(2, v113, v115, sub_247DBAE68, v128);

        LOBYTE(v140) = 4;
        sub_247DAC1A4(&v140);

        sub_247D6A1F8(v113, v115);
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  v92 = qword_27EE73290;
  v93 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel);

  if (v92 != -1)
  {
    swift_once();
  }

  v94 = sub_247DD23CC();
  __swift_project_value_buffer(v94, qword_27EE7B908);
  v95 = sub_247DD23AC();
  v96 = sub_247DD2F2C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v141[0] = v98;
    *v97 = 136315138;
    v99 = sub_247DB0BB0(v1);
    v101 = sub_247D72868(v99, v100, v141);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_247D56000, v95, v96, "[Initiate SPAKE2] Skipping, waiting for auth() to called first, %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x24C1BAF60](v98, -1, -1);
    MEMORY[0x24C1BAF60](v97, -1, -1);

    goto LABEL_49;
  }

LABEL_50:
}

uint64_t sub_247DAEE90(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v57 - v13;
  v61 = sub_247DD2A0C();
  v14 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_247DD2ABC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = *(v4 + 16);
  *v20 = v22;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v62 = v22;
  LOBYTE(v22) = sub_247DD2ADC();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  result = v24(v20, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v23 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xFu)
  {
    return result;
  }

  v57 = v9;
  v60 = a2;
  if (qword_27EE73290 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE7B908);

  v27 = sub_247DD23AC();
  v28 = sub_247DD2F2C();

  v29 = os_log_type_enabled(v27, v28);
  v58 = v8;
  v59 = a3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_247D72868(v60, a3, aBlock);
    *(v30 + 12) = 2080;
    LOBYTE(v66) = *(v4 + v23);
    v32 = TransferClient.State.description.getter();
    v34 = sub_247D72868(v32, v33, aBlock);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_247D56000, v27, v28, "[Close] Closing, reason='%s', state=%s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v31, -1, -1);
    MEMORY[0x24C1BAF60](v30, -1, -1);
  }

  LOBYTE(aBlock[0]) = 16;
  sub_247DAC1A4(aBlock);
  if (*(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) && v21 == 3)
  {

    v35 = sub_247DD23AC();
    v36 = sub_247DD2F2C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      LOBYTE(v66) = *(v4 + v23);
      v39 = TransferClient.State.description.getter();
      v41 = sub_247D72868(v39, v40, aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_247D56000, v35, v36, "[Close] Sending request to TransferHost, state=%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x24C1BAF60](v38, -1, -1);
      MEMORY[0x24C1BAF60](v37, -1, -1);
    }

    v42 = v59;
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = 3;
    v45 = v60;
    *(v44 + 32) = v60;
    *(v44 + 40) = v42;
    aBlock[4] = sub_247DBA8B8;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_116;
    _Block_copy(aBlock);
    v66 = MEMORY[0x277D84F90];
    sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
    sub_247DD2FFC();
    v46 = sub_247DD2AAC();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_247DD2A8C();

    v50 = v64;
    sub_247DD2A6C();
    v51 = *(v4 + 24);
    v52 = v65;
    sub_247DD2ACC();
    v53 = v58;
    v54 = *(v57 + 8);
    v54(v50, v58);
    sub_247DD2F5C();
    v54(v52, v53);
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v49;
    *(v56 + 32) = 3;
    *(v56 + 40) = v45;
    *(v56 + 48) = v42;

    sub_247DA79B4(1, sub_247DBA910, v56, &unk_2859E6240, sub_247DBA93C, &block_descriptor_126);
  }

  else
  {
    LOBYTE(aBlock[0]) = v21;
    return sub_247DBA4B0(aBlock);
  }
}

void sub_247DAF62C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 17);
  v13 = *(v2 + 16);
  *v8 = v13;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
LABEL_12:
    v29 = sub_247DD23CC();
    __swift_project_value_buffer(v29, qword_27EE7B908);
    v30 = sub_247DD23AC();
    v31 = sub_247DD2F2C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      v34 = sub_247DB0BB0(v2);
      v36 = sub_247D72868(v34, v35, v69);

      *(v32 + 4) = v36;
      v37 = "[SPAKE2 Share Response] Disconnect detected, ignoring, %s";
LABEL_18:
      _os_log_impl(&dword_247D56000, v30, v31, v37, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x24C1BAF60](v33, -1, -1);
      MEMORY[0x24C1BAF60](v32, -1, -1);

LABEL_19:

      return;
    }

LABEL_20:

    return;
  }

  v15 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v15 > 0xF)
  {
    v28 = qword_27EE73290;

    if (v28 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (v15 != 4)
  {
    v38 = qword_27EE73290;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = sub_247DD23CC();
    __swift_project_value_buffer(v39, qword_27EE7B908);
    v30 = sub_247DD23AC();
    v31 = sub_247DD2F0C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      v40 = sub_247DB0BB0(v2);
      v42 = sub_247D72868(v40, v41, v69);

      *(v32 + 4) = v42;
      v37 = "[SPAKE2 Share Response] Unexpected state, %s";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier))
  {
    LOBYTE(v69[0]) = 0;

    sub_247DAEE90(v69, 0xD000000000000038, 0x8000000247DD9E80);
    goto LABEL_19;
  }

  if (v12)
  {
    v16 = qword_27EE73290;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE7B908);
    sub_247D6B69C(v10, v9, v11);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F0C();
    sub_247D868B0(v10, v9, v11, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v71 = v21;
      *v20 = 136315394;
      v69[0] = v10;
      v69[1] = v9;
      v70 = v11;
      sub_247D6B69C(v10, v9, v11);
      v22 = sub_247DD2CFC();
      v24 = sub_247D72868(v22, v23, &v71);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_247DB0BB0(v2);
      v27 = sub_247D72868(v25, v26, &v71);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_247D56000, v18, v19, "[SPAKE2 Share Response] Failed to receive Spake2Share-response, error=%s %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
    }

    LOBYTE(v69[0]) = 2;
    sub_247DAEE90(v69, 0xD00000000000001CLL, 0x8000000247DD9EC0);

    goto LABEL_19;
  }

  LOBYTE(v69[0]) = 5;

  sub_247DAC1A4(v69);
  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v43 = sub_247DD23CC();
  __swift_project_value_buffer(v43, qword_27EE7B908);
  sub_247D6A2E8(v10, v9);
  v44 = sub_247DD23AC();
  v45 = sub_247DD2F2C();
  sub_247D868B0(v10, v9, v11, 0);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69[0] = v68;
    *v46 = 136315394;
    v47 = sub_247DD216C();
    v49 = sub_247D72868(v47, v48, v69);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = sub_247DB0BB0(v2);
    v52 = sub_247D72868(v50, v51, v69);

    *(v46 + 14) = v52;
    _os_log_impl(&dword_247D56000, v44, v45, "[SPAKE2 Share Response] shareP=%s, %s", v46, 0x16u);
    v53 = v68;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v53, -1, -1);
    MEMORY[0x24C1BAF60](v46, -1, -1);
  }

  swift_beginAccess();
  v54 = sub_247DD232C();
  v56 = v55;
  swift_endAccess();
  sub_247D6A2E8(v54, v56);
  v57 = sub_247DD23AC();
  v58 = sub_247DD2F2C();
  sub_247D6A1F8(v54, v56);
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v69[0] = v60;
    *v59 = 136315394;
    v61 = sub_247DD216C();
    v63 = sub_247D72868(v61, v62, v69);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = sub_247DB0BB0(v2);
    v66 = sub_247D72868(v64, v65, v69);

    *(v59 + 14) = v66;
    _os_log_impl(&dword_247D56000, v57, v58, "[SPAKE2 Confirm] Sending confirmV=%s %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v60, -1, -1);
    MEMORY[0x24C1BAF60](v59, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    v67 = swift_allocObject();
    swift_weakInit();

    sub_247DA5614(v54, v56, sub_247DBAFE0, v67);
  }

  LOBYTE(v69[0]) = 6;
  sub_247DAC1A4(v69);

  sub_247D6A1F8(v54, v56);
}

uint64_t sub_247DB00D4(uint64_t *a1, uint64_t a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v4;
    v9[1] = v5;
    v10 = v6;
    v11 = v7;
    a3(v9);
  }

  return result;
}

void sub_247DB0160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v66[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 17);
  v13 = *(v2 + 16);
  *v8 = v13;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  v15 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v15 <= 0xF)
  {
    if (v15 == 6)
    {
      v16 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
      if (v16)
      {
        if (v12)
        {
          v17 = qword_27EE73290;

          if (v17 != -1)
          {
            swift_once();
          }

          v18 = sub_247DD23CC();
          __swift_project_value_buffer(v18, qword_27EE7B908);
          sub_247D6B69C(v10, v9, v11);
          v19 = sub_247DD23AC();
          v20 = sub_247DD2F0C();
          sub_247D868B0(v10, v9, v11, 1);
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v68 = v22;
            *v21 = 136315394;
            v66[0] = v10;
            v66[1] = v9;
            v67 = v11;
            sub_247D6B69C(v10, v9, v11);
            v23 = sub_247DD2CFC();
            v25 = sub_247D72868(v23, v24, &v68);

            *(v21 + 4) = v25;
            *(v21 + 12) = 2080;
            v26 = sub_247DB0BB0(v2);
            v28 = sub_247D72868(v26, v27, &v68);

            *(v21 + 14) = v28;
            _os_log_impl(&dword_247D56000, v19, v20, "[SPAKE2 Share Confirm] Failed to receive Spake2Confirm-response, error=%s %s", v21, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v22, -1, -1);
            MEMORY[0x24C1BAF60](v21, -1, -1);
          }

          LOBYTE(v66[0]) = 2;
          sub_247DAEE90(v66, 0xD00000000000001ELL, 0x8000000247DD9F50);
        }

        else
        {
          LOBYTE(v66[0]) = 7;

          sub_247DAC1A4(v66);
          if (qword_27EE73290 != -1)
          {
            swift_once();
          }

          v44 = sub_247DD23CC();
          __swift_project_value_buffer(v44, qword_27EE7B908);
          sub_247D6A2E8(v10, v9);
          v45 = sub_247DD23AC();
          v46 = sub_247DD2F2C();
          sub_247D868B0(v10, v9, v11, 0);
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v66[0] = v48;
            *v47 = 136315394;
            v49 = sub_247DD216C();
            v65 = v16;
            v51 = sub_247D72868(v49, v50, v66);

            *(v47 + 4) = v51;
            *(v47 + 12) = 2080;
            v52 = sub_247DB0BB0(v2);
            v54 = sub_247D72868(v52, v53, v66);

            *(v47 + 14) = v54;
            _os_log_impl(&dword_247D56000, v45, v46, "[SPAKE2 Confirm Response] confirmP=%s, %s", v47, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v48, -1, -1);
            MEMORY[0x24C1BAF60](v47, -1, -1);
          }

          sub_247DC0588(v10, v9);
          *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult) = 0;
          v55 = sub_247DD23AC();
          v56 = sub_247DD2F2C();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v66[0] = v58;
            *v57 = 136315138;
            v59 = sub_247DB0BB0(v2);
            v61 = sub_247D72868(v59, v60, v66);

            *(v57 + 4) = v61;
            _os_log_impl(&dword_247D56000, v55, v56, "[SPAKE2 Confirm Response] Seed validated, %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            MEMORY[0x24C1BAF60](v58, -1, -1);
            MEMORY[0x24C1BAF60](v57, -1, -1);
          }

          sub_247DB0CA8();
          v62 = v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v63 = *(v62 + 8);
            ObjectType = swift_getObjectType();
            (*(v63 + 8))(v2, ObjectType, v63);

            swift_unknownObjectRelease();
            goto LABEL_20;
          }
        }
      }

      else
      {
        LOBYTE(v66[0]) = 0;

        sub_247DAEE90(v66, 0xD00000000000003ALL, 0x8000000247DD9F10);
      }

LABEL_20:

      return;
    }

    v39 = qword_27EE73290;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_247DD23CC();
    __swift_project_value_buffer(v40, qword_27EE7B908);
    v31 = sub_247DD23AC();
    v32 = sub_247DD2F0C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66[0] = v34;
      *v33 = 136315138;
      v41 = sub_247DB0BB0(v2);
      v43 = sub_247D72868(v41, v42, v66);

      *(v33 + 4) = v43;
      v38 = "[SPAKE2 Confirm Response] Unexpected state, %s";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v29 = qword_27EE73290;

  if (v29 != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  v30 = sub_247DD23CC();
  __swift_project_value_buffer(v30, qword_27EE7B908);
  v31 = sub_247DD23AC();
  v32 = sub_247DD2F2C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v66[0] = v34;
    *v33 = 136315138;
    v35 = sub_247DB0BB0(v2);
    v37 = sub_247D72868(v35, v36, v66);

    *(v33 + 4) = v37;
    v38 = "[SPAKE2 Confirm Response] Disconnect detected, ignoring, %s";
LABEL_19:
    _os_log_impl(&dword_247D56000, v31, v32, v38, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x24C1BAF60](v34, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);

    goto LABEL_20;
  }

LABEL_21:
}

uint64_t sub_247DB0BB0(uint64_t a1)
{
  sub_247DD304C();

  v5 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount);
  v2 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v2);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  LOBYTE(v5) = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  v3 = TransferClient.State.description.getter();
  MEMORY[0x24C1BA0A0](v3);

  return 0x612D747365747461;
}

uint64_t sub_247DB0CA8()
{
  v3 = v0;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  v11 = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v1 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
  if (!v1)
  {
    LOBYTE(v67[0]) = 0;
    return sub_247DAEE90(v67, 0xD000000000000037, 0x8000000247DD9F70);
  }

  v12 = *MEMORY[0x277CDC040];
  v13 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);

  KeyPair = createKeyPair(v12, 256);
  v14 = secIdentityFromKeyPair(KeyPair);
  v15 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity);
  *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v65 = v14;
  v16 = publicKeyFromIdentity(v14);
  v2 = sub_247DD217C();
  v11 = v17;

  v18 = (v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
  v19 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
  v20 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8);
  *v18 = v2;
  v18[1] = v11;
  sub_247D6A2E8(v2, v11);
  sub_247D6A25C(v19, v20);
  if (qword_27EE73290 != -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v21 = sub_247DD23CC();
  __swift_project_value_buffer(v21, qword_27EE7B908);
  sub_247D6A2E8(v2, v11);

  v22 = sub_247DD23AC();
  v23 = sub_247DD2F2C();
  sub_247D6A1F8(v2, v11);

  v24 = os_log_type_enabled(v22, v23);
  v63 = v1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67[0] = v26;
    *v25 = 136315394;
    v27 = sub_247DD216C();
    v29 = v11;
    v30 = sub_247D72868(v27, v28, v67);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    LOBYTE(v66) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v31 = TransferClient.State.description.getter();
    v33 = sub_247D72868(v31, v32, v67);

    *(v25 + 14) = v33;
    v11 = v29;
    _os_log_impl(&dword_247D56000, v22, v23, "[FileTransferSetup] Generated localPublicKey=%s, state=%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

  v34 = sub_247DBF19C(v2, v11);
  if (v35 >> 60 == 15)
  {

    v37 = sub_247DD23AC();
    v38 = sub_247DD2F0C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v11;
      v41 = swift_slowAlloc();
      v67[0] = v41;
      *v39 = 136315138;
      LOBYTE(v66) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v42 = TransferClient.State.description.getter();
      v44 = sub_247D72868(v42, v43, v67);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_247D56000, v37, v38, "[FileTransferSetup] Spake2Verifier.encrypt() returned nil, %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      v45 = v41;
      v11 = v40;
      MEMORY[0x24C1BAF60](v45, -1, -1);
      MEMORY[0x24C1BAF60](v39, -1, -1);
    }

    LOBYTE(v67[0]) = 0;
    sub_247DAEE90(v67, 0xD000000000000025, 0x8000000247DD9FE0);

    swift_unknownObjectRelease();
    v46 = v2;
    v47 = v11;
  }

  else
  {
    v62 = v11;
    v48 = v34;
    v49 = v35;
    v50 = sub_247DD216C();
    v52 = v51;

    sub_247D6A25C(v48, v49);

    v53 = sub_247DD23AC();
    v54 = sub_247DD2F2C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67[0] = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_247D72868(v50, v52, v67);
      *(v55 + 12) = 2080;
      LOBYTE(v66) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v57 = TransferClient.State.description.getter();
      v59 = sub_247D72868(v57, v58, v67);

      *(v55 + 14) = v59;
      _os_log_impl(&dword_247D56000, v53, v54, "[FileTransferSetup] Sending encryptedLocalPublicKey=%s, state=%s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v56, -1, -1);
      MEMORY[0x24C1BAF60](v55, -1, -1);
    }

    if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
    {
      v60 = swift_allocObject();
      swift_weakInit();

      sub_247DA5910(v50, v52, sub_247DBB198, v60);
    }

    else
    {
    }

    LOBYTE(v67[0]) = 8;
    sub_247DAC1A4(v67);

    swift_unknownObjectRelease();
    v46 = v2;
    v47 = v62;
  }

  sub_247D6A1F8(v46, v47);
}

uint64_t sub_247DB157C(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v3;
    v5[1] = v4;
    v6 = v1;
    sub_247DB15F8(v5);
  }

  return result;
}

void sub_247DB15F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v148[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v148[-v9];
  v11 = sub_247DD225C();
  v159 = *(v11 - 8);
  v160 = v11;
  v12 = *(v159 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v148[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v158 = &v148[-v16];
  v17 = sub_247DD2ABC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v148[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(a1 + 8);
  v162 = *a1;
  v163 = v22;
  v23 = *(a1 + 24);
  v161 = *(a1 + 16);
  v24 = *(a1 + 32);
  v25 = *(v2 + 16);
  *v21 = v25;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v26 = v25;
  v27 = sub_247DD2ADC();
  v29 = *(v18 + 8);
  v28 = v18 + 8;
  v29(v21, v17);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v21 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v30 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v30 > 0xF)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v49 = sub_247DD23CC();
    __swift_project_value_buffer(v49, qword_27EE7B908);

    v50 = sub_247DD23AC();
    v51 = sub_247DD2F2C();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_20;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v164[0] = v53;
    *v52 = 136315138;
    LOBYTE(v166[0]) = *(v21 + v2);
    v54 = TransferClient.State.description.getter();
    v56 = sub_247D72868(v54, v55, v164);

    *(v52 + 4) = v56;
    v57 = "[FileTransferSetup Response] Disconnect detected, ignoring, state=%s";
    goto LABEL_19;
  }

  if (v30 != 8)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v58 = sub_247DD23CC();
    __swift_project_value_buffer(v58, qword_27EE7B908);

    v50 = sub_247DD23AC();
    v51 = sub_247DD2F0C();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_20;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v164[0] = v53;
    *v52 = 136315138;
    LOBYTE(v166[0]) = *(v21 + v2);
    v59 = TransferClient.State.description.getter();
    v61 = sub_247D72868(v59, v60, v164);

    *(v52 + 4) = v61;
    v57 = "[FileTransferSetup Response] Unexpected state, state=%s";
LABEL_19:
    _os_log_impl(&dword_247D56000, v50, v51, v57, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x24C1BAF60](v53, -1, -1);
    MEMORY[0x24C1BAF60](v52, -1, -1);
LABEL_20:

    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier))
  {
    LOBYTE(v164[0]) = 0;
    sub_247DAEE90(v164, 0xD000000000000046, 0x8000000247DDA010);
    return;
  }

  if (v24)
  {
    v31 = qword_27EE73290;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_247DD23CC();
    __swift_project_value_buffer(v32, qword_27EE7B908);

    v33 = v162;
    v34 = v163;
    v35 = v161;
    sub_247DBB338(v162, v163, v161, v23, 1);
    v36 = v33;
    v37 = sub_247DD23AC();
    v38 = sub_247DD2F0C();
    sub_247DBB26C(v36, v34, v35, v23, 1);

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v166[0] = v40;
      *v39 = 136315394;
      v164[0] = v36;
      v164[1] = v34;
      v165 = v35;
      sub_247D6B69C(v36, v34, v35);
      v41 = sub_247DD2CFC();
      v43 = sub_247D72868(v41, v42, v166);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      LOBYTE(v164[0]) = *(v21 + v2);
      v44 = TransferClient.State.description.getter();
      v46 = sub_247D72868(v44, v45, v166);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_247D56000, v37, v38, "[FileTransferSetup Response] Failed to receive file-transfer-setup-response, error=%s state=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v40, -1, -1);
      MEMORY[0x24C1BAF60](v39, -1, -1);
    }

    LOBYTE(v164[0]) = 2;
    v47 = 0xD000000000000022;
    v48 = 0x8000000247DDA060;
LABEL_28:
    sub_247DAEE90(v164, v47, v48);
LABEL_46:

    return;
  }

  LOBYTE(v164[0]) = 9;

  sub_247DAC1A4(v164);
  v62 = sub_247DD210C();
  v156 = v63;
  if (v63 >> 60 == 15)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v64 = sub_247DD23CC();
    __swift_project_value_buffer(v64, qword_27EE7B908);
    v65 = sub_247DD23AC();
    v66 = sub_247DD2F0C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_247D56000, v65, v66, "FileTransferSetup Response] Failed to deserialize encryptedRemotePublicKey from base64", v67, 2u);
      MEMORY[0x24C1BAF60](v67, -1, -1);
    }

    LOBYTE(v164[0]) = 1;
    v48 = 0x8000000247DD8B60;
    v47 = 0xD00000000000002DLL;
    goto LABEL_28;
  }

  v68 = v62;
  v69 = sub_247DD210C();
  if (v70 >> 60 == 15)
  {
    v71 = v68;
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v72 = sub_247DD23CC();
    __swift_project_value_buffer(v72, qword_27EE7B908);
    v73 = sub_247DD23AC();
    v74 = sub_247DD2F0C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_247D56000, v73, v74, "FileTransferSetup Response] Failed to deserialize fileTransferServiceUUID from base64", v75, 2u);
      MEMORY[0x24C1BAF60](v75, -1, -1);
    }

    LOBYTE(v164[0]) = 1;
    sub_247DAEE90(v164, 0xD00000000000002DLL, 0x8000000247DD8B60);
    v76 = v71;
    goto LABEL_45;
  }

  v153 = v69;
  v154 = v70;
  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v77 = sub_247DD23CC();
  v78 = __swift_project_value_buffer(v77, qword_27EE7B908);
  v79 = v163;

  v152 = v78;
  v80 = sub_247DD23AC();
  v81 = sub_247DD2F2C();

  v151 = v23;

  v149 = v81;
  v150 = v80;
  v82 = os_log_type_enabled(v80, v81);
  v155 = v68;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v164[0] = v84;
    *v83 = 136315650;
    *(v83 + 4) = sub_247D72868(v162, v79, v164);
    *(v83 + 12) = 2080;
    v85 = v151;
    *(v83 + 14) = sub_247D72868(v161, v151, v164);
    *(v83 + 22) = 2080;
    LOBYTE(v166[0]) = *(v21 + v2);
    v86 = TransferClient.State.description.getter();
    v88 = sub_247D72868(v86, v87, v164);

    *(v83 + 24) = v88;
    v89 = v150;
    _os_log_impl(&dword_247D56000, v150, v149, "[FileTransferSetup Response] Received response, encryptedRemotePublicKey=%s encryptedServiceUUID=%s state=%s", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v84, -1, -1);
    v90 = v83;
    v68 = v155;
    MEMORY[0x24C1BAF60](v90, -1, -1);
  }

  else
  {

    v85 = v151;
  }

  v91 = sub_247DBF6AC(v68, v156);
  if (v92 >> 60 == 15)
  {
    goto LABEL_41;
  }

  v150 = v91;
  v151 = v92;
  v101 = sub_247DBF6AC(v153, v154);
  v103 = v150;
  if (v102 >> 60 == 15)
  {
    sub_247D6A25C(v150, v151);
LABEL_41:
    v93 = v163;

    v94 = sub_247DD23AC();
    v95 = sub_247DD2F0C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v164[0] = v97;
      *v96 = 136315650;
      *(v96 + 4) = sub_247D72868(v162, v93, v164);
      *(v96 + 12) = 2080;
      *(v96 + 14) = sub_247D72868(v161, v85, v164);
      *(v96 + 22) = 2080;
      LOBYTE(v166[0]) = *(v21 + v2);
      v98 = TransferClient.State.description.getter();
      v100 = sub_247D72868(v98, v99, v164);

      *(v96 + 24) = v100;
      _os_log_impl(&dword_247D56000, v94, v95, "[FileTransferSetup Response] Spake2Verifier.decrypt() returned nil for encryptedRemotePublicKey=%s encryptedServiceUUID=%s state=%s", v96, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v97, -1, -1);
      MEMORY[0x24C1BAF60](v96, -1, -1);
    }

    LOBYTE(v164[0]) = 0;
    sub_247DAEE90(v164, 0xD000000000000025, 0x8000000247DDA0C0);
LABEL_44:
    sub_247D6A25C(v153, v154);
    v76 = v155;
LABEL_45:
    sub_247D6A25C(v76, v156);
    goto LABEL_46;
  }

  v28 = v101;
  v24 = v102;
  sub_247D6B278(v150, v151);
  sub_247D6B278(v28, v24);
  sub_247D94680(v28, v24, v10);
  v17 = v159;
  v23 = v103;
  v27 = v160;
  if ((*(v159 + 48))(v10, 1, v160) == 1)
  {
    sub_247D6BAD4(v10, &qword_27EE733A8, &unk_247DD61B0);

    sub_247D6B278(v28, v24);
    v104 = sub_247DD23AC();
    v105 = sub_247DD2F0C();
    sub_247D6A25C(v28, v24);

    v106 = v28;
    if (os_log_type_enabled(v104, v105))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v164[0] = v108;
      *v107 = 136315394;
      v109 = sub_247DD216C();
      v111 = sub_247D72868(v109, v110, v164);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      LOBYTE(v166[0]) = *(v21 + v2);
      v112 = TransferClient.State.description.getter();
      v114 = sub_247D72868(v112, v113, v164);

      *(v107 + 14) = v114;
      _os_log_impl(&dword_247D56000, v104, v105, "[FileTransferSetup Response] Could not initialize UUID from decryptedServiceUUIDData=%s state=%s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v108, -1, -1);
      MEMORY[0x24C1BAF60](v107, -1, -1);
    }

    LOBYTE(v164[0]) = 0;
    sub_247DAEE90(v164, 0xD00000000000001ELL, 0x8000000247DDA0F0);
    v116 = v150;
    v115 = v151;
    sub_247D6A25C(v150, v151);
    sub_247D6A25C(v116, v115);
    sub_247D6A25C(v106, v24);
    goto LABEL_44;
  }

LABEL_54:
  v117 = v23;
  v118 = v151;
  sub_247D6A25C(v117, v151);
  sub_247D6A25C(v28, v24);
  v119 = v158;
  (*(v17 + 32))(v158, v10, v27);
  v120 = (v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
  v121 = v17;
  v123 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
  v122 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8);
  v124 = v150;
  *v120 = v150;
  v120[1] = v118;
  sub_247D6A2E8(v124, v118);
  sub_247D6A25C(v123, v122);
  v125 = *(v121 + 16);
  v125(v8, v119, v27);
  (*(v121 + 56))(v8, 0, 1, v27);
  v126 = v150;
  v127 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
  swift_beginAccess();
  sub_247DBB388(v8, v2 + v127);
  swift_endAccess();
  v125(v15, v119, v27);
  v128 = v151;

  sub_247D6B278(v126, v128);
  v129 = sub_247DD23AC();
  v130 = sub_247DD2F2C();
  sub_247D6A25C(v126, v128);

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v164[0] = v163;
    *v131 = 136315650;
    v132 = sub_247DD216C();
    v134 = sub_247D72868(v132, v133, v164);

    *(v131 + 4) = v134;
    *(v131 + 12) = 2080;
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0]);
    v135 = v160;
    v136 = sub_247DD321C();
    v138 = v137;
    LODWORD(v162) = v130;
    v139 = *(v159 + 8);
    v140 = v15;
    v141 = v135;
    v139(v140, v135);
    v142 = sub_247D72868(v136, v138, v164);
    v128 = v151;

    *(v131 + 14) = v142;
    *(v131 + 22) = 2080;
    LOBYTE(v166[0]) = *(v21 + v2);
    v143 = TransferClient.State.description.getter();
    v145 = sub_247D72868(v143, v144, v164);

    *(v131 + 24) = v145;
    _os_log_impl(&dword_247D56000, v129, v162, "[FileTransferSetup Response] Finished decryption, remotePublicKey=%s fileTransferServiceUUID=%s state=%s", v131, 0x20u);
    v146 = v163;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v146, -1, -1);
    v126 = v150;
    MEMORY[0x24C1BAF60](v131, -1, -1);
  }

  else
  {

    v139 = *(v159 + 8);
    v147 = v15;
    v141 = v160;
    v139(v147, v160);
  }

  sub_247DB2964();
  sub_247D6A25C(v153, v154);
  sub_247D6A25C(v155, v156);

  sub_247D6A25C(v126, v128);
  v139(v158, v141);
}

void sub_247DB2964()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for NetworkDescriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_247DD2ABC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 16);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v40 = v19;
  LOBYTE(v19) = sub_247DD2ADC();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247DB2E94(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_247D6BAD4(v5, &unk_27EE733B0, &unk_247DD3F80);
    if (qword_27EE73290 == -1)
    {
LABEL_4:
      v20 = sub_247DD23CC();
      __swift_project_value_buffer(v20, qword_27EE7B908);

      v21 = sub_247DD23AC();
      v22 = sub_247DD2F0C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v41 = v24;
        *v23 = 136315138;
        v42 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v25 = TransferClient.State.description.getter();
        v27 = sub_247D72868(v25, v26, &v41);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_247D56000, v21, v22, "[FileTransferSetup] Failed to setup file-transfer-browser, state=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x24C1BAF60](v24, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  sub_247DBAA04(v5, v13, type metadata accessor for NetworkDescriptor);
  sub_247DBAB44(v13, v11, type metadata accessor for NetworkDescriptor);
  v28 = type metadata accessor for CosmoBrowser();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = 0;
  *(v31 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = 0;
  sub_247DBAB44(v11, v31 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, type metadata accessor for NetworkDescriptor);
  v32 = v40;
  sub_247DBAA6C(v11, type metadata accessor for NetworkDescriptor);
  *(v31 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_queue) = v32;
  v33 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser;
  v34 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser);
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser) = v31;

  v35 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v36 = *(v31 + 16);
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_247DBB3F8;
  *(v31 + 24) = v35;

  sub_247D6A24C(v36);

  v42 = 10;
  sub_247DAC1A4(&v42);
  if (*(v1 + v33))
  {
    v38 = *(v1 + v33);

    sub_247D9A43C();
  }

  sub_247DBAA6C(v13, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DB2E94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_247DD225C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2ABC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_247DD2ADC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v20 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity);
  if (v20)
  {
    v21 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8);
    if (v21 >> 60 != 15)
    {
      v22 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8);
      if (v22 >> 60 != 15)
      {
        v23 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
        v42 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
        v43 = v23;
        v24 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
        swift_beginAccess();
        sub_247D6BA6C(v2 + v24, v7, &qword_27EE733A8, &unk_247DD61B0);
        if ((*(v9 + 48))(v7, 1, v8) != 1)
        {
          v35 = *(v9 + 32);
          v35(v12, v7, v8);
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
          v37 = *(v36 + 96);
          v38 = *(v36 + 112);
          *a1 = 0;
          v39 = v42;
          *(a1 + 8) = v43;
          *(a1 + 16) = v22;
          *(a1 + 24) = v39;
          *(a1 + 32) = v21;
          *(a1 + 40) = v20;
          v35((a1 + v37), v12, v8);
          *(a1 + v38) = 1;
          v40 = type metadata accessor for NetworkDescriptor();
          swift_storeEnumTagMultiPayload();
          (*(*(v40 - 8) + 56))(a1, 0, 1, v40);
          swift_unknownObjectRetain();
          sub_247D6B278(v39, v21);
          return sub_247D6B278(v43, v22);
        }

        sub_247D6BAD4(v7, &qword_27EE733A8, &unk_247DD61B0);
      }
    }
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE7B908);

  v26 = sub_247DD23AC();
  v27 = sub_247DD2F0C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = v29;
    *v28 = 136315138;
    v44 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v30 = TransferClient.State.description.getter();
    v32 = sub_247D72868(v30, v31, &v45);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_247D56000, v26, v27, "[FileTransferSetup] Unexpected, missing needed value, state=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x24C1BAF60](v29, -1, -1);
    MEMORY[0x24C1BAF60](v28, -1, -1);
  }

  v33 = type metadata accessor for NetworkDescriptor();
  return (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
}

void sub_247DB3398(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v4 = sub_247DD23CC();
      __swift_project_value_buffer(v4, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v18 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v9 = TransferClient.State.description.getter();
      v11 = sub_247D72868(v9, v10, &v20);

      *(v7 + 4) = v11;
      v12 = "[FileTransferSetup] Advertised file-transfer-endpoint removed, state=%s";
LABEL_12:
      _os_log_impl(&dword_247D56000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
LABEL_13:

      return;
    }

    v13 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
    if (*(Strong + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xAu)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v14 = sub_247DD23CC();
      __swift_project_value_buffer(v14, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v19 = *(v3 + v13);
      v15 = TransferClient.State.description.getter();
      v17 = sub_247D72868(v15, v16, &v20);

      *(v7 + 4) = v17;
      v12 = "[FileTransferSetup] Ignoring add of file-transfer-endpoint, state=%s";
      goto LABEL_12;
    }

    sub_247DB3648();
  }
}

void sub_247DB3648()
{
  v1 = v0;
  v2 = sub_247DD249C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v5 = *(*(v77 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v77);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v76 - v8;
  v76 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  v9 = *(*(v76 - 1) + 64);
  MEMORY[0x28223BE20](v76);
  v83 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for NetworkDescriptor();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v79 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v76 - v24;
  MEMORY[0x28223BE20](v23);
  v84 = &v76 - v26;
  v27 = sub_247DD2ABC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v1 + 16);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v78 = v32;
  LOBYTE(v32) = sub_247DD2ADC();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247DB2E94(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_247D6BAD4(v14, &unk_27EE733B0, &unk_247DD3F80);
    if (qword_27EE73290 == -1)
    {
LABEL_4:
      v33 = sub_247DD23CC();
      __swift_project_value_buffer(v33, qword_27EE7B908);

      v34 = sub_247DD23AC();
      v35 = sub_247DD2F0C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v86 = v37;
        *v36 = 136315138;
        v85[1] = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v38 = TransferClient.State.description.getter();
        v40 = sub_247D72868(v38, v39, &v86);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_247D56000, v34, v35, "[FileTransferSetup] Failed to setup file-transfer-client, state=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x24C1BAF60](v37, -1, -1);
        MEMORY[0x24C1BAF60](v36, -1, -1);
      }

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v41 = v84;
  sub_247DBAA04(v14, v84, type metadata accessor for NetworkDescriptor);
  v42 = [objc_opt_self() defaultManager];
  v43 = [v42 temporaryDirectory];

  v44 = (v83 + v76[5]);
  v45 = v83;
  v46 = v44 + *(v77 + 20);
  sub_247DD20AC();

  *v44 = 15;
  *v45 = 5;
  sub_247DBAB44(v41, v25, type metadata accessor for NetworkDescriptor);
  v47 = type metadata accessor for CosmoMultiplexChannelClient(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 16) = 0;
  v77 = v50 + 16;
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 0;
  v51 = MEMORY[0x277D84F90];
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue) = MEMORY[0x277D84F90];
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests) = v51;
  sub_247DBAB44(v45, v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  v52 = (v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name);
  *v52 = 0xD000000000000014;
  v52[1] = 0x8000000247DDA110;
  v53 = v78;
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue) = v78;
  sub_247DBAB44(v25, v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);
  v54 = v82;
  sub_247DBAB44(v44, v82, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247DBAB44(v25, v22, type metadata accessor for NetworkDescriptor);
  v76 = v53;
  sub_247D873E8(v80);
  sub_247D879F4();
  v55 = sub_247DD26FC();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = sub_247DD265C();
  v59 = v81;
  sub_247DBAB44(v54, v81, type metadata accessor for CosmoHttpConnection.Configuration);
  v60 = v79;
  sub_247DBAB44(v22, v79, type metadata accessor for NetworkDescriptor);
  v61 = type metadata accessor for CosmoHttpConnection(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = sub_247D755C4(v59, v60, 1, v58, v53);

  sub_247DBAA6C(v25, type metadata accessor for NetworkDescriptor);
  sub_247DBAA6C(v83, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247DBAA6C(v22, type metadata accessor for NetworkDescriptor);
  sub_247DBAA6C(v54, type metadata accessor for CosmoHttpConnection.Configuration);
  *(v50 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection) = v64;
  v65 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v66 = *(v64 + 2);
  v67 = *(v64 + 3);
  *(v64 + 2) = sub_247DBB400;
  *(v64 + 3) = v65;

  sub_247D6A24C(v66);

  v68 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient;
  v69 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient);
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) = v50;

  v70 = swift_allocObject();
  swift_weakInit();
  v71 = v77;
  swift_beginAccess();
  v72 = *v71;
  v73 = v71;
  v74 = *(v50 + 24);
  *v73 = sub_247DBB408;
  *(v50 + 24) = v70;

  sub_247D6A24C(v72);

  v85[0] = 11;
  sub_247DAC1A4(v85);
  if (*(v1 + v68))
  {
    v75 = *(v1 + v68);

    sub_247D9D9D0();
  }

  sub_247DBAA6C(v84, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DB3F8C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_247DB3FF8(&v3);
  }

  return result;
}

void sub_247DB3FF8(char *a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v57[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(v3 + 16);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xFu)
  {
    if (qword_27EE73290 == -1)
    {
LABEL_7:
      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B908);

      v17 = sub_247DD23AC();
      v18 = sub_247DD2EEC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v57[0] = v20;
        *v19 = 136315138;
        v58 = *(v3 + v2);
        v21 = TransferClient.State.description.getter();
        v23 = sub_247D72868(v21, v22, v57);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_247D56000, v17, v18, "Disconnect detected, ignoring file-transfer-client state change, state=%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x24C1BAF60](v20, -1, -1);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_7;
  }

  if (v10)
  {
    LOBYTE(v57[0]) = 2;
    v14 = 0xD000000000000020;
    v15 = 0x8000000247DDA130;
LABEL_30:
    sub_247DAEE90(v57, v14, v15);
    return;
  }

  LOBYTE(v57[0]) = 12;
  sub_247DAC1A4(v57);
  v24 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect);
  if (v24 != 18)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v45 = sub_247DD23CC();
    __swift_project_value_buffer(v45, qword_27EE7B908);

    v46 = sub_247DD23AC();
    v47 = sub_247DD2F2C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v57[0] = v49;
      *v48 = 136315394;
      v58 = v24;
      v50 = TransferClient.State.description.getter();
      v52 = sub_247D72868(v50, v51, v57);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v58 = *(v3 + v2);
      v53 = TransferClient.State.description.getter();
      v55 = sub_247D72868(v53, v54, v57);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_247D56000, v46, v47, "Client invoked disconnect in state=%s, satisfying now, state=%s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v49, -1, -1);
      MEMORY[0x24C1BAF60](v48, -1, -1);
    }

    LOBYTE(v57[0]) = 3;
    v15 = 0x8000000247DD9D70;
    v14 = 0xD00000000000001ALL;
    goto LABEL_30;
  }

  sub_247DB47B4();
  v25 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
  if (v25 >> 60 == 15 || (v57[0] = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret), v57[1] = v25, v26 = SharedSecret.protocolVersion.getter(), (v26 & 0x100) != 0))
  {
    v26 = 2;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v27 = sub_247DD23CC();
  __swift_project_value_buffer(v27, qword_27EE7B908);

  v28 = sub_247DD23AC();
  v29 = sub_247DD2F2C();

  v30 = os_log_type_enabled(v28, v29);
  HIDWORD(v56) = v26;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v57[0] = v32;
    *v31 = 16777730;
    *(v31 + 4) = v26;
    *(v31 + 5) = 2080;
    v58 = *(v3 + v2);
    v33 = TransferClient.State.description.getter();
    v35 = sub_247D72868(v33, v34, v57);

    *(v31 + 7) = v35;
    _os_log_impl(&dword_247D56000, v28, v29, "[Lease] Sending lease-request with version=%hhu, state=%s", v31, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x24C1BAF60](v32, -1, -1);
    MEMORY[0x24C1BAF60](v31, -1, -1);
  }

  if (*(v3 + v13))
  {
    v36 = swift_allocObject();
    swift_weakInit();

    sub_247DA76B4(SBYTE4(v56), 0, sub_247DBB410, v36);
  }

  v37 = sub_247DD23AC();
  v38 = sub_247DD2F2C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57[0] = v40;
    *v39 = 136315138;
    v58 = *(v3 + v2);
    v41 = TransferClient.State.description.getter();
    v43 = sub_247D72868(v41, v42, v57);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_247D56000, v37, v38, "[FileList] Requesting list, state=%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x24C1BAF60](v40, -1, -1);
    MEMORY[0x24C1BAF60](v39, -1, -1);
  }

  if (*(v3 + v13))
  {
    v44 = swift_allocObject();
    swift_weakInit();

    sub_247DA79B4(0, sub_247DBB418, v44, &unk_2859E65B0, sub_247DBB420, &block_descriptor_211);
  }

  LOBYTE(v57[0]) = 13;
  sub_247DAC1A4(v57);
}

uint64_t sub_247DB47B4()
{
  v3 = v0;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser))
  {
    return result;
  }

  v1 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    return result;
  }

  v12 = qword_27EE73290;
  v13 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser);

  if (v12 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = sub_247DD23CC();
  __swift_project_value_buffer(v14, qword_27EE7B908);
  v15 = sub_247DD23AC();
  v16 = sub_247DD2F2C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_247D56000, v15, v16, "[Attestation] Closing Browser and attestation-channel", v17, 2u);
    MEMORY[0x24C1BAF60](v17, -1, -1);
  }

  sub_247D9B824();
  v18 = *(v3 + v2);
  *(v3 + v2) = 0;

  sub_247D84D74();

  v19 = *(v3 + v1);
  *(v3 + v1) = 0;
}