uint64_t sub_1AB1A6FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DC8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DD0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

uint64_t sub_1AB1A7450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      type metadata accessor for ClickLocationTracker();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E18);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

unint64_t sub_1AB1A78D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1AB4607C4() != a1 || v9 != a2)
  {
    v10 = sub_1AB461DA4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1AB4606A4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1AB1A79C4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1AB4618F4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1AC59C990](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1AB1A7F0C();
    v8 = sub_1AB4612C4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1AB1A7AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a1 && *i == a2;
    if (v8 || (sub_1AB461DA4() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

Swift::tuple_key_String_value_String_optional __swiftcall CookieIterator.next()()
{
  v1 = v0;
  v2 = sub_1AB45F204();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v0[1];
  if (v10 < *(*v0 + 16))
  {
    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *v0 + 16 * v10;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);

      v14 = sub_1AB1A78D4(61, 0xE100000000000000, v13, v12);
      if (v15)
      {
        v59 = v13;
        v60 = v12;
        sub_1AB0273A8();
        v16 = sub_1AB461454();
        if (v17)
        {
          v18 = v16;
          v19 = v17;

          v13 = v18;
          v12 = v19;
        }

        v8 = 0;
        v9 = 0xE000000000000000;
        v6 = v13;
        v7 = v12;
        goto LABEL_18;
      }

      v55 = v14;
      v56 = v0;
      v20 = sub_1AB4607E4();
      v21 = v2;
      v22 = MEMORY[0x1AC59B960](v20);
      v24 = v23;

      v59 = v22;
      v60 = v24;
      sub_1AB45F1E4();
      sub_1AB0273A8();
      v25 = sub_1AB461424();
      v27 = v26;
      v28 = *(v3 + 8);
      v53 = v21;
      v54 = v3 + 8;
      v52 = v28;
      v28(v5, v21);

      v57 = v25;
      v58 = v27;
      v59 = v25;
      v60 = v27;
      v29 = sub_1AB461454();
      if (v30)
      {
        v31 = v29;
        v32 = v30;

        v57 = v31;
        v58 = v32;
      }

      v1 = v56;
      if ((v12 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v33 = v13 & 0xFFFFFFFFFFFFLL;
      }

      v6 = sub_1AB4606C4();
      if (v7)
      {

        v8 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_17;
      }

      if (4 * v33 >= v6 >> 14)
      {
        v34 = sub_1AB4607E4();
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = MEMORY[0x1AC59B960](v34, v36, v38, v40);
        v43 = v42;

        v59 = v41;
        v60 = v43;
        sub_1AB45F1E4();
        v44 = sub_1AB461424();
        v46 = v45;
        v52(v5, v53);

        v59 = v44;
        v60 = v46;
        v47 = sub_1AB461454();
        if (!v48)
        {
          v6 = v57;
          v7 = v58;
          v8 = v44;
          v9 = v46;
          goto LABEL_18;
        }

        v49 = v47;
        v50 = v48;

        v8 = v49;
        v9 = v50;
LABEL_17:
        v6 = v57;
        v7 = v58;
LABEL_18:
        v1[1] = v10 + 1;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

LABEL_23:
  result.value.value._object = v9;
  result.value.value._countAndFlagsBits = v8;
  result.value.key._object = v7;
  result.value.key._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1AB1A7ED0@<X0>(Swift::tuple_key_String_value_String_optional *a1@<X8>)
{
  v3 = CookieIterator.next()();
  *a1 = v3;
  return v3.value.key._countAndFlagsBits;
}

unint64_t sub_1AB1A7F0C()
{
  result = qword_1EB4373F0;
  if (!qword_1EB4373F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4373F0);
  }

  return result;
}

uint64_t sub_1AB1A7F84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB1A7FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

JetEngine::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1AB461DA4();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

JetEngine::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1AB1A8254()
{
  result = qword_1EB437E20;
  if (!qword_1EB437E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437E20);
  }

  return result;
}

unint64_t sub_1AB1A8310()
{
  result = qword_1EB437E28;
  if (!qword_1EB437E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB437E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437E28);
  }

  return result;
}

uint64_t XPCReceivedMessage.bundleIdentifier.getter()
{
  *v10.val = sub_1AB4600B4();
  *&v10.val[2] = v0;
  v10.val[4] = v1;
  v10.val[5] = v2;
  v10.val[6] = v3;
  v10.val[7] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = SecTaskCopySigningIdentifier(v5, 0);
  if (!v7)
  {
    v8 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_8;
  }

  *v10.val = 0;
  *&v10.val[2] = 0;
  sub_1AB460534();

  if (*&v10.val[2])
  {
    return *v10.val;
  }

LABEL_9:
  type metadata accessor for DaemonError();
  sub_1AB1A84C4();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_1AB1A84C4()
{
  result = qword_1EB432BB8[0];
  if (!qword_1EB432BB8[0])
  {
    type metadata accessor for DaemonError();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB432BB8);
  }

  return result;
}

uint64_t JSPackageIndex.packageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JSPackageIndex.scriptPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for JSPackageIndex() + 20));

  return v1;
}

uint64_t JSPackageIndex.scriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for JSPackageIndex() + 20) + 8))
  {

    return sub_1AB45F664();
  }

  else
  {
    v4 = sub_1AB45F764();
    v5 = *(*(v4 - 8) + 16);

    return v5(a1, v1, v4);
  }
}

uint64_t sub_1AB1A8668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 20) + 8))
  {

    return sub_1AB45F664();
  }

  else
  {
    v5 = sub_1AB45F764();
    v6 = *(*(v5 - 8) + 16);

    return v6(a2, v2, v5);
  }
}

uint64_t ValidatedJetPackLoadingCoordinator.ValidatedJetPackLoadingCoordinatorError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB1A87A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB1A880C()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  (*(v0[39] + 8))(v0[40], v0[38]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB1A891C()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  sub_1AB045284(v0[33]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

unint64_t sub_1AB1A8A3C()
{
  result = qword_1EB432CD8;
  if (!qword_1EB432CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432CD8);
  }

  return result;
}

unint64_t sub_1AB1A8A94()
{
  result = qword_1EB437E70;
  if (!qword_1EB437E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437E70);
  }

  return result;
}

uint64_t sub_1AB1A8AE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AB1A8B30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1AB1A8B9C()
{
  if (qword_1ED4CFE90 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4CFE98;
  qword_1EB437E78 = qword_1ED4CFE98;

  return v1;
}

uint64_t sub_1AB1A8C00(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() currentContext];
  if (v4)
  {
    v5 = v4;
    sub_1AB1A8D78(v4, a1, v1, ObjectType);
    v7 = v6;

    return v7;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

void sub_1AB1A8D78(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1AB087FF4();
  if (v11)
  {
    v12 = v11;
    if (([a2 isNull] & 1) != 0 || (objc_msgSend(a2, sel_isUndefined) & 1) != 0 || objc_msgSend(a2, sel_isString))
    {
      if ([a2 isString] && (v13 = objc_msgSend(a2, sel_toString)) != 0)
      {
        v14 = v13;
        v15 = sub_1AB460544();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      sub_1AB01494C(a3 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory, v28);
      v18 = swift_allocObject();
      sub_1AB0149B0(v28, v18 + 16);
      *(v18 + 56) = v15;
      *(v18 + 64) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E88);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = MEMORY[0x1E69E7CC0];
      *(v19 + 16) = v20;
      *(v19 + 24) = v21;
      *(v19 + 64) = 0;
      v22 = sub_1AB460BE4();
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = &unk_1AB4DA3C0;
      v23[5] = v18;
      v23[6] = v19;

      sub_1AB39BBA8(0, 0, v10, &unk_1AB4DA3D8, v23);

      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = v12;
      v24[4] = a4;
      JSPromise.init(in:executor:)(a1, sub_1AB1A9DD4, v24, v28);
    }

    else
    {
      sub_1AB0C3EF0();
      swift_allocError();
      JSError.init(badValue:expected:)(a2, 0x676E69727473, 0xE600000000000000, v26);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v28[0]) = 1;
    v29 = 1;
    *v25 = 0xD000000000000039;
    *(v25 + 8) = 0x80000001AB501380;
    *(v25 + 16) = 0;
    *(v25 + 24) = 1;
    *(v25 + 32) = 0;
    *(v25 + 40) = 1;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 96) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1AB1A9124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB1A9148, 0, 0);
}

uint64_t sub_1AB1A9148()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1AB1A9278;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1AB1A9278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB1A936C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AB1A9DF4(a2, &v16);
  v10 = swift_allocObject();
  v11 = v17;
  *(v10 + 16) = v16;
  *(v10 + 32) = v11;
  *(v10 + 48) = v18[0];
  *(v10 + 56) = a6;
  sub_1AB1A9DF4(a3, v21);
  v12 = swift_allocObject();
  v13 = v21[1];
  *(v12 + 16) = v21[0];
  *(v12 + 32) = v13;
  *(v12 + 48) = v22;
  *(v12 + 56) = a1;
  *(v12 + 64) = a6;
  v20[3] = type metadata accessor for RunLoopWorkerThread();
  v20[4] = &protocol witness table for RunLoopWorkerThread;
  v20[0] = a5;
  *&v16 = sub_1AB1A9E50;
  *(&v16 + 1) = v10;
  *&v17 = sub_1AB1A9E5C;
  *(&v17 + 1) = v12;
  sub_1AB01494C(v20, v18);
  v19 = 0;
  v14 = a1;

  sub_1AB195040(&v16);

  sub_1AB014AC0(&v16, &unk_1EB4376E0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

void sub_1AB1A94E0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  *(v2 + 56) = swift_getObjectType();
  *(v2 + 32) = v5;
  isa = JSCallable.call(withArguments:)(v2).super.isa;

  if (v6.super.isa)
  {
    if (qword_1EB435CB0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB437E78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v17 = MEMORY[0x1E69E6158];
    v16[0] = 0xD00000000000003ALL;
    v16[1] = 0x80000001AB501400;
    *(v9 + 48) = 0u;
    *(v9 + 32) = 0u;
    sub_1AB0169C4(v16, v9 + 32);
    *(v9 + 64) = 0;
    *(v8 + 32) = v9;
    swift_getErrorValue();
    v17 = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v14, v15);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(v16, v13);
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4(v13, v11 + 32);
    *(v11 + 64) = 0;
    *(v8 + 40) = v11;
    sub_1AB014AC0(v16, &unk_1EB437E60);
    v16[0] = v7;
    v13[0] = 0;
    OSLogger.log(contentsOf:withLevel:)(v8, v13);
  }

  else
  {
  }
}

void sub_1AB1A9794(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v6 = a1;
  sub_1AB1E1568(a1, v29);
  v26 = v29[4];
  v27 = v29[5];
  v28 = v30;
  v22 = v29[0];
  v23 = v29[1];
  v24 = v29[2];
  v25 = v29[3];
  JSError.jsRepresentation(in:)(a3, v19);
  v7 = v20;
  v8 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v14 = (*(v8 + 16))(a3, v7, v8);
  sub_1AB1A9E68(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  *(v5 + 56) = sub_1AB054C38();
  *(v5 + 32) = v14;
  v15.super.isa = JSCallable.call(withArguments:)(v5).super.isa;
  if (v16.super.isa)
  {

    if (qword_1EB435CB0 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB437E78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    *(&v23 + 1) = MEMORY[0x1E69E6158];
    *&v22 = 0xD000000000000039;
    *(&v22 + 1) = 0x80000001AB5013C0;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    sub_1AB0169C4(&v22, v11 + 32);
    *(v11 + 64) = 0;
    *(v10 + 32) = v11;
    swift_getErrorValue();
    *(&v23 + 1) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(&v22, v19);
    *(v13 + 48) = 0u;
    *(v13 + 32) = 0u;
    sub_1AB0169C4(v19, v13 + 32);
    *(v13 + 64) = 0;
    *(v10 + 40) = v13;
    sub_1AB014AC0(&v22, &unk_1EB437E60);
    *&v22 = v9;
    LOBYTE(v19[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v10, v19);
  }

  else
  {
    isa = v15.super.isa;
  }
}

id sub_1AB1A9B90(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v8 = objc_allocWithZone(a2);
  sub_1AB01494C(v12, v8 + OBJC_IVAR____TtC9JetEngine24JSLocalizerFactoryObject_localizerFactory);
  v11.receiver = v8;
  v11.super_class = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v9;
}

uint64_t sub_1AB1A9C48(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027460;

  return sub_1AB1A9124(a1, v1 + 16, v4, v5);
}

uint64_t sub_1AB1A9CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB3993B0(a1, v4, v5, v6, v7, v8);
}

uint64_t static PipelinePhase<>.convertToJSSource()@<X0>(void *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_1AB1A9F18;
  *(result + 24) = 0;
  *a1 = sub_1AB1A9F9C;
  a1[1] = result;
  return result;
}

void *sub_1AB1A9F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a1 + 88))();
  v5 = sub_1AB1A9FA4(a2, a3);

  return v5;
}

void *sub_1AB1A9FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v15 = &type metadata for SyncTaskScheduler;
  v16 = &protocol witness table for SyncTaskScheduler;
  *(v11 - v5) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E90);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v7[2] = v8;
  sub_1AB1AA18C(v6, v7 + *(*v7 + 96));
  sub_1AB01494C(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  sub_1AB0149B0(v13, (v9 + 5));
  v11[0] = sub_1AB1AA1FC;
  v11[1] = v9;
  v11[2] = sub_1AB1AA214;
  v11[3] = v7;
  sub_1AB01494C(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1AB19520C(v11);

  sub_1AB1AA21C(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v7;
}

uint64_t sub_1AB1AA18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB1AA21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AB1AA284(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for JSSource();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = sub_1AB45F764();
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  *v12 = v20;
  *(v12 + 1) = a2;

  sub_1AB45F634();
  v15(v8, 0, 1, v14);
  sub_1AB04F3C8(v8, &v12[v13]);
  sub_1AB1AA4EC(v12, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E90);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_1AB1AA550(v12);
  v16[2] = v17;
  sub_1AB1AA18C(v5, v16 + *(*v16 + 96));
  return v16;
}

uint64_t sub_1AB1AA4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB1AA550(uint64_t a1)
{
  v2 = type metadata accessor for JSSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB1AA5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LazyValueWrapper.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v12 - v8);
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_1AB039C08();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v10;
  return result;
}

uint64_t LazyValueWrapper.description.getter(uint64_t a1)
{
  v2 = *v1;
  v4[2] = *(a1 + 16);
  type metadata accessor for LazyValueWrapper.State();
  sub_1AB01A1F0(sub_1AB1AA9E0, v4, v2);
  return v4[4];
}

void sub_1AB1AA730(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LazyValueWrapper.State();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v20 - v10);
  (*(v12 + 16))(v20 - v10, a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v16 = *v11;
    v17 = v11[1];
    v21 = 0x646564616F6C6E75;
    v22 = 0xE900000000000028;
    v20[0] = v16;
    v20[1] = v17;
    swift_getFunctionTypeMetadata0();

    v18 = sub_1AB4605E4();
    MEMORY[0x1AC59BA20](v18);

    MEMORY[0x1AC59BA20](41, 0xE100000000000000);

LABEL_6:
    v14 = v21;
    v15 = v22;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v19 = *v11;
    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x1AC59BA20](0x2864696C61766E69, 0xE800000000000000);
    swift_getErrorValue();
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](41, 0xE100000000000000);

    goto LABEL_6;
  }

  (*(v6 + 32))(v8, v11, a2);
  v21 = 0;
  v22 = 0xE000000000000000;
  MEMORY[0x1AC59BA20](0x28646564616F6CLL, 0xE700000000000000);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  v14 = v21;
  v15 = v22;
  (*(v6 + 8))(v8, a2);
LABEL_7:
  *a3 = v14;
  a3[1] = v15;
}

uint64_t sub_1AB1AAA00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AB1AAB18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AB1AACD0()
{
  v1 = *(v0 + 8);
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB460684();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
  }

  return sub_1AB462104();
}

uint64_t sub_1AB1AAD40()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1AC59D3F0](0);
  }

  MEMORY[0x1AC59D3F0](1);

  return sub_1AB460684();
}

uint64_t sub_1AB1AADB8()
{
  v1 = *(v0 + 8);
  sub_1AB4620A4();
  if (v1)
  {
    MEMORY[0x1AC59D3F0](1);
    sub_1AB460684();
  }

  else
  {
    MEMORY[0x1AC59D3F0](0);
  }

  return sub_1AB462104();
}

uint64_t sub_1AB1AAE24(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1AB461DA4();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

JetEngine::DynamicImpressionsTracker::Configuration __swiftcall DynamicImpressionsTracker.Configuration.init(impressionTimeThreshold:queueName:)(Swift::Double impressionTimeThreshold, Swift::String queueName)
{
  *v2 = impressionTimeThreshold;
  *(v2 + 8) = queueName;
  result.queueName = queueName;
  result.impressionTimeThreshold = impressionTimeThreshold;
  return result;
}

void *DynamicImpressionsTracker.init(_:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v1[2] = *a1;
  v1[3] = v2;
  v1[4] = v3;
  v4 = type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v5 = sub_1AB059040();
  v6 = MEMORY[0x1AC59B670](20, &type metadata for ImpressionMetrics.ID, v4, v5);
  v7 = MEMORY[0x1E69E7CC0];
  v1[5] = v6;
  v1[6] = v7;
  v1[7] = MEMORY[0x1E69E7CC8];
  return v1;
}

uint64_t DynamicImpressionsTracker.elementDidEnterView(_:on:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v35 = *(a1 + 56);
  v36 = *(a1 + 72);
  v37[0] = v5;
  *&v29 = v5;
  *(&v29 + 1) = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v37[1] = v4;
  v37[2] = v6;
  v37[3] = v7;
  v37[4] = v8;
  v37[5] = v9;
  v37[6] = v10;
  swift_beginAccess();
  v11 = *(v2 + 56);
  if (*(v11 + 16))
  {
    if (v4)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1AB07926C(v12, v4);
    v15 = v14;

    if ((v15 & 1) != 0 && (v16 = *(*(v11 + 56) + 8 * v13), *(v16 + 16)))
    {

      v17 = sub_1AB077384(v37);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);
      }

      else
      {
        v19 = 0;
      }

      v20 = v18 ^ 1;
    }

    else
    {
      v19 = 0;
      v20 = 1;
    }
  }

  else
  {
    v19 = 0;
    v20 = 1;
  }

  swift_endAccess();
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v27[2] = xmmword_1EB43D608;
  v27[3] = unk_1EB43D618;
  v27[4] = xmmword_1EB43D628;
  v27[0] = xmmword_1EB43D5E8;
  v27[1] = *&qword_1EB43D5F8;
  v24 = xmmword_1EB43D608;
  v25 = unk_1EB43D618;
  v26 = xmmword_1EB43D628;
  v22 = xmmword_1EB43D5E8;
  v23 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v27, v28);
  DynamicImpressionsTracker.elementDidEnterView(_:on:at:with:)(&v29, a2, v19, v20 & 1, &v22);
  v28[2] = v24;
  v28[3] = v25;
  v28[4] = v26;
  v28[0] = v22;
  v28[1] = v23;
  return sub_1AB079CF0(v28);
}

uint64_t DynamicImpressionsTracker.elementDidEnterView(_:on:at:with:)(__int128 *a1, uint64_t a2, void *a3, int a4, __int128 *a5)
{
  v11 = sub_1AB45F9B4();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v114 = a1[2];
  v115 = v13;
  v116 = a1[4];
  v14 = a1[1];
  v112 = *a1;
  v113 = v14;
  v15 = a5[3];
  v119 = a5[2];
  v120 = v15;
  v121 = a5[4];
  v16 = a5[1];
  v117 = *a5;
  v118 = v16;
  v17 = *(&v112 + 1);
  v18 = *(&v113 + 1);
  v19 = v115;
  v99 = v112;
  v108 = v112;
  v101 = v113;
  v109 = v113;
  v94 = v114;
  v110 = v114;
  v97 = *(&v114 + 1);
  v111 = v115;
  swift_beginAccess();
  v87 = v5;
  v20 = *(*(v5 + 40) + 16);
  v100 = v19;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v105 = v18;
  swift_bridgeObjectRetain_n();
  if (v20)
  {
    sub_1AB077384(&v108);
    if (v21)
    {
      swift_endAccess();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_retain_n();
      goto LABEL_59;
    }
  }

  swift_endAccess();
  v22 = *(&v115 + 1);
  type metadata accessor for ImpressionsTracking.AppearanceJournal();
  v23 = swift_allocObject();
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0u;
  *(v23 + 120) = 0u;
  *(v23 + 136) = 0;
  *(v23 + 144) = 1;
  v24 = v109;
  *(v23 + 16) = v108;
  *(v23 + 32) = v24;
  *(v23 + 48) = v110;
  *(v23 + 64) = v111;
  *(v23 + 72) = v22;
  *(v23 + 80) = MEMORY[0x1E69E7CC0];
  v25 = v87;
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(v25 + 40);
  *(v25 + 40) = 0x8000000000000000;
  sub_1AB078820(v23, &v108, isUniquelyReferenced_nonNull_native);

  *(v25 + 40) = v106;
  swift_endAccess();
  if (a4)
  {

    goto LABEL_59;
  }

  v83 = a3;
  swift_beginAccess();
  v27 = *(v25 + 48);
  v82 = a2;
  v81 = a4;
  v80 = v23;
  if (v27 >> 62)
  {
    goto LABEL_61;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v29 = v27;

  if (v28)
  {
    v30 = 0;
    v95 = v27 & 0xFFFFFFFFFFFFFF8;
    v96 = v27 & 0xC000000000000001;
    v91 = v28;
    v92 = v27;
    v98 = v17;
    do
    {
      if (v96)
      {
        v33 = MEMORY[0x1AC59C990](v30, v29);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_53:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v30 >= *(v95 + 16))
        {
          __break(1u);
LABEL_61:
          v28 = sub_1AB4618F4();
          goto LABEL_8;
        }

        v33 = *(v29 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_53;
        }
      }

      v34 = v33[6];
      if (v34)
      {
        v104 = v32;
        v35 = v33[8];
        v27 = v33[9];
        v36 = v33[7];
        v37 = v33;
        v40 = v33 + 4;
        v38 = v33[4];
        v39 = v40[1];
        v102 = v30;
        v103 = v37;
        v41 = v37[3];

        v42 = v105;
        v43 = v34;
        if (!v105)
        {
          v31 = v39;
          v17 = v98;

          sub_1AB1B0308(v41, v38, v31, v43);

LABEL_11:

          sub_1AB1B02B8(v41, v38, v31, v43);
          sub_1AB1B02B8(v99, v17, v101, v105);
          v28 = v91;
          v29 = v92;
          v32 = v104;
          v30 = v102;
          goto LABEL_12;
        }

        v93 = v41;
        v90 = v36;
        if (v39 != v101 || v34 != v105)
        {
          v44 = sub_1AB461DA4();
          v42 = v105;
          if ((v44 & 1) == 0)
          {
            v88 = v39;
            v89 = v35;
            v57 = v98;

            v46 = v93;
            sub_1AB1B0308(v93, v38, v39, v43);
            v49 = v99;
            v50 = v57;
            v51 = v101;
            v52 = v42;
            v45 = v88;
            goto LABEL_42;
          }
        }

        v45 = v39;
        v89 = v38;
        v46 = v93;
        if (v38)
        {
          v47 = v98;
          if (!v98)
          {

            v38 = v89;
            sub_1AB1B0308(v46, v89, v45, v43);
            v49 = v99;
            v50 = 0;
            v51 = v101;
            v52 = v42;
            goto LABEL_42;
          }

          if (v93 != v99 || v89 != v98)
          {
            v48 = sub_1AB461DA4();
            v42 = v105;
            if ((v48 & 1) == 0)
            {

              v38 = v89;
              sub_1AB1B0308(v46, v89, v45, v43);
              v49 = v99;
              v50 = v47;
              v51 = v101;
              v52 = v105;
              goto LABEL_42;
            }
          }
        }

        else
        {
          v53 = v98;
          if (v98)
          {

            sub_1AB1B0308(v46, 0, v45, v43);
            sub_1AB1B02B8(v99, v53, v101, v42);
            v38 = v89;
            goto LABEL_43;
          }
        }

        v54 = v43;
        if (v27)
        {
          if (!v100)
          {
            v58 = v98;

            v38 = v89;
            v46 = v93;
            sub_1AB1B0308(v93, v89, v45, v43);
            v49 = v99;
            v50 = v58;
            v51 = v101;
            v52 = v42;
LABEL_42:
            sub_1AB1B02B8(v49, v50, v51, v52);
LABEL_43:

            sub_1AB1B02B8(v46, v38, v45, v43);
            v17 = v98;
            v28 = v91;
            v29 = v92;
            v32 = v104;
            v30 = v102;
LABEL_44:

            goto LABEL_12;
          }

          v88 = v45;
          if (v35 != v97 || v27 != v100)
          {
            v27 = v35;
            v79 = sub_1AB461DA4();
            v17 = v98;

            v59 = v105;

            v60 = v93;
            v61 = v88;
            v62 = v89;
            sub_1AB1B0308(v93, v89, v88, v54);
            sub_1AB1B02B8(v99, v17, v101, v59);

            sub_1AB1B02B8(v60, v62, v61, v54);
            v28 = v91;
            v29 = v92;
            v33 = v103;
            v32 = v104;
            v30 = v102;
            if ((v79 & 1) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_49;
          }

          v42 = v105;

          v55 = v93;
          v56 = v89;
          sub_1AB1B0308(v93, v89, v88, v43);
        }

        else
        {

          if (v100)
          {

            v38 = v89;
            v46 = v93;
            sub_1AB1B0308(v93, v89, v45, v43);
            v50 = v98;
            v49 = v99;
            v51 = v101;
            v52 = v42;
            goto LABEL_42;
          }

          v88 = v45;

          v55 = v93;
          v56 = v89;
          sub_1AB1B0308(v93, v89, v88, v43);
        }

        v63 = v98;
        sub_1AB1B02B8(v99, v98, v101, v42);

        sub_1AB1B02B8(v55, v56, v88, v43);
        v17 = v63;
        v28 = v91;
        v29 = v92;
        v33 = v103;
        v32 = v104;
        v30 = v102;
      }

      else
      {
        v93 = 0;

        if (v105)
        {
          v102 = v30;
          v103 = v33;
          v104 = v32;

          v27 = 0;
          v31 = 0;
          v38 = 0;
          v41 = 0;
          v43 = v93;
          goto LABEL_11;
        }

        sub_1AB1B02B8(0, 0, 0, 0);
      }

LABEL_49:
      v27 = v33[13];

      os_unfair_lock_lock((v27 + 20));
      v64 = *(v27 + 16);
      os_unfair_lock_unlock((v27 + 20));

      if (!v64)
      {

        a2 = v82;
        a3 = v83;
        LOBYTE(a4) = v81;
        goto LABEL_59;
      }

LABEL_12:
      ++v30;
    }

    while (v32 != v28);
  }

  a3 = v83;
  v65 = v87;
  sub_1AB078834(&v108, v83, v107);

  LOBYTE(a4) = v81;
  if (LOBYTE(v107[0]))
  {
    a2 = v82;
  }

  else
  {
    v66 = v84;
    _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v67 = objc_opt_self();
    v68 = sub_1AB45F914();
    v69 = [v67 serverTimeFromDate_];

    (*(v85 + 8))(v66, v86);
    [v69 doubleValue];
    v71 = v70;

    type metadata accessor for ImpressionsTracking.DynamicChange();
    v72 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E98);
    v73 = swift_allocObject();
    *(v72 + 16) = v71;
    v74 = v112;
    *(v72 + 40) = v113;
    v75 = v115;
    *(v72 + 56) = v114;
    *(v72 + 72) = v75;
    *(v72 + 88) = v116;
    *(v73 + 20) = 0;
    *(v73 + 16) = 0;
    *(v72 + 24) = v74;
    *(v72 + 104) = v73;
    *(v72 + 112) = 0;
    swift_beginAccess();
    v76 = sub_1AB077170(&v112, v107);
    MEMORY[0x1AC59BC60](v76);
    a2 = v82;
    if (*((*(v65 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v65 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AB460994();
    }

    sub_1AB4609E4();
    swift_endAccess();
  }

LABEL_59:
  v107[2] = v119;
  v107[3] = v120;
  v107[4] = v121;
  v107[0] = v117;
  v107[1] = v118;
  sub_1AB228D48(a2, a3, a4 & 1, v107);
}

uint64_t DynamicImpressionsTracker.elementDidLeaveView(_:on:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_1EB43D608;
  v10[3] = unk_1EB43D618;
  v10[4] = xmmword_1EB43D628;
  v10[0] = xmmword_1EB43D5E8;
  v10[1] = *&qword_1EB43D5F8;
  v7 = xmmword_1EB43D608;
  v8 = unk_1EB43D618;
  v9 = xmmword_1EB43D628;
  v5 = xmmword_1EB43D5E8;
  v6 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v10, v11);
  DynamicImpressionsTracker.elementDidLeaveView(_:on:with:)(a1, a2, &v5);
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[0] = v5;
  v11[1] = v6;
  return sub_1AB079CF0(v11);
}

uint64_t DynamicImpressionsTracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16))
  {
    return swift_endAccess();
  }

  sub_1AB077384(v12);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v8 = a3[3];
  v11[2] = a3[2];
  v11[3] = v8;
  v11[4] = a3[4];
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;

  sub_1AB2292C0(a2, v11);
}

uint64_t DynamicImpressionsTracker.didDeleteElement(_:on:)(__int128 *a1)
{
  v2 = v1;
  v4 = a1[3];
  v83 = a1[2];
  v84 = v4;
  v85 = a1[4];
  v5 = a1[1];
  v81 = *a1;
  v82 = v5;
  v6 = objc_opt_self();
  v7 = sub_1AB45F914();
  v8 = [v6 serverTimeFromDate_];

  [v8 doubleValue];
  v10 = v9;

  type metadata accessor for ImpressionsTracking.DynamicChange();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E98);
  v12 = swift_allocObject();
  *(v11 + 16) = v10;
  v13 = *a1;
  *(v11 + 40) = a1[1];
  v14 = a1[3];
  *(v11 + 56) = a1[2];
  *(v11 + 72) = v14;
  *(v11 + 88) = a1[4];
  *(v12 + 20) = 0;
  *(v12 + 16) = 2;
  *(v11 + 24) = v13;
  *(v11 + 104) = v12;
  *(v11 + 112) = 0;
  swift_beginAccess();
  v15 = sub_1AB077170(&v81, v76);
  MEMORY[0x1AC59BC60](v15);
  if (*((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    sub_1AB4609E4();
    swift_endAccess();
    v16 = v81;
    v18 = *(&v82 + 1);
    v17 = v82;
    v19 = v84;
    v76[0] = v81;
    v76[1] = v82;
    v76[2] = v83;
    v73 = *(&v83 + 1);
    if (*(&v81 + 1))
    {
      v20 = v81;
    }

    else
    {
      v20 = 0;
    }

    v77 = v84;
    swift_beginAccess();
    v21 = *(v2 + 56);
    if (!*(v21 + 16))
    {
      return swift_endAccess();
    }

    swift_bridgeObjectRetain_n();
    v22 = sub_1AB07926C(v20, *(&v16 + 1));
    v24 = v23;

    if ((v24 & 1) == 0)
    {

      return swift_endAccess();
    }

    v25 = *(*(v21 + 56) + 8 * v22);
    swift_endAccess();
    if (!*(v25 + 16))
    {
    }

    v26 = sub_1AB077384(v76);
    if ((v27 & 1) == 0)
    {
      break;
    }

    v71 = v25;
    v72 = v18;
    v28 = 0;
    v29 = v25 + 64;
    v65 = *(*(v25 + 56) + 8 * v26);
    v66 = v20;
    v30 = 1 << *(v25 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v25 + 64);
    v33 = (v30 + 63) >> 6;
    v67 = MEMORY[0x1E69E7CC8];
    while (v32)
    {
LABEL_18:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = v35 | (v28 << 6);
      v37 = *(v71 + 56);
      v38 = *(v71 + 48) + 56 * v36;
      v39 = *v38;
      v40 = *(v38 + 16);
      v41 = *(v38 + 32);
      v42 = *(v38 + 48);
      v79 = v40;
      v80[0] = v41;
      *&v80[1] = v42;
      v78 = v39;
      v70 = *(v37 + 8 * v36);
      if (v40 == __PAIR128__(v72, v17) || (sub_1AB461DA4() & 1) != 0)
      {
        if (*(&v78 + 1))
        {
          if (!*(&v16 + 1) || v78 != v16 && (sub_1AB461DA4() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (*(&v16 + 1))
        {
          goto LABEL_30;
        }

        if (*&v80[1])
        {
          if (!v19 || *(v80 + 8) != __PAIR128__(v19, v73) && (sub_1AB461DA4() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v19)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_30:
        sub_1AB077970(&v78, &v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v67;
        v44 = sub_1AB077384(&v78);
        v45 = *(v67 + 16);
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          result = sub_1AB461FC4();
          __break(1u);
          return result;
        }

        if (*(v67 + 24) >= v47)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = v44;
            v69 = v43;
            sub_1AB1D8218();
            v43 = v69;
            v44 = v64;
          }
        }

        else
        {
          v68 = v43;
          sub_1AB1D2A9C(v47, isUniquelyReferenced_nonNull_native);
          v48 = sub_1AB077384(&v78);
          v50 = v49 & 1;
          v43 = v68;
          if ((v68 & 1) != v50)
          {
            goto LABEL_49;
          }

          v44 = v48;
        }

        v51 = v70 - (v65 < v70);
        if (v43)
        {
          v63 = v44;
          sub_1AB1B0358(&v78);
          v67 = v75;
          *(v75[7] + 8 * v63) = v51;
        }

        else
        {
          v52 = v75;
          v75[(v44 >> 6) + 8] |= 1 << v44;
          v53 = v52[6] + 56 * v44;
          v54 = *&v80[1];
          v56 = v79;
          v55 = v80[0];
          *v53 = v78;
          *(v53 + 16) = v56;
          *(v53 + 32) = v55;
          *(v53 + 48) = v54;
          *(v52[7] + 8 * v44) = v51;
          v57 = v52[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_48;
          }

          v67 = v52;
          v52[2] = v59;
        }
      }
    }

    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        swift_beginAccess();
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v2 + 56);
        *(v2 + 56) = 0x8000000000000000;
        sub_1AB0790CC(v67, v66, *(&v16 + 1), v61);

        *(v2 + 56) = v74;
        return swift_endAccess();
      }

      v32 = *(v29 + 8 * v34);
      ++v28;
      if (v32)
      {
        v28 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    sub_1AB460994();
  }
}

uint64_t DynamicImpressionsTracker.didMoveElement(_:on:to:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[1];
  *v116 = *a1;
  *&v116[16] = v6;
  v7 = a1[3];
  v117 = a1[2];
  v118 = v7;
  v119 = a1[4];
  v108 = *&v116[8];
  v107 = *v116;
  v109 = *(&v6 + 1);
  v110 = v117;
  v111 = v7;
  v8 = *&v116[8];
  if (*&v116[8])
  {
    v9 = *v116;
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  v10 = *(v3 + 56);
  v11 = *(v10 + 16);

  if (v11 && (v12 = sub_1AB07926C(v9, *&v116[8]), (v13 & 1) != 0) && (v14 = *(*(v10 + 56) + 8 * v12), *(v14 + 16)))
  {

    v15 = sub_1AB077384(&v107);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
    }

    else
    {
      v17 = 0;
    }

    v103 = v17;
    v18 = v16 ^ 1;
  }

  else
  {
    v103 = 0;
    v18 = 1;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x7469736F50646E65;
  v20 = inited + 32;
  v21 = MEMORY[0x1E69E6530];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = a3;
  v22 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v20, &qword_1EB439AA0);
  swift_beginAccess();
  v23 = *(v4 + 56);
  if (!*(v23 + 16) || (v24 = sub_1AB07926C(v9, v8), (v25 & 1) == 0))
  {
    swift_endAccess();

    goto LABEL_17;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  if (v18 & 1 | (v103 == a3))
  {
    v27 = v22;
    swift_beginAccess();
    v29 = sub_1AB1ACD38(&v104, v9, v8);
    if (*v28)
    {
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = *v30;
      *v30 = 0x8000000000000000;
      sub_1AB1D59D4(a3, &v107, isUniquelyReferenced_nonNull_native);
      *v30 = v106;
    }

    (v29)(&v104, 0);
    swift_endAccess();

    v22 = v27;
LABEL_17:
    v32 = objc_opt_self();
    v33 = sub_1AB45F914();
    v34 = [v32 serverTimeFromDate_];

    [v34 doubleValue];
    v36 = v35;

    type metadata accessor for ImpressionsTracking.DynamicChange();
    v37 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E98);
    v38 = swift_allocObject();
    *(v37 + 16) = v36;
    v39 = *v116;
    *(v37 + 40) = *&v116[16];
    v40 = v118;
    *(v37 + 56) = v117;
    *(v37 + 72) = v40;
    *(v37 + 88) = v119;
    *(v38 + 20) = 0;
    *(v38 + 16) = 1;
    *(v37 + 24) = v39;
    *(v37 + 104) = v38;
    *(v37 + 112) = v22;
    swift_beginAccess();
    v41 = sub_1AB077170(v116, &v104);
    MEMORY[0x1AC59BC60](v41);
    if (*((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_65;
    }

    goto LABEL_18;
  }

  v105 = v21;
  *&v104 = v103;
  sub_1AB014B78(&v104, &v112);

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v22;
  sub_1AB01AE18(&v112, 0x736F507472617473, 0xED00006E6F697469, v43);
  v102 = a3;
  v44 = v103;
  v45 = v26;
  if (v103 > a3)
  {
    goto LABEL_23;
  }

  v102 = v103 + 1;
  if (__OFADD__(v103, 1))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v44 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    result = sub_1AB461FC4();
    __break(1u);
    return result;
  }

  if (v44 < v102)
  {
    goto LABEL_73;
  }

LABEL_23:
  v97 = v106;
  v46 = 0;
  v47 = v26 + 64;
  v48 = 1 << *(v26 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v26 + 64);
  v51 = (v48 + 63) >> 6;
  v52 = MEMORY[0x1E69E7CC8];
  v100 = a3;
  v101 = v9;
  v98 = v44;
  v99 = v26;
  while (v50)
  {
    v54 = v46;
LABEL_33:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = v55 | (v54 << 6);
    v57 = *(v45 + 56);
    v58 = *(v45 + 48) + 56 * v56;
    v60 = *(v58 + 16);
    v59 = *(v58 + 32);
    v61 = *v58;
    v62 = *(v58 + 48);
    v113 = v60;
    v114 = v59;
    v112 = v61;
    v115 = v62;
    v63 = *(v57 + 8 * v56);
    if (v63 >= v102 && v63 < v44)
    {
      if (v103 <= a3)
      {
        v70 = __OFSUB__(v63--, 1);
        if (v70)
        {
          goto LABEL_68;
        }
      }

      else
      {
        ++v63;
      }

      sub_1AB077970(&v112, &v104);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v104 = v52;
      v66 = sub_1AB077384(&v112);
      v76 = v52[2];
      v77 = (v75 & 1) == 0;
      v70 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v70)
      {
        goto LABEL_67;
      }

      v79 = v75;
      if (v52[3] < v78)
      {
        sub_1AB1D2A9C(v78, v74);
        v66 = sub_1AB077384(&v112);
        if ((v79 & 1) != (v80 & 1))
        {
          goto LABEL_74;
        }

        goto LABEL_54;
      }

      if (v74)
      {
LABEL_54:
        v9 = v101;
        if (v79)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v93 = v66;
        sub_1AB1D8218();
        v66 = v93;
        v9 = v101;
        if (v79)
        {
LABEL_26:
          v53 = v66;
          sub_1AB1B0358(&v112);
          v52 = v104;
          *(*(v104 + 56) + 8 * v53) = v63;
          goto LABEL_27;
        }
      }

      v52 = v104;
      *(v104 + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v87 = v52[6] + 56 * v66;
      v88 = v115;
      v90 = v113;
      v89 = v114;
      *v87 = v112;
      *(v87 + 16) = v90;
      *(v87 + 32) = v89;
      *(v87 + 48) = v88;
      *(v52[7] + 8 * v66) = v63;
      v91 = v52[2];
      v70 = __OFADD__(v91, 1);
      v86 = v91 + 1;
      if (v70)
      {
        goto LABEL_70;
      }

      goto LABEL_56;
    }

    sub_1AB077970(&v112, &v104);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *&v104 = v52;
    v66 = sub_1AB077384(&v112);
    v68 = v52[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v72 = v67;
    if (v52[3] >= v71)
    {
      if ((v65 & 1) == 0)
      {
        v92 = v66;
        sub_1AB1D8218();
        v66 = v92;
        v9 = v101;
        if (v72)
        {
          goto LABEL_26;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_1AB1D2A9C(v71, v65);
      v66 = sub_1AB077384(&v112);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_74;
      }
    }

    v9 = v101;
    if (v72)
    {
      goto LABEL_26;
    }

LABEL_50:
    v52 = v104;
    *(v104 + 8 * (v66 >> 6) + 64) |= 1 << v66;
    v81 = v52[6] + 56 * v66;
    v82 = v115;
    v84 = v113;
    v83 = v114;
    *v81 = v112;
    *(v81 + 16) = v84;
    *(v81 + 32) = v83;
    *(v81 + 48) = v82;
    *(v52[7] + 8 * v66) = v63;
    v85 = v52[2];
    v70 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v70)
    {
      goto LABEL_69;
    }

LABEL_56:
    v52[2] = v86;
LABEL_27:
    v46 = v54;
    v45 = v99;
    a3 = v100;
    v44 = v98;
  }

  while (1)
  {
    v54 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v54 >= v51)
    {

      v94 = swift_isUniquelyReferenced_nonNull_native();
      *&v104 = v52;
      sub_1AB1D59D4(a3, &v107, v94);
      v95 = v104;
      swift_beginAccess();
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v106 = *(v4 + 56);
      *(v4 + 56) = 0x8000000000000000;
      sub_1AB0790CC(v95, v9, v8, v96);

      *(v4 + 56) = v106;
      swift_endAccess();
      v22 = v97;
      goto LABEL_17;
    }

    v50 = *(v47 + 8 * v54);
    ++v46;
    if (v50)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_65:
  sub_1AB460994();
LABEL_18:
  sub_1AB4609E4();
  return swift_endAccess();
}

void (*sub_1AB1ACD38(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AB1B03AC(v6, a2, a3);
  return sub_1AB1ACDC0;
}

void sub_1AB1ACDC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DynamicImpressionsTracker.snapshotOnScreenImpressions(in:on:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  v54 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  sub_1AB1AD250(*(*(v3 + 5) + 16));
  v6 = *(v3 + 5);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v2 = *(*(v6 + 56) + ((v12 << 9) | (8 * v14)));
    swift_beginAccess();
    v15 = *(v2 + 80);
    v16 = *(v15 + 16);
    if (!v16 || (*(v15 + 32 * v16) & 1) == 0)
    {
      v17 = swift_retain_n();
      MEMORY[0x1AC59BC60](v17);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AB460994();
      }

      sub_1AB4609E4();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v10 = *(v3 + 3);
  v44 = *(v3 + 4);
  v7 = v54;
  v4 = v3[2];
  v53 = v5;
  swift_beginAccess();
  v2 = *(v3 + 6);
  if (!(v2 >> 62))
  {
    v51 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_43:
  v51 = v2 & 0xFFFFFFFFFFFFFF8;
  v18 = sub_1AB4618F4();
LABEL_16:

  if (!v18)
  {
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v19 = 0;
  v50 = v2 & 0xC000000000000001;
  v46 = MEMORY[0x1E69E7CC0];
  v42 = v10;
  v43 = v7;
  v48 = v18;
  v49 = v2;
  do
  {
    v10 = v19;
    while (1)
    {
      if (v50)
      {
        v20 = MEMORY[0x1AC59C990](v10, v2);
        v21 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v10 >= *(v51 + 16))
        {
          goto LABEL_42;
        }

        v20 = *(v2 + 8 * v10 + 32);

        v21 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_41;
        }
      }

      v7 = v20[6];
      if (v7)
      {
        break;
      }

LABEL_20:
      ++v10;
      if (v21 == v18)
      {
        v10 = v42;
        v7 = v43;
        goto LABEL_39;
      }
    }

    v52 = v21;
    v22 = v20[9];
    v47 = v20[8];
    v23 = v20[7];
    v24 = v20[4];
    v25 = v20[5];
    v26 = v20[3];
    v27 = v20[13];

    os_unfair_lock_lock((v27 + 20));
    v28 = *(v27 + 16);
    os_unfair_lock_unlock((v27 + 20));

    if (v28)
    {

      v18 = v48;
      v2 = v49;
      v21 = v52;
      goto LABEL_20;
    }

    v40 = v7;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1AB2B00DC(0, *(v46 + 2) + 1, 1, v46);
    }

    v10 = v42;
    v7 = v43;
    v29 = v24;
    v31 = *(v46 + 2);
    v30 = *(v46 + 3);
    v33 = v41;
    v32 = v25;
    v19 = v52;
    if (v31 >= v30 >> 1)
    {
      v37 = sub_1AB2B00DC((v30 > 1), v31 + 1, 1, v46);
      v33 = v41;
      v32 = v25;
      v35 = v23;
      v34 = v47;
      v46 = v37;
    }

    else
    {
      v34 = v47;
      v35 = v23;
    }

    *(v46 + 2) = v31 + 1;
    v36 = &v46[56 * v31];
    *(v36 + 4) = v33;
    *(v36 + 5) = v29;
    *(v36 + 6) = v32;
    *(v36 + 7) = v40;
    *(v36 + 8) = v35;
    *(v36 + 9) = v34;
    *(v36 + 10) = v22;
    v18 = v48;
    v2 = v49;
  }

  while (v52 != v48);
LABEL_39:

  v38 = sub_1AB45BD64(v10, v44, v7, &v53, a2, v46, 1, v4);

  return v38;
}

uint64_t sub_1AB1AD250(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1AB4618F4();
LABEL_9:
    result = sub_1AB461664();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t DynamicImpressionsTracker.snapshotOnScreenImpressionsAndDynamicEvents(in:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = *a1;
  v59 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  sub_1AB1AD250(*(*(v3 + 5) + 16));
  v51 = v3;
  v6 = *(v3 + 5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(*(v6 + 56) + ((v11 << 9) | (8 * v13)));
    swift_beginAccess();
    v15 = *(v14 + 80);
    v16 = *(v15 + 16);
    if (!v16 || (*(v15 + 32 * v16) & 1) == 0)
    {
      v17 = swift_retain_n();
      MEMORY[0x1AC59BC60](v17);
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AB460994();
      }

      sub_1AB4609E4();
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v45 = *(v3 + 4);
  v46 = *(v3 + 3);
  v47 = v59;
  v4 = v3[2];
  LOBYTE(v58) = v49;
  swift_beginAccess();
  v10 = *(v3 + 6);
  if (!(v10 >> 62))
  {
    v56 = v10 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_44:
  v56 = v10 & 0xFFFFFFFFFFFFFF8;
  v18 = sub_1AB4618F4();
LABEL_16:
  v44 = a3;

  if (v18)
  {
    v19 = 0;
    v55 = v10 & 0xC000000000000001;
    v50 = MEMORY[0x1E69E7CC0];
    v53 = v10;
    v54 = v18;
    while (1)
    {
      while (1)
      {
        if (v55)
        {
          v20 = MEMORY[0x1AC59C990](v19, v10);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v19 >= *(v56 + 16))
          {
            goto LABEL_43;
          }

          v20 = *(v10 + 8 * v19 + 32);

          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_42;
          }
        }

        if (v20[6])
        {
          break;
        }

LABEL_19:
        ++v19;
        if (v21 == v18)
        {
          goto LABEL_36;
        }
      }

      v57 = v21;
      v22 = v20[9];
      v52 = v20[8];
      a3 = v20[7];
      v24 = v20[4];
      v23 = v20[5];
      v25 = v20[3];
      v26 = v20[13];
      v27 = v20[6];

      os_unfair_lock_lock((v26 + 20));
      v28 = *(v26 + 16);
      os_unfair_lock_unlock((v26 + 20));

      if (v28)
      {

        v10 = v53;
        v18 = v54;
        v21 = v57;
        goto LABEL_19;
      }

      v29 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1AB2B00DC(0, *(v50 + 2) + 1, 1, v50);
      }

      v10 = v53;
      v30 = a3;
      a3 = v29;
      v32 = *(v50 + 2);
      v31 = *(v50 + 3);
      if (v32 >= v31 >> 1)
      {
        v50 = sub_1AB2B00DC((v31 > 1), v32 + 1, 1, v50);
      }

      *(v50 + 2) = v32 + 1;
      v33 = &v50[56 * v32];
      *(v33 + 4) = v25;
      *(v33 + 5) = v24;
      *(v33 + 6) = v29;
      *(v33 + 7) = v27;
      *(v33 + 8) = v30;
      *(v33 + 9) = v52;
      *(v33 + 10) = v22;
      v18 = v54;
      v19 = v57;
      if (v57 == v54)
      {
        goto LABEL_36;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v34 = sub_1AB45BD64(v46, v45, v47, &v58, a2, v50, 1, v4);

  v35 = *(v51 + 5);
  v36 = *(v35 + 16);
  if (!v36)
  {
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v37 = v34;
  v38 = sub_1AB1AFFBC(*(v35 + 16), 0);
  v39 = sub_1AB1AF6B8(&v58, v38 + 4, v36, v35);

  result = sub_1AB0309A4();
  if (v39 == v36)
  {
    v34 = v37;
LABEL_40:
    v41 = *(v51 + 6);

    v42 = sub_1AB1AD820();
    LOBYTE(v58) = v49;
    v43 = sub_1AB45C5C0(v38, v41, v42, &v58, a2, 1, v4);

    *v44 = v34;
    v44[1] = v43;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB1AD820()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  v2 = MEMORY[0x1E69E7CC0];
  v57 = sub_1AB1DA7B8(MEMORY[0x1E69E7CC0]);
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v53 = v1 + 64;
  v54 = v1;
  v52 = v7;
  while (v6)
  {
LABEL_12:
    v55 = v6;
    v56 = v8;
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = *(*(v1 + 56) + 8 * v10);
    v12 = *(v11 + 16);
    v58 = *(*(v1 + 48) + 16 * v10);
    v59 = *(*(v1 + 48) + 16 * v10 + 8);
    if (v12)
    {
      v71 = v2;

      sub_1AB17789C(0, v12, 0);
      v13 = v71;
      v14 = v11 + 64;
      v15 = sub_1AB4614F4();
      v16 = 0;
      v60 = v11 + 72;
      v61 = v12;
      v17 = v11;
      v62 = v11 + 64;
      while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v17 + 32))
      {
        v20 = v15 >> 6;
        if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_43;
        }

        v63 = v16;
        v64 = *(v17 + 36);
        v21 = (*(v17 + 48) + 56 * v15);
        v22 = v21[1];
        v69 = *v21;
        v23 = v21[3];
        v67 = v21[4];
        v68 = v21[2];
        v24 = v21[6];
        v65 = *(*(v17 + 56) + 8 * v15);
        v66 = v21[5];
        v71 = v13;
        v25 = v17;
        v27 = *(v13 + 2);
        v26 = *(v13 + 3);
        v70 = v27 + 1;

        if (v27 >= v26 >> 1)
        {
          sub_1AB17789C((v26 > 1), v70, 1);
          v13 = v71;
        }

        *(v13 + 2) = v70;
        v28 = &v13[64 * v27];
        *(v28 + 4) = v65;
        *(v28 + 5) = v69;
        *(v28 + 6) = v22;
        *(v28 + 7) = v68;
        *(v28 + 8) = v23;
        *(v28 + 9) = v67;
        *(v28 + 10) = v66;
        *(v28 + 11) = v24;
        v18 = 1 << *(v25 + 32);
        if (v15 >= v18)
        {
          goto LABEL_44;
        }

        v14 = v62;
        v29 = *(v62 + 8 * v20);
        if ((v29 & (1 << v15)) == 0)
        {
          goto LABEL_45;
        }

        v17 = v25;
        if (v64 != *(v25 + 36))
        {
          goto LABEL_46;
        }

        v30 = v29 & (-2 << (v15 & 0x3F));
        if (v30)
        {
          v18 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v19 = v61;
        }

        else
        {
          v31 = v20 << 6;
          v32 = v20 + 1;
          v19 = v61;
          v33 = (v60 + 8 * v20);
          while (v32 < (v18 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_1AB031480(v15, v64, 0);
              v18 = __clz(__rbit64(v34)) + v31;
              goto LABEL_15;
            }
          }

          sub_1AB031480(v15, v64, 0);
        }

LABEL_15:
        v16 = v63 + 1;
        v15 = v18;
        if (v63 + 1 == v19)
        {
          v2 = MEMORY[0x1E69E7CC0];
          v36 = v13;
          v3 = v53;
          v1 = v54;
          v7 = v52;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v36 = v2;
LABEL_32:
    v71 = v36;

    sub_1AB1B06F8(&v71);

    v37 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v57;
    v39 = sub_1AB07926C(v58, v59);
    v41 = *(v57 + 2);
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_48;
    }

    v45 = v40;
    if (*(v57 + 3) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = v39;
        sub_1AB1D7B6C();
        v39 = v50;
      }
    }

    else
    {
      sub_1AB1D216C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_1AB07926C(v58, v59);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_50;
      }
    }

    v47 = v71;
    v57 = v71;
    if (v45)
    {
      *(*(v71 + 7) + 8 * v39) = v37;
    }

    else
    {
      *&v71[8 * (v39 >> 6) + 64] |= 1 << v39;
      *(*(v47 + 6) + 16 * v39) = v58;
      *(*(v47 + 7) + 8 * v39) = v37;
      v48 = *(v47 + 2);
      v43 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v43)
      {
        goto LABEL_49;
      }

      *(v47 + 2) = v49;
    }

    v6 = (v55 - 1) & v55;

    v8 = v56;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v57;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);

  __break(1u);
LABEL_50:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t DynamicImpressionsTracker.consumeImpressions(in:on:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v32 = *(v2 + 3);
  v31 = *(v2 + 4);
  swift_beginAccess();
  v34 = v2;
  v4 = *(v2 + 5);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1AB1AFFBC(*(v4 + 16), 0);
  v7 = sub_1AB1AF6B8(&v42, v6 + 4, v5, v4);

  sub_1AB0309A4();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  v8 = v34[2];
  v41 = v3;
  swift_beginAccess();
  v9 = *(v34 + 6);
  if (v9 >> 62)
  {
LABEL_32:
    v39 = v9 & 0xFFFFFFFFFFFFFF8;
    v10 = sub_1AB4618F4();
  }

  else
  {
    v39 = v9 & 0xFFFFFFFFFFFFFF8;
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v6;

  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v11 = 0;
  v38 = v9 & 0xC000000000000001;
  v12 = MEMORY[0x1E69E7CC0];
  v36 = v9;
  v37 = v10;
  do
  {
    v29 = v12;
    v13 = v11;
    while (1)
    {
      if (v38)
      {
        v14 = MEMORY[0x1AC59C990](v13, v9);
        v6 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 >= *(v39 + 16))
        {
          goto LABEL_31;
        }

        v14 = *(v9 + 8 * v13 + 32);

        v6 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (v14[6])
      {
        break;
      }

LABEL_11:
      ++v13;
      if (v6 == v10)
      {
        v12 = v29;
        goto LABEL_29;
      }
    }

    v40 = v6;
    v15 = v14[9];
    v35 = v14[8];
    v6 = v14[7];
    v17 = v14[4];
    v16 = v14[5];
    v18 = v14[6];
    v19 = v14[3];
    v20 = v14[13];

    os_unfair_lock_lock((v20 + 20));
    v21 = *(v20 + 16);
    os_unfair_lock_unlock((v20 + 20));

    if (v21)
    {

      v9 = v36;
      v10 = v37;
      v6 = v40;
      goto LABEL_11;
    }

    v12 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB2B00DC(0, *(v29 + 2) + 1, 1, v29);
    }

    v9 = v36;
    v23 = *(v12 + 2);
    v22 = *(v12 + 3);
    v24 = v19;
    if (v23 >= v22 >> 1)
    {
      v26 = sub_1AB2B00DC((v22 > 1), v23 + 1, 1, v12);
      v24 = v19;
      v12 = v26;
    }

    *(v12 + 2) = v23 + 1;
    v25 = &v12[56 * v23];
    *(v25 + 4) = v24;
    *(v25 + 5) = v17;
    *(v25 + 6) = v16;
    *(v25 + 7) = v18;
    *(v25 + 8) = v6;
    *(v25 + 9) = v35;
    *(v25 + 10) = v15;
    v10 = v37;
    v11 = v40;
  }

  while (v40 != v37);
LABEL_29:

  v27 = sub_1AB45BD64(v32, v31, v30, &v41, a2, v12, 0, v8);

  DynamicImpressionsTracker.removeAllImpressions()();
  return v27;
}

Swift::Void __swiftcall DynamicImpressionsTracker.removeAllImpressions()()
{
  v50 = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 64);
  v34 = v1;
  v35 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v38 = v4 & v2;

  v36 = v0;
  swift_beginAccess();
  v5 = 0;
  v6 = (v3 + 63) >> 6;
  v33 = v6;
  while (1)
  {
    v7 = v38;
    if (!v38)
    {
      break;
    }

LABEL_9:
    v37 = v5;
    v9 = *(v34 + 48) + 56 * (__clz(__rbit64(v7)) | (v5 << 6));
    v10 = *(v9 + 48);
    v11 = *(v9 + 32);
    v12 = *v9;
    v51[1] = *(v9 + 16);
    v51[2] = v11;
    v51[0] = v12;
    v52 = v10;
    v45 = *v9;
    v46 = *(v9 + 8);
    v47 = *(v9 + 16);
    v48 = *(v9 + 24);
    v44 = *(v9 + 40);
    v43 = *(v9 + 48);
    v13 = *(v36 + 48);
    if (v13 >> 62)
    {
      v14 = sub_1AB4618F4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = (v7 - 1) & v7;
    sub_1AB077970(v51, v49);

    if (!v14)
    {
LABEL_44:

      sub_1AB1B0358(v51);
      goto LABEL_53;
    }

    v15 = 0;
    v41 = v13 & 0xFFFFFFFFFFFFFF8;
    v42 = v13 & 0xC000000000000001;
    v40 = v13;
    while (1)
    {
      if (v42)
      {
        v20 = MEMORY[0x1AC59C990](v15, v13);
        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v15 >= *(v41 + 16))
        {
          goto LABEL_57;
        }

        v20 = *(v13 + 8 * v15 + 32);

        v21 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      v22 = v20[6];
      if (!v22)
      {
        sub_1AB077970(v51, v49);

        if (!v48)
        {

          sub_1AB1B02B8(0, 0, 0, 0);
          goto LABEL_48;
        }

        v26 = 0;
        v25 = 0;
        v27 = 0;
        goto LABEL_40;
      }

      v23 = v20[8];
      v24 = v20[9];
      v25 = v20[4];
      v26 = v20[5];
      v27 = v20[3];

      if (!v48)
      {
        sub_1AB077970(v51, v49);
        sub_1AB1B0308(v27, v25, v26, v22);

LABEL_40:
        sub_1AB1B02B8(v27, v25, v26, v22);
        v16 = v45;
        v17 = v46;
        v18 = v47;
        v19 = v48;
        goto LABEL_15;
      }

      if ((v26 != v47 || v22 != v48) && (sub_1AB461DA4() & 1) == 0)
      {
LABEL_14:
        sub_1AB077970(v51, v49);
        sub_1AB1B0308(v27, v25, v26, v22);

        sub_1AB1B02B8(v45, v46, v47, v48);

        v16 = v27;
        v17 = v25;
        v18 = v26;
        v19 = v22;
LABEL_15:
        sub_1AB1B02B8(v16, v17, v18, v19);
        goto LABEL_16;
      }

      if (v25)
      {
        if (!v46 || (v27 != v45 || v25 != v46) && (sub_1AB461DA4() & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (v46)
      {
        goto LABEL_14;
      }

      v28 = (v24 | v43) == 0;
      if (v24)
      {
        if (v43)
        {
          break;
        }
      }

LABEL_35:
      v39 = v28;
      sub_1AB077970(v51, v49);
      sub_1AB1B0308(v27, v25, v26, v22);

      sub_1AB1B02B8(v45, v46, v47, v48);

      sub_1AB1B02B8(v27, v25, v26, v22);
      if (v39)
      {
        goto LABEL_47;
      }

LABEL_16:
      ++v15;
      v13 = v40;
      if (v21 == v14)
      {
        goto LABEL_44;
      }
    }

    if (v23 != v44 || v24 != v43)
    {
      v28 = sub_1AB461DA4();
      goto LABEL_35;
    }

    sub_1AB077970(v51, v49);
    sub_1AB1B0308(v27, v25, v26, v22);

    sub_1AB1B02B8(v45, v46, v47, v48);

    sub_1AB1B02B8(v27, v25, v26, v22);
LABEL_47:

LABEL_48:
    swift_beginAccess();
    v29 = *(v36 + 40);
    if (*(v29 + 16) && (v30 = sub_1AB077384(v51), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
    }

    else
    {
      v32 = 0;
    }

    swift_endAccess();
    sub_1AB1CDF94(v32, v51);
LABEL_53:
    v6 = v33;
    v5 = v37;
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      *(v36 + 40) = v50;

      return;
    }

    v7 = *(v35 + 8 * v8);
    ++v5;
    if (v7)
    {
      v5 = v8;
      goto LABEL_9;
    }
  }

LABEL_58:
  __break(1u);
}

void DynamicImpressionsTracker.consumeImpressionsAndDynamicEvents(in:on:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *a1;
  v35 = *(v3 + 3);
  v34 = *(v3 + 4);
  swift_beginAccess();
  v39 = v3;
  v5 = *(v3 + 5);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_1AB1AFFBC(*(v5 + 16), 0);
  v8 = sub_1AB1AF6B8(&v46, v7 + 4, v6, v5);

  sub_1AB0309A4();
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v39[2];
  LOBYTE(v46) = v37;
  swift_beginAccess();
  v10 = *(v39 + 6);
  if (v10 >> 62)
  {
    goto LABEL_34;
  }

  v44 = v10 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v32 = a3;
  v33 = v7;

  if (v11)
  {
    v12 = 0;
    v43 = v10 & 0xC000000000000001;
    v38 = MEMORY[0x1E69E7CC0];
    v41 = v10;
    v42 = v11;
    while (1)
    {
      while (1)
      {
        if (v43)
        {
          v13 = MEMORY[0x1AC59C990](v12, v10);
          v7 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v12 >= *(v44 + 16))
          {
            goto LABEL_33;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v7 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v44 = v10 & 0xFFFFFFFFFFFFFF8;
            v11 = sub_1AB4618F4();
            goto LABEL_7;
          }
        }

        v14 = v13[6];
        if (v14)
        {
          break;
        }

LABEL_10:
        ++v12;
        if (v7 == v11)
        {
          goto LABEL_27;
        }
      }

      v45 = v7;
      v15 = v13[9];
      v40 = v13[8];
      v7 = v13[7];
      v17 = v13[4];
      v16 = v13[5];
      v18 = v13[3];
      a3 = v13[13];

      os_unfair_lock_lock((a3 + 20));
      v19 = *(a3 + 16);
      os_unfair_lock_unlock((a3 + 20));

      if (v19)
      {

        v10 = v41;
        v11 = v42;
        v7 = v45;
        goto LABEL_10;
      }

      a3 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB2B00DC(0, *(v38 + 2) + 1, 1, v38);
      }

      v10 = v41;
      v21 = *(v38 + 2);
      v20 = *(v38 + 3);
      if (v21 >= v20 >> 1)
      {
        v38 = sub_1AB2B00DC((v20 > 1), v21 + 1, 1, v38);
      }

      *(v38 + 2) = v21 + 1;
      v22 = &v38[56 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v17;
      *(v22 + 6) = v16;
      *(v22 + 7) = v14;
      *(v22 + 8) = v7;
      *(v22 + 9) = v40;
      *(v22 + 10) = v15;
      v11 = v42;
      v12 = v45;
      if (v45 == v42)
      {
        goto LABEL_27;
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v23 = sub_1AB45BD64(v35, v34, v33, &v46, a2, v38, 0, v9);

  v24 = *(v39 + 5);
  v25 = *(v24 + 16);
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v26 = v23;
  v27 = sub_1AB1AFFBC(*(v24 + 16), 0);
  v28 = sub_1AB1AF6B8(&v46, v27 + 4, v25, v24);

  sub_1AB0309A4();
  if (v28 == v25)
  {
    v23 = v26;
LABEL_31:
    v29 = *(v39 + 6);

    v30 = sub_1AB1AD820();
    LOBYTE(v46) = v37;
    v31 = sub_1AB45C5C0(v27, v29, v30, &v46, a2, 0, v9);

    DynamicImpressionsTracker.removeAllImpressions()();
    DynamicImpressionsTracker.removeAllDynamicEvents()();
    *v32 = v23;
    v32[1] = v31;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall DynamicImpressionsTracker.removeAllDynamicEvents()()
{
  v53 = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v1 = v0[5];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(v0[5] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v40 = v6 & v2;
  v37 = v0[5];

  v39 = v0;
  swift_beginAccess();
  v7 = 0;
  v8 = (v5 + 63) >> 6;
  v35 = v8;
  v36 = v3;
  v9 = v40;
  if (!v40)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (2)
  {
    while (1)
    {
      v12 = *(v37 + 48) + 56 * (__clz(__rbit64(v9)) | (v7 << 6));
      v13 = *(v12 + 48);
      v14 = *(v12 + 32);
      v15 = *v12;
      v54[1] = *(v12 + 16);
      v54[2] = v14;
      v54[0] = v15;
      v55 = v13;
      v48 = *v12;
      v49 = *(v12 + 8);
      v50 = *(v12 + 16);
      v51 = *(v12 + 24);
      v47 = *(v12 + 40);
      v46 = *(v12 + 48);
      v16 = v39[6];
      v17 = v16 >> 62 ? sub_1AB4618F4() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v7;
      v41 = (v9 - 1) & v9;
      sub_1AB077970(v54, v52);

      if (v17)
      {
        break;
      }

LABEL_46:

      swift_beginAccess();
      v32 = v39[5];
      if (*(v32 + 16))
      {
        v33 = sub_1AB077384(v54);
        v8 = v35;
        v3 = v36;
        v7 = v38;
        if (v34)
        {
          v10 = *(*(v32 + 56) + 8 * v33);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
        v8 = v35;
        v3 = v36;
        v7 = v38;
      }

      swift_endAccess();
      sub_1AB1CDF94(v10, v54);
      v9 = v41;
      if (!v41)
      {
        goto LABEL_7;
      }
    }

    v18 = 0;
    v44 = v16 & 0xFFFFFFFFFFFFFF8;
    v45 = v16 & 0xC000000000000001;
    v43 = v16;
    while (1)
    {
      if (v45)
      {
        v23 = MEMORY[0x1AC59C990](v18, v16);
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v18 >= *(v44 + 16))
        {
          goto LABEL_58;
        }

        v23 = *(v16 + 8 * v18 + 32);

        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v25 = v23[6];
      if (!v25)
      {
        sub_1AB077970(v54, v52);

        if (!v51)
        {

          sub_1AB1B0358(v54);
          sub_1AB1B02B8(0, 0, 0, 0);
          goto LABEL_53;
        }

        v29 = 0;
        v28 = 0;
        v30 = 0;
        goto LABEL_42;
      }

      v26 = v23[8];
      v27 = v23[9];
      v28 = v23[4];
      v29 = v23[5];
      v30 = v23[3];

      if (!v51)
      {
        sub_1AB077970(v54, v52);
        sub_1AB1B0308(v30, v28, v29, v25);

LABEL_42:
        sub_1AB1B02B8(v30, v28, v29, v25);
        v19 = v48;
        v20 = v49;
        v21 = v50;
        v22 = v51;
        goto LABEL_17;
      }

      if ((v29 != v50 || v25 != v51) && (sub_1AB461DA4() & 1) == 0)
      {
LABEL_16:
        sub_1AB077970(v54, v52);
        sub_1AB1B0308(v30, v28, v29, v25);

        sub_1AB1B02B8(v48, v49, v50, v51);

        v19 = v30;
        v20 = v28;
        v21 = v29;
        v22 = v25;
LABEL_17:
        sub_1AB1B02B8(v19, v20, v21, v22);
        goto LABEL_18;
      }

      if (v28)
      {
        if (!v49 || (v30 != v48 || v28 != v49) && (sub_1AB461DA4() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v49)
      {
        goto LABEL_16;
      }

      v31 = (v27 | v46) == 0;
      if (v27)
      {
        if (v46)
        {
          break;
        }
      }

LABEL_37:
      v42 = v31;
      sub_1AB077970(v54, v52);
      sub_1AB1B0308(v30, v28, v29, v25);

      sub_1AB1B02B8(v48, v49, v50, v51);

      sub_1AB1B02B8(v30, v28, v29, v25);
      if (v42)
      {
        goto LABEL_52;
      }

LABEL_18:
      ++v18;
      v16 = v43;
      if (v24 == v17)
      {
        goto LABEL_46;
      }
    }

    if (v26 != v47 || v27 != v46)
    {
      v31 = sub_1AB461DA4();
      goto LABEL_37;
    }

    sub_1AB077970(v54, v52);
    sub_1AB1B0308(v30, v28, v29, v25);

    sub_1AB1B02B8(v48, v49, v50, v51);

    sub_1AB1B02B8(v30, v28, v29, v25);
LABEL_52:

    sub_1AB1B0358(v54);
LABEL_53:
    v8 = v35;
    v3 = v36;
    v7 = v38;
    v9 = v41;
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_7:
  while (2)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_59:
      __break(1u);
    }

    else
    {
      if (v11 < v8)
      {
        v9 = *(v3 + 8 * v11);
        ++v7;
        if (!v9)
        {
          continue;
        }

        v7 = v11;
        goto LABEL_11;
      }

      v39[5] = v53;

      swift_beginAccess();
      v39[6] = MEMORY[0x1E69E7CC0];

      swift_beginAccess();
      v39[7] = MEMORY[0x1E69E7CC8];
    }

    break;
  }
}

uint64_t DynamicImpressionsTracker.deinit()
{

  return v0;
}

uint64_t DynamicImpressionsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB1AF244(uint64_t a1, uint64_t a2)
{
  if (qword_1EB435E28 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_1EB43D608;
  v10[3] = unk_1EB43D618;
  v10[4] = xmmword_1EB43D628;
  v10[0] = xmmword_1EB43D5E8;
  v10[1] = *&qword_1EB43D5F8;
  v7 = xmmword_1EB43D608;
  v8 = unk_1EB43D618;
  v9 = xmmword_1EB43D628;
  v5 = xmmword_1EB43D5E8;
  v6 = *&qword_1EB43D5F8;
  sub_1AB0786FC(v10, v11);
  DynamicImpressionsTracker.elementDidLeaveView(_:on:with:)(a1, a2, &v5);
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[0] = v5;
  v11[1] = v6;
  return sub_1AB079CF0(v11);
}

uint64_t sub_1AB1AF328(void *a1, uint64_t *a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_17:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v9;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v21 = a1;
    v11 = 1;
    while (1)
    {
      v12 = [a4 numberOfRanges];
      if (__OFSUB__(v12, 1))
      {
        break;
      }

      if ((v11 - 1) == v12 - 1)
      {
        v9 = v11 - 1;
LABEL_16:
        a1 = v21;
        goto LABEL_17;
      }

      v13 = [a4 numberOfRanges];
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_19;
      }

      if (v11 - 1 >= v13 - 1)
      {
        goto LABEL_20;
      }

      [a4 rangeAtIndex_];
      sub_1AB460FD4();
      if (v14)
      {
        goto LABEL_22;
      }

      v15 = sub_1AB4607E4();
      v16 = MEMORY[0x1AC59B960](v15);
      v18 = v17;

      *v10 = v16;
      v10[1] = v18;
      if (v9 == v11)
      {
        goto LABEL_16;
      }

      v10 += 2;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB1AF4B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_11:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      v12 = a2;
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a4 + 16))
      {
        v15 = sub_1AB45F2C4();
        v16 = *(v15 - 8);
        v17 = *(v16 + 72);
        result = (*(v16 + 16))(v12, a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v17 * v13, v15);
        if (v14 == v13)
        {
          goto LABEL_11;
        }

        v12 += v17;
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1AB1AF5B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1AB1AF6B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AB1AF80C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_1AB1AF964(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1AB1AFABC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for JetPackAsset(0);
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_1AB1A87A8(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_1AB065B84(v10, v13);
      sub_1AB065B84(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1AB1AFCE4(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_1AB09DF1C(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_1AB09DF1C(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1AB1AFE78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439E00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1AB1AFF38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439D10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1AB1AFFBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1AB1B0080(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

size_t sub_1AB1B0124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AB1B0220(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1AB1B02B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1AB1B0308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void (*sub_1AB1B03AC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1AB1B06C4(v7);
  v7[9] = sub_1AB1B04B8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1AB1B0458;
}

void sub_1AB1B0458(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1AB1B04B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1AB07926C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1AB1D80A8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1AB1D2A88(v18, a4 & 1);
    v13 = sub_1AB07926C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AB461FC4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1AB1B0610;
}

void sub_1AB1B0610(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1AB1D6E78(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1AB1B1134(*(v7 + 48) + 16 * v6);
    sub_1AB18FC9C(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1AB1B06C4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AB1B06EC;
}

uint64_t sub_1AB1B06F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AB234ED8(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_1AB461C24();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 64;
          if (*v12 >= *(v12 - 8))
          {
            break;
          }

          v14 = *v12;
          v15 = *(v12 + 1);
          v16 = *(v12 + 3);
          v26 = *(v12 + 2);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 3);
          *v12 = *v13;
          *(v12 + 1) = v17;
          v18 = *(v12 - 1);
          *(v12 + 2) = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v12 - 2) = v26;
          *(v12 - 1) = v19;
          *v13 = v20;
          *(v12 - 3) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AB4609B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_1AB1B0860(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AB1B0860(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AB391760(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1AB1B0E00((*a3 + (*v94 << 6)), (*a3 + (*v96 << 6)), (*a3 + (v97 << 6)), v5);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6));
      v11 = v9 << 6;
      v12 = (*a3 + (v9 << 6));
      v15 = *v12;
      v14 = v12 + 16;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 8;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = (v7 << 6) - 64;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v32 + v11);
            v24 = (v32 + v20);
            v26 = v23[2];
            v25 = v23[3];
            v28 = *v23;
            v27 = v23[1];
            v29 = v24[3];
            v31 = *v24;
            v30 = v24[1];
            v23[2] = v24[2];
            v23[3] = v29;
            *v23 = v31;
            v23[1] = v30;
            *v24 = v28;
            v24[1] = v27;
            v24[2] = v26;
            v24[3] = v25;
          }

          ++v22;
          v20 -= 64;
          v11 += 64;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AB2AFBEC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v46 = *(v8 + 24);
    v47 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      result = sub_1AB2AFBEC((v46 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v5);
    *v49 = v9;
    v49[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v47);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v48 + 16 * v5);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v5 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v47);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v48 + 16 * v5);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v48 + 16 * (v5 - 1));
        v88 = *v87;
        v89 = (v48 + 16 * v5);
        v90 = v89[1];
        sub_1AB1B0E00((*a3 + (*v87 << 6)), (*a3 + (*v89 << 6)), (*a3 + (v90 << 6)), v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v5 >= v91)
        {
          goto LABEL_101;
        }

        v47 = v91 - 1;
        result = memmove((v48 + 16 * v5), v89 + 2, 16 * (v91 - 1 - v5));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v48 + 16 * v47;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v47);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v48 + 16 * v5);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v5 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + (v7 << 6);
  v35 = v9 - v7;
LABEL_30:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    v38 = v37 - 4;
    if (*v37 >= *(v37 - 8))
    {
LABEL_29:
      ++v7;
      v34 += 64;
      --v35;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v40 = v37[2];
    v39 = v37[3];
    v42 = *v37;
    v41 = v37[1];
    v43 = *(v37 - 3);
    *v37 = *v38;
    v37[1] = v43;
    v44 = *(v37 - 1);
    v37[2] = *(v37 - 2);
    v37[3] = v44;
    *v38 = v42;
    *(v37 - 3) = v41;
    v37 -= 4;
    v38[2] = v40;
    v38[3] = v39;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1AB1B0E00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = v5 + 64;
      v23 = *(v21 - 8);
      v21 -= 64;
      if (v23 < *v20)
      {
        if (v22 != v6)
        {
          v27 = *v20;
          v28 = *(v6 - 3);
          v29 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v29;
          *v5 = v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v22 != v14)
      {
        v24 = *v21;
        v25 = *(v21 + 1);
        v26 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v26;
        *v5 = v24;
        *(v5 + 1) = v25;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v30 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v30 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v30 >> 6 << 6);
  }

  return 1;
}

uint64_t sub_1AB1B1058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB1B10A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AB1B10FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AB1B1114(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1AB1B11A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD00000000000004ELL, 0x80000001AB5019F0);
    v2 = sub_1AB461C44();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000051, 0x80000001AB501990);
    swift_getErrorValue();
    v2 = sub_1AB462024();
LABEL_5:
    MEMORY[0x1AC59BA20](v2);

    return 0;
  }

  if (a1)
  {
    return 0xD000000000000048;
  }

  else
  {
    return 0xD000000000000066;
  }
}

void URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:requestEncoder:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for URLJetPackAssetFetcher();
  v9 = *(v8 + 24);
  v10 = sub_1AB45F764();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = a1;
  *(v11 + 32) = 1;

  *&a4[*(v8 + 28)] = v11;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = a2;
}

uint64_t URLJetPackAssetFetcher.init(bagPromise:urlSessionConfiguration:downloadsBaseURL:urlSessionFactoryProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  *(a6 + *(v12 + 28)) = a1;
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
  return sub_1AB017FB8(a3, a6 + *(v12 + 24), &unk_1EB4395B0);
}

uint64_t URLJetPackAssetFetcher._fetch(_:candidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB1B148C, 0, 0);
}

uint64_t sub_1AB1B148C()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1AB1B153C;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  return sub_1AB1B16FC(v3, v4, v2, (v0 + 2));
}

uint64_t sub_1AB1B153C(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB1B1694, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_1AB1B1694()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1AB1B16FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[182] = v4;
  v5[181] = a4;
  v5[180] = a3;
  v5[179] = a2;
  v5[178] = a1;
  v5[183] = type metadata accessor for JetPackAsset.Metadata(0);
  v5[184] = swift_task_alloc();
  v6 = sub_1AB45F9B4();
  v5[185] = v6;
  v5[186] = *(v6 - 8);
  v5[187] = swift_task_alloc();
  v5[188] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v5[191] = v7;
  v8 = *(v7 - 8);
  v5[192] = v8;
  v5[193] = *(v8 + 64);
  v5[194] = swift_task_alloc();
  v5[195] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437940);
  v5[196] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v5[197] = swift_task_alloc();
  v5[198] = swift_task_alloc();
  v5[199] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v5[200] = swift_task_alloc();
  v5[201] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v5[202] = v9;
  v5[203] = *(v9 - 8);
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v10 = sub_1AB45F764();
  v5[206] = v10;
  v11 = *(v10 - 8);
  v5[207] = v11;
  v5[208] = *(v11 + 64);
  v5[209] = swift_task_alloc();
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v12 = sub_1AB45F0A4();
  v5[212] = v12;
  v5[213] = *(v12 - 8);
  v5[214] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB1B1AB8, 0, 0);
}

uint64_t sub_1AB1B1AB8()
{
  if (sub_1AB45F5C4())
  {
    v1 = (v0 + 920);
    v2 = sub_1AB45F6F4();
    v4 = v3;
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v43 = *(v0 + 632);
    v44 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 600), v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v49 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v6._object = 0x80000001AB5017D0;
    v6._countAndFlagsBits = 0xD000000000000025;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    *(v0 + 1328) = MEMORY[0x1E69E6158];
    *(v0 + 1304) = v2;
    *(v0 + 1312) = v4;
    sub_1AB014A58(v0 + 1304, v0 + 1368, &unk_1EB437E60);
    *v1 = 0u;
    *(v0 + 936) = 0u;

    sub_1AB0169C4(v0 + 1368, v0 + 920);
    *(v0 + 952) = 2;
    v7 = v49;
    v47 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v49 + 2) + 1, 1, v49);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v46 = v4;
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    v45 = *(v0 + 1616);
    v10 = *(v0 + 1472);
    v11 = *(v0 + 1464);
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1424);
    *(v7 + 2) = v9 + 1;
    v14 = &v7[40 * v9];
    v15 = *v1;
    v16 = *(v0 + 936);
    v14[64] = *(v0 + 952);
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    *&v48 = v7;
    sub_1AB014AC0(v0 + 1304, &unk_1EB437E60);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v5 + 32) = v7;
    Logger.info(_:)(v5, v44, v43);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 600);
    v18 = v12[3];
    v19 = v12[4];
    __swift_project_boxed_opaque_existential_1Tm(v12, v18);
    (*(v19 + 8))(v18, v19);
    v20 = [objc_opt_self() processInfo];
    [v20 operatingSystemVersion];

    v21 = JEGestaltGetBuildVersion();
    v22 = sub_1AB460544();
    v24 = v23;

    *v10 = 0u;
    v10[1] = 0u;
    v25 = v10 + v11[7];
    *v25 = v48;
    *(v25 + 2) = v50;
    v25[24] = 0;
    v26 = (v10 + v11[8]);
    *v26 = v22;
    v26[1] = v24;
    v27 = (v10 + v11[9]);
    *v27 = 0;
    v27[1] = 0;
    *(v10 + v11[10]) = 2;
    v28 = v10 + v11[11];
    *v28 = 0x40AC200000000000;
    v28[8] = 0;
    *(v28 + 2) = 0;
    v28[24] = 1;
    *(v28 + 4) = 0x4143C68000000000;
    *(v28 + 20) = 0;
    v13[3] = &type metadata for JetPackFileStreamSource;
    v13[4] = &protocol witness table for JetPackFileStreamSource;
    v29 = swift_allocObject();
    *v13 = v29;
    v29[2] = v47;
    v29[3] = v46;
    v29[4] = 0;
    v29[5] = 0;
    sub_1AB1B93F8(v10, v13 + v45[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1AB1B9A20(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v30 = sub_1AB461C44();
    v32 = v31;
    sub_1AB1B96D0(v10, type metadata accessor for JetPackAsset.Metadata);
    v33 = v13 + v45[6];
    *v33 = 0;
    v33[4] = 1;
    v34 = (v13 + v45[7]);
    *v34 = v30;
    v34[1] = v32;
    *(v13 + v45[8]) = 0;
    *(v13 + v45[9]) = 0;
    *(v13 + v45[10]) = 0;
    v35 = (v13 + v45[11]);
    *v35 = 0;
    v35[1] = 0;

    v36 = *(v0 + 8);

    return v36(0);
  }

  else
  {
    v38 = *(v0 + 1456);
    v39 = *v38;
    [*v38 set:objc_msgSend(*v38 timingDataOptions:sel__timingDataOptions) | 0x45];
    v40 = *(v38 + 8);
    if (v40)
    {

      v41 = v40(v39);
      sub_1AB0177B8(v40);
    }

    else
    {
      v41 = [objc_opt_self() sessionWithConfiguration_];
    }

    *(v0 + 1720) = v41;
    type metadata accessor for BaseObjectGraph();
    *(v0 + 1728) = static BaseObjectGraph.current.getter();
    v42 = swift_task_alloc();
    *(v0 + 1736) = v42;
    *v42 = v0;
    v42[1] = sub_1AB1B2198;

    return sub_1AB2683F8();
  }
}

uint64_t sub_1AB1B2198(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1744) = a1;
  *(v3 + 1752) = v1;

  if (v1)
  {
    v4 = sub_1AB1B5844;
  }

  else
  {

    v4 = sub_1AB1B22B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB1B22B8()
{
  v1 = *(v0 + 1744);
  if (v1)
  {

    sub_1AB0318FC();
    sub_1AB460184();
    v2 = sub_1AB460154();
    v3 = *(v1 + 48);

    os_unfair_lock_lock((v3 + 20));
    v4 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));

    if (v4 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v2);
  }

  else
  {
    sub_1AB460184();
    v2 = sub_1AB460154();
  }

  *(v0 + 1760) = v2;
  sub_1AB460164();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 1656);
  v6 = *(v0 + 1648);
  v7 = *(v0 + 1432);
  *(v0 + 1768) = qword_1EB435770;
  sub_1AB4622E4();
  v86 = *(v0 + 832);
  v88 = *(v0 + 824);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 800), v88);
  *(v0 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  v93 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
  v9._countAndFlagsBits = 0xD000000000000021;
  v9._object = 0x80000001AB501620;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 1360) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1336));
  v11 = *(v5 + 16);
  *(v0 + 1784) = v11;
  *(v0 + 1792) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v90 = v11;
  v11(boxed_opaque_existential_0, v7, v6);
  sub_1AB014A58(v0 + 1336, v0 + 1272, &unk_1EB437E60);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  sub_1AB0169C4(v0 + 1272, v0 + 960);
  *(v0 + 992) = 0;
  v12 = v93;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1AB0168A8(0, *(v93 + 2) + 1, 1, v93);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
  }

  v15 = *(v0 + 1688);
  v16 = *(v0 + 1648);
  v17 = *(v0 + 1624);
  v81 = *(v0 + 1608);
  v83 = *(v0 + 1616);
  v80 = *(v0 + 1440);
  v18 = *(v0 + 1432);
  *(v12 + 2) = v14 + 1;
  v19 = &v12[40 * v14];
  v20 = *(v0 + 960);
  v21 = *(v0 + 976);
  v19[64] = *(v0 + 992);
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  sub_1AB014AC0(v0 + 1336, &unk_1EB437E60);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v8 + 32) = v12;
  Logger.info(_:)(v8, v88, v86);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 800);
  v90(v15, v18, v16);
  sub_1AB45F064();
  sub_1AB45F004();
  sub_1AB45F094();
  sub_1AB014A58(v80, v81, &qword_1EB437E40);
  v23 = *(v17 + 48);
  *(v0 + 1800) = v23;
  *(v0 + 1808) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v23(v81, 1, v83) == 1)
  {
    sub_1AB014AC0(*(v0 + 1608), &qword_1EB437E40);
  }

  else
  {
    v24 = *(v0 + 1640);
    v25 = *(v0 + 1616);
    sub_1AB1B9460(*(v0 + 1608), v24, type metadata accessor for JetPackAsset);
    v26 = v24 + *(v25 + 20);
    if (*(v26 + 24))
    {
      sub_1AB45F094();
    }

    if (*(v26 + 8))
    {
      sub_1AB45F094();
    }

    sub_1AB1B96D0(*(v0 + 1640), type metadata accessor for JetPackAsset);
  }

  v27 = *(v0 + 1656);
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1592);
  sub_1AB014A58(*(v0 + 1456) + *(*(v0 + 1528) + 24), v29, &unk_1EB4395B0);
  v30 = *(v27 + 48);
  *(v0 + 1816) = v30;
  *(v0 + 1824) = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v31 = v30(v29, 1, v28);
  v32 = *(v0 + 1720);
  if (v31 == 1)
  {
    v33 = *(v0 + 1552);
    v34 = *(v0 + 1536);
    v91 = *(v0 + 1544);
    v92 = *(v0 + 1456);
    sub_1AB014AC0(*(v0 + 1592), &unk_1EB4395B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437ED0);
    v35 = swift_allocObject();
    *(v0 + 1872) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v35 + 16) = v36;
    *(v35 + 24) = MEMORY[0x1E69E7CC0];
    *(v35 + 32) = 0;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    v37 = sub_1AB45F024();
    *(v0 + 496) = sub_1AB1B92D4;
    *(v0 + 504) = v35;
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1AB373C48;
    *(v0 + 488) = &block_descriptor_8;
    v38 = _Block_copy((v0 + 464));

    v39 = [v32 dataTaskWithRequest:v37 completionHandler:v38];
    *(v0 + 1880) = v39;
    _Block_release(v38);

    v40 = v39;
    sub_1AB4610A4();

    [v40 resume];
    sub_1AB1B6A74();
    sub_1AB1B93F8(v92, v33, type metadata accessor for URLJetPackAssetFetcher);
    v41 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v42 = (v91 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v87 = v33;
    sub_1AB1B9460(v33, v44 + v41, type metadata accessor for URLJetPackAssetFetcher);
    *(v44 + v42) = v40;
    *(v44 + v43) = v32;
    sub_1AB1B93F8(v92, v33, type metadata accessor for URLJetPackAssetFetcher);
    v45 = swift_allocObject();
    sub_1AB1B9460(v87, v45 + v41, type metadata accessor for URLJetPackAssetFetcher);
    *(v45 + v42) = v40;
    *(v45 + v43) = v32;
    v46 = sub_1AB016760(0, &qword_1ED4D2060);
    v47 = v32;
    v48 = v40;
    v49 = v47;
    v50 = v48;
    v51 = sub_1AB461124();
    *(v0 + 704) = v46;
    *(v0 + 712) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 680) = v51;
    *(v0 + 144) = sub_1AB1B92DC;
    *(v0 + 152) = v44;
    *(v0 + 160) = sub_1AB1B9384;
    *(v0 + 168) = v45;
    sub_1AB01494C(v0 + 680, v0 + 176);
    *(v0 + 216) = 0;

    sub_1AB1956AC(v0 + 144);

    sub_1AB014AC0(v0 + 144, &qword_1EB43A050);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 680);
    v52 = sub_1AB1B44EC;
  }

  else
  {
    v53 = *(v0 + 1688);
    v54 = *(v0 + 1680);
    v55 = *(v0 + 1656);
    v56 = *(v0 + 1648);
    v57 = *(v0 + 1592);
    v58 = *(v0 + 1568);
    v84 = *(v0 + 1544);
    v85 = *(v0 + 1552);
    v82 = *(v0 + 1536);
    v89 = *(v0 + 1456);
    v59 = *(v55 + 32);
    v55 += 32;
    *(v0 + 1832) = v59;
    *(v0 + 1840) = v55 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v59(v54, v57, v56);
    *v58 = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EE0);
    v60 = swift_allocObject();
    *(v0 + 1848) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    v60[2] = v61;
    sub_1AB017FB8(v58, v60 + *(*v60 + 96), &unk_1EB437940);
    v62 = sub_1AB45F024();
    v90(v53, v54, v56);
    v63 = (*(v55 + 48) + 24) & ~*(v55 + 48);
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v59(v64 + v63, v53, v56);
    *(v0 + 544) = sub_1AB1B94C8;
    *(v0 + 552) = v64;
    *(v0 + 512) = MEMORY[0x1E69E9820];
    *(v0 + 520) = 1107296256;
    *(v0 + 528) = sub_1AB1B6844;
    *(v0 + 536) = &block_descriptor_16;
    v65 = _Block_copy((v0 + 512));

    v66 = [v32 downloadTaskWithRequest:v62 completionHandler:v65];
    *(v0 + 1856) = v66;
    _Block_release(v65);

    v67 = v66;

    sub_1AB4610A4();

    [v67 resume];
    sub_1AB1B69B8();
    sub_1AB1B93F8(v89, v85, type metadata accessor for URLJetPackAssetFetcher);
    v68 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v69 = (v84 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_1AB1B9460(v85, v71 + v68, type metadata accessor for URLJetPackAssetFetcher);
    *(v71 + v69) = v67;
    *(v71 + v70) = v32;
    sub_1AB1B93F8(v89, v85, type metadata accessor for URLJetPackAssetFetcher);
    v72 = swift_allocObject();
    sub_1AB1B9460(v85, v72 + v68, type metadata accessor for URLJetPackAssetFetcher);
    *(v72 + v69) = v67;
    *(v72 + v70) = v32;
    v73 = sub_1AB016760(0, &qword_1ED4D2060);
    v74 = v67;
    v75 = v32;
    v76 = v74;
    v77 = v75;
    v78 = sub_1AB461124();
    *(v0 + 864) = v73;
    *(v0 + 872) = &protocol witness table for OS_dispatch_queue;
    *(v0 + 840) = v78;
    *(v0 + 384) = sub_1AB1B9554;
    *(v0 + 392) = v71;
    *(v0 + 400) = sub_1AB1B95FC;
    *(v0 + 408) = v72;
    sub_1AB01494C(v0 + 840, v0 + 416);
    *(v0 + 456) = 0;

    sub_1AB1958A4(v0 + 384);

    sub_1AB014AC0(v0 + 384, &unk_1EB439920);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 840);
    v52 = sub_1AB1B2F80;
  }

  return MEMORY[0x1EEE6DFA0](v52, 0, 0);
}

uint64_t sub_1AB1B2F80()
{
  v1 = v0 + 10;
  v2 = v0[189];
  v0[10] = v0;
  v0[15] = v2;
  v0[11] = sub_1AB1B304C;
  v0[28] = swift_continuation_init();
  v3 = (v0 + 28);
  *(v3 + 72) = 1;
  sub_1AB1958A4(v3);
  sub_1AB014AC0(v3, &unk_1EB439920);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1B304C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1864) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1B430C;
  }

  else
  {
    sub_1AB017FB8(*(v1 + 1512), *(v1 + 1520), &unk_1EB43D280);
    v3 = sub_1AB1B3184;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1B3184()
{
  v169 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1520);
  v162 = *(v5 + *(*(v0 + 1504) + 48));
  sub_1AB017FB8(v5, v3, &unk_1EB4395B0);
  sub_1AB014A58(v3, v4, &unk_1EB4395B0);
  v6 = v1(v4, 1, v2);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1680);
  if (v6 == 1)
  {
    v153 = *(v0 + 1784);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1584);
    v12 = *(v0 + 1432);
    sub_1AB014AC0(*(v0 + 1576), &unk_1EB4395B0);
    sub_1AB1B9A20(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v13 = sub_1AB461C44();
    v15 = v14;

    sub_1AB014AC0(v11, &unk_1EB4395B0);
    (*(v9 + 8))(v8, v10);
    v16 = type metadata accessor for JetPackDataStreamSource();
    *(v0 + 664) = v16;
    *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
    v18 = *(v16 + 24);
    v153(boxed_opaque_existential_0 + v18, v12, v10);
    (*(v9 + 56))(boxed_opaque_existential_0 + v18, 0, 1, v10);
    *boxed_opaque_existential_0 = xmmword_1AB4DA6A0;
    boxed_opaque_existential_0[2] = v13;
    boxed_opaque_existential_0[3] = v15;
  }

  else
  {
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1648);
    v22 = *(v0 + 1584);
    (*(v0 + 1832))(v19, *(v0 + 1576), v21);
    v158 = sub_1AB45F6E4();
    v154 = v23;
    sub_1AB1B9A20(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v24 = sub_1AB461C44();
    v26 = v25;

    v27 = *(v20 + 8);
    v27(v19, v21);
    sub_1AB014AC0(v22, &unk_1EB4395B0);
    v27(v8, v21);
    *(v0 + 664) = &type metadata for JetPackFileStreamSource;
    *(v0 + 672) = &protocol witness table for JetPackFileStreamSource;
    v28 = swift_allocObject();
    *(v0 + 640) = v28;
    v28[2] = v158;
    v28[3] = v154;
    v28[4] = v24;
    v28[5] = v26;
  }

  v29 = [v162 statusCode];
  if (v29 == 304)
  {
    v155 = 304;
    v142 = *(v0 + 1616);
    v146 = *(v0 + 1800);
    v30 = *(v0 + 1600);
    v31 = *(v0 + 1440);
    sub_1AB4622E4();
    v32 = *(v0 + 904);
    v33 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 880), v32);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1AB4D4720;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001AB501710;
    *(v35 + 48) = 0u;
    *(v35 + 32) = 0u;
    sub_1AB0169C4(v0 + 1144, v35 + 32);
    *(v35 + 64) = 0;
    *(v34 + 32) = v35;
    Logger.info(_:)(v34, v32, v33);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 880);
    sub_1AB014A58(v31, v30, &qword_1EB437E40);
    if (v146(v30, 1, v142) == 1)
    {
      v36 = *(v0 + 1720);
      v156 = *(v0 + 1712);
      v37 = *(v0 + 1704);
      v150 = *(v0 + 1696);
      sub_1AB014AC0(*(v0 + 1600), &qword_1EB437E40);
      sub_1AB4622E4();
      v38 = *(v0 + 584);
      v39 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 560), v38);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1AB4D4720;
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1AB4D4720;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001AB501740;
      *(v41 + 48) = 0u;
      *(v41 + 32) = 0u;
      sub_1AB0169C4(v0 + 1112, v41 + 32);
      *(v41 + 64) = 0;
      *(v40 + 32) = v41;
      Logger.error(_:)(v40, v38, v39);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 560);
      sub_1AB1B93A4();
      swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 2;
      swift_willThrow();

      (*(v37 + 8))(v156, v150);
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);

      v62 = *(v0 + 8);
      v63 = 0;
      goto LABEL_37;
    }

    v136 = *(v0 + 1720);
    v64 = *(v0 + 1704);
    v140 = *(v0 + 1696);
    v145 = *(v0 + 1712);
    v65 = *(v0 + 1632);
    v66 = *(v0 + 1616);
    v67 = *(v0 + 1496);
    v68 = *(v0 + 1488);
    v149 = *(v0 + 1464);
    v151 = *(v0 + 1480);
    v69 = *(v0 + 1448);
    v160 = *(v0 + 1424);
    sub_1AB1B9460(*(v0 + 1600), v65, type metadata accessor for JetPackAsset);
    v70 = v69[3];
    v71 = v69[4];
    __swift_project_boxed_opaque_existential_1Tm(v69, v70);
    (*(v71 + 8))(v70, v71);

    (*(v64 + 8))(v145, v140);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);
    (*(v68 + 40))(v65 + *(v66 + 20) + *(v149 + 24), v67, v151);
    *(v65 + *(v66 + 36)) = 1;
    sub_1AB1B9460(v65, v160, type metadata accessor for JetPackAsset);
  }

  else
  {
    v43 = v29;
    if ([v162 statusCode] < 200 || objc_msgSend(v162, sel_statusCode) > 299)
    {
      sub_1AB4622E4();
      v157 = *(v0 + 752);
      v159 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 720), v159);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1AB4D4720;
      *&v163 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v49._countAndFlagsBits = 0xD000000000000023;
      v49._object = 0x80000001AB501680;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      v50 = [v162 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v50;
      sub_1AB014A58(v0 + 1240, v0 + 1208, &unk_1EB437E60);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1AB0169C4(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v51 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1AB0168A8(0, *(v163 + 16) + 1, 1, v163);
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1AB0168A8((v52 > 1), v53 + 1, 1, v51);
      }

      v54 = *(v0 + 1720);
      v148 = *(v0 + 1712);
      v55 = *(v0 + 1704);
      v144 = *(v0 + 1696);
      *(v51 + 2) = v53 + 1;
      v56 = &v51[40 * v53];
      v57 = *(v0 + 1000);
      v58 = *(v0 + 1016);
      v56[64] = *(v0 + 1032);
      *(v56 + 2) = v57;
      *(v56 + 3) = v58;
      *&v163 = v51;
      sub_1AB014AC0(v0 + 1240, &unk_1EB437E60);
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v59);
      *(v48 + 32) = v51;
      Logger.error(_:)(v48, v159, v157);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 720);
      v60 = [v162 statusCode];
      sub_1AB1B93A4();
      swift_allocError();
      *v61 = v60;
      *(v61 + 8) = 0;
      swift_willThrow();

      (*(v55 + 8))(v148, v144);
      goto LABEL_16;
    }

    v155 = v43;
    v44 = sub_1AB460514();
    v45 = [v162 valueForHTTPHeaderField_];

    if (v45)
    {
      v46 = sub_1AB460544();
      v143 = v47;
      v147 = v46;
    }

    else
    {
      v143 = 0;
      v147 = 0;
    }

    v72 = sub_1AB460514();
    v73 = [v162 valueForHTTPHeaderField_];

    if (v73)
    {
      v74 = sub_1AB460544();
      v139 = v75;
      v141 = v74;
    }

    else
    {
      v139 = 0;
      v141 = 0;
    }

    v76 = sub_1AB460514();
    v77 = [v162 valueForHTTPHeaderField_];

    if (v77)
    {
      v78 = sub_1AB460544();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = sub_1AB460514();
    v82 = [v162 valueForHTTPHeaderField_];

    if (v82)
    {
      v83 = sub_1AB460544();
      v137 = v84;
      v138 = v83;
    }

    else
    {
      v137 = 0;
      v138 = 0;
    }

    v85 = (v0 + 1040);
    sub_1AB4622E4();
    v129 = *(v0 + 792);
    v130 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 760), v130);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1AB4D4720;
    *&v163 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v86._countAndFlagsBits = 0xD000000000000017;
    v86._object = 0x80000001AB5016F0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v86);
    if (v80)
    {
      v87 = MEMORY[0x1E69E6158];
      v88 = v80;
      v89 = v78;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v87 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v89;
    *(v0 + 1088) = v88;
    *(v0 + 1104) = v87;
    sub_1AB014A58(v0 + 1080, v0 + 1176, &unk_1EB437E60);
    *v85 = 0u;
    *(v0 + 1056) = 0u;

    sub_1AB0169C4(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v90 = v163;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1AB0168A8(0, *(v163 + 16) + 1, 1, v163);
    }

    v92 = *(v90 + 2);
    v91 = *(v90 + 3);
    v161 = v78;
    v152 = v80;
    if (v92 >= v91 >> 1)
    {
      v90 = sub_1AB0168A8((v91 > 1), v92 + 1, 1, v90);
    }

    v133 = *(v0 + 1704);
    v134 = *(v0 + 1696);
    v135 = *(v0 + 1712);
    v132 = *(v0 + 1720);
    v93 = *(v0 + 1616);
    v94 = *(v0 + 1472);
    v95 = *(v0 + 1464);
    v96 = *(v0 + 1448);
    v97 = *(v0 + 1424);
    *(v90 + 2) = v92 + 1;
    v98 = &v90[40 * v92];
    v99 = *v85;
    v100 = *(v0 + 1056);
    v98[64] = *(v0 + 1072);
    *(v98 + 2) = v99;
    *(v98 + 3) = v100;
    *&v163 = v90;
    sub_1AB014AC0(v0 + 1080, &unk_1EB437E60);
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v101);
    *(v128 + 32) = v90;
    Logger.info(_:)(v128, v130, v129);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 760);
    v102 = v96[3];
    v103 = v96[4];
    __swift_project_boxed_opaque_existential_1Tm(v96, v102);
    (*(v103 + 8))(v102, v103);
    v104 = [objc_opt_self() processInfo];
    [v104 operatingSystemVersion];
    v131 = v163;
    v105 = v164;

    v106 = JEGestaltGetBuildVersion();
    v107 = sub_1AB460544();
    v109 = v108;

    sub_1AB1B7310(v162, &v163);
    v110 = v163;
    v111 = BYTE8(v163);
    v112 = v164;
    v113 = v165;
    v114 = v166;
    v115 = v167;
    v116 = v168;
    *v94 = v147;
    v94[1] = v143;
    v94[2] = v141;
    v94[3] = v139;
    v117 = v94 + v95[7];
    *v117 = v131;
    *(v117 + 2) = v105;
    v117[24] = 0;
    v118 = (v94 + v95[8]);
    *v118 = v107;
    v118[1] = v109;
    v119 = (v94 + v95[9]);
    *v119 = v138;
    v119[1] = v137;
    *(v94 + v95[10]) = 2;
    v120 = v94 + v95[11];
    *v120 = v110;
    v120[8] = v111;
    *(v120 + 2) = v112;
    v120[24] = v113;
    *(v120 + 4) = v114;
    v120[40] = v115;
    v120[41] = v116;
    sub_1AB01494C(v0 + 640, v97);
    sub_1AB1B93F8(v94, v97 + v93[5], type metadata accessor for JetPackAsset.Metadata);
    sub_1AB1B9A20(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v121 = sub_1AB461C44();
    v123 = v122;

    sub_1AB1B96D0(v94, type metadata accessor for JetPackAsset.Metadata);
    (*(v133 + 8))(v135, v134);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);
    v124 = v97 + v93[6];
    *v124 = 0;
    *(v124 + 4) = 1;
    v125 = (v97 + v93[7]);
    *v125 = v121;
    v125[1] = v123;
    *(v97 + v93[8]) = 0;
    *(v97 + v93[9]) = 0;
    *(v97 + v93[10]) = 0;
    v126 = (v97 + v93[11]);
    *v126 = v161;
    v126[1] = v152;
  }

  v62 = *(v0 + 8);
  v63 = v155 == 304;
LABEL_37:

  return v62(v63);
}

uint64_t sub_1AB1B430C()
{
  v1 = *(v0 + 1720);
  v9 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1648);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v9, v3);

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1AB1B44EC()
{
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1400;
  *(v0 + 24) = sub_1AB1B45B8;
  *(v0 + 304) = swift_continuation_init();
  *(v0 + 376) = 1;
  sub_1AB1956AC(v0 + 304);
  sub_1AB014AC0(v0 + 304, &qword_1EB43A050);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1AB1B45B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1888) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1B568C;
  }

  else
  {
    *(v1 + 1896) = *(v1 + 1400);
    *(v1 + 1912) = *(v1 + 1416);
    v3 = sub_1AB1B46EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1B46EC()
{
  v151 = v0;
  v143 = *(v0 + 1904);
  v139 = *(v0 + 1896);
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1432);
  sub_1AB1B9A20(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
  v6 = sub_1AB461C44();
  v8 = v7;

  v9 = type metadata accessor for JetPackDataStreamSource();
  *(v0 + 664) = v9;
  *(v0 + 672) = &protocol witness table for JetPackDataStreamSource;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 640));
  v11 = *(v9 + 24);
  v2(boxed_opaque_existential_0 + v11, v5, v4);
  (*(v3 + 56))(boxed_opaque_existential_0 + v11, 0, 1, v4);
  *boxed_opaque_existential_0 = v139;
  boxed_opaque_existential_0[1] = v143;
  boxed_opaque_existential_0[2] = v6;
  boxed_opaque_existential_0[3] = v8;
  v12 = *(v0 + 1912);
  v13 = [v12 statusCode];
  v144 = v12;
  if (v13 == 304)
  {
    v134 = 304;
    v127 = *(v0 + 1616);
    v131 = *(v0 + 1800);
    v14 = *(v0 + 1600);
    v15 = *(v0 + 1440);
    sub_1AB4622E4();
    v16 = *(v0 + 904);
    v17 = *(v0 + 912);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 880), v16);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *(v0 + 1168) = MEMORY[0x1E69E6158];
    *(v0 + 1144) = 0xD00000000000002ALL;
    *(v0 + 1152) = 0x80000001AB501710;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1AB0169C4(v0 + 1144, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    Logger.info(_:)(v18, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 880);
    sub_1AB014A58(v15, v14, &qword_1EB437E40);
    if (v131(v14, 1, v127) == 1)
    {
      v20 = *(v0 + 1720);
      v136 = *(v0 + 1712);
      v21 = *(v0 + 1704);
      v135 = *(v0 + 1696);
      sub_1AB014AC0(*(v0 + 1600), &qword_1EB437E40);
      sub_1AB4622E4();
      v22 = *(v0 + 584);
      v23 = *(v0 + 592);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 560), v22);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000033;
      *(v0 + 1120) = 0x80000001AB501740;
      *(v25 + 48) = 0u;
      *(v25 + 32) = 0u;
      sub_1AB0169C4(v0 + 1112, v25 + 32);
      *(v25 + 64) = 0;
      *(v24 + 32) = v25;
      Logger.error(_:)(v24, v22, v23);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 560);
      sub_1AB1B93A4();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 2;
      swift_willThrow();

      (*(v21 + 8))(v136, v135);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);

      v46 = *(v0 + 8);
      v47 = 0;
      goto LABEL_34;
    }

    v121 = *(v0 + 1720);
    v48 = *(v0 + 1704);
    v126 = *(v0 + 1696);
    v130 = *(v0 + 1712);
    v49 = *(v0 + 1632);
    v50 = *(v0 + 1616);
    v51 = *(v0 + 1496);
    v52 = *(v0 + 1488);
    v138 = *(v0 + 1480);
    v133 = *(v0 + 1464);
    v53 = *(v0 + 1448);
    v141 = *(v0 + 1424);
    sub_1AB1B9460(*(v0 + 1600), v49, type metadata accessor for JetPackAsset);
    v54 = v53[3];
    v55 = v53[4];
    __swift_project_boxed_opaque_existential_1Tm(v53, v54);
    (*(v55 + 8))(v54, v55);

    (*(v48 + 8))(v130, v126);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);
    (*(v52 + 40))(v49 + *(v50 + 20) + *(v133 + 24), v51, v138);
    *(v49 + *(v50 + 36)) = 1;
    sub_1AB1B9460(v49, v141, type metadata accessor for JetPackAsset);
  }

  else
  {
    v27 = v13;
    if ([v12 statusCode] < 200 || objc_msgSend(v12, sel_statusCode) > 299)
    {
      sub_1AB4622E4();
      v137 = *(v0 + 752);
      v140 = *(v0 + 744);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 720), v140);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1AB4D4720;
      *&v145 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
      v33._countAndFlagsBits = 0xD000000000000023;
      v33._object = 0x80000001AB501680;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v34 = [v12 statusCode];
      *(v0 + 1264) = MEMORY[0x1E69E6530];
      *(v0 + 1240) = v34;
      sub_1AB014A58(v0 + 1240, v0 + 1208, &unk_1EB437E60);
      *(v0 + 1000) = 0u;
      *(v0 + 1016) = 0u;
      sub_1AB0169C4(v0 + 1208, v0 + 1000);
      *(v0 + 1032) = 0;
      v35 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1AB0168A8(0, *(v145 + 16) + 1, 1, v145);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
      }

      v38 = *(v0 + 1720);
      v132 = *(v0 + 1712);
      v39 = *(v0 + 1704);
      v129 = *(v0 + 1696);
      *(v35 + 2) = v37 + 1;
      v40 = &v35[40 * v37];
      v41 = *(v0 + 1000);
      v42 = *(v0 + 1016);
      v40[64] = *(v0 + 1032);
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      *&v145 = v35;
      sub_1AB014AC0(v0 + 1240, &unk_1EB437E60);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v32 + 32) = v35;
      Logger.error(_:)(v32, v140, v137);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 720);
      v44 = [v144 statusCode];
      sub_1AB1B93A4();
      swift_allocError();
      *v45 = v44;
      *(v45 + 8) = 0;
      swift_willThrow();

      (*(v39 + 8))(v132, v129);
      goto LABEL_13;
    }

    v134 = v27;
    v28 = sub_1AB460514();
    v29 = [v12 valueForHTTPHeaderField_];

    if (v29)
    {
      v30 = sub_1AB460544();
      v125 = v31;
      v128 = v30;
    }

    else
    {
      v125 = 0;
      v128 = 0;
    }

    v56 = sub_1AB460514();
    v57 = [v12 valueForHTTPHeaderField_];

    if (v57)
    {
      v58 = sub_1AB460544();
      v123 = v59;
      v124 = v58;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v60 = sub_1AB460514();
    v61 = [v12 valueForHTTPHeaderField_];

    if (v61)
    {
      v62 = sub_1AB460544();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = sub_1AB460514();
    v66 = [v12 valueForHTTPHeaderField_];

    if (v66)
    {
      v67 = sub_1AB460544();
      v120 = v68;
      v122 = v67;
    }

    else
    {
      v120 = 0;
      v122 = 0;
    }

    v69 = (v0 + 1040);
    sub_1AB4622E4();
    v113 = *(v0 + 792);
    v114 = *(v0 + 784);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 760), v114);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1AB4D4720;
    *&v145 = sub_1AB0168A8(0, 24, 0, MEMORY[0x1E69E7CC0]);
    v71._countAndFlagsBits = 0xD000000000000017;
    v71._object = 0x80000001AB5016F0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    if (v64)
    {
      v72 = MEMORY[0x1E69E6158];
      v73 = v64;
      v74 = v62;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v72 = 0;
      *(v0 + 1096) = 0;
    }

    *(v0 + 1080) = v74;
    *(v0 + 1088) = v73;
    *(v0 + 1104) = v72;
    sub_1AB014A58(v0 + 1080, v0 + 1176, &unk_1EB437E60);
    *v69 = 0u;
    *(v0 + 1056) = 0u;

    sub_1AB0169C4(v0 + 1176, v0 + 1040);
    *(v0 + 1072) = 0;
    v75 = v145;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_1AB0168A8(0, *(v145 + 16) + 1, 1, v145);
    }

    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    v142 = v62;
    if (v77 >= v76 >> 1)
    {
      v75 = sub_1AB0168A8((v76 > 1), v77 + 1, 1, v75);
    }

    v116 = *(v0 + 1720);
    v117 = *(v0 + 1704);
    v118 = *(v0 + 1696);
    v119 = *(v0 + 1712);
    v112 = *(v0 + 1616);
    v78 = *(v0 + 1472);
    v79 = *(v0 + 1464);
    v80 = *(v0 + 1448);
    v81 = *(v0 + 1424);
    *(v75 + 2) = v77 + 1;
    v82 = &v75[40 * v77];
    v83 = *v69;
    v84 = *(v0 + 1056);
    v82[64] = *(v0 + 1072);
    *(v82 + 2) = v83;
    *(v82 + 3) = v84;
    *&v145 = v75;
    sub_1AB014AC0(v0 + 1080, &unk_1EB437E60);
    v85._countAndFlagsBits = 0;
    v85._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    *(v70 + 32) = v75;
    Logger.info(_:)(v70, v114, v113);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 760);
    v86 = v80[3];
    v87 = v80[4];
    __swift_project_boxed_opaque_existential_1Tm(v80, v86);
    (*(v87 + 8))(v86, v87);
    v88 = [objc_opt_self() processInfo];
    [v88 operatingSystemVersion];
    v115 = v145;
    v89 = v146;

    v90 = JEGestaltGetBuildVersion();
    v91 = sub_1AB460544();
    v93 = v92;

    sub_1AB1B7310(v144, &v145);
    v94 = v145;
    v95 = BYTE8(v145);
    v96 = v146;
    v97 = v147;
    v98 = v148;
    v99 = v149;
    v100 = v150;
    *v78 = v128;
    v78[1] = v125;
    v78[2] = v124;
    v78[3] = v123;
    v101 = v78 + v79[7];
    *v101 = v115;
    *(v101 + 2) = v89;
    v101[24] = 0;
    v102 = (v78 + v79[8]);
    *v102 = v91;
    v102[1] = v93;
    v103 = (v78 + v79[9]);
    *v103 = v122;
    v103[1] = v120;
    *(v78 + v79[10]) = 2;
    v104 = v78 + v79[11];
    *v104 = v94;
    v104[8] = v95;
    *(v104 + 2) = v96;
    v104[24] = v97;
    *(v104 + 4) = v98;
    v104[40] = v99;
    v104[41] = v100;
    sub_1AB01494C(v0 + 640, v81);
    sub_1AB1B93F8(v78, v81 + v112[5], type metadata accessor for JetPackAsset.Metadata);
    v105 = sub_1AB461C44();
    v107 = v106;

    sub_1AB1B96D0(v78, type metadata accessor for JetPackAsset.Metadata);
    (*(v117 + 8))(v119, v118);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 640);
    v108 = v81 + v112[6];
    *v108 = 0;
    *(v108 + 4) = 1;
    v109 = (v81 + v112[7]);
    *v109 = v105;
    v109[1] = v107;
    *(v81 + v112[8]) = 0;
    *(v81 + v112[9]) = 0;
    *(v81 + v112[10]) = 0;
    v110 = (v81 + v112[11]);
    *v110 = v142;
    v110[1] = v64;
  }

  v46 = *(v0 + 8);
  v47 = v134 == 304;
LABEL_34:

  return v46(v47);
}

uint64_t sub_1AB1B568C()
{
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1704);
  v4 = *(v0 + 1696);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1AB1B5844()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1AB1B5A00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v119 = a4;
  v130 = *MEMORY[0x1E69E9840];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280);
  MEMORY[0x1EEE9AC00](v112);
  v113 = v107 - v8;
  *&v116 = sub_1AB45F604();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45F9E4();
  v114 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v107 - v17;
  v19 = sub_1AB45F764();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v118 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v107 - v22;
  v24 = a1;
  v26 = v25;
  v28 = v27;
  sub_1AB014A58(v24, v18, &unk_1EB4395B0);
  if ((*(v26 + 48))(v18, 1, v28) == 1)
  {
    sub_1AB014AC0(v18, &unk_1EB4395B0);
    if (a3)
    {
LABEL_3:
      v29 = a3;
LABEL_27:
      v92 = a3;
      sub_1AB2A3700(v29);
      v93 = v29;
LABEL_28:

      return;
    }

LABEL_26:
    sub_1AB1B93A4();
    v29 = swift_allocError();
    *v91 = 1;
    *(v91 + 8) = 2;
    goto LABEL_27;
  }

  (*(v26 + 32))(v23, v18, v28);
  v30 = v23;
  if (!a2 || (objc_opt_self(), (v31 = swift_dynamicCastObjCClass()) == 0))
  {
    (*(v26 + 8))(v23, v28);
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v108 = v31;
  v109 = v26;
  v32 = a2;
  sub_1AB45F9D4();
  v33 = sub_1AB45F9C4();
  v110 = v30;
  v35 = v34;
  (*(v114 + 8))(v13, v11);
  *&v127 = 0x6B63617074656A2ELL;
  *(&v127 + 1) = 0xE800000000000000;
  *&v122 = v33;
  *(&v122 + 1) = v35;
  v36 = v110;
  *&v122 = sub_1AB4607D4();
  *(&v122 + 1) = v37;
  sub_1AB4606D4();
  v127 = v122;
  v38 = v115;
  v39 = v116;
  (v115)[13](v10, *MEMORY[0x1E6968F70], v116);
  sub_1AB0273A8();
  v40 = v118;
  sub_1AB45F744();
  (v38[1])(v10, v39);

  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  sub_1AB45F6E4();
  v43 = sub_1AB460514();

  *&v127 = 0;
  v44 = [v42 attributesOfItemAtPath:v43 error:&v127];

  v45 = v127;
  if (!v44)
  {
    v100 = v109;
LABEL_32:
    v101 = v45;
    v102 = sub_1AB45F594();

    swift_willThrow();
    sub_1AB1B93A4();
    v103 = swift_allocError();
    *v104 = v102;
    *(v104 + 8) = 1;
    v105 = v102;
    sub_1AB2A3700(v103);

    v106 = *(v100 + 8);
    v106(v40, v28);
    v106(v36, v28);
    v93 = v103;
    goto LABEL_28;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1AB1B9A20(&qword_1EB436478, type metadata accessor for FileAttributeKey);
  v46 = sub_1AB4602F4();
  v47 = v45;

  if (*(v46 + 16) && (v48 = sub_1AB1DB6F4(*MEMORY[0x1E696A3B8]), (v49 & 1) != 0))
  {
    sub_1AB0165C4(*(v46 + 56) + 32 * v48, &v127);

    if ((swift_dynamicCast() & 1) != 0 && v122 && [v108 statusCode] >= 200 && objc_msgSend(v108, sel_statusCode) <= 299)
    {
      v115 = v32;
      v117 = v28;
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v50 = v128;
      v51 = v129;
      __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v52 = swift_allocObject();
      v116 = xmmword_1AB4D4720;
      *(v52 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v53 = swift_allocObject();
      *(v53 + 16) = v116;
      *(&v123 + 1) = MEMORY[0x1E69E6158];
      *&v122 = 0xD00000000000003ELL;
      *(&v122 + 1) = 0x80000001AB5018B0;
      *(v53 + 48) = 0u;
      *(v53 + 32) = 0u;
      sub_1AB0169C4(&v122, v53 + 32);
      *(v53 + 64) = 0;
      *(v52 + 32) = v53;
      Logger.info(_:)(v52, v50, v51);

      __swift_destroy_boxed_opaque_existential_1Tm(&v127);
      sub_1AB4622E4();
      v54 = v128;
      v114 = v129;
      v107[1] = __swift_project_boxed_opaque_existential_1Tm(&v127, v128);
      v55 = swift_allocObject();
      *(v55 + 16) = v116;
      v120 = sub_1AB0168A8(0, 15, 0, MEMORY[0x1E69E7CC0]);
      v56._countAndFlagsBits = 0x203A6D6F7266;
      v56._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      v57 = v117;
      v126 = v117;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v125);
      v59 = v109 + 16;
      v60 = *(v109 + 16);
      v61 = v110;
      v60(boxed_opaque_existential_0, v110, v57);
      sub_1AB014A58(v125, v121, &unk_1EB437E60);
      v122 = 0u;
      v123 = 0u;
      sub_1AB0169C4(v121, &v122);
      v124 = 0;
      v62 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1AB0168A8(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1AB0168A8((v63 > 1), v64 + 1, 1, v62);
      }

      *(v62 + 2) = v64 + 1;
      v65 = &v62[40 * v64];
      v66 = v122;
      v67 = v123;
      v65[64] = v124;
      *(v65 + 2) = v66;
      *(v65 + 3) = v67;
      v120 = v62;
      sub_1AB014AC0(v125, &unk_1EB437E60);
      v68._countAndFlagsBits = 0x203A6F74202C20;
      v68._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v68);
      v69 = v117;
      v126 = v117;
      v70 = __swift_allocate_boxed_opaque_existential_0(v125);
      v60(v70, v118, v69);
      sub_1AB014A58(v125, v121, &unk_1EB437E60);
      v122 = 0u;
      v123 = 0u;
      sub_1AB0169C4(v121, &v122);
      v124 = 0;
      v71 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_1AB0168A8(0, *(v71 + 2) + 1, 1, v71);
      }

      v73 = *(v71 + 2);
      v72 = *(v71 + 3);
      *&v116 = v59;
      v107[0] = v60;
      if (v73 >= v72 >> 1)
      {
        v71 = sub_1AB0168A8((v72 > 1), v73 + 1, 1, v71);
      }

      *(v71 + 2) = v73 + 1;
      v74 = &v71[40 * v73];
      v75 = v122;
      v76 = v123;
      v74[64] = v124;
      *(v74 + 2) = v75;
      *(v74 + 3) = v76;
      v120 = v71;
      sub_1AB014AC0(v125, &unk_1EB437E60);
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v77);
      *(v55 + 32) = v120;
      Logger.info(_:)(v55, v54, v114);

      __swift_destroy_boxed_opaque_existential_1Tm(&v127);
      v78 = [v41 defaultManager];
      v79 = sub_1AB45F654();
      v40 = v118;
      v80 = sub_1AB45F654();
      *&v127 = 0;
      v81 = v61;
      v82 = [v78 moveItemAtURL:v79 toURL:v80 error:&v127];

      v45 = v127;
      if (v82)
      {
        v83 = v111;
        v84 = v117;
        (v107[0])(v111, v40, v117);
        v85 = v109;
        (*(v109 + 56))(v83, 0, 1, v84);
        v86 = *(v112 + 48);
        v87 = v113;
        sub_1AB017FB8(v83, v113, &unk_1EB4395B0);
        *(v87 + v86) = v108;
        v88 = v115;
        v89 = v45;
        sub_1AB430428(v87);

        sub_1AB014AC0(v87, &unk_1EB43D280);
        v90 = *(v85 + 8);
        v90(v40, v84);
        v90(v81, v84);
        return;
      }

      v28 = v117;
      v100 = v109;
      v36 = v61;
      v32 = v115;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v94 = v109;
  v95 = v111;
  (*(v109 + 56))(v111, 1, 1, v28);
  v96 = *(v112 + 48);
  v97 = v113;
  sub_1AB017FB8(v95, v113, &unk_1EB4395B0);
  *(v97 + v96) = v108;
  v98 = v32;
  sub_1AB430428(v97);

  sub_1AB014AC0(v97, &unk_1EB43D280);
  v99 = *(v94 + 8);
  v99(v40, v28);
  v99(v110, v28);
}

uint64_t sub_1AB1B6844(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1AB45F6C4();
    v12 = sub_1AB45F764();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1AB45F764();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1AB014AC0(v10, &unk_1EB4395B0);
}

uint64_t sub_1AB1B69B8()
{
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1AB1B9A10;
  v3 = v0;
  v4 = sub_1AB1B9A18;
  v5 = v0;
  sub_1AB01494C(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1AB1958A4(&v2);

  sub_1AB014AC0(&v2, &unk_1EB439920);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1AB1B6A74()
{
  v8 = &type metadata for SyncTaskScheduler;
  v9 = &protocol witness table for SyncTaskScheduler;
  v2 = sub_1AB1B9A10;
  v3 = v0;
  v4 = sub_1AB1B9D14;
  v5 = v0;
  sub_1AB01494C(v7, v6);
  v6[40] = 0;
  swift_retain_n();
  sub_1AB1956AC(&v2);

  sub_1AB014AC0(&v2, &qword_1EB43A050);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_1AB1B6B30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for URLJetPackAssetFetcher();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  sub_1AB460BB4();
  v14 = sub_1AB460BE4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_1AB1B93F8(a2, v10, type metadata accessor for URLJetPackAssetFetcher);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1AB1B9460(v10, v19 + v15, type metadata accessor for URLJetPackAssetFetcher);
  *(v19 + v16) = a3;
  *(v19 + v17) = a4;
  *(v19 + v18) = 0;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1AB4DA6B0;
  v20 = a3;
  v21 = a4;
  sub_1AB2313A4(0, 0, v13, &unk_1AB4DA750, v19);
}

void sub_1AB1B6D58(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  v5 = a2 >> 60 == 15 || a3 == 0;
  if (v5 || (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) == 0))
  {
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      sub_1AB1B93A4();
      v12 = swift_allocError();
      *v13 = 1;
      *(v13 + 8) = 2;
    }

    v14 = a4;
    sub_1AB2A3AC0(v12);
    v11 = v12;
  }

  else
  {
    v15 = v9;
    sub_1AB1B9C40(a1, a2);
    v10 = a3;
    sub_1AB4308F8(a1, a2, v15);
    sub_1AB017254(a1, a2);
    v11 = v15;
  }
}

uint64_t sub_1AB1B6E88(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_1AB017200(v13, v14);
  sub_1AB017200(v13, v14);
  sub_1AB460BB4();
  v15 = sub_1AB460BE4();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_1AB1B93F8(a2, v9, type metadata accessor for URLJetPackAssetFetcher);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1AB1B9460(v9, v20 + v16, type metadata accessor for URLJetPackAssetFetcher);
  v21 = v27;
  v22 = v28;
  *(v20 + v17) = v27;
  *(v20 + v18) = v22;
  *(v20 + v19) = 0;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v13;
  v23[1] = v14;
  v24 = v21;
  v25 = v22;
  sub_1AB2313A4(0, 0, v12, &unk_1AB4DA760, v20);
  sub_1AB017254(v13, v14);
}

uint64_t sub_1AB1B70E4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v28 = a6;
  v9 = type metadata accessor for URLJetPackAssetFetcher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  sub_1AB460BB4();
  v16 = sub_1AB460BE4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1AB1B93F8(a2, v12, type metadata accessor for URLJetPackAssetFetcher);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1AB1B9460(v12, v21 + v17, type metadata accessor for URLJetPackAssetFetcher);
  *(v21 + v18) = a3;
  *(v21 + v19) = a4;
  v22 = v27;
  *(v21 + v20) = v27;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = xmmword_1AB4DA6B0;
  v23 = a3;
  v24 = a4;
  v25 = v22;
  sub_1AB2313A4(0, 0, v15, v28, v21);
}

uint64_t sub_1AB1B7310@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB4605C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB432D08 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  if (v24 == 1)
  {
    if (qword_1EB432D10 != -1)
    {
      swift_once();
    }

    if (byte_1EB432388 != 1)
    {
LABEL_15:
      v12 = sub_1AB460514();
      v11 = [a1 valueForHTTPHeaderField_];

      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = sub_1AB0550D0(&unk_1F1FF35A8);
    sub_1AB0589A8(&unk_1F1FF35C8);
    if (qword_1EB433460 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    if (!v25)
    {

      goto LABEL_15;
    }

    v9 = sub_1AB05CF1C(v24, v25, v8);

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = sub_1AB460514();
  v11 = [a1 valueForHTTPHeaderField_];

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1AB460544();

  sub_1AB460594();
  v13 = sub_1AB460554();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  if (v15 >> 60 != 15)
  {
    sub_1AB45F0D4();
    swift_allocObject();
    sub_1AB45F0C4();
    sub_1AB05DAE4();
    sub_1AB45F0B4();

    sub_1AB03BD58(v13, v15);
  }

LABEL_19:
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v16 = v26;
  v17 = v27;
  __swift_project_boxed_opaque_existential_1Tm(&v24, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v18 = swift_allocObject();
  v22 = xmmword_1AB4D4720;
  *(v18 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  v23[3] = MEMORY[0x1E69E6158];
  v23[0] = 0xD000000000000022;
  v23[1] = 0x80000001AB501910;
  *(v19 + 48) = 0u;
  *(v19 + 32) = 0u;
  sub_1AB0169C4(v23, v19 + 32);
  *(v19 + 64) = 0;
  *(v18 + 32) = v19;
  Logger.info(_:)(v18, v16, v17);

  result = __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  *a2 = 0x40AC200000000000;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4143C68000000000;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1AB1B7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a8;
  v8[58] = v10;
  v8[55] = a6;
  v8[56] = a7;
  v8[53] = a4;
  v8[54] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AB1B7B44, 0, 0);
}

uint64_t sub_1AB1B7B44()
{
  v1 = *(v0 + 424);
  *(v0 + 472) = *(v1 + *(type metadata accessor for URLJetPackAssetFetcher() + 28));

  return MEMORY[0x1EEE6DFA0](sub_1AB1B7BBC, 0, 0);
}

uint64_t sub_1AB1B7BBC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1AB1B7C88;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1AB08E9F8(v2);
  sub_1AB014AC0(v2, &unk_1EB4397E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1B7C88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 480) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1B7F70;
  }

  else
  {
    *(v1 + 488) = *(v1 + 288);
    v3 = sub_1AB1B7DAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1B7DAC()
{
  v1 = v0[61];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  v5 = [v4 _incompleteTaskMetrics];
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA28]) initWithTask:v4 metrics:v5];
  v0[62] = v6;

  [v6 setBag_];
  [v6 setSession_];
  if (v3)
  {
    v7 = sub_1AB45F584();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[58];
  [v6 setError_];

  v9 = [objc_opt_self() currentProcess];
  [v6 setProcessInfo_];

  if (v8 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1AB45F834();
  }

  [v6 setResponseBody_];

  v11 = objc_opt_self();
  v0[63] = v11;
  v0[64] = sub_1AB0D4408([v11 shouldCollectMetricsPromiseForContext_]);

  return MEMORY[0x1EEE6DFA0](sub_1AB1B8210, 0, 0);
}

uint64_t sub_1AB1B7F70()
{
  v1 = *(v0 + 480);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 208), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB501800;
  v5._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);
  *(v0 + 352) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, v6, v7);
  sub_1AB014A58(v0 + 328, v0 + 360, &unk_1EB437E60);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1AB0169C4(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v9 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v12[64] = *(v0 + 320);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(v0 + 328, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v4 + 32) = v9;
  Logger.error(_:)(v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1AB1B8210()
{
  v1 = v0 + 10;
  v0[10] = v0;
  v0[15] = v0 + 36;
  v0[11] = sub_1AB1B82DC;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1AB0D482C(v2);
  sub_1AB014AC0(v2, &unk_1EB439860);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1B82DC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 520) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1B84E8;
  }

  else
  {

    *(v1 + 528) = *(v1 + 288);
    v3 = sub_1AB1B8408;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1B8408()
{
  v1 = *(v0 + 528);
  v2 = [v1 BOOLValue];

  if (v2)
  {
    *(v0 + 536) = sub_1AB22517C([*(v0 + 504) loadURLEventPromiseWithContext_]);

    return MEMORY[0x1EEE6DFA0](sub_1AB1B87A0, 0, 0);
  }

  else
  {

    swift_unknownObjectRelease();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1AB1B84E8()
{
  v1 = *(v0 + 496);

  swift_unknownObjectRelease();

  v2 = *(v0 + 520);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB501800;
  v6._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  *(v0 + 352) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 328, v0 + 360, &unk_1EB437E60);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1AB0169C4(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v13[64] = *(v0 + 320);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 328, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB1B87A0()
{
  v1 = v0 + 18;
  v0[18] = v0;
  v0[23] = v0 + 36;
  v0[19] = sub_1AB1B886C;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1AB195D90(v2);
  sub_1AB014AC0(v2, &unk_1EB437950);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB1B886C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 544) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB1B8998;
  }

  else
  {

    *(v1 + 552) = *(v1 + 288);
    v3 = sub_1AB1B8C50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB1B8998()
{
  v1 = *(v0 + 496);

  swift_unknownObjectRelease();

  v2 = *(v0 + 544);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB501800;
  v6._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  *(v0 + 352) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 328));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 328, v0 + 360, &unk_1EB437E60);
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_1AB0169C4(v0 + 360, v0 + 288);
  *(v0 + 320) = 0;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v13[64] = *(v0 + 320);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 328, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB1B8C50()
{
  [*(v0 + 552) setPreventSampling_];
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 496);
  sub_1AB4622E4();
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  *(v0 + 312) = MEMORY[0x1E69E6158];
  *(v0 + 288) = 0xD000000000000052;
  *(v0 + 296) = 0x80000001AB501850;
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_1AB0169C4(v0 + 288, v6 + 32);
  *(v6 + 64) = 0;
  *(v5 + 32) = v6;
  Logger.info(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
  v7 = [objc_opt_self() internalInstanceUsingBag_];
  swift_unknownObjectRelease();
  [v7 enqueueEvent_];

  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AB1B8E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB1B8EA4, 0, 0);
}

uint64_t sub_1AB1B8EA4()
{
  v0[5] = &type metadata for SystemDateProvider;
  v0[6] = &protocol witness table for SystemDateProvider;
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1AB1B8F54;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  return sub_1AB1B16FC(v3, v4, v2, (v0 + 2));
}

uint64_t sub_1AB1B8F54(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB1B9D10, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

void sub_1AB1B90D4()
{
  sub_1AB016760(319, &qword_1EB435620);
  if (v0 <= 0x3F)
  {
    sub_1AB06DC78();
    if (v1 <= 0x3F)
    {
      sub_1AB018E60();
      if (v2 <= 0x3F)
      {
        sub_1AB1B9198();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB1B9198()
{
  if (!qword_1EB4356A0)
  {
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4356A0);
    }
  }
}

uint64_t sub_1AB1B91E8()
{
  v0 = sub_1AB460134();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E6977AC8], v0);
  sub_1AB460174();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1AB1B92DC(uint64_t *a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1B6E88(a1, v1 + v4, v6, v7);
}

unint64_t sub_1AB1B93A4()
{
  result = qword_1EB437ED8;
  if (!qword_1EB437ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437ED8);
  }

  return result;
}

uint64_t sub_1AB1B93F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB1B9460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AB1B94C8(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_1AB45F764() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1AB1B5A00(a1, a2, a3, v8, v9);
}

uint64_t sub_1AB1B9554(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AB1B6B30(a1, v1 + v4, v6, v7);
}

uint64_t sub_1AB1B961C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AB1B70E4(a1, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1AB1B96D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB1B9730(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1AB027554;

  return sub_1AB1B7B14(a1, v11, v12, v1 + v4, v8, v9, v10, v13);
}