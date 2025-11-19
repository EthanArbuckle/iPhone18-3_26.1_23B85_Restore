uint64_t sub_1AB25ED20(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithInt32:a2 inContext:a1];
  v5 = sub_1AB2590B8(a1, v4);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439418);
    v29[0] = MEMORY[0x1E69E72F0];
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v26;
    v14 = v27;
    v12[64] = v28;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v26 = v7;
      *(&v26 + 1) = sub_1AB0223E4;
      *&v27 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v20 = sub_1AB460484();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1AB016854();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1AB25F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() valueWithRange:a2 inContext:{a3, a1}];
  v6 = sub_1AB2590B8(a1, v5);
  if (v3)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v9._countAndFlagsBits = 0x69747265766E6F43;
    v9._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    type metadata accessor for _NSRange(0);
    v11 = v10;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439408);
    v32[0] = v11;
    sub_1AB01522C(v32, v28);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v28, &v29);
    v31 = 0;
    v12 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v29;
    v17 = v30;
    v15[64] = v31;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v33 = v12;
    sub_1AB014AC0(v32, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v8 + 32) = v33;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v7, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v8;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1AB25F50C(uint64_t a1, double a2, double a3)
{
  v5 = [objc_opt_self() valueWithPoint:a1 inContext:{a2, a3}];
  v6 = sub_1AB2590B8(a1, v5);
  if (v3)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v9._countAndFlagsBits = 0x69747265766E6F43;
    v9._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    type metadata accessor for CGPoint(0);
    v11 = v10;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439410);
    v32[0] = v11;
    sub_1AB01522C(v32, v28);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v28, &v29);
    v31 = 0;
    v12 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v29;
    v17 = v30;
    v15[64] = v31;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v33 = v12;
    sub_1AB014AC0(v32, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v8 + 32) = v33;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v7, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v8;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1AB25F910(uint64_t a1, double a2, double a3)
{
  v5 = [objc_opt_self() valueWithSize:a1 inContext:{a2, a3}];
  v6 = sub_1AB2590B8(a1, v5);
  if (v3)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v9._countAndFlagsBits = 0x69747265766E6F43;
    v9._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    type metadata accessor for CGSize(0);
    v11 = v10;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439400);
    v32[0] = v11;
    sub_1AB01522C(v32, v28);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v28, &v29);
    v31 = 0;
    v12 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    v16 = v29;
    v17 = v30;
    v15[64] = v31;
    *(v15 + 2) = v16;
    *(v15 + 3) = v17;
    v33 = v12;
    sub_1AB014AC0(v32, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v8 + 32) = v33;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v7, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v29 = v8;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v23 = sub_1AB460484();
      v25 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AB4D4720;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1AB016854();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1AB25FD14(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_opt_self() valueWithRect:a1 inContext:{a2, a3, a4, a5}];
  v8 = sub_1AB2590B8(a1, v7);
  if (v5)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    v35 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v11._countAndFlagsBits = 0x69747265766E6F43;
    v11._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    type metadata accessor for CGRect(0);
    v13 = v12;
    v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393F8);
    v34[0] = v13;
    sub_1AB01522C(v34, v30);
    v31 = 0u;
    v32 = 0u;
    sub_1AB0169C4(v30, &v31);
    v33 = 0;
    v14 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v31;
    v19 = v32;
    v17[64] = v33;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v35 = v14;
    sub_1AB014AC0(v34, &unk_1EB437E60);
    v20._object = 0x80000001AB4FFFA0;
    v20._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v10 + 32) = v35;
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
      *&v31 = v10;
      *(&v31 + 1) = sub_1AB0223E4;
      *&v32 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v25 = sub_1AB460484();
      v27 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1AB016854();
      *(v28 + 32) = v25;
      *(v28 + 40) = v27;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1AB260130(uint64_t a1, double a2)
{
  v4 = [objc_opt_self() valueWithDouble:a1 inContext:a2];
  v5 = sub_1AB2590B8(a1, v4);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437008);
    v29[0] = MEMORY[0x1E69E63B0];
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v26;
    v14 = v27;
    v12[64] = v28;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v26 = v7;
      *(&v26 + 1) = sub_1AB0223E4;
      *&v27 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v20 = sub_1AB460484();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1AB016854();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1AB260528(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() valueWithBool:a2 & 1 inContext:a1];
  v5 = sub_1AB2590B8(a1, v4);
  if (v2)
  {

    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437018);
    v29[0] = MEMORY[0x1E69E6370];
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v26;
    v14 = v27;
    v12[64] = v28;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v26 = v7;
      *(&v26 + 1) = sub_1AB0223E4;
      *&v27 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v20 = sub_1AB460484();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D4720;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1AB016854();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

char **sub_1AB260918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v5 = MEMORY[0x1E69E6158];
  sub_1AB262A58(a1, &v30);
  if (v3)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v29 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0x69747265766E6F43;
    v10._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393F0);
    v28[0] = v5;
    sub_1AB01522C(v28, v27);
    v30 = 0u;
    v31 = 0u;
    sub_1AB0169C4(v27, &v30);
    LOBYTE(v32) = 0;
    v11 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[40 * v13];
    v15 = v30;
    v16 = v31;
    v14[64] = v32;
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    v29 = v11;
    sub_1AB014AC0(v28, &unk_1EB437E60);
    v17._object = 0x80000001AB4FFFA0;
    v26 = &v29;
    v17._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v9 + 32) = v29;
    v18 = sub_1AB461094();
    if (os_log_type_enabled(v8, v18))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v19 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v19 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v9;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 56) = v5;
      *(v24 + 64) = sub_1AB016854();
      *(v24 + 32) = v26;
      *(v24 + 40) = v23;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v6 = *(&v31 + 1);
    v7 = v32;
    __swift_project_boxed_opaque_existential_1Tm(&v30, *(&v31 + 1));
    v26 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }

  return v26;
}

char **sub_1AB260D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v30, a1, a3, a4);
  if (v4)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v10._countAndFlagsBits = 0x69747265766E6F43;
    v10._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    DynamicType = swift_getDynamicType();
    v29[3] = swift_getMetatypeMetadata();
    v29[0] = DynamicType;
    sub_1AB01522C(v29, v28);
    v30 = 0u;
    v31 = 0u;
    sub_1AB0169C4(v28, &v30);
    LOBYTE(v32) = 0;
    v12 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
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
    v33 = v12;
    sub_1AB014AC0(v29, &unk_1EB437E60);
    v18._object = 0x80000001AB4FFFA0;
    v27 = &v33;
    v18._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v9 + 32) = v33;
    v19 = sub_1AB461094();
    if (os_log_type_enabled(v8, v19))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v20 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v20 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v22 = swift_allocObject();
      *(v22 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v30 = v9;
      *(&v30 + 1) = sub_1AB0223E4;
      *&v31 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v27 = sub_1AB460484();
      v24 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D4720;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1AB016854();
      *(v25 + 32) = v27;
      *(v25 + 40) = v24;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v6 = *(&v31 + 1);
    v7 = v32;
    __swift_project_boxed_opaque_existential_1Tm(&v30, *(&v31 + 1));
    v27 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }

  return v27;
}

uint64_t AnyCustomJSValueConvertible.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_0, a1, a2);
}

uint64_t AnyCustomJSValueConvertible.jsRepresentation(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyCustomJSValueConvertible._jsValue(in:)(JSContext in)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 16))(in.super.isa, v3, v4);
}

JSValue __swiftcall AnyCustomJSValueConvertible.makeValue(in:)(JSContext in)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 24))(in.super.isa, v3, v4);
}

uint64_t AnyCustomJSValueConvertible.description.getter()
{
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1AB461D64();
  return 0;
}

uint64_t sub_1AB261354(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1AB2613C8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1AB261434(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1AB261490()
{
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1AB461D64();
  return 0;
}

unint64_t JSCalculatedValue.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  result = (*v1)();
  if (!v2)
  {
    v5 = result;
    result = sub_1AB054C38();
    a1[3] = result;
    a1[4] = &protocol witness table for JSValue;
    *a1 = v5;
  }

  return result;
}

unint64_t sub_1AB261568@<X0>(unint64_t *a1@<X8>)
{
  result = (*v1)();
  if (!v2)
  {
    v5 = result;
    result = sub_1AB054C38();
    a1[3] = result;
    a1[4] = &protocol witness table for JSValue;
    *a1 = v5;
  }

  return result;
}

void JSValue.init(jsConvertible:in:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 16))(a2, v5, v6);
  if (v2 || (v8 = v7, v9 = [swift_getObjCClassFromMetadata() valueWithObject:v7 inContext:a2], v8, v9))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __break(1u);
  }
}

id JSValue.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1AB054C38();
  a1[4] = &protocol witness table for JSValue;
  *a1 = v1;
  return v1;
}

id sub_1AB26170C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = sub_1AB054C38();
  a2[4] = a1;
  *a2 = v5;
  return v5;
}

unint64_t Array<A>.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v17 = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v8 = sub_1AB460A64();
  v9 = sub_1AB054C38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  WitnessTable = swift_getWitnessTable();
  result = sub_1AB258C6C(sub_1AB2618CC, v15, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], &v16);
  if (!v5)
  {
    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED8);
    v13 = sub_1AB461F94();
    v14 = [objc_opt_self() valueWithObject:v13 inContext:a1];
    swift_unknownObjectRelease();
    a5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
    result = sub_1AB0547A8();
    a5[4] = result;
    *a5 = v14;
  }

  return result;
}

uint64_t sub_1AB2618CC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(v2[3] + 16))(v2[4], v2[2]);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

unint64_t Dictionary<>.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB054C38();
  result = sub_1AB4603A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
    v6 = sub_1AB461F94();
    v7 = [objc_opt_self() valueWithObject:v6 inContext:a1];
    swift_unknownObjectRelease();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
    result = sub_1AB0547A8();
    a2[4] = result;
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1AB261A78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1[3] + 16))(v1[4], v1[2]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t Bool.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = [objc_opt_self() valueWithBool:a2 & 1 inContext:a1];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a3[4] = result;
  *a3 = v4;
  return result;
}

unint64_t sub_1AB261B74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithBool:*v2 inContext:a1];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1AB261BFC(uint64_t a1)
{
  v3 = [objc_opt_self() valueWithBool:*v1 inContext:a1];
  v4 = sub_1AB2590B8(a1, v3);

  return v4;
}

unint64_t Date.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AB45F9B4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6, v7);
  v10 = sub_1AB461F94();
  v11 = [objc_opt_self() valueWithObject:v10 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_1AB261DC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1AB461F94();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_1AB261EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v8);
  if (!v3)
  {
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    a1 = (*(v6 + 16))(a1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return a1;
}

unint64_t Double.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = [objc_opt_self() valueWithDouble:a1 inContext:a3];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

unint64_t sub_1AB262038@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithDouble:a1 inContext:*v2];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1AB2620C8(uint64_t a1)
{
  v3 = [objc_opt_self() valueWithDouble:a1 inContext:*v1];
  v4 = sub_1AB2590B8(a1, v3);

  return v4;
}

unint64_t NSNull.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNullInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v3;
  return result;
}

unint64_t sub_1AB262268@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNullInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v3;
  return result;
}

unint64_t _NSRange.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = [objc_opt_self() valueWithRange:a2 inContext:{a3, a1}];
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a4[4] = result;
  *a4 = v5;
  return result;
}

unint64_t sub_1AB262410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithRange:*v2 inContext:{v2[1], a1}];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1AB2624A4(uint64_t a1)
{
  v3 = [objc_opt_self() valueWithRange:*v1 inContext:{v1[1], a1}];
  v4 = sub_1AB2590B8(a1, v3);

  return v4;
}

unint64_t sub_1AB262578@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = [objc_opt_self() *a2];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a3[4] = result;
  *a3 = v6;
  return result;
}

unint64_t sub_1AB262630@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v5 = [objc_opt_self() *a2];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a3[4] = result;
  *a3 = v5;
  return result;
}

uint64_t sub_1AB2626E4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [objc_opt_self() *a4];
  v7 = sub_1AB2590B8(a1, v6);

  return v7;
}

unint64_t CGRect.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = [objc_opt_self() valueWithRect:a1 inContext:{a3, a4, a5, a6}];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v7;
  return result;
}

unint64_t sub_1AB262850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithRect:a1 inContext:{*v2, v2[1], v2[2], v2[3]}];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1AB2628F8(uint64_t a1)
{
  v3 = [objc_opt_self() valueWithRect:a1 inContext:{*v1, v1[1], v1[2], v1[3]}];
  v4 = sub_1AB2590B8(a1, v3);

  return v4;
}

unint64_t String.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  v6 = sub_1AB461F94();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:{a1, a2, a3}];
  swift_unknownObjectRelease();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a4[4] = result;
  *a4 = v7;
  return result;
}

unint64_t sub_1AB262A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *v2;
  v9 = v2[1];

  v5 = sub_1AB461F94();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:{a1, v8, v9}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_1AB262B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *v3;
  (*(a3 + 8))(v9);
  if (!v4)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    a1 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return a1;
}

unint64_t sub_1AB262C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v5 = [objc_opt_self() *a3];
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a4[4] = result;
  *a4 = v5;
  return result;
}

unint64_t sub_1AB262CCC@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v5 = [objc_opt_self() *a2];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a3[4] = result;
  *a3 = v5;
  return result;
}

uint64_t sub_1AB262D7C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [objc_opt_self() *a4];
  v7 = sub_1AB2590B8(a1, v6);

  return v7;
}

id sub_1AB262EB0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4393D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_1AB45F614();
  *(inited + 56) = v3;
  v4 = sub_1AB0B22E0(inited);
  swift_setDeallocating();
  sub_1AB014AC0(inited + 32, &qword_1EB438890);
  v5 = sub_1AB2591C4(a1, v4);

  return v5;
}

uint64_t sub_1AB263128(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v8 = sub_1AB0B5B34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v3 = sub_1AB461F94();
  v4 = [objc_opt_self() valueWithObject:v3 inContext:a1];
  swift_unknownObjectRelease();
  v5 = sub_1AB2590B8(a1, v4);

  return v5;
}

uint64_t sub_1AB2633A8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for JSBagObject();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = [objc_opt_self() valueWithObject:v6 inContext:{a1, v10.receiver, v10.super_class}];
  v8 = sub_1AB2590B8(a1, v7);

  return v8;
}

unint64_t sub_1AB263544@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() valueWithObject:*v2 inContext:a1];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1AB2635CC(uint64_t a1)
{
  v3 = [objc_opt_self() valueWithObject:*v1 inContext:a1];
  v4 = sub_1AB2590B8(a1, v3);

  return v4;
}

uint64_t sub_1AB26369C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE8);
  result = sub_1AB461904();
  v7 = 0;
  v39 = a1;
  v40 = result;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v38 = result + 64;
  v36 = v9;
  v37 = v14;
  if (v13)
  {
    while (1)
    {
      v48 = v3;
      v15 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_10:
      v43 = v15 | (v7 << 6);
      v18 = (*(v39 + 48) + 16 * v43);
      v19 = v18[1];
      v42 = *v18;
      v20 = (*(v39 + 56) + 16 * v43);
      v21 = v20[1];
      v45[0] = *v20;
      v45[1] = v21;
      swift_bridgeObjectRetain_n();
      v44 = v19;

      v22 = sub_1AB461F94();
      v23 = objc_opt_self();
      v24 = [v23 valueWithObject:v22 inContext:a2];
      swift_unknownObjectRelease();
      if (v24)
      {
        v25 = sub_1AB054C38();
        v46 = v25;
        v26 = &protocol witness table for JSValue;
        v27 = v24;
      }

      else
      {
        v27 = [v23 valueWithUndefinedInContext_];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
        v46 = v25;
        v26 = sub_1AB0547A8();
      }

      v47 = v26;
      v45[0] = v27;
      __swift_project_boxed_opaque_existential_1Tm(v45, v25);
      v28 = v26[2];
      v29 = v24;
      v30 = v48;
      v31 = v28(a2, v25, v26);
      v3 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v45);

      if (v30)
      {
        break;
      }

      *(v38 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      result = v40;
      v32 = (v40[6] + 16 * v43);
      *v32 = v42;
      v32[1] = v44;
      *(v40[7] + 8 * v43) = v31;
      v33 = v40[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v40[2] = v35;
      v14 = v37;
      v13 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }

    return v40;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return result;
      }

      v17 = *(v36 + 8 * v7);
      ++v16;
      if (v17)
      {
        v48 = v3;
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t MetricsFieldsContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  *a4 = *v4;
  v11[0] = v8;
  v11[1] = v9;

  return MetricsFieldsContext.addValue<A>(_:forProperty:)(a1, v11, a3);
}

uint64_t MetricsFieldsContext.containsValue<A>(forProperty:)(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1AB014DB4(*a1, a1[1]), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(v2 + 56) + 32 * v3, v7);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1AB0167A8(v7);
  return v5;
}

JetEngine::MetricsFieldsContext __swiftcall MetricsFieldsContext.merging(_:)(JetEngine::MetricsFieldsContext a1)
{
  v3 = v1;
  v4 = *a1.storage._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_1AB033AB8(v4, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;

  *v3 = v7;
  return result;
}

uint64_t MetricsFieldsContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MetricsFieldsContext.Property.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MetricsFieldsContext.Property.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MetricsFieldsContext.Property.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

Swift::Void __swiftcall MetricsFieldsContext.merge(_:)(JetEngine::MetricsFieldsContext a1)
{
  v2 = *a1.storage._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  *v1 = 0x8000000000000000;
  sub_1AB033AB8(v2, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v5);

  v4 = v5;

  *v1 = v4;
}

uint64_t MetricsFieldsContext.removeValue<A>(forProperty:)(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_1AB014DB4(*a1, a1[1]);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v9 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB0676CC();
      v7 = v9;
    }

    sub_1AB014B78((*(v7 + 56) + 32 * v5), v10);
    sub_1AB18F158(v5, v7);
    *v2 = v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return sub_1AB0167A8(v10);
}

uint64_t MetricsFieldsContext.removingValue<A>(forProperty:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a2 = *v2;
  v7[0] = v4;
  v7[1] = v5;

  return MetricsFieldsContext.removeValue<A>(forProperty:)(v7);
}

id static MetricsFieldsContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1AB15811C(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1AB4602D4();

  v5 = [v3 initWithDictionary_];

  sub_1AB15811C(v2);
  v6 = sub_1AB4602D4();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

id sub_1AB263F74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1AB15811C(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1AB4602D4();

  v5 = [v3 initWithDictionary_];

  sub_1AB15811C(v2);
  v6 = sub_1AB4602D4();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t MonotonicTimeReference.date(from:)()
{
  type metadata accessor for MonotonicTimeReference();
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  return sub_1AB45F934();
}

uint64_t MonotonicTimeReference.init(date:time:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1AB45F9B4();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for MonotonicTimeReference();
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t MonotonicTimeReference.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F9B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 MonotonicTimeReference.referenceTime.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MonotonicTimeReference() + 20));
  *a1 = result;
  return result;
}

double static MonotonicTimeReference.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1AB45F934();
  v6 = type metadata accessor for MonotonicTimeReference();
  v7 = (a1 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1ED4D1F90 + v8 + a3);
  result = *&v11;
  *(a2 + *(v6 + 20)) = v11;
  return result;
}

double static MonotonicTimeReference.+= infix(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for MonotonicTimeReference();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB070C64(a1, v6);
  sub_1AB45F934();
  v7 = &v6[*(v4 + 20)];
  v8 = *v7;
  v9 = v7[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1ED4D1F90 + v8 + a2);
  sub_1AB044D4C(v6);
  result = *&v11;
  *(a1 + *(v4 + 20)) = v11;
  return result;
}

double static MonotonicTimeReference.- infix(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1AB45F944();
  v6 = type metadata accessor for MonotonicTimeReference();
  v7 = (a1 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1ED4D1F90 + v8 - a3);
  result = *&v11;
  *(a2 + *(v6 + 20)) = v11;
  return result;
}

double static MonotonicTimeReference.-= infix(_:_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for MonotonicTimeReference();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB070C64(a1, v6);
  sub_1AB45F944();
  v7 = &v6[*(v4 + 20)];
  v8 = *v7;
  v9 = v7[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v9 / *&qword_1ED4D1F90 + v8 - a2);
  sub_1AB044D4C(v6);
  result = *&v11;
  *(a1 + *(v4 + 20)) = v11;
  return result;
}

Swift::Int MonotonicTimeReference.time(from:)()
{
  sub_1AB45F8F4();
  v2 = v1;
  v3 = (v0 + *(type metadata accessor for MonotonicTimeReference() + 20));
  v4 = *v3;
  v5 = v3[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v6 = v2 + v5 / *&qword_1ED4D1F90 + v4;

  return MonotonicTime.init(timeInterval:)(v6).seconds;
}

JetEngine::MonotonicTime __swiftcall MonotonicTimeReference.time(fromIntervalSince1970:)(Swift::Double fromIntervalSince1970)
{
  v2 = v1;
  v3 = sub_1AB45F9B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F954();
  sub_1AB45F8F4();
  v8 = v7;
  v9 = (v2 + *(type metadata accessor for MonotonicTimeReference() + 20));
  v10 = *v9;
  v11 = v9[1];
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  MonotonicTime.init(timeInterval:)(v8 + v11 / *&qword_1ED4D1F90 + v10);
  v12 = (*(v4 + 8))(v6, v3);
  result.nanoseconds = v13;
  result.seconds = v12;
  return result;
}

BOOL static MonotonicTimeReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AB45F974() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MonotonicTimeReference() + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

BOOL sub_1AB264A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1AB45F974() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  return v8 == v11 && v7 == v10;
}

uint64_t JSONObject._isEqual(to:)(uint64_t a1)
{
  sub_1AB01EC0C(v1, v20);
  sub_1AB01EC0C(a1, v18);
  if (v21 | v19)
  {
    sub_1AB01EC0C(v20, &v14);
    if (v15)
    {
      sub_1AB0149B0(&v14, v16);
      sub_1AB01EC0C(v18, &v12);
      if (v13)
      {
        sub_1AB0149B0(&v12, &v14);
        v4 = v17;
        v5 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
        v13 = v4;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
        (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
        v7 = v15;
        v8 = __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
        v11[3] = v7;
        v9 = __swift_allocate_boxed_opaque_existential_0(v11);
        (*(*(v7 - 8) + 16))(v9, v8, v7);
        v3 = _isStructurallyEqual(_:to:with:at:)(&v12, v11, 3uLL, 0);
        sub_1AB18977C(v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        __swift_destroy_boxed_opaque_existential_1Tm(&v12);
        __swift_destroy_boxed_opaque_existential_1Tm(&v14);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        goto LABEL_9;
      }

      sub_1AB18977C(&v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_1AB18977C(&v14);
    }

    sub_1AB18977C(v20);
    v3 = 0;
    goto LABEL_9;
  }

  sub_1AB18977C(v20);
  v3 = 1;
LABEL_9:
  sub_1AB18977C(v18);
  return v3 & 1;
}

uint64_t sub_1AB264C74()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB264D8C()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB264E90()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB264FC0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = *(v1 + 192);
  os_unfair_lock_lock(v3 + 4);
  sub_1AB265E7C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  return v5;
}

Swift::String __swiftcall Localizer.integer(for:in:)(Swift::Int a1, JetEngine::LocalizerContext in)
{
  v4 = v3;
  v5 = v2;
  v6 = *in;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v14 = v6;
  v8 = (*(v4 + 64))(v7, 0, 1, 0, 0, &v14, v5, v4);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t LocalizerLookupStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

JetEngine::LocalizerContext_optional __swiftcall LocalizerContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1AB4619B4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocalizerContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6574497473696CLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x63696D616E7964;
  if (v1 != 1)
  {
    v5 = 0x6F6C61646E617473;
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

uint64_t sub_1AB265318()
{
  sub_1AB460684();
}

void sub_1AB26542C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x6D6574497473696CLL;
  v7 = 0x80000001AB4FDE50;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001AB4FDE70;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x63696D616E7964;
  if (v2 != 1)
  {
    v10 = 0x6F6C61646E617473;
    v9 = 0xEA0000000000656ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AB265554(void *a1)
{
  [a1 decimalValue];
  v3 = sub_1AB461304();
  v4 = v1;
  MEMORY[0x1AC59BA20](37, 0xE100000000000000);
  return v3;
}

Swift::String __swiftcall Localizer.percentage(forNumber:minimumFractionDigits:maximumFractionDigits:in:)(NSNumber forNumber, Swift::Int_optional minimumFractionDigits, Swift::Int_optional maximumFractionDigits, JetEngine::LocalizerContext in)
{
  [(objc_class *)forNumber.super.super.isa decimalValue:*&minimumFractionDigits.is_nil];
  v8 = sub_1AB461304();
  v9 = v4;
  MEMORY[0x1AC59BA20](37, 0xE100000000000000);
  v5 = v8;
  v6 = v9;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Localizer.string(forKey:with:)(Swift::String forKey, Swift::OpaquePointer_optional with)
{
  v6 = 0;
  v3 = (*(v2 + 48))(forKey._countAndFlagsBits, forKey._object, with.value._rawValue, &v6, *&with.is_nil);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall Localizer.string(forKey:using:)(Swift::String forKey, JetEngine::LocalizerLookupStrategy using)
{
  v6 = *using;
  v3 = (*(v2 + 48))(forKey._countAndFlagsBits, forKey._object, 0, &v6);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall Localizer.string(forKey:)(Swift::String forKey)
{
  v5 = 0;
  v2 = (*(v1 + 48))(forKey._countAndFlagsBits, forKey._object, 0, &v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Localizer.string(forKey:defaultValue:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 17);
  v9 = *a3;
  v10 = v5;
  v11 = v6;
  v8 = 0;
  return (*(a5 + 56))(a1, a2, 0, &v9, &v8, a4, a5);
}

uint64_t Localizer.string(forKey:defaultValue:using:)(uint64_t a1, uint64_t a2, __int128 *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 17);
  v8 = *a4;
  v11 = *a3;
  v12 = v6;
  v13 = v7;
  v10 = v8;
  return (*(a6 + 56))(a1, a2, 0, &v11, &v10, a5);
}

uint64_t Localizer.string(forKey:with:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 17);
  v10 = *a4;
  v11 = v6;
  v12 = v7;
  v9 = 0;
  return (*(a6 + 56))(a1, a2, a3, &v10, &v9, a5);
}

Swift::String __swiftcall Localizer.decimal(forNumber:)(NSNumber forNumber)
{
  v5 = 0;
  v2 = (*(v1 + 64))(forNumber.super.super.isa, 0, 1, 0, 1, &v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Localizer.percentage(forNumber:)(NSNumber forNumber)
{
  v5 = 0;
  v2 = (*(v1 + 72))(forNumber.super.super.isa, 0, 1, 0, 1, &v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Localizer.integer(for:)(Swift::Int a1)
{
  v5 = 0;
  v2 = (*(v1 + 80))(a1, &v5);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall Localizer.string(withCount:forKey:with:)(Swift::Int withCount, Swift::String forKey, Swift::OpaquePointer_optional with)
{
  v7 = 0;
  v4 = (*(v3 + 88))(withCount, forKey._countAndFlagsBits, forKey._object, with.value._rawValue, &v7, *&with.is_nil);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String __swiftcall Localizer.string(withCount:forKey:)(Swift::Int withCount, Swift::String forKey)
{
  v6 = 0;
  v3 = (*(v2 + 88))(withCount, forKey._countAndFlagsBits, forKey._object, 0, &v6);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Localizer.string(withCount:forKey:with:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a5 + 16);
  v8 = *(a5 + 17);
  v11 = *a5;
  v12 = v7;
  v13 = v8;
  v10 = 0;
  return (*(a7 + 96))(a1, a2, a3, a4, &v11, &v10, a6);
}

uint64_t Localizer.string(withCount:forKey:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 17);
  v10 = *a4;
  v11 = v6;
  v12 = v7;
  v9 = 0;
  return (*(a6 + 96))(a1, a2, a3, 0, &v10, &v9, a5, a6);
}

unint64_t sub_1AB265AE0()
{
  result = qword_1EB439450;
  if (!qword_1EB439450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439450);
  }

  return result;
}

unint64_t sub_1AB265B38()
{
  result = qword_1EB439458;
  if (!qword_1EB439458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439458);
  }

  return result;
}

uint64_t dispatch thunk of static Localizer.fetch(contentsOf:for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  swift_getAtKeyPath();
  return (*(v4 + 32))(a2, v6, v3);
}

uint64_t ReadOnlyLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1AB266028(a1, MEMORY[0x1E69E77B0], a2);
}

{
  return sub_1AB266028(a1, MEMORY[0x1E69E6F98], a2);
}

uint64_t sub_1AB266028@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getAtKeyPath();
  v7[0] = v7[1];
  return (*(*(*(v5 + *a2 + 8) - 8) + 32))(a3, v7);
}

uint64_t ReadOnlyLens.description.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1AB4605E4();
}

uint64_t ReadOnlyLens<A>.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460454();
  return sub_1AB462104();
}

uint64_t sub_1AB26623C()
{
  sub_1AB4620A4();
  ReadOnlyLens<A>.hash(into:)();
  return sub_1AB462104();
}

uint64_t get_enum_tag_for_layout_string_9JetEngine24SentryExceptionMechanismVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1AB26632C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1AB266374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB2663E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7 - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB267248();
  sub_1AB462274();
  LOBYTE(v16) = 0;
  sub_1AB461BB4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1AB461BB4();
    LOBYTE(v16) = 2;
    sub_1AB461B44();
    LOBYTE(v16) = 3;
    sub_1AB461B44();
    *&v16 = *(v3 + 120);
    v15[0] = 4;
    sub_1AB267344();
    sub_1AB461B84();
    v9 = *(v3 + 80);
    v20[0] = *(v3 + 64);
    v10 = *(v3 + 64);
    v11 = *(v3 + 80);
    v12 = *(v3 + 96);
    v20[1] = v9;
    v20[2] = v12;
    v21 = *(v3 + 112);
    v16 = v10;
    v17 = v11;
    v18 = *(v3 + 96);
    v19 = *(v3 + 112);
    v15[55] = 5;
    sub_1AB267398(v20, v15);
    sub_1AB267408();
    sub_1AB461B84();
    sub_1AB26745C(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AB2666B0()
{
  sub_1AB460684();
}

uint64_t sub_1AB2667A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB2675C4();
  *a1 = result;
  return result;
}

void sub_1AB2667D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x695F646165726874;
  v6 = 0xE900000000000064;
  v7 = 0xEA00000000006563;
  v8 = 0x6172746B63617473;
  if (v2 != 4)
  {
    v8 = 0x73696E616863656DLL;
    v7 = 0xE90000000000006DLL;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x65756C6176;
  if (v2 != 1)
  {
    v10 = 0x656C75646F6DLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AB266890()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x695F646165726874;
  v4 = 0x6172746B63617473;
  if (v1 != 4)
  {
    v4 = 0x73696E616863656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65756C6176;
  if (v1 != 1)
  {
    v5 = 0x656C75646F6DLL;
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

uint64_t sub_1AB266948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB2675C4();
  *a1 = result;
  return result;
}

uint64_t sub_1AB26697C(uint64_t a1)
{
  v2 = sub_1AB267248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2669B8(uint64_t a1)
{
  v2 = sub_1AB267248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AB2669F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AB266DB0(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1AB266A60(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return sub_1AB266AD4(v13, v14) & 1;
}

uint64_t sub_1AB266AD4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 80);
  v26 = *(a1 + 64);
  v11 = *(a1 + 96);
  v27 = v10;
  v28 = v11;
  v12 = *(a1 + 112);
  v29 = v12;
  v13 = *(a2 + 80);
  v23[0] = *(a2 + 64);
  v23[1] = v13;
  v24 = *(a2 + 96);
  v14 = *(a2 + 112);
  v25 = v14;
  v15 = v26;
  v16 = v23[0];
  if (*(&v26 + 1))
  {
    if (*(&v23[0] + 1))
    {
      v32[0] = v23[0];
      v32[1] = v13;
      v32[2] = v24;
      v33 = v14;
      v30[0] = v26;
      v30[1] = v27;
      v30[2] = v28;
      v31 = v12;
      v21 = sub_1AB224A50(v30, v32);
      sub_1AB267398(&v26, v22);
      sub_1AB267398(v23, v22);
      sub_1AB26745C(v16, *(&v16 + 1));
      sub_1AB26745C(v15, *(&v15 + 1));
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

LABEL_30:
    sub_1AB267398(&v26, v32);
    sub_1AB267398(v23, v32);
    sub_1AB26745C(v15, *(&v15 + 1));
    sub_1AB26745C(v16, *(&v16 + 1));
    return 0;
  }

  if (*(&v23[0] + 1))
  {
    goto LABEL_30;
  }

  v18 = v26;
  sub_1AB267398(&v26, v32);
  sub_1AB267398(v23, v32);
  sub_1AB26745C(v18, 0);
LABEL_34:
  v19 = *(a1 + 120);
  v20 = *(a2 + 120);
  if (v19)
  {
    if (v20 && (sub_1AB16D9DC(v19, v20) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AB266DB0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439460);
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB267248();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  v41 = a2;
  LOBYTE(v51[0]) = 0;
  v9 = v42;
  v10 = sub_1AB461A84();
  v12 = v11;
  LOBYTE(v51[0]) = 1;
  v38 = sub_1AB461A84();
  v40 = v13;
  LOBYTE(v51[0]) = 2;
  v14 = sub_1AB461A14();
  v39 = v15;
  v35 = v14;
  LOBYTE(v51[0]) = 3;
  v37 = 0;
  v34 = sub_1AB461A14();
  v36 = v16;
  LOBYTE(v43) = 4;
  sub_1AB26729C();
  sub_1AB461A54();
  v33 = v51[0];
  v58 = 5;
  sub_1AB2672F0();
  sub_1AB461A54();
  (*(v8 + 8))(v7, v9);
  v37 = v54;
  v31 = v55;
  v32 = *(&v54 + 1);
  v29 = v56;
  v30 = *(&v55 + 1);
  v28 = *(&v56 + 1);
  LODWORD(v42) = v57;
  *&v43 = v10;
  *(&v43 + 1) = v12;
  v18 = v38;
  v17 = v39;
  v19 = v40;
  *&v44 = v38;
  *(&v44 + 1) = v40;
  v20 = v36;
  *&v45 = v35;
  *(&v45 + 1) = v39;
  *&v46 = v34;
  *(&v46 + 1) = v36;
  v47 = v54;
  v48 = v55;
  v49 = v56;
  LOWORD(v50) = v57;
  *(&v50 + 1) = v33;
  sub_1AB22374C(&v43, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v51[0] = v10;
  v51[1] = v12;
  v51[2] = v18;
  v51[3] = v19;
  v51[4] = v35;
  v51[5] = v17;
  v51[6] = v34;
  v51[7] = v20;
  v51[8] = v37;
  v51[9] = v32;
  v51[10] = v31;
  v51[11] = v30;
  v51[12] = v29;
  v51[13] = v28;
  v52 = v42;
  v53 = v33;
  result = sub_1AB22369C(v51);
  v22 = v48;
  v23 = v41;
  v41[4] = v47;
  v23[5] = v22;
  v24 = v50;
  v23[6] = v49;
  v23[7] = v24;
  v25 = v44;
  *v23 = v43;
  v23[1] = v25;
  v26 = v46;
  v23[2] = v45;
  v23[3] = v26;
  return result;
}

unint64_t sub_1AB267248()
{
  result = qword_1EB4328C0[0];
  if (!qword_1EB4328C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4328C0);
  }

  return result;
}

unint64_t sub_1AB26729C()
{
  result = qword_1EB439468;
  if (!qword_1EB439468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439468);
  }

  return result;
}

unint64_t sub_1AB2672F0()
{
  result = qword_1EB439470;
  if (!qword_1EB439470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439470);
  }

  return result;
}

unint64_t sub_1AB267344()
{
  result = qword_1EB4327F0;
  if (!qword_1EB4327F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4327F0);
  }

  return result;
}

uint64_t sub_1AB267398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB267408()
{
  result = qword_1EB4325A0;
  if (!qword_1EB4325A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325A0);
  }

  return result;
}

uint64_t sub_1AB26745C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1AB2674C0()
{
  result = qword_1EB439488;
  if (!qword_1EB439488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB439488);
  }

  return result;
}

unint64_t sub_1AB267518()
{
  result = qword_1EB4328B0;
  if (!qword_1EB4328B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4328B0);
  }

  return result;
}

unint64_t sub_1AB267570()
{
  result = qword_1EB4328B8;
  if (!qword_1EB4328B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4328B8);
  }

  return result;
}

uint64_t sub_1AB2675C4()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AB267610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AB267658(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1AB2676BC()
{
  v0 = sub_1AB460514();
  v1 = [objc_opt_self() keyWithName:v0 crossDeviceSync:0];

  qword_1EB439490 = v1;
}

uint64_t sub_1AB26772C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_1AB267BA8;
  }

  else
  {
    v2 = sub_1AB26783C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26783C()
{
  v1 = *(v0 + 424);

  if (qword_1EB435D08 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 440);
  v5 = [v1 identifierForKey_];
  v6 = sub_1AB460544();
  v8 = v7;

  *(v0 + 376) = MEMORY[0x1E69E6158];
  *(v0 + 352) = v6;
  *(v0 + 360) = v8;
  v9 = *(v4 + 24);
  v10 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 16))(v0 + 352, v3, v2, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 352);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB267BA8()
{
  v1 = *(v0 + 504);
  swift_willThrow();

  v2 = *(v0 + 512);
  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 192, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB505F50;
  v6._countAndFlagsBits = 0xD0000000000000BFLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  *(v0 + 312) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 288));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB01522C(v0 + 288, v0 + 320);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  sub_1AB0169C4(v0 + 320, v0 + 184);
  *(v0 + 216) = 0;
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
  v14 = *(v0 + 184);
  v15 = *(v0 + 200);
  v13[64] = *(v0 + 216);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB0167A8(v0 + 288);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1AB267E48(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439498);
    sub_1AB460B04();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439498);
    sub_1AB460B14();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1AB267EF8()
{
  result = qword_1EB434418;
  if (!qword_1EB434418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB434418);
  }

  return result;
}

uint64_t sub_1AB267F74(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB268014, 0, 0);
}

uint64_t sub_1AB268014()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AB268140;
  v2 = v0[6];
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v2, v0 + 2, &unk_1AB4E3598, v3, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB268140()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1AB268394;
  }

  else
  {
    v2 = sub_1AB268254;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB268254()
{
  v1 = v0[6];
  v2 = type metadata accessor for JetPackAsset(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1AB014AC0(v1, &qword_1EB437E40);
    sub_1AB146B9C();
    return sub_1AB461884();
  }

  else
  {
    sub_1AB28E968(v1, v0[3], type metadata accessor for JetPackAsset);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1AB268394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB268418()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439540);
  *v1 = v0;
  v1[1] = sub_1AB091410;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1AB4E37A8, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB268578()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439518);
  *v1 = v0;
  v1[1] = sub_1AB091410;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1AB4E36C0, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB2686D8()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439528);
  *v1 = v0;
  v1[1] = sub_1AB268818;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1AB4E36E8, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB268818()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB181984, 0, 0);
  }

  else
  {
    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

double sub_1AB268950()
{
  result = 0.0;
  xmmword_1EB434390 = 0u;
  unk_1EB4343A0 = 0u;
  xmmword_1EB434370 = 0u;
  unk_1EB434380 = 0u;
  xmmword_1EB434360 = 0u;
  return result;
}

uint64_t static JetPackAssetSession.Configuration.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB434358 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AB0261D0(&xmmword_1EB434360, v2);
}

uint64_t JetPackAssetSession.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  JetPackAssetSession.init(configuration:)(a1);
  return v2;
}

uint64_t JetPackAssetSession.jetPack(urlRequest:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[155] = v3;
  v4[154] = a3;
  v4[153] = a2;
  v4[152] = a1;
  v4[156] = type metadata accessor for DaemonError();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB268AD4, 0, 0);
}

uint64_t sub_1AB268AD4()
{
  if (sub_1AB45F5C4())
  {
    v1 = sub_1AB45F6E4();
    v3 = v2;
    *(v0 + 1344) = v2;
    sub_1AB45F764();
    sub_1AB28E8B8(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v4 = sub_1AB461C44();
    v6 = v5;
    *(v0 + 1352) = v5;
    v7 = swift_task_alloc();
    *(v0 + 1360) = v7;
    *v7 = v0;
    v8 = sub_1AB26A624;
LABEL_3:
    v7[1] = v8;
    v9 = *(v0 + 1216);

    return sub_1AB26B5D0(v9, v1, v3, v4, v6);
  }

  sub_1AB0261D0(*(v0 + 1240) + 24, v0 + 96);
  v11 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v11;
  *(v0 + 80) = *(v0 + 160);
  v12 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v12;
  sub_1AB02CC14(v0 + 16, v0 + 176);
  if (*(v0 + 200))
  {
    v13 = *(v0 + 224);
    *(v0 + 288) = *(v0 + 208);
    *(v0 + 304) = v13;
    *(v0 + 320) = *(v0 + 240);
    v14 = *(v0 + 192);
    *(v0 + 256) = *(v0 + 176);
    *(v0 + 272) = v14;
    sub_1AB014A58(v0 + 256, v0 + 336, &qword_1EB4394A8);
    v15 = swift_task_alloc();
    *(v0 + 1328) = v15;
    *v15 = v0;
    v15[1] = sub_1AB26A464;
    v16 = *(v0 + 1232);
    v17 = *(v0 + 1224);
    v18 = *(v0 + 1216);

    return sub_1AB26C5BC(v18, v17, v16, v0 + 336, v0 + 376);
  }

  else
  {
    if (sub_1AB45F5C4())
    {
      v1 = sub_1AB45F6E4();
      v3 = v19;
      *(v0 + 1280) = v19;
      sub_1AB45F764();
      sub_1AB28E8B8(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
      v4 = sub_1AB461C44();
      v6 = v20;
      *(v0 + 1288) = v20;
      v7 = swift_task_alloc();
      *(v0 + 1296) = v7;
      *v7 = v0;
      v8 = sub_1AB268E3C;
      goto LABEL_3;
    }

    v21 = swift_task_alloc();
    *(v0 + 1312) = v21;
    *v21 = v0;
    v21[1] = sub_1AB268F64;
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1216);

    return sub_1AB26E658(v23, v22);
  }
}

uint64_t sub_1AB268E3C()
{
  *(*v1 + 1304) = v0;

  if (v0)
  {
    v2 = sub_1AB269084;
  }

  else
  {

    v2 = sub_1AB269100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB268F64()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 1320) = v0;
    v3 = sub_1AB269184;
  }

  else
  {
    v3 = sub_1AB269100;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB269084()
{

  *(v0 + 1320) = *(v0 + 1304);

  return MEMORY[0x1EEE6DFA0](sub_1AB269184, 0, 0);
}

uint64_t sub_1AB269100()
{
  sub_1AB064948(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB269184()
{
  v1 = *(v0 + 1320);
  *(v0 + 1208) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1272);
    v4 = *(v0 + 1264);
    v5 = *(v0 + 1256);

    sub_1AB28E968(v3, v4, type metadata accessor for DaemonError);
    sub_1AB28E900(v4, v5, type metadata accessor for DaemonError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v30 = (v0 + 696);
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1264);
      v32 = *(v0 + 1248);
      sub_1AB4622E4();
      v33 = *(v0 + 520);
      v34 = *(v0 + 528);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AB4D4720;
      v121 = sub_1AB0168A8(0, 54, 0, MEMORY[0x1E69E7CC0]);
      v36._countAndFlagsBits = 0xD000000000000035;
      v36._object = 0x80000001AB506050;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v0 + 944) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 920));
      sub_1AB28E900(v31, boxed_opaque_existential_0, type metadata accessor for DaemonError);
      sub_1AB014A58(v0 + 920, v0 + 952, &unk_1EB437E60);
      *v30 = 0u;
      *(v0 + 712) = 0u;
      sub_1AB017CC4(v0 + 952, v0 + 696, &unk_1EB437E60);
      *(v0 + 728) = 0;
      v38 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v121 + 2) + 1, 1, v121);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = *v30;
      v43 = *(v0 + 712);
      v41[64] = *(v0 + 728);
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1AB014AC0(v0 + 920, &unk_1EB437E60);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v35 + 32) = v38;
      Logger.error(_:)(v35, v33, v34);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
      v45 = swift_task_alloc();
      *(v0 + 1448) = v45;
      *v45 = v0;
      v45[1] = sub_1AB26AD2C;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 0;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v13 = **(v0 + 1256);
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v14 = *(v0 + 480);
      v15 = *(v0 + 488);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AB4D4720;
      v120 = sub_1AB0168A8(0, 71, 0, MEMORY[0x1E69E7CC0]);
      v17._countAndFlagsBits = 0xD00000000000003ELL;
      v17._object = 0x80000001AB506010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      *(v0 + 880) = MEMORY[0x1E69E63B0];
      *(v0 + 856) = v13;
      sub_1AB014A58(v0 + 856, v0 + 888, &unk_1EB437E60);
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      sub_1AB017CC4(v0 + 888, v0 + 656, &unk_1EB437E60);
      *(v0 + 688) = 0;
      v18 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AB0168A8(0, *(v120 + 2) + 1, 1, v120);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[40 * v20];
      v22 = *(v0 + 656);
      v23 = *(v0 + 672);
      v21[64] = *(v0 + 688);
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      sub_1AB014AC0(v0 + 856, &unk_1EB437E60);
      v24._countAndFlagsBits = 0x73646E6F63657320;
      v24._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      *(v16 + 32) = v18;
      Logger.error(_:)(v16, v14, v15);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
      v25 = swift_task_alloc();
      *(v0 + 1464) = v25;
      *v25 = v0;
      v25[1] = sub_1AB26AEFC;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 5;
      goto LABEL_36;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v46 = *(v0 + 1264);
      v47 = *(v0 + 1256);
      sub_1AB28E8B8(qword_1EB432BB8, type metadata accessor for DaemonError);
      swift_allocError();
      sub_1AB28E900(v46, v48, type metadata accessor for DaemonError);
      swift_willThrow();
      sub_1AB28DBE8(v46, type metadata accessor for DaemonError);
      sub_1AB064948(v0 + 16);
      sub_1AB28DBE8(v47, type metadata accessor for DaemonError);
LABEL_24:

      goto LABEL_25;
    }

    v7 = *(v0 + 1256);
    v8 = *v7;
    *(v0 + 1376) = *v7;
    v9 = [v8 domain];
    v10 = sub_1AB460544();
    v12 = v11;

    if (v10 == 0xD000000000000015 && 0x80000001AB506090 == v12)
    {

LABEL_29:
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 1264);
      v53 = *(v0 + 1248);
      sub_1AB4622E4();
      v54 = *(v0 + 640);
      v55 = *(v0 + 648);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 616), v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1AB4D4720;
      v122 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
      v57._countAndFlagsBits = 0xD00000000000003ALL;
      v57._object = 0x80000001AB5061F0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      *(v0 + 1168) = v53;
      v58 = __swift_allocate_boxed_opaque_existential_0((v0 + 1144));
      sub_1AB28E900(v52, v58, type metadata accessor for DaemonError);
      sub_1AB014A58(v0 + 1144, v0 + 1176, &unk_1EB437E60);
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      sub_1AB017CC4(v0 + 1176, v0 + 816, &unk_1EB437E60);
      *(v0 + 848) = 0;
      v59 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1AB0168A8(0, *(v122 + 2) + 1, 1, v122);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_1AB0168A8((v60 > 1), v61 + 1, 1, v59);
      }

      *(v59 + 2) = v61 + 1;
      v62 = &v59[40 * v61];
      v63 = *(v0 + 816);
      v64 = *(v0 + 832);
      v62[64] = *(v0 + 848);
      *(v62 + 2) = v63;
      *(v62 + 3) = v64;
      sub_1AB014AC0(v0 + 1144, &unk_1EB437E60);
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v65);
      *(v56 + 32) = v59;
      Logger.error(_:)(v56, v54, v55);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
      v66 = swift_task_alloc();
      *(v0 + 1384) = v66;
      *v66 = v0;
      v66[1] = sub_1AB26A828;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 1;
LABEL_36:

      return sub_1AB26BEA8(v28, v27, v26, v29);
    }

    v51 = sub_1AB461DA4();

    if (v51)
    {
      goto LABEL_29;
    }

    v67 = [v8 domain];
    v68 = sub_1AB460544();
    v70 = v69;

    if (v68 == 0xD000000000000016 && 0x80000001AB504FB0 == v70)
    {
    }

    else
    {
      v71 = sub_1AB461DA4();

      if ((v71 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if ([v8 code] == 3)
    {
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v72 = *(v0 + 600);
      v73 = *(v0 + 608);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1AB4D4720;
      *(v0 + 1136) = MEMORY[0x1E69E6158];
      *(v0 + 1112) = 0xD000000000000046;
      *(v0 + 1120) = 0x80000001AB5061A0;
      *(v75 + 48) = 0u;
      *(v75 + 32) = 0u;
      sub_1AB017CC4(v0 + 1112, v75 + 32, &unk_1EB437E60);
      *(v75 + 64) = 0;
      *(v74 + 32) = v75;
      Logger.error(_:)(v74, v72, v73);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
      v76 = swift_task_alloc();
      *(v0 + 1400) = v76;
      *v76 = v0;
      v76[1] = sub_1AB26A9F0;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 4;
      goto LABEL_36;
    }

LABEL_47:
    v77 = [v8 domain];
    v78 = sub_1AB460544();
    v80 = v79;

    if (v78 == 0xD00000000000002ALL && 0x80000001AB5060B0 == v80)
    {

LABEL_51:
      v82 = (v0 + 776);
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 1264);
      v84 = *(v0 + 1248);
      sub_1AB4622E4();
      v85 = *(v0 + 560);
      v86 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1AB4D4720;
      v123 = sub_1AB0168A8(0, 60, 0, MEMORY[0x1E69E7CC0]);
      v88._countAndFlagsBits = 0xD00000000000003BLL;
      v88._object = 0x80000001AB506160;
      LogMessage.StringInterpolation.appendLiteral(_:)(v88);
      *(v0 + 1072) = v84;
      v89 = __swift_allocate_boxed_opaque_existential_0((v0 + 1048));
      sub_1AB28E900(v83, v89, type metadata accessor for DaemonError);
      sub_1AB014A58(v0 + 1048, v0 + 1080, &unk_1EB437E60);
      *v82 = 0u;
      *(v0 + 792) = 0u;
      sub_1AB017CC4(v0 + 1080, v0 + 776, &unk_1EB437E60);
      *(v0 + 808) = 0;
      v90 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_1AB0168A8(0, *(v123 + 2) + 1, 1, v123);
      }

      v92 = *(v90 + 2);
      v91 = *(v90 + 3);
      if (v92 >= v91 >> 1)
      {
        v90 = sub_1AB0168A8((v91 > 1), v92 + 1, 1, v90);
      }

      *(v90 + 2) = v92 + 1;
      v93 = &v90[40 * v92];
      v94 = *v82;
      v95 = *(v0 + 792);
      v93[64] = *(v0 + 808);
      *(v93 + 2) = v94;
      *(v93 + 3) = v95;
      sub_1AB014AC0(v0 + 1048, &unk_1EB437E60);
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v96);
      *(v87 + 32) = v90;
      Logger.error(_:)(v87, v85, v86);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
      v97 = swift_task_alloc();
      *(v0 + 1416) = v97;
      *v97 = v0;
      v97[1] = sub_1AB26AB04;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 6;
      goto LABEL_36;
    }

    v81 = sub_1AB461DA4();

    if (v81)
    {
      goto LABEL_51;
    }

    v98 = [v8 domain];
    v99 = sub_1AB460544();
    v101 = v100;

    if (v99 == 0xD000000000000024 && 0x80000001AB5060E0 == v101)
    {
    }

    else
    {
      v102 = sub_1AB461DA4();

      if ((v102 & 1) == 0)
      {
LABEL_70:
        v118 = *(v0 + 1264);
        sub_1AB28E8B8(qword_1EB432BB8, type metadata accessor for DaemonError);
        swift_allocError();
        sub_1AB28E900(v118, v119, type metadata accessor for DaemonError);
        swift_willThrow();

        sub_1AB28DBE8(v118, type metadata accessor for DaemonError);
        sub_1AB064948(v0 + 16);
        goto LABEL_24;
      }
    }

    if ([v8 code] == 5)
    {
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v103 = *(v0 + 1264);
      v104 = *(v0 + 1248);
      sub_1AB4622E4();
      v105 = *(v0 + 440);
      v106 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1AB4D4720;
      v124 = sub_1AB0168A8(0, 73, 0, MEMORY[0x1E69E7CC0]);
      v108._countAndFlagsBits = 0xD000000000000048;
      v108._object = 0x80000001AB506110;
      LogMessage.StringInterpolation.appendLiteral(_:)(v108);
      *(v0 + 1008) = v104;
      v109 = __swift_allocate_boxed_opaque_existential_0((v0 + 984));
      sub_1AB28E900(v103, v109, type metadata accessor for DaemonError);
      sub_1AB014A58(v0 + 984, v0 + 1016, &unk_1EB437E60);
      *(v0 + 736) = 0u;
      *(v0 + 752) = 0u;
      sub_1AB017CC4(v0 + 1016, v0 + 736, &unk_1EB437E60);
      *(v0 + 768) = 0;
      v110 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1AB0168A8(0, *(v124 + 2) + 1, 1, v124);
      }

      v112 = *(v110 + 2);
      v111 = *(v110 + 3);
      if (v112 >= v111 >> 1)
      {
        v110 = sub_1AB0168A8((v111 > 1), v112 + 1, 1, v110);
      }

      *(v110 + 2) = v112 + 1;
      v113 = &v110[40 * v112];
      v114 = *(v0 + 736);
      v115 = *(v0 + 752);
      v113[64] = *(v0 + 768);
      *(v113 + 2) = v114;
      *(v113 + 3) = v115;
      sub_1AB014AC0(v0 + 984, &unk_1EB437E60);
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v116);
      *(v107 + 32) = v110;
      Logger.error(_:)(v107, v105, v106);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
      v117 = swift_task_alloc();
      *(v0 + 1432) = v117;
      *v117 = v0;
      v117[1] = sub_1AB26AC18;
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      v28 = *(v0 + 1216);
      v29 = 7;
      goto LABEL_36;
    }

    goto LABEL_70;
  }

  sub_1AB064948(v0 + 16);

LABEL_25:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1AB26A464()
{
  v2 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = sub_1AB26B51C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 376);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 336);
    v3 = sub_1AB26A588;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB26A588()
{
  sub_1AB014AC0(v0 + 256, &qword_1EB4394A8);
  sub_1AB064948(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26A624()
{
  v2 = *v1;
  *(v2 + 1368) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB26A790, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB26A790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26A828()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_1AB26B0B8;
  }

  else
  {
    v2 = sub_1AB26A93C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26A93C()
{
  v1 = *(v0 + 1264);

  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26A9F0()
{
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v2 = sub_1AB26B174;
  }

  else
  {
    v2 = sub_1AB28EE94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26AB04()
{
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v2 = sub_1AB26B230;
  }

  else
  {
    v2 = sub_1AB28EE94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26AC18()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_1AB26B2EC;
  }

  else
  {
    v2 = sub_1AB28EE94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26AD2C()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_1AB26B3A8;
  }

  else
  {
    v2 = sub_1AB26AE40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26AE40()
{
  v1 = *(v0 + 1256);
  sub_1AB28DBE8(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);
  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26AEFC()
{
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v2 = sub_1AB26B46C;
  }

  else
  {
    v2 = sub_1AB26B010;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26B010()
{
  sub_1AB28DBE8(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26B0B8()
{
  v1 = *(v0 + 1264);

  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26B174()
{
  v1 = *(v0 + 1264);

  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26B230()
{
  v1 = *(v0 + 1264);

  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26B2EC()
{
  v1 = *(v0 + 1264);

  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26B3A8()
{
  v1 = *(v0 + 1256);
  sub_1AB28DBE8(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);
  sub_1AB28DBE8(v1, type metadata accessor for DaemonError);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB26B46C()
{
  sub_1AB28DBE8(*(v0 + 1264), type metadata accessor for DaemonError);
  sub_1AB064948(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26B51C()
{
  sub_1AB014AC0(v0 + 256, &qword_1EB4394A8);
  sub_1AB064948(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26B5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26B5F8, 0, 0);
}

uint64_t sub_1AB26B5F8()
{
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  sub_1AB4622E4();
  v3 = *(v0 + 40);
  v33 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v38 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001AB5017D0;
  v5._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  *(v0 + 120) = MEMORY[0x1E69E6158];
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_1AB014A58(v0 + 96, v0 + 128, &unk_1EB437E60);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;

  sub_1AB017CC4(v0 + 128, v0 + 56, &unk_1EB437E60);
  *(v0 + 88) = 2;
  v6 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  v34 = *(v0 + 184);
  v36 = *(v0 + 192);
  v9 = *(v0 + 176);
  v32 = *(v0 + 168);
  v10 = *(v0 + 160);
  *(v6 + 2) = v8 + 1;
  v11 = &v6[40 * v8];
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v11[64] = *(v0 + 88);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  *&v37 = v6;
  sub_1AB014AC0(v0 + 96, &unk_1EB437E60);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v4 + 32) = v6;
  Logger.info(_:)(v4, v3, v33);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v15 = type metadata accessor for JetPackAsset(0);
  v16 = (v10 + v15[5]);
  v17 = type metadata accessor for JetPackAsset.Metadata(0);

  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  v18 = [objc_opt_self() processInfo];
  [v18 operatingSystemVersion];

  v19 = JEGestaltGetBuildVersion();
  v20 = sub_1AB460544();
  v22 = v21;

  *v16 = 0u;
  v16[1] = 0u;
  v23 = v16 + v17[7];
  *v23 = v37;
  *(v23 + 2) = v39;
  v23[24] = 0;
  v24 = (v16 + v17[8]);
  *v24 = v20;
  v24[1] = v22;
  v25 = (v16 + v17[9]);
  *v25 = 0;
  v25[1] = 0;
  *(v16 + v17[10]) = 2;
  v26 = v16 + v17[11];
  *v26 = 0x40AC200000000000;
  v26[8] = 0;
  *(v26 + 2) = 0;
  v26[24] = 1;
  *(v26 + 4) = 0x4143C68000000000;
  *(v26 + 20) = 0;
  v10[3] = &type metadata for JetPackFileStreamSource;
  v10[4] = &protocol witness table for JetPackFileStreamSource;
  v27 = swift_allocObject();
  *v10 = v27;
  v27[2] = v32;
  v27[3] = v9;
  v27[4] = 0;
  v27[5] = 0;
  v28 = v10 + v15[6];
  *v28 = 0;
  v28[4] = 1;
  v29 = (v10 + v15[7]);
  *v29 = v34;
  v29[1] = v36;
  *(v10 + v15[8]) = 0;
  *(v10 + v15[9]) = 0;
  *(v10 + v15[10]) = 0;
  v30 = (v10 + v15[11]);
  *v30 = 0;
  v30[1] = 0;
  v35 = *(v0 + 8);

  return v35();
}

uint64_t JetPackAssetSession.jetPack(urlRequest:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26BA54, 0, 0);
}

uint64_t sub_1AB26BA54()
{
  if (sub_1AB45F5C4())
  {
    v1 = sub_1AB45F6E4();
    v3 = v2;
    v0[5] = v2;
    sub_1AB45F764();
    sub_1AB28E8B8(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v4 = sub_1AB461C44();
    v6 = v5;
    v0[6] = v5;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1AB26BC00;
    v8 = v0[2];

    return sub_1AB26B5D0(v8, v1, v3, v4, v6);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1AB26BD48;
    v11 = v0[3];
    v12 = v0[2];

    return sub_1AB26E658(v12, v11);
  }
}

uint64_t sub_1AB26BC00()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB26BE3C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB26BD48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB26BE3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26BEA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 250) = a4;
  *(v5 + 336) = a3;
  *(v5 + 344) = v4;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB26BED0, 0, 0);
}

uint64_t sub_1AB26BED0()
{
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000012;
  v2 = *(v0 + 250);
  sub_1AB4622E4();
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v28 = sub_1AB0168A8(0, 59, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000003ALL;
  v6._object = 0x80000001AB506630;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v7 = 0xEF726F7272452072;
        v1 = 0x656E6961746E6F43;
      }

      else
      {
        v7 = 0x80000001AB506670;
        v1 = 0xD00000000000001CLL;
      }
    }

    else if (v2 == 4)
    {
      v7 = 0x80000001AB506690;
    }

    else
    {
      v7 = 0xE700000000000000;
      v1 = 0x74756F656D6954;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = 0x80000001AB5066B0;
      v1 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xEF68637469777320;
      v1 = 0x6C6C696B20676142;
    }
  }

  else if (v2)
  {
    v7 = 0xEE00726F72724520;
    v1 = 0x6573616261746144;
  }

  else
  {
    v7 = 0xE800000000000000;
    v1 = 0x726F727245637078;
  }

  *(v0 + 280) = MEMORY[0x1E69E6158];
  *(v0 + 256) = v1;
  *(v0 + 264) = v7;
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v8 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v28 + 2) + 1, 1, v28);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 344);
  v12 = *(v0 + 250);
  *(v8 + 2) = v10 + 1;
  v13 = &v8[40 * v10];
  v14 = *(v0 + 216);
  v15 = *(v0 + 232);
  v13[64] = *(v0 + 248);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v8;
  Logger.warning(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v17 = v11[21];
  v18 = v11[22];
  __swift_project_boxed_opaque_existential_1Tm(v11 + 18, v17);
  *(v0 + 249) = 0x706050402030100uLL >> (8 * v12);
  v19 = *(v18 + 8);
  v20 = sub_1AB28E780();
  v19(v0 + 249, &type metadata for JetPackClientFallbackErrorLog, v20, v17, v18);
  v21 = type metadata accessor for JetPackAssetDiskCache(0);
  v22 = JetPackAssetDiskCache.__allocating_init()();
  *(v0 + 40) = v21;
  *(v0 + 48) = &protocol witness table for JetPackAssetDiskCache;
  *(v0 + 16) = v22;
  *(v0 + 80) = &type metadata for JetPackAssetStandardCachePolicy;
  *(v0 + 88) = &protocol witness table for JetPackAssetStandardCachePolicy;
  sub_1AB014A58(v0 + 16, v0 + 96, &qword_1EB4394A8);
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  *v23 = v0;
  v23[1] = sub_1AB26C3A0;
  v24 = *(v0 + 336);
  v25 = *(v0 + 320);
  v26 = *(v0 + 328);

  return sub_1AB26C5BC(v25, v26, v24, v0 + 96, v0 + 136);
}

uint64_t sub_1AB26C3A0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1AB26C538;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 96);
    v3 = sub_1AB26C4C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB26C4C4()
{
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26C538()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a3;
  v6[43] = v5;
  v6[40] = a1;
  v6[41] = a2;
  v9 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v6[44] = v9;
  v6[45] = *(v9 + 64);
  v6[46] = swift_task_alloc();
  v10 = type metadata accessor for URLJetPackAssetRequest();
  v6[47] = v10;
  v11 = *(v10 - 8);
  v6[48] = v11;
  v6[49] = *(v11 + 64);
  v6[50] = swift_task_alloc();
  v12 = sub_1AB45FF84();
  v6[51] = v12;
  v6[52] = *(v12 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_1AB01494C(a4, (v6 + 2));
  sub_1AB01494C(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1AB26C778, 0, 0);
}

uint64_t sub_1AB26C778()
{
  if (qword_1ED4D06C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D06C8);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);

  (*(v9 + 16))(v7, v6, v8);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 440) = sub_1AB460004();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 328);
  sub_1AB4622E4();
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  v42 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v13._object = 0x80000001AB5063D0;
  v13._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 280) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  sub_1AB28E900(v11, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v15 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 400);
  v19 = *(v0 + 384);
  v20 = *(v0 + 368);
  v38 = *(v0 + 392);
  v37 = *(v0 + 352);
  v39 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 336);
  *(v15 + 2) = v17 + 1;
  v23 = &v15[40 * v17];
  v24 = *(v0 + 216);
  v25 = *(v0 + 232);
  v23[64] = *(v0 + 248);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v12 + 32) = v15;
  Logger.info(_:)(v12, v41, v40);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014A58(v0 + 16, v0 + 96, &qword_1EB4394A8);
  sub_1AB28E900(v21, v18, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB28E900(v22, v20, type metadata accessor for URLJetPackAssetFetcher);
  v27 = (*(v19 + 80) + 96) & ~*(v19 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v37 + 80) + v28 + 8) & ~*(v37 + 80);
  v30 = swift_allocObject();
  *(v0 + 448) = v30;
  v31 = *(v0 + 144);
  v30[3] = *(v0 + 128);
  v30[4] = v31;
  v30[5] = *(v0 + 160);
  v32 = *(v0 + 112);
  v30[1] = *(v0 + 96);
  v30[2] = v32;
  sub_1AB28E968(v18, v30 + v27, type metadata accessor for URLJetPackAssetRequest);
  *(v30 + v28) = v39;
  sub_1AB28E968(v20, v30 + v29, type metadata accessor for URLJetPackAssetFetcher);

  v33 = swift_task_alloc();
  *(v0 + 456) = v33;
  *v33 = v0;
  v33[1] = sub_1AB26CCB0;
  v34 = *(v0 + 320);
  v35 = *(v0 + 328);

  return sub_1AB056CD0(v34, v35, &unk_1AB4E3770, v30);
}

uint64_t sub_1AB26CCB0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1AB26CEB8;
  }

  else
  {

    v2 = sub_1AB26CDCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26CDCC()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v0[51];
  sub_1AB28D1D0(v0[55], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB26CEB8()
{
  v1 = v0[55];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];

  sub_1AB28D1D0(v1, "Perform JetPack Request");

  (*(v4 + 8))(v2, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB26CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[57] = a3;
  v6[58] = v5;
  v6[55] = a1;
  v6[56] = a2;
  v9 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v6[59] = v9;
  v6[60] = *(v9 + 64);
  v6[61] = swift_task_alloc();
  v10 = sub_1AB45FF84();
  v6[62] = v10;
  v6[63] = *(v10 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  sub_1AB01494C(a4, (v6 + 2));
  sub_1AB01494C(a5, (v6 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1AB26D104, 0, 0);
}

uint64_t sub_1AB26D104()
{
  if (qword_1ED4D06C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D06C8);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 496);

  (*(v8 + 16))(v7, v6, v9);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 528) = sub_1AB460004();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 448);
  sub_1AB4622E4();
  v41 = *(v0 + 208);
  v42 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  v43 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v12._object = 0x80000001AB5063D0;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 400) = &type metadata for SilverBulletJetPackAssetRequest;
  v13 = swift_allocObject();
  *(v0 + 376) = v13;
  v14 = *(v10 + 32);
  v15 = *(v10 + 16);
  *(v13 + 16) = *v10;
  *(v13 + 32) = v15;
  *(v13 + 48) = v14;
  sub_1AB014A58(v0 + 376, v0 + 408, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB28DB8C(v10, v0 + 256);
  sub_1AB017CC4(v0 + 408, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v16 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 488);
  v20 = *(v0 + 472);
  v40 = *(v0 + 464);
  v21 = *(v0 + 448);
  v22 = *(v0 + 456);
  *(v16 + 2) = v18 + 1;
  v23 = &v16[40 * v18];
  v24 = *(v0 + 216);
  v25 = *(v0 + 232);
  v23[64] = *(v0 + 248);
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1AB014AC0(v0 + 376, &unk_1EB437E60);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  *(v11 + 32) = v16;
  Logger.info(_:)(v11, v42, v41);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014A58(v0 + 16, v0 + 96, &qword_1EB4394A8);
  v27 = *(v21 + 32);
  v28 = *(v21 + 16);
  *(v0 + 296) = *v21;
  *(v0 + 312) = v28;
  *(v0 + 328) = v27;
  sub_1AB28E900(v22, v19, type metadata accessor for SilverBulletJetPackAssetFetcher);
  v29 = (*(v20 + 80) + 144) & ~*(v20 + 80);
  v30 = swift_allocObject();
  v31 = *(v0 + 144);
  *(v30 + 48) = *(v0 + 128);
  *(v30 + 64) = v31;
  v32 = *(v0 + 160);
  v33 = *(v0 + 112);
  *(v30 + 16) = *(v0 + 96);
  *(v30 + 32) = v33;
  v34 = *(v0 + 296);
  v35 = *(v0 + 312);
  *(v30 + 80) = v32;
  *(v30 + 96) = v34;
  *(v0 + 536) = v30;
  *(v30 + 112) = v35;
  *(v30 + 128) = *(v0 + 328);
  *(v30 + 136) = v40;
  sub_1AB28E968(v19, v30 + v29, type metadata accessor for SilverBulletJetPackAssetFetcher);
  sub_1AB28DB8C(v21, v0 + 336);

  v36 = swift_task_alloc();
  *(v0 + 544) = v36;
  *v36 = v0;
  v36[1] = sub_1AB26D60C;
  v37 = *(v0 + 440);
  v38 = *(v0 + 448);

  return sub_1AB26F18C(v37, v38, &unk_1AB4E3650, v30);
}

uint64_t sub_1AB26D60C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1AB26D818;
  }

  else
  {
    v2 = sub_1AB26D73C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26D73C()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[62];
  sub_1AB28D1D0(v0[66], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB26D818()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[62];
  sub_1AB28D1D0(v0[66], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB26D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[44] = a7;
  v8[45] = v7;
  v8[42] = a3;
  v8[43] = a6;
  v8[40] = a1;
  v8[41] = a2;
  v11 = *(a6 - 8);
  v8[46] = v11;
  v8[47] = *(v11 + 64);
  v8[48] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[49] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[50] = v13;
  v8[51] = *(v13 + 64);
  v8[52] = swift_task_alloc();
  v14 = sub_1AB45FF84();
  v8[53] = v14;
  v8[54] = *(v14 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  sub_1AB01494C(a4, (v8 + 2));
  sub_1AB01494C(a5, (v8 + 7));

  return MEMORY[0x1EEE6DFA0](sub_1AB26DAD4, 0, 0);
}

uint64_t sub_1AB26DAD4()
{
  if (qword_1ED4D06C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D06C8);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Perform JetPack Request", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v7 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 424);
  v9 = *(v0 + 432);

  (*(v9 + 16))(v7, v6, v8);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 456) = sub_1AB460004();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 392);
  v10 = *(v0 + 400);
  v12 = *(v0 + 328);
  sub_1AB4622E4();
  v47 = *(v0 + 208);
  v48 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D4720;
  v49 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v14._object = 0x80000001AB5063D0;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 280) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
  v46 = *(v10 + 16);
  v46(boxed_opaque_existential_0, v12, v11);
  sub_1AB014A58(v0 + 256, v0 + 288, &unk_1EB437E60);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  sub_1AB017CC4(v0 + 288, v0 + 216, &unk_1EB437E60);
  *(v0 + 248) = 0;
  v16 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1AB0168A8(0, *(v49 + 2) + 1, 1, v49);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = *(v0 + 416);
  v20 = *(v0 + 400);
  v21 = *(v0 + 384);
  v43 = *(v0 + 408);
  v22 = *(v0 + 368);
  v44 = *(v0 + 352);
  v45 = *(v0 + 360);
  v42 = *(v0 + 344);
  v23 = *(v0 + 328);
  v40 = *(v0 + 392);
  v41 = *(v0 + 336);
  *(v16 + 2) = v18 + 1;
  v24 = &v16[40 * v18];
  v25 = *(v0 + 216);
  v26 = *(v0 + 232);
  v24[64] = *(v0 + 248);
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  sub_1AB014AC0(v0 + 256, &unk_1EB437E60);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  *(v13 + 32) = v16;
  Logger.info(_:)(v13, v48, v47);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  sub_1AB014A58(v0 + 16, v0 + 96, &qword_1EB4394A8);
  v46(v19, v23, v40);
  (*(v22 + 16))(v21, v41, v42);
  v28 = (*(v20 + 80) + 112) & ~*(v20 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v22 + 80) + v29 + 8) & ~*(v22 + 80);
  v31 = swift_allocObject();
  *(v0 + 464) = v31;
  *(v31 + 16) = v42;
  *(v31 + 24) = v44;
  v32 = *(v0 + 144);
  *(v31 + 64) = *(v0 + 128);
  *(v31 + 80) = v32;
  *(v31 + 96) = *(v0 + 160);
  v33 = *(v0 + 112);
  *(v31 + 32) = *(v0 + 96);
  *(v31 + 48) = v33;
  (*(v20 + 32))(v31 + v28, v19, v40);
  *(v31 + v29) = v45;
  (*(v22 + 32))(v31 + v30, v21, v42);

  v34 = swift_task_alloc();
  *(v0 + 472) = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v34 = v0;
  v34[1] = sub_1AB26E044;
  v36 = *(v0 + 392);
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);

  return sub_1AB02C06C(v37, v38, &unk_1AB4E3718, v31, v36, AssociatedConformanceWitness);
}

uint64_t sub_1AB26E044()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1AB26E24C;
  }

  else
  {

    v2 = sub_1AB26E160;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26E160()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[53];
  sub_1AB28D1D0(v0[57], "Perform JetPack Request");

  (*(v2 + 8))(v1, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB26E24C()
{
  v1 = v0[57];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];

  sub_1AB28D1D0(v1, "Perform JetPack Request");

  (*(v4 + 8))(v2, v3);
  sub_1AB014AC0((v0 + 2), &qword_1EB4394A8);

  v5 = v0[1];

  return v5();
}

uint64_t JetPackAssetSession.jetPack(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26E364, 0, 0);
}

uint64_t sub_1AB26E364()
{
  if (sub_1AB45F5C4())
  {
    v1 = sub_1AB45F6E4();
    v3 = v2;
    v0[5] = v2;
    sub_1AB45F764();
    sub_1AB28E8B8(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
    v4 = sub_1AB461C44();
    v6 = v5;
    v0[6] = v5;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1AB26E510;
    v8 = v0[2];

    return sub_1AB26B5D0(v8, v1, v3, v4, v6);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1AB28EE40;
    v11 = v0[3];
    v12 = v0[2];

    return sub_1AB26E658(v12, v11);
  }
}

uint64_t sub_1AB26E510()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB28EE98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB26E658(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for URLJetPackAssetRequest();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v3[38] = *(v5 + 64);
  v3[39] = swift_task_alloc();
  v6 = sub_1AB45FF84();
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB26E78C, 0, 0);
}

uint64_t sub_1AB26E78C()
{
  if (qword_1ED4D06C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AB45FFC4();
  __swift_project_value_buffer(v1, qword_1ED4D06C8);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v2 = sub_1AB45FFA4();
  v3 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "Perform JetPack Asset Daemon Request", "", v4, 2u);
    MEMORY[0x1AC59F020](v4, -1, -1);
  }

  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);

  (*(v9 + 16))(v7, v6, v8);
  sub_1AB460014();
  swift_allocObject();
  *(v0 + 352) = sub_1AB460004();
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 272);
  sub_1AB4622E4();
  v41 = *(v0 + 48);
  v42 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  v43 = sub_1AB0168A8(0, 65, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  v12._object = 0x80000001AB5066D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = sub_1AB45F764();
  *(v0 + 160) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v10, v13);
  sub_1AB014A58(v0 + 136, v0 + 168, &unk_1EB437E60);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_1AB017CC4(v0 + 168, v0 + 56, &unk_1EB437E60);
  *(v0 + 88) = 0;
  v15 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v43 + 2) + 1, 1, v43);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  *(v15 + 2) = v17 + 1;
  v20 = &v15[40 * v17];
  v21 = *(v0 + 56);
  v22 = *(v0 + 72);
  v20[64] = *(v0 + 88);
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  sub_1AB014AC0(v0 + 136, &unk_1EB437E60);
  v23._object = 0x80000001AB506700;
  v23._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = *(v19 + *(v18 + 20));
  *(v0 + 224) = &type metadata for JetPackAssetRequestSourcePolicy;
  *(v0 + 200) = v24;
  sub_1AB014A58(v0 + 200, v0 + 232, &unk_1EB437E60);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1AB017CC4(v0 + 232, v0 + 96, &unk_1EB437E60);
  *(v0 + 128) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
  }

  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  if (v26 >= v25 >> 1)
  {
    v15 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v15);
  }

  v27 = *(v0 + 312);
  v28 = *(v0 + 296);
  v30 = *(v0 + 272);
  v29 = *(v0 + 280);
  *(v15 + 2) = v26 + 1;
  v31 = &v15[40 * v26];
  v32 = *(v0 + 96);
  v33 = *(v0 + 112);
  v31[64] = *(v0 + 128);
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  sub_1AB014AC0(v0 + 200, &unk_1EB437E60);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  *(v11 + 32) = v15;
  Logger.info(_:)(v11, v42, v41);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_1AB28E900(v30, v27, type metadata accessor for URLJetPackAssetRequest);
  v35 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v36 = swift_allocObject();
  *(v0 + 360) = v36;
  *(v36 + 16) = v29;
  sub_1AB28E968(v27, v36 + v35, type metadata accessor for URLJetPackAssetRequest);

  v37 = swift_task_alloc();
  *(v0 + 368) = v37;
  *v37 = v0;
  v37[1] = sub_1AB26ED40;
  v38 = *(v0 + 272);
  v39 = *(v0 + 264);

  return sub_1AB056CD0(v39, v38, &unk_1AB4E3750, v36);
}

uint64_t sub_1AB26ED40()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1AB26EF1C;
  }

  else
  {

    v2 = sub_1AB26EE5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB26EE5C()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[40];
  sub_1AB28D1D0(v0[44], "Perform JetPack Asset Daemon Request");

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB26EF1C()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];

  sub_1AB28D1D0(v1, "Perform JetPack Asset Daemon Request");

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AB26EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26F008, 0, 0);
}

uint64_t sub_1AB26F008()
{
  __swift_project_boxed_opaque_existential_1Tm((v0[3] + 104), *(v0[3] + 128));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1AB0B46AC;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1AB2E177C(v3, v2);
}

uint64_t sub_1AB26F0B0()
{
  v1 = v0[7];
  v2 = v0[3];
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v1 + 6);
  sub_1AB06441C(&v1[4]);
  os_unfair_lock_unlock((v0[7] + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AB26F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1AB26F1C0, 0, 0);
}

uint64_t sub_1AB26F1C0()
{
  v12 = v0;
  v1 = *(*(v0 + 160) + 16);
  *(v0 + 168) = v1;
  v2 = swift_task_alloc();
  v3 = *(v0 + 144);
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v3;
  os_unfair_lock_lock((v1 + 24));
  sub_1AB28DD48((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  v4 = v11;
  *(v0 + 176) = v11;

  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  v6 = type metadata accessor for JetPackAsset(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  *v5 = v0;
  v5[1] = sub_1AB26F310;
  v8 = *(v0 + 136);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, v4, v6, v7, v9);
}

uint64_t sub_1AB26F310()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1AB26F528;
  }

  else
  {
    v2 = sub_1AB26F424;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB26F424()
{
  *(v0 + 96) = *(v0 + 16);
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(swift_task_alloc() + 16) = v0 + 96;
  os_unfair_lock_lock(v2 + 6);
  sub_1AB28EE64();
  if (v1)
  {
    v5 = (*(v0 + 168) + 24);

    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_unlock((*(v0 + 168) + 24));

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1AB26F528()
{
  *(v0 + 56) = *(v0 + 16);
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 72) = *(v0 + 32);
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(swift_task_alloc() + 16) = v0 + 56;
  os_unfair_lock_lock(v1 + 6);
  sub_1AB28DD98();
  os_unfair_lock_unlock((*(v0 + 168) + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AB26F620()
{
  sub_1AB0455EC(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26F694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB26F6B8, 0, 0);
}

uint64_t sub_1AB26F6B8()
{
  sub_1AB02CC14(*(v0 + 432) + 24, v0 + 176);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 240);
    *(v0 + 144) = *(v0 + 224);
    *(v0 + 160) = v1;
    v2 = *(v0 + 208);
    *(v0 + 112) = *(v0 + 192);
    *(v0 + 128) = v2;
    *(v0 + 96) = *(v0 + 176);
    if (*(v0 + 120))
    {
      v3 = *(v0 + 144);
      *(v0 + 48) = *(v0 + 128);
      *(v0 + 64) = v3;
      *(v0 + 80) = *(v0 + 160);
      v4 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v4;
      sub_1AB014A58(v0 + 16, v0 + 256, &qword_1EB4394A8);
      v5 = swift_task_alloc();
      *(v0 + 440) = v5;
      *v5 = v0;
      v5[1] = sub_1AB26F9A8;
      v6 = *(v0 + 424);
      v7 = *(v0 + 408);
      v8 = *(v0 + 416);

      return sub_1AB26CFAC(v7, v8, v6, v0 + 256, v0 + 296);
    }
  }

  else
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 96) = 0u;
    sub_1AB064948(v0 + 176);
  }

  sub_1AB014AC0(v0 + 96, &qword_1EB4394B0);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AB4D4720;
  *(v0 + 400) = MEMORY[0x1E69E6158];
  *(v0 + 376) = 0xD000000000000094;
  *(v0 + 384) = 0x80000001AB506230;
  *(v13 + 48) = 0u;
  *(v13 + 32) = 0u;
  sub_1AB017CC4(v0 + 376, v13 + 32, &unk_1EB437E60);
  *(v13 + 64) = 0;
  *(v12 + 32) = v13;
  Logger.error(_:)(v12, v11, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  sub_1AB28D17C();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1AB26F9A8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = sub_1AB26FACC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 296);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 256);
    v3 = sub_1AB04517C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB26FACC()
{
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t JetPackAssetSession.jetPack<A>(for:fetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB02C7A0, 0, 0);
}

uint64_t sub_1AB26FB78()
{
  sub_1AB014AC0(v0 + 16, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26FC24, 0, 0);
}

uint64_t sub_1AB26FC24()
{
  sub_1AB460CC4();
  v9 = *(v0 + 24);
  v1 = *(v9 + 24);
  v2 = *(v9 + 32);
  v8 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm(v9, v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v8;
  v10 = (*(v2 + 64) + **(v2 + 64));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for JetPackAsset(0);
  *v4 = v0;
  v4[1] = sub_1AB26FDF0;
  v6 = *(v0 + 16);

  return v10(v6, &unk_1AB4E3780, v3, v5, v1, v2);
}

uint64_t sub_1AB26FDF0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB26FF2C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB26FF2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB26FF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB26FFBC, 0, 0);
}

uint64_t sub_1AB26FFBC()
{
  sub_1AB460CC4();
  v9 = *(v0 + 24);
  v10 = *(v0 + 56);
  v1 = *(v9 + 24);
  v2 = *(v9 + 32);
  v8 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm(v9, v1);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v3[1] = v10;
  v3[2] = v9;
  v3[3] = v8;
  v11 = (*(v2 + 64) + **(v2 + 64));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = type metadata accessor for JetPackAsset(0);
  *v4 = v0;
  v4[1] = sub_1AB270194;
  v6 = *(v0 + 16);

  return v11(v6, &unk_1AB4E3728, v3, v5, v1, v2);
}

uint64_t sub_1AB270194()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB2702D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB2702D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB270334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[193] = a5;
  v5[192] = a4;
  v5[191] = a3;
  v5[190] = a2;
  v5[189] = a1;
  v6 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v5[194] = v6;
  v5[195] = *(v6 + 64);
  v5[196] = swift_task_alloc();
  v7 = type metadata accessor for URLJetPackAssetRequest();
  v5[197] = v7;
  v8 = *(v7 - 8);
  v5[198] = v8;
  v5[199] = *(v8 + 64);
  v5[200] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v5[201] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v5[202] = v9;
  v5[203] = *(v9 - 8);
  v5[204] = swift_task_alloc();
  v5[205] = swift_task_alloc();
  v5[206] = swift_task_alloc();
  v5[207] = swift_task_alloc();
  v5[208] = swift_task_alloc();
  v5[209] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v5[210] = swift_task_alloc();
  v5[211] = swift_task_alloc();
  v5[212] = swift_task_alloc();
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2705D4, 0, 0);
}

uint64_t sub_1AB2705D4()
{
  v1 = v0[218];
  v2 = v0[203];
  v3 = v0[202];
  v4 = v0[190];
  v5 = *(v2 + 56);
  v0[219] = v5;
  v0[220] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v6);
  v0[221] = sub_1AB45F764();
  v0[222] = sub_1AB28E8B8(&qword_1ED4D1D50, MEMORY[0x1E6968FB0]);
  v8 = sub_1AB461C44();
  v10 = v9;
  v0[223] = v9;
  v14 = (*(v7 + 16) + **(v7 + 16));
  v11 = swift_task_alloc();
  v0[224] = v11;
  *v11 = v0;
  v11[1] = sub_1AB2707B0;
  v12 = v0[217];

  return v14(v12, v8, v10, v6, v7);
}

uint64_t sub_1AB2707B0()
{
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v2 = sub_1AB27230C;
  }

  else
  {

    v2 = sub_1AB2708CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB2708CC()
{
  v167 = v0;
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1616);
  sub_1AB017CC4(*(v0 + 1736), v1, &qword_1EB437E40);
  sub_1AB014A58(v1, v2, &qword_1EB437E40);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1728);
  if (v5 == 1)
  {
    sub_1AB014AC0(v6, &qword_1EB437E40);
    v7 = *(v0 + 1800);
  }

  else
  {
    sub_1AB28E968(v6, *(v0 + 1672), type metadata accessor for JetPackAsset);
    if (qword_1ED4D0B80 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 1800);
    v14 = qword_1ED4D3EB0;
    *(v0 + 1472) = sub_1AB461C44();
    *(v0 + 1480) = v15;
    v16 = *(v14 + 16);
    *(swift_task_alloc() + 16) = v0 + 1472;
    os_unfair_lock_lock((v16 + 24));
    sub_1AB28EE48((v16 + 16), v166);
    os_unfair_lock_unlock((v16 + 24));
    if (v13)
    {
      return;
    }

    v67 = v166[0];

    if (v67)
    {
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v161 = *(v0 + 1752);
      v68 = *(v0 + 1744);
      v69 = *(v0 + 1616);
      v70 = *(v0 + 1520);
      sub_1AB4622E4();
      v71 = *(v0 + 280);
      v72 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1AB4D4720;
      *(v0 + 1368) = MEMORY[0x1E69E6158];
      *(v0 + 1344) = 0xD000000000000054;
      *(v0 + 1352) = 0x80000001AB5065A0;
      *(v74 + 48) = 0u;
      *(v74 + 32) = 0u;
      sub_1AB017CC4(v0 + 1344, v74 + 32, &unk_1EB437E60);
      *(v74 + 64) = 0;
      *(v73 + 32) = v74;
      Logger.error(_:)(v73, v71, v72);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      sub_1AB014AC0(v68, &qword_1EB437E40);
      v161(v68, 1, 1, v69);
      v75 = v70[3];
      v76 = v70[4];
      __swift_project_boxed_opaque_existential_1Tm(v70, v75);
      v165 = (*(v76 + 24) + **(v76 + 24));
      v77 = swift_task_alloc();
      *(v0 + 1808) = v77;
      *v77 = v0;
      v77[1] = sub_1AB273B6C;
      v78 = *(v0 + 1672);

      v165(v78, v75, v76);
      return;
    }

    sub_1AB28DBE8(*(v0 + 1672), type metadata accessor for JetPackAsset);
    v7 = 0;
  }

  v152 = v7;
  v8 = *(v0 + 1744);
  v9 = *(v0 + 1624);
  v10 = *(v0 + 1616);
  v11 = *(v9 + 48);
  *(v0 + 1824) = v11;
  *(v0 + 1832) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v8, 1, v10))
  {
    v12 = 0;
  }

  else
  {
    v17 = v8 + *(v10 + 20);
    v12 = *(v17 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v150 = v12;
  *(v0 + 689) = v12 & 1;
  v18 = *(v0 + 1720);
  sub_1AB01494C(*(v0 + 1520) + 40, v0 + 336);
  sub_1AB014A58(v8, v18, &qword_1EB437E40);
  if (v11(v18, 1, v10) == 1)
  {
    v19 = 4;
  }

  else
  {
    v20 = *(v0 + 1664);
    sub_1AB28E968(*(v0 + 1720), v20, type metadata accessor for JetPackAsset);
    v21 = *(v0 + 360);
    v22 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v21);
    (*(v22 + 8))(v166, v20, v21, v22);
    v19 = LOBYTE(v166[0]);
    sub_1AB28DBE8(v20, type metadata accessor for JetPackAsset);
  }

  v163 = v19;
  *(v0 + 690) = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v23 = (v0 + 776);
  v24 = *(v0 + 1744);
  v25 = *(v0 + 1712);
  v26 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EB435770;
  sub_1AB4622E4();
  v158 = *(v0 + 408);
  v160 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v160);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_1AB4D4720;
  v166[0] = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v27._countAndFlagsBits = 0x7341646568636163;
  v27._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  sub_1AB014A58(v24, v25, &qword_1EB437E40);
  v28 = v11(v25, 1, v26);
  v29 = *(v0 + 1712);
  if (v28 == 1)
  {
    sub_1AB014AC0(*(v0 + 1712), &qword_1EB437E40);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1AB28E968(v29, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1152, v0 + 1120, &unk_1EB437E60);
  *v23 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1120, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v31 = v166[0];
  v151 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = (v0 + 856);
  v35 = (v0 + 1056);
  *(v31 + 2) = v33 + 1;
  v36 = &v31[40 * v33];
  v37 = *v23;
  v38 = *(v0 + 792);
  v36[64] = *(v0 + 808);
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v166[0] = v31;
  sub_1AB014AC0(v0 + 1152, &unk_1EB437E60);
  v39._countAndFlagsBits = 0x3D73757461747320;
  v39._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  if (v163 == 4)
  {
    v40 = 0;
    *v35 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v35 = v163;
    v40 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v40;
  sub_1AB014A58(v0 + 1056, v0 + 992, &unk_1EB437E60);
  *v34 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 992, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v41 = v166[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_1AB0168A8(0, *(v41 + 2) + 1, 1, v41);
  }

  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_1AB0168A8((v42 > 1), v43 + 1, 1, v41);
  }

  v44 = *(v0 + 1576);
  v45 = *(v0 + 1528);
  *(v41 + 2) = v43 + 1;
  v46 = &v41[40 * v43];
  v47 = *v34;
  v48 = *(v0 + 872);
  v46[64] = *(v0 + 888);
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  v166[0] = v41;
  sub_1AB014AC0(v0 + 1056, &unk_1EB437E60);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v154 + 32) = v166[0];
  Logger.info(_:)(v154, v160, v158);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v50 = *(v44 + 20);
  v51 = v45;
  v52 = *(v45 + v50);
  if (!v52)
  {
    v53 = v163;
    goto LABEL_36;
  }

  v53 = v163;
  v54 = sub_1AB461DA4();

  if (v54)
  {
    goto LABEL_37;
  }

  if (v52 == 2)
  {
LABEL_36:

LABEL_37:
    if (v53 == 4)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v55 = sub_1AB461DA4();

  if (v163 == 4 || (v55 & 1) == 0)
  {
LABEL_40:
    v63 = *(v51 + v50);
    if (*(v51 + v50))
    {
      goto LABEL_41;
    }

LABEL_54:

    goto LABEL_55;
  }

LABEL_38:
  v56 = *(v0 + 1744);
  v57 = *(v0 + 1704);
  v58 = *(v0 + 1616);
  v164 = swift_allocBox();
  v60 = v59;
  sub_1AB014A58(v56, v57, &qword_1EB437E40);
  v61 = v151(v57, 1, v58);
  v62 = *(v0 + 1704);
  if (v61 == 1)
  {
    sub_1AB014AC0(v62, &qword_1EB437E40);
    swift_deallocBox();
    goto LABEL_40;
  }

  sub_1AB28E968(v62, v60, type metadata accessor for JetPackAsset);
  if (v53 < 2 && (v150 & 1) == 0)
  {
    v162 = v60;
    sub_1AB4622E4();
    v127 = *(v0 + 320);
    v126 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v127);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1AB4D4720;
    *(v0 + 1304) = MEMORY[0x1E69E6158];
    *(v0 + 1280) = 0xD000000000000012;
    *(v0 + 1288) = 0x80000001AB506580;
    *(v129 + 48) = 0u;
    *(v129 + 32) = 0u;
    sub_1AB017CC4(v0 + 1280, v129 + 32, &unk_1EB437E60);
    *(v129 + 64) = 0;
    *(v128 + 32) = v129;
    Logger.info(_:)(v128, v127, v126);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    if (v53 - 1 >= 2)
    {
LABEL_93:
      v149 = *(v0 + 1512);
      swift_beginAccess();
      sub_1AB28E900(v162, v149, type metadata accessor for JetPackAsset);

      goto LABEL_73;
    }

    v130 = *(v51 + v50);
    if (*(v51 + v50))
    {
      v131 = sub_1AB461DA4();

      if (v131)
      {
LABEL_92:
        v133 = *(v0 + 1608);
        v134 = *(v0 + 1600);
        v135 = *(v0 + 1584);
        v136 = *(v0 + 1568);
        v153 = *(v0 + 1592);
        v155 = *(v0 + 1560);
        v137 = *(v0 + 1552);
        v138 = *(v0 + 1544);
        v157 = *(v0 + 1536);
        v139 = *(v0 + 1528);
        v140 = *(v0 + 1520);
        *(v162 + *(*(v0 + 1616) + 40)) = 1;
        v141 = sub_1AB460BE4();
        (*(*(v141 - 8) + 56))(v133, 1, 1, v141);
        sub_1AB28E900(v139, v134, type metadata accessor for URLJetPackAssetRequest);
        sub_1AB28E900(v138, v136, type metadata accessor for URLJetPackAssetFetcher);
        sub_1AB014A58(v140, v0 + 16, &qword_1EB4394A8);
        v142 = (*(v135 + 80) + 40) & ~*(v135 + 80);
        v143 = (v153 + *(v137 + 80) + v142) & ~*(v137 + 80);
        v144 = (v155 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
        v145 = swift_allocObject();
        v145[2] = 0;
        v145[3] = 0;
        v145[4] = v157;
        sub_1AB28E968(v134, v145 + v142, type metadata accessor for URLJetPackAssetRequest);
        sub_1AB28E968(v136, v145 + v143, type metadata accessor for URLJetPackAssetFetcher);
        *(v145 + v144) = v164;
        v146 = (v145 + ((v144 + 15) & 0xFFFFFFFFFFFFFFF8));
        v147 = *(v0 + 80);
        v146[3] = *(v0 + 64);
        v146[4] = v147;
        v148 = *(v0 + 48);
        v146[1] = *(v0 + 32);
        v146[2] = v148;
        *v146 = *(v0 + 16);

        sub_1AB3B2A60(0, 0, v133, &unk_1AB4E3790, v145);

        goto LABEL_93;
      }

      if (v130 == 2)
      {
        v132 = sub_1AB461DA4();

        if ((v132 & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_92;
  }

  v63 = *(v51 + v50);
  if (!*(v51 + v50))
  {
    goto LABEL_54;
  }

LABEL_41:
  v64 = sub_1AB461DA4();

  if ((v64 & 1) == 0)
  {
    if (v63 == 2)
    {
      v65 = sub_1AB461DA4();

      if ((v65 & 1) == 0)
      {
        sub_1AB28D17C();
        swift_allocError();
        *v66 = 0;
        swift_willThrow();
        goto LABEL_73;
      }

      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_55:
  if (v53 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1744), *(v0 + 1696), &qword_1EB437E40);
  }

  sub_1AB014A58(*(v0 + 1520), v0 + 96, &qword_1EB4394A8);
  sub_1AB01494C(v0 + 96, v0 + 176);
  sub_1AB01494C(v0 + 136, v0 + 216);
  sub_1AB460CC4();
  if (v152)
  {
    v79 = *(v0 + 1824);
    v80 = *(v0 + 1744);
    v81 = *(v0 + 1680);
    v82 = *(v0 + 1616);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
    sub_1AB014A58(v80, v81, &qword_1EB437E40);
    if (v79(v81, 1, v82) == 1)
    {
      sub_1AB014AC0(*(v0 + 1680), &qword_1EB437E40);
    }

    else
    {
      v92 = *(v0 + 690);
      sub_1AB28E968(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
      if (v92 != 4 && !*(v0 + 690) && *(v0 + 689) == 1)
      {
        sub_1AB4622E4();
        v93 = *(v0 + 560);
        v94 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v93);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_1AB4D4720;
        v166[0] = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v96._countAndFlagsBits = 0xD000000000000025;
        v96._object = 0x80000001AB506460;
        LogMessage.StringInterpolation.appendLiteral(_:)(v96);
        swift_getErrorValue();
        v97 = *(v0 + 1376);
        v98 = *(v0 + 1384);
        *(v0 + 952) = v98;
        v99 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
        (*(*(v98 - 8) + 16))(v99, v97, v98);
        sub_1AB014A58(v0 + 928, v0 + 896, &unk_1EB437E60);
        *(v0 + 656) = 0u;
        *(v0 + 672) = 0u;
        sub_1AB017CC4(v0 + 896, v0 + 656, &unk_1EB437E60);
        *(v0 + 688) = 0;
        v100 = v166[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1AB0168A8(0, *(v100 + 2) + 1, 1, v100);
        }

        v102 = *(v100 + 2);
        v101 = *(v100 + 3);
        if (v102 >= v101 >> 1)
        {
          v100 = sub_1AB0168A8((v101 > 1), v102 + 1, 1, v100);
        }

        v103 = *(v0 + 1696);
        v156 = *(v0 + 1512);
        v159 = *(v0 + 1632);
        *(v100 + 2) = v102 + 1;
        v104 = &v100[40 * v102];
        v105 = *(v0 + 656);
        v106 = *(v0 + 672);
        v104[64] = *(v0 + 688);
        *(v104 + 2) = v105;
        *(v104 + 3) = v106;
        v166[0] = v100;
        sub_1AB014AC0(v0 + 928, &unk_1EB437E60);
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v107);
        *(v95 + 32) = v166[0];
        Logger.error(_:)(v95, v93, v94);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
        sub_1AB4622E4();
        v108 = *(v0 + 600);
        v109 = *(v0 + 608);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v108);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1AB4D4720;
        *(v0 + 984) = MEMORY[0x1E69E6158];
        *(v0 + 960) = 0xD000000000000075;
        *(v0 + 968) = 0x80000001AB506490;
        *(v111 + 48) = 0u;
        *(v111 + 32) = 0u;
        sub_1AB017CC4(v0 + 960, v111 + 32, &unk_1EB437E60);
        *(v111 + 64) = 0;
        *(v110 + 32) = v111;
        Logger.warning(_:)(v110, v108, v109);

        sub_1AB014AC0(v103, &qword_1EB437E40);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
        sub_1AB28E968(v159, v156, type metadata accessor for JetPackAsset);
        goto LABEL_73;
      }

      sub_1AB28DBE8(*(v0 + 1632), type metadata accessor for JetPackAsset);
    }

    v112 = *(v0 + 1696);
    swift_willThrow();
    sub_1AB014AC0(v112, &qword_1EB437E40);
LABEL_73:
    sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

    v113 = *(v0 + 8);

    v113();
    return;
  }

  v83 = *(v0 + 1696);
  v84 = *(v0 + 1688);
  v85 = *(v0 + 1616);
  sub_1AB4622E4();
  v86 = *(v0 + 520);
  v87 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v86);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1AB4D4720;
  v166[0] = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v89._countAndFlagsBits = 0xD000000000000032;
  v89._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v89);
  sub_1AB014A58(v83, v84, &qword_1EB437E40);
  v90 = v151(v84, 1, v85);
  v91 = *(v0 + 1688);
  if (v90 == 1)
  {
    sub_1AB014AC0(*(v0 + 1688), &qword_1EB437E40);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v114 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1AB28E968(v91, v114, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1024, v0 + 1088, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1AB017CC4(v0 + 1088, v0 + 816, &unk_1EB437E60);
  *(v0 + 848) = 0;
  v115 = v166[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_1AB0168A8(0, *(v115 + 2) + 1, 1, v115);
  }

  v117 = *(v115 + 2);
  v116 = *(v115 + 3);
  if (v117 >= v116 >> 1)
  {
    v115 = sub_1AB0168A8((v116 > 1), v117 + 1, 1, v115);
  }

  *(v115 + 2) = v117 + 1;
  v118 = &v115[40 * v117];
  v119 = *(v0 + 816);
  v120 = *(v0 + 832);
  v118[64] = *(v0 + 848);
  *(v118 + 2) = v119;
  *(v118 + 3) = v120;
  v166[0] = v115;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60);
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v121);
  *(v88 + 32) = v166[0];
  Logger.info(_:)(v88, v86, v87);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v122 = swift_task_alloc();
  *(v0 + 1856) = v122;
  *v122 = v0;
  v122[1] = sub_1AB276B1C;
  v123 = *(v0 + 1696);
  v124 = *(v0 + 1648);
  v125 = *(v0 + 1528);

  sub_1AB1B16FC(v124, v125, v123, v0 + 456);
}

uint64_t sub_1AB27230C()
{
  v135 = v0;
  v1 = (v0 + 696);

  v2 = *(v0 + 1800);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 640);
  v4 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 616), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1432);
  *(v0 + 1336) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 1312, v0 + 1216, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 1216, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v10 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v134 + 2) + 1, 1, v134);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 712);
  v13[64] = *(v0 + 728);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v134 = v10;
  sub_1AB014AC0(v0 + 1312, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
  v17 = *(v0 + 1744);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v18 + 48);
  *(v0 + 1824) = v20;
  *(v0 + 1832) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v128 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v120 = v21;
  *(v0 + 689) = v21 & 1;
  v23 = *(v0 + 1720);
  sub_1AB01494C(*(v0 + 1520) + 40, v0 + 336);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v20(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1664);
    sub_1AB28E968(*(v0 + 1720), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v26);
    (*(v27 + 8))(&v134, v25, v26, v27);
    v24 = v134;
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  v131 = v24;
  *(v0 + 690) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 776);
  v29 = *(v0 + 1744);
  v30 = *(v0 + 1712);
  v31 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EB435770;
  sub_1AB4622E4();
  v123 = *(v0 + 408);
  v125 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v125);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1AB014A58(v29, v30, &qword_1EB437E40);
  v33 = v20(v30, 1, v31);
  v34 = *(v0 + 1712);
  if (v33 == 1)
  {
    sub_1AB014AC0(*(v0 + 1712), &qword_1EB437E40);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1AB28E968(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1152, v0 + 1120, &unk_1EB437E60);
  *v28 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1120, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v36 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 856);
  v40 = (v0 + 1056);
  *(v36 + 2) = v38 + 1;
  v41 = &v36[40 * v38];
  v42 = *v28;
  v43 = *(v0 + 792);
  v41[64] = *(v0 + 808);
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v134 = v36;
  sub_1AB014AC0(v0 + 1152, &unk_1EB437E60);
  v44._countAndFlagsBits = 0x3D73757461747320;
  v44._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  if (v131 == 4)
  {
    v45 = 0;
    *v40 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v40 = v131;
    v45 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v45;
  sub_1AB014A58(v0 + 1056, v0 + 992, &unk_1EB437E60);
  *v39 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 992, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v46 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
  }

  v49 = *(v0 + 1576);
  v50 = *(v0 + 1528);
  *(v46 + 2) = v48 + 1;
  v51 = &v46[40 * v48];
  v52 = *v39;
  v53 = *(v0 + 872);
  v51[64] = *(v0 + 888);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v134 = v46;
  sub_1AB014AC0(v0 + 1056, &unk_1EB437E60);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v121 + 32) = v134;
  Logger.info(_:)(v121, v125, v123);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v55 = *(v49 + 20);
  v126 = v50;
  v56 = *(v50 + v55);
  if (*(v50 + v55))
  {
    v57 = v128;
    v58 = v131;
    v59 = sub_1AB461DA4();

    if (v59)
    {
      goto LABEL_37;
    }

    if (v56 != 2)
    {
      v60 = sub_1AB461DA4();

      if (v131 == 4 || (v60 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_38:
      v61 = *(v0 + 1744);
      v62 = *(v0 + 1704);
      v63 = *(v0 + 1616);
      v132 = swift_allocBox();
      v65 = v64;
      sub_1AB014A58(v61, v62, &qword_1EB437E40);
      v66 = v57(v62, 1, v63);
      v67 = *(v0 + 1704);
      if (v66 == 1)
      {
        sub_1AB014AC0(v67, &qword_1EB437E40);
        swift_deallocBox();
        goto LABEL_43;
      }

      sub_1AB28E968(v67, v65, type metadata accessor for JetPackAsset);
      if (v58 >= 2 || (v120 & 1) != 0)
      {

        goto LABEL_43;
      }

      v129 = v65;
      sub_1AB4622E4();
      v95 = *(v0 + 320);
      v96 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v95);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v98 = v58;
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1AB4D4720;
      *(v0 + 1304) = MEMORY[0x1E69E6158];
      *(v0 + 1280) = 0xD000000000000012;
      *(v0 + 1288) = 0x80000001AB506580;
      *(v99 + 48) = 0u;
      *(v99 + 32) = 0u;
      sub_1AB017CC4(v0 + 1280, v99 + 32, &unk_1EB437E60);
      *(v99 + 64) = 0;
      *(v97 + 32) = v99;
      Logger.info(_:)(v97, v95, v96);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
      if (v98 - 1 >= 2)
      {
LABEL_73:
        v119 = *(v0 + 1512);
        swift_beginAccess();
        sub_1AB28E900(v129, v119, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

        v81 = *(v0 + 8);
        goto LABEL_54;
      }

      v100 = *(v126 + v55);
      if (*(v126 + v55))
      {
        v101 = sub_1AB461DA4();

        if (v101)
        {
LABEL_72:
          v103 = *(v0 + 1608);
          v130 = v103;
          v104 = *(v0 + 1600);
          v105 = *(v0 + 1584);
          v106 = *(v0 + 1568);
          v122 = *(v0 + 1592);
          v107 = *(v0 + 1552);
          v108 = *(v0 + 1544);
          v124 = *(v0 + 1560);
          v127 = *(v0 + 1536);
          v109 = *(v0 + 1528);
          v110 = *(v0 + 1520);
          *(v129 + *(*(v0 + 1616) + 40)) = 1;
          v111 = sub_1AB460BE4();
          (*(*(v111 - 8) + 56))(v103, 1, 1, v111);
          sub_1AB28E900(v109, v104, type metadata accessor for URLJetPackAssetRequest);
          sub_1AB28E900(v108, v106, type metadata accessor for URLJetPackAssetFetcher);
          sub_1AB014A58(v110, v0 + 16, &qword_1EB4394A8);
          v112 = (*(v105 + 80) + 40) & ~*(v105 + 80);
          v113 = (v122 + *(v107 + 80) + v112) & ~*(v107 + 80);
          v114 = (v124 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
          v115 = swift_allocObject();
          v115[2] = 0;
          v115[3] = 0;
          v115[4] = v127;
          sub_1AB28E968(v104, v115 + v112, type metadata accessor for URLJetPackAssetRequest);
          sub_1AB28E968(v106, v115 + v113, type metadata accessor for URLJetPackAssetFetcher);
          *(v115 + v114) = v132;
          v116 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
          v117 = *(v0 + 80);
          v116[3] = *(v0 + 64);
          v116[4] = v117;
          v118 = *(v0 + 48);
          v116[1] = *(v0 + 32);
          v116[2] = v118;
          *v116 = *(v0 + 16);

          sub_1AB3B2A60(0, 0, v130, &unk_1AB4E3790, v115);

          goto LABEL_73;
        }

        if (v100 == 2)
        {
          v102 = sub_1AB461DA4();

          if ((v102 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }
      }

      goto LABEL_72;
    }
  }

  else
  {
    v57 = v128;
    v58 = v131;
  }

LABEL_37:
  if (v58 != 4)
  {
    goto LABEL_38;
  }

LABEL_43:
  v68 = *(v126 + v55);
  if (!*(v126 + v55))
  {
    goto LABEL_48;
  }

  v69 = sub_1AB461DA4();

  if (v69)
  {
    goto LABEL_49;
  }

  if (v68 != 2)
  {
LABEL_48:

    goto LABEL_49;
  }

  v70 = sub_1AB461DA4();

  if ((v70 & 1) == 0)
  {
    sub_1AB28D17C();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

    v81 = *(v0 + 8);
LABEL_54:

    return v81();
  }

LABEL_49:
  if (v58 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1744), *(v0 + 1696), &qword_1EB437E40);
  }

  sub_1AB014A58(*(v0 + 1520), v0 + 96, &qword_1EB4394A8);
  sub_1AB01494C(v0 + 96, v0 + 176);
  sub_1AB01494C(v0 + 136, v0 + 216);
  sub_1AB460CC4();
  v72 = *(v0 + 1696);
  v73 = v57;
  v74 = *(v0 + 1688);
  v75 = *(v0 + 1616);
  sub_1AB4622E4();
  v76 = *(v0 + 520);
  v133 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v76);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v78._countAndFlagsBits = 0xD000000000000032;
  v78._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v78);
  sub_1AB014A58(v72, v74, &qword_1EB437E40);
  v79 = v73(v74, 1, v75);
  v80 = *(v0 + 1688);
  if (v79 == 1)
  {
    sub_1AB014AC0(*(v0 + 1688), &qword_1EB437E40);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v83 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1AB28E968(v80, v83, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1024, v0 + 1088, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1AB017CC4(v0 + 1088, v0 + 816, &unk_1EB437E60);
  *(v0 + 848) = 0;
  v84 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_1AB0168A8(0, *(v84 + 2) + 1, 1, v84);
  }

  v86 = *(v84 + 2);
  v85 = *(v84 + 3);
  if (v86 >= v85 >> 1)
  {
    v84 = sub_1AB0168A8((v85 > 1), v86 + 1, 1, v84);
  }

  *(v84 + 2) = v86 + 1;
  v87 = &v84[40 * v86];
  v88 = *(v0 + 816);
  v89 = *(v0 + 832);
  v87[64] = *(v0 + 848);
  *(v87 + 2) = v88;
  *(v87 + 3) = v89;
  v134 = v84;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60);
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v90);
  *(v77 + 32) = v134;
  Logger.info(_:)(v77, v76, v133);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v91 = swift_task_alloc();
  *(v0 + 1856) = v91;
  *v91 = v0;
  v91[1] = sub_1AB276B1C;
  v92 = *(v0 + 1696);
  v93 = *(v0 + 1648);
  v94 = *(v0 + 1528);

  return sub_1AB1B16FC(v93, v94, v92, v0 + 456);
}

uint64_t sub_1AB273B6C()
{
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v2 = sub_1AB2752A8;
  }

  else
  {
    v2 = sub_1AB273C80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB273C80()
{
  v143 = v0;
  sub_1AB28DBE8(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v129 = *(v0 + 1816);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v2 + 48);
  *(v0 + 1824) = v4;
  *(v0 + 1832) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v127 = v5;
  *(v0 + 689) = v5 & 1;
  v7 = *(v0 + 1720);
  sub_1AB01494C(*(v0 + 1520) + 40, v0 + 336);
  sub_1AB014A58(v1, v7, &qword_1EB437E40);
  if (v4(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1664);
    sub_1AB28E968(*(v0 + 1720), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v10);
    (*(v11 + 8))(&v142, v9, v10, v11);
    v8 = v142;
    sub_1AB28DBE8(v9, type metadata accessor for JetPackAsset);
  }

  v140 = v8;
  *(v0 + 690) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v12 = (v0 + 776);
  v13 = *(v0 + 1744);
  v14 = *(v0 + 1712);
  v15 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EB435770;
  sub_1AB4622E4();
  v135 = *(v0 + 408);
  v137 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v137);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1AB4D4720;
  v142 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0x7341646568636163;
  v16._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  sub_1AB014A58(v13, v14, &qword_1EB437E40);
  v17 = v4(v14, 1, v15);
  v18 = *(v0 + 1712);
  if (v17 == 1)
  {
    sub_1AB014AC0(*(v0 + 1712), &qword_1EB437E40);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1AB28E968(v18, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1152, v0 + 1120, &unk_1EB437E60);
  *v12 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1120, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v20 = v142;
  v128 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
  }

  v23 = (v0 + 856);
  v24 = (v0 + 1056);
  *(v20 + 2) = v22 + 1;
  v25 = &v20[40 * v22];
  v26 = *v12;
  v27 = *(v0 + 792);
  v25[64] = *(v0 + 808);
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  v142 = v20;
  sub_1AB014AC0(v0 + 1152, &unk_1EB437E60);
  v28._countAndFlagsBits = 0x3D73757461747320;
  v28._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  if (v140 == 4)
  {
    v29 = 0;
    *v24 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v24 = v140;
    v29 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v29;
  sub_1AB014A58(v0 + 1056, v0 + 992, &unk_1EB437E60);
  *v23 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 992, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v30 = v142;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v0 + 1576);
  v34 = *(v0 + 1528);
  *(v30 + 2) = v32 + 1;
  v35 = &v30[40 * v32];
  v36 = *v23;
  v37 = *(v0 + 872);
  v35[64] = *(v0 + 888);
  *(v35 + 2) = v36;
  *(v35 + 3) = v37;
  v142 = v30;
  sub_1AB014AC0(v0 + 1056, &unk_1EB437E60);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  *(v131 + 32) = v142;
  Logger.info(_:)(v131, v137, v135);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v39 = *(v33 + 20);
  v40 = v34;
  v41 = *(v34 + v39);
  if (!v41)
  {
    v42 = v140;
    goto LABEL_30;
  }

  v42 = v140;
  v43 = sub_1AB461DA4();

  if (v43)
  {
    goto LABEL_31;
  }

  if (v41 == 2)
  {
LABEL_30:

LABEL_31:
    if (v42 == 4)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v44 = sub_1AB461DA4();

  if (v140 == 4 || (v44 & 1) == 0)
  {
LABEL_34:
    v52 = *(v40 + v39);
    if (*(v40 + v39))
    {
      goto LABEL_35;
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_32:
  v45 = *(v0 + 1744);
  v46 = *(v0 + 1704);
  v47 = *(v0 + 1616);
  v141 = swift_allocBox();
  v49 = v48;
  sub_1AB014A58(v45, v46, &qword_1EB437E40);
  v50 = v128(v46, 1, v47);
  v51 = *(v0 + 1704);
  if (v50 == 1)
  {
    sub_1AB014AC0(v51, &qword_1EB437E40);
    swift_deallocBox();
    goto LABEL_34;
  }

  sub_1AB28E968(v51, v49, type metadata accessor for JetPackAsset);
  if (v42 < 2 && (v127 & 1) == 0)
  {
    v139 = v49;
    sub_1AB4622E4();
    v104 = *(v0 + 320);
    v103 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v104);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1AB4D4720;
    *(v0 + 1304) = MEMORY[0x1E69E6158];
    *(v0 + 1280) = 0xD000000000000012;
    *(v0 + 1288) = 0x80000001AB506580;
    *(v106 + 48) = 0u;
    *(v106 + 32) = 0u;
    sub_1AB017CC4(v0 + 1280, v106 + 32, &unk_1EB437E60);
    *(v106 + 64) = 0;
    *(v105 + 32) = v106;
    Logger.info(_:)(v105, v104, v103);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
    if (v42 - 1 >= 2)
    {
LABEL_80:
      v126 = *(v0 + 1512);
      swift_beginAccess();
      sub_1AB28E900(v139, v126, type metadata accessor for JetPackAsset);

      goto LABEL_61;
    }

    v107 = *(v40 + v39);
    if (*(v40 + v39))
    {
      v108 = sub_1AB461DA4();

      if (v108)
      {
LABEL_79:
        v110 = *(v0 + 1608);
        v111 = *(v0 + 1600);
        v112 = *(v0 + 1584);
        v113 = *(v0 + 1568);
        v130 = *(v0 + 1592);
        v132 = *(v0 + 1560);
        v114 = *(v0 + 1552);
        v115 = *(v0 + 1544);
        v134 = *(v0 + 1536);
        v116 = *(v0 + 1528);
        v117 = *(v0 + 1520);
        *(v139 + *(*(v0 + 1616) + 40)) = 1;
        v118 = sub_1AB460BE4();
        (*(*(v118 - 8) + 56))(v110, 1, 1, v118);
        sub_1AB28E900(v116, v111, type metadata accessor for URLJetPackAssetRequest);
        sub_1AB28E900(v115, v113, type metadata accessor for URLJetPackAssetFetcher);
        sub_1AB014A58(v117, v0 + 16, &qword_1EB4394A8);
        v119 = (*(v112 + 80) + 40) & ~*(v112 + 80);
        v120 = (v130 + *(v114 + 80) + v119) & ~*(v114 + 80);
        v121 = (v132 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
        v122 = swift_allocObject();
        v122[2] = 0;
        v122[3] = 0;
        v122[4] = v134;
        sub_1AB28E968(v111, v122 + v119, type metadata accessor for URLJetPackAssetRequest);
        sub_1AB28E968(v113, v122 + v120, type metadata accessor for URLJetPackAssetFetcher);
        *(v122 + v121) = v141;
        v123 = (v122 + ((v121 + 15) & 0xFFFFFFFFFFFFFFF8));
        v124 = *(v0 + 80);
        v123[3] = *(v0 + 64);
        v123[4] = v124;
        v125 = *(v0 + 48);
        v123[1] = *(v0 + 32);
        v123[2] = v125;
        *v123 = *(v0 + 16);

        sub_1AB3B2A60(0, 0, v110, &unk_1AB4E3790, v122);

        goto LABEL_80;
      }

      if (v107 == 2)
      {
        v109 = sub_1AB461DA4();

        if ((v109 & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }
    }

    goto LABEL_79;
  }

  v52 = *(v40 + v39);
  if (!*(v40 + v39))
  {
    goto LABEL_42;
  }

LABEL_35:
  v53 = sub_1AB461DA4();

  if (v53)
  {
    goto LABEL_43;
  }

  if (v52 != 2)
  {
    goto LABEL_42;
  }

  v54 = sub_1AB461DA4();

  if ((v54 & 1) == 0)
  {
    sub_1AB28D17C();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    goto LABEL_61;
  }

LABEL_43:
  if (v42 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1744), *(v0 + 1696), &qword_1EB437E40);
  }

  sub_1AB014A58(*(v0 + 1520), v0 + 96, &qword_1EB4394A8);
  sub_1AB01494C(v0 + 96, v0 + 176);
  sub_1AB01494C(v0 + 136, v0 + 216);
  sub_1AB460CC4();
  if (v129)
  {
    v56 = *(v0 + 1824);
    v57 = *(v0 + 1744);
    v58 = *(v0 + 1680);
    v59 = *(v0 + 1616);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
    sub_1AB014A58(v57, v58, &qword_1EB437E40);
    if (v56(v58, 1, v59) == 1)
    {
      sub_1AB014AC0(*(v0 + 1680), &qword_1EB437E40);
    }

    else
    {
      v69 = *(v0 + 690);
      sub_1AB28E968(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
      if (v69 != 4 && !*(v0 + 690) && *(v0 + 689) == 1)
      {
        sub_1AB4622E4();
        v70 = *(v0 + 560);
        v71 = *(v0 + 568);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v70);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1AB4D4720;
        v142 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v73._countAndFlagsBits = 0xD000000000000025;
        v73._object = 0x80000001AB506460;
        LogMessage.StringInterpolation.appendLiteral(_:)(v73);
        swift_getErrorValue();
        v74 = *(v0 + 1376);
        v75 = *(v0 + 1384);
        *(v0 + 952) = v75;
        v76 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
        (*(*(v75 - 8) + 16))(v76, v74, v75);
        sub_1AB014A58(v0 + 928, v0 + 896, &unk_1EB437E60);
        *(v0 + 656) = 0u;
        *(v0 + 672) = 0u;
        sub_1AB017CC4(v0 + 896, v0 + 656, &unk_1EB437E60);
        *(v0 + 688) = 0;
        v77 = v142;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1AB0168A8(0, *(v77 + 2) + 1, 1, v77);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_1AB0168A8((v78 > 1), v79 + 1, 1, v77);
        }

        v138 = *(v0 + 1632);
        v133 = *(v0 + 1696);
        v136 = *(v0 + 1512);
        *(v77 + 2) = v79 + 1;
        v80 = &v77[40 * v79];
        v81 = *(v0 + 656);
        v82 = *(v0 + 672);
        v80[64] = *(v0 + 688);
        *(v80 + 2) = v81;
        *(v80 + 3) = v82;
        v142 = v77;
        sub_1AB014AC0(v0 + 928, &unk_1EB437E60);
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v83);
        *(v72 + 32) = v142;
        Logger.error(_:)(v72, v70, v71);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
        sub_1AB4622E4();
        v84 = *(v0 + 600);
        v85 = *(v0 + 608);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v84);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1AB4D4720;
        *(v0 + 984) = MEMORY[0x1E69E6158];
        *(v0 + 960) = 0xD000000000000075;
        *(v0 + 968) = 0x80000001AB506490;
        *(v87 + 48) = 0u;
        *(v87 + 32) = 0u;
        sub_1AB017CC4(v0 + 960, v87 + 32, &unk_1EB437E60);
        *(v87 + 64) = 0;
        *(v86 + 32) = v87;
        Logger.warning(_:)(v86, v84, v85);

        sub_1AB014AC0(v133, &qword_1EB437E40);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
        sub_1AB28E968(v138, v136, type metadata accessor for JetPackAsset);
        goto LABEL_61;
      }

      sub_1AB28DBE8(*(v0 + 1632), type metadata accessor for JetPackAsset);
    }

    v88 = *(v0 + 1696);
    swift_willThrow();
    sub_1AB014AC0(v88, &qword_1EB437E40);
LABEL_61:
    sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

    v89 = *(v0 + 8);

    return v89();
  }

  v60 = *(v0 + 1696);
  v61 = *(v0 + 1688);
  v62 = *(v0 + 1616);
  sub_1AB4622E4();
  v63 = *(v0 + 520);
  v64 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v63);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AB4D4720;
  v142 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v66._countAndFlagsBits = 0xD000000000000032;
  v66._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v66);
  sub_1AB014A58(v60, v61, &qword_1EB437E40);
  v67 = v128(v61, 1, v62);
  v68 = *(v0 + 1688);
  if (v67 == 1)
  {
    sub_1AB014AC0(*(v0 + 1688), &qword_1EB437E40);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v91 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1AB28E968(v68, v91, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1024, v0 + 1088, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1AB017CC4(v0 + 1088, v0 + 816, &unk_1EB437E60);
  *(v0 + 848) = 0;
  v92 = v142;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_1AB0168A8(0, *(v92 + 2) + 1, 1, v92);
  }

  v94 = *(v92 + 2);
  v93 = *(v92 + 3);
  if (v94 >= v93 >> 1)
  {
    v92 = sub_1AB0168A8((v93 > 1), v94 + 1, 1, v92);
  }

  *(v92 + 2) = v94 + 1;
  v95 = &v92[40 * v94];
  v96 = *(v0 + 816);
  v97 = *(v0 + 832);
  v95[64] = *(v0 + 848);
  *(v95 + 2) = v96;
  *(v95 + 3) = v97;
  v142 = v92;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60);
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v98);
  *(v65 + 32) = v142;
  Logger.info(_:)(v65, v63, v64);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v99 = swift_task_alloc();
  *(v0 + 1856) = v99;
  *v99 = v0;
  v99[1] = sub_1AB276B1C;
  v100 = *(v0 + 1696);
  v101 = *(v0 + 1648);
  v102 = *(v0 + 1528);

  return sub_1AB1B16FC(v101, v102, v100, v0 + 456);
}

uint64_t sub_1AB2752A8()
{
  v135 = v0;
  v1 = (v0 + 696);
  sub_1AB28DBE8(*(v0 + 1672), type metadata accessor for JetPackAsset);
  v2 = *(v0 + 1816);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 640);
  v4 = *(v0 + 648);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 616), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1432);
  *(v0 + 1336) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1312));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 1312, v0 + 1216, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 1216, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v10 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v134 + 2) + 1, 1, v134);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 712);
  v13[64] = *(v0 + 728);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v134 = v10;
  sub_1AB014AC0(v0 + 1312, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 616);
  v17 = *(v0 + 1744);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v18 + 48);
  *(v0 + 1824) = v20;
  *(v0 + 1832) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v128 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v120 = v21;
  *(v0 + 689) = v21 & 1;
  v23 = *(v0 + 1720);
  sub_1AB01494C(*(v0 + 1520) + 40, v0 + 336);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v20(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1664);
    sub_1AB28E968(*(v0 + 1720), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v26);
    (*(v27 + 8))(&v134, v25, v26, v27);
    v24 = v134;
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  v131 = v24;
  *(v0 + 690) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 776);
  v29 = *(v0 + 1744);
  v30 = *(v0 + 1712);
  v31 = *(v0 + 1616);
  *(v0 + 1840) = qword_1EB435770;
  sub_1AB4622E4();
  v123 = *(v0 + 408);
  v125 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v125);
  *(v0 + 1848) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v32._countAndFlagsBits = 0x7341646568636163;
  v32._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_1AB014A58(v29, v30, &qword_1EB437E40);
  v33 = v20(v30, 1, v31);
  v34 = *(v0 + 1712);
  if (v33 == 1)
  {
    sub_1AB014AC0(*(v0 + 1712), &qword_1EB437E40);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
  }

  else
  {
    *(v0 + 1176) = *(v0 + 1616);
    v35 = __swift_allocate_boxed_opaque_existential_0((v0 + 1152));
    sub_1AB28E968(v34, v35, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1152, v0 + 1120, &unk_1EB437E60);
  *v28 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1120, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v36 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1AB0168A8(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = (v0 + 856);
  v40 = (v0 + 1056);
  *(v36 + 2) = v38 + 1;
  v41 = &v36[40 * v38];
  v42 = *v28;
  v43 = *(v0 + 792);
  v41[64] = *(v0 + 808);
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v134 = v36;
  sub_1AB014AC0(v0 + 1152, &unk_1EB437E60);
  v44._countAndFlagsBits = 0x3D73757461747320;
  v44._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  if (v131 == 4)
  {
    v45 = 0;
    *v40 = 0;
    *(v0 + 1064) = 0;
    *(v0 + 1072) = 0;
  }

  else
  {
    *v40 = v131;
    v45 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 1080) = v45;
  sub_1AB014A58(v0 + 1056, v0 + 992, &unk_1EB437E60);
  *v39 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 992, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v46 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AB0168A8(0, *(v46 + 2) + 1, 1, v46);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AB0168A8((v47 > 1), v48 + 1, 1, v46);
  }

  v49 = *(v0 + 1576);
  v50 = *(v0 + 1528);
  *(v46 + 2) = v48 + 1;
  v51 = &v46[40 * v48];
  v52 = *v39;
  v53 = *(v0 + 872);
  v51[64] = *(v0 + 888);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  v134 = v46;
  sub_1AB014AC0(v0 + 1056, &unk_1EB437E60);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v121 + 32) = v134;
  Logger.info(_:)(v121, v125, v123);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v55 = *(v49 + 20);
  v126 = v50;
  v56 = *(v50 + v55);
  if (*(v50 + v55))
  {
    v57 = v128;
    v58 = v131;
    v59 = sub_1AB461DA4();

    if (v59)
    {
      goto LABEL_37;
    }

    if (v56 != 2)
    {
      v60 = sub_1AB461DA4();

      if (v131 == 4 || (v60 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_38:
      v61 = *(v0 + 1744);
      v62 = *(v0 + 1704);
      v63 = *(v0 + 1616);
      v132 = swift_allocBox();
      v65 = v64;
      sub_1AB014A58(v61, v62, &qword_1EB437E40);
      v66 = v57(v62, 1, v63);
      v67 = *(v0 + 1704);
      if (v66 == 1)
      {
        sub_1AB014AC0(v67, &qword_1EB437E40);
        swift_deallocBox();
        goto LABEL_43;
      }

      sub_1AB28E968(v67, v65, type metadata accessor for JetPackAsset);
      if (v58 >= 2 || (v120 & 1) != 0)
      {

        goto LABEL_43;
      }

      v129 = v65;
      sub_1AB4622E4();
      v95 = *(v0 + 320);
      v96 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v95);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v98 = v58;
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1AB4D4720;
      *(v0 + 1304) = MEMORY[0x1E69E6158];
      *(v0 + 1280) = 0xD000000000000012;
      *(v0 + 1288) = 0x80000001AB506580;
      *(v99 + 48) = 0u;
      *(v99 + 32) = 0u;
      sub_1AB017CC4(v0 + 1280, v99 + 32, &unk_1EB437E60);
      *(v99 + 64) = 0;
      *(v97 + 32) = v99;
      Logger.info(_:)(v97, v95, v96);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
      if (v98 - 1 >= 2)
      {
LABEL_73:
        v119 = *(v0 + 1512);
        swift_beginAccess();
        sub_1AB28E900(v129, v119, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

        v81 = *(v0 + 8);
        goto LABEL_54;
      }

      v100 = *(v126 + v55);
      if (*(v126 + v55))
      {
        v101 = sub_1AB461DA4();

        if (v101)
        {
LABEL_72:
          v103 = *(v0 + 1608);
          v130 = v103;
          v104 = *(v0 + 1600);
          v105 = *(v0 + 1584);
          v106 = *(v0 + 1568);
          v122 = *(v0 + 1592);
          v107 = *(v0 + 1552);
          v108 = *(v0 + 1544);
          v124 = *(v0 + 1560);
          v127 = *(v0 + 1536);
          v109 = *(v0 + 1528);
          v110 = *(v0 + 1520);
          *(v129 + *(*(v0 + 1616) + 40)) = 1;
          v111 = sub_1AB460BE4();
          (*(*(v111 - 8) + 56))(v103, 1, 1, v111);
          sub_1AB28E900(v109, v104, type metadata accessor for URLJetPackAssetRequest);
          sub_1AB28E900(v108, v106, type metadata accessor for URLJetPackAssetFetcher);
          sub_1AB014A58(v110, v0 + 16, &qword_1EB4394A8);
          v112 = (*(v105 + 80) + 40) & ~*(v105 + 80);
          v113 = (v122 + *(v107 + 80) + v112) & ~*(v107 + 80);
          v114 = (v124 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
          v115 = swift_allocObject();
          v115[2] = 0;
          v115[3] = 0;
          v115[4] = v127;
          sub_1AB28E968(v104, v115 + v112, type metadata accessor for URLJetPackAssetRequest);
          sub_1AB28E968(v106, v115 + v113, type metadata accessor for URLJetPackAssetFetcher);
          *(v115 + v114) = v132;
          v116 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
          v117 = *(v0 + 80);
          v116[3] = *(v0 + 64);
          v116[4] = v117;
          v118 = *(v0 + 48);
          v116[1] = *(v0 + 32);
          v116[2] = v118;
          *v116 = *(v0 + 16);

          sub_1AB3B2A60(0, 0, v130, &unk_1AB4E3790, v115);

          goto LABEL_73;
        }

        if (v100 == 2)
        {
          v102 = sub_1AB461DA4();

          if ((v102 & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }
      }

      goto LABEL_72;
    }
  }

  else
  {
    v57 = v128;
    v58 = v131;
  }

LABEL_37:
  if (v58 != 4)
  {
    goto LABEL_38;
  }

LABEL_43:
  v68 = *(v126 + v55);
  if (!*(v126 + v55))
  {
    goto LABEL_48;
  }

  v69 = sub_1AB461DA4();

  if (v69)
  {
    goto LABEL_49;
  }

  if (v68 != 2)
  {
LABEL_48:

    goto LABEL_49;
  }

  v70 = sub_1AB461DA4();

  if ((v70 & 1) == 0)
  {
    sub_1AB28D17C();
    swift_allocError();
    *v71 = 0;
    swift_willThrow();
    sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

    v81 = *(v0 + 8);
LABEL_54:

    return v81();
  }

LABEL_49:
  if (v58 == 3)
  {
    (*(v0 + 1752))(*(v0 + 1696), 1, 1, *(v0 + 1616));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1744), *(v0 + 1696), &qword_1EB437E40);
  }

  sub_1AB014A58(*(v0 + 1520), v0 + 96, &qword_1EB4394A8);
  sub_1AB01494C(v0 + 96, v0 + 176);
  sub_1AB01494C(v0 + 136, v0 + 216);
  sub_1AB460CC4();
  v72 = *(v0 + 1696);
  v73 = v57;
  v74 = *(v0 + 1688);
  v75 = *(v0 + 1616);
  sub_1AB4622E4();
  v76 = *(v0 + 520);
  v133 = *(v0 + 528);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v76);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1AB4D4720;
  v134 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v78._countAndFlagsBits = 0xD000000000000032;
  v78._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v78);
  sub_1AB014A58(v72, v74, &qword_1EB437E40);
  v79 = v73(v74, 1, v75);
  v80 = *(v0 + 1688);
  if (v79 == 1)
  {
    sub_1AB014AC0(*(v0 + 1688), &qword_1EB437E40);
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
  }

  else
  {
    *(v0 + 1048) = *(v0 + 1616);
    v83 = __swift_allocate_boxed_opaque_existential_0((v0 + 1024));
    sub_1AB28E968(v80, v83, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1024, v0 + 1088, &unk_1EB437E60);
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  sub_1AB017CC4(v0 + 1088, v0 + 816, &unk_1EB437E60);
  *(v0 + 848) = 0;
  v84 = v134;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_1AB0168A8(0, *(v84 + 2) + 1, 1, v84);
  }

  v86 = *(v84 + 2);
  v85 = *(v84 + 3);
  if (v86 >= v85 >> 1)
  {
    v84 = sub_1AB0168A8((v85 > 1), v86 + 1, 1, v84);
  }

  *(v84 + 2) = v86 + 1;
  v87 = &v84[40 * v86];
  v88 = *(v0 + 816);
  v89 = *(v0 + 832);
  v87[64] = *(v0 + 848);
  *(v87 + 2) = v88;
  *(v87 + 3) = v89;
  v134 = v84;
  sub_1AB014AC0(v0 + 1024, &unk_1EB437E60);
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v90);
  *(v77 + 32) = v134;
  Logger.info(_:)(v77, v76, v133);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
  *(v0 + 480) = &type metadata for SystemDateProvider;
  *(v0 + 488) = &protocol witness table for SystemDateProvider;
  v91 = swift_task_alloc();
  *(v0 + 1856) = v91;
  *v91 = v0;
  v91[1] = sub_1AB276B1C;
  v92 = *(v0 + 1696);
  v93 = *(v0 + 1648);
  v94 = *(v0 + 1528);

  return sub_1AB1B16FC(v93, v94, v92, v0 + 456);
}

uint64_t sub_1AB276B1C()
{
  v2 = *v1;
  *(*v1 + 1864) = v0;

  if (v0)
  {
    v3 = sub_1AB276F84;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 456);
    v3 = sub_1AB276C38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB276C38()
{
  v1 = v0[207];
  v2 = v0[202];
  sub_1AB28E968(v0[206], v1, type metadata accessor for JetPackAsset);
  v3 = *(v2 + 20);
  v4 = v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 44) + v3;
  if ((*(v4 + 8) & 1) != 0 || *v4 != 0.0)
  {
    v8 = v0[25];
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 22, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[234] = v10;
    *v10 = v0;
    v10[1] = sub_1AB277670;
    v11 = v0[207];
    v12 = v0[205];

    return v13(v12, v11, v8, v9);
  }

  else
  {
    v5 = v0[212];
    sub_1AB28E968(v0[207], v0[189], type metadata accessor for JetPackAsset);
    sub_1AB014AC0((v0 + 22), &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
    sub_1AB014AC0(v5, &qword_1EB437E40);
    sub_1AB014AC0(v0[218], &qword_1EB437E40);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB276F84()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1616);
  sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  sub_1AB014A58(v3, v4, &qword_1EB437E40);
  v31 = v1;
  if (v2(v4, 1, v5) == 1)
  {
    sub_1AB014AC0(*(v0 + 1680), &qword_1EB437E40);
LABEL_12:
    v27 = *(v0 + 1696);
    swift_willThrow();
    sub_1AB014AC0(v27, &qword_1EB437E40);
    sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

    v26 = *(v0 + 8);
    goto LABEL_13;
  }

  v6 = *(v0 + 690);
  sub_1AB28E968(*(v0 + 1680), *(v0 + 1632), type metadata accessor for JetPackAsset);
  if (v6 == 4 || *(v0 + 690) || *(v0 + 689) != 1)
  {
    sub_1AB28DBE8(*(v0 + 1632), type metadata accessor for JetPackAsset);
    goto LABEL_12;
  }

  sub_1AB4622E4();
  v7 = *(v0 + 560);
  v8 = *(v0 + 568);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  v32 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB506460;
  v10._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = *(v0 + 1376);
  v12 = *(v0 + 1384);
  *(v0 + 952) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 928));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_1AB014A58(v0 + 928, v0 + 896, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB017CC4(v0 + 896, v0 + 656, &unk_1EB437E60);
  *(v0 + 688) = 0;
  v14 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AB0168A8(0, *(v32 + 2) + 1, 1, v32);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1696);
  v29 = *(v0 + 1512);
  v30 = *(v0 + 1632);
  *(v14 + 2) = v16 + 1;
  v18 = &v14[40 * v16];
  v19 = *(v0 + 656);
  v20 = *(v0 + 672);
  v18[64] = *(v0 + 688);
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  sub_1AB014AC0(v0 + 928, &unk_1EB437E60);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v9 + 32) = v14;
  Logger.error(_:)(v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  sub_1AB4622E4();
  v22 = *(v0 + 600);
  v23 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  *(v0 + 984) = MEMORY[0x1E69E6158];
  *(v0 + 960) = 0xD000000000000075;
  *(v0 + 968) = 0x80000001AB506490;
  *(v25 + 48) = 0u;
  *(v25 + 32) = 0u;
  sub_1AB017CC4(v0 + 960, v25 + 32, &unk_1EB437E60);
  *(v25 + 64) = 0;
  *(v24 + 32) = v25;
  Logger.warning(_:)(v24, v22, v23);

  sub_1AB014AC0(v17, &qword_1EB437E40);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  sub_1AB28E968(v30, v29, type metadata accessor for JetPackAsset);
  sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

  v26 = *(v0 + 8);
LABEL_13:

  return v26();
}

uint64_t sub_1AB277670()
{
  v2 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {
    v3 = sub_1AB277988;
  }

  else
  {
    sub_1AB28DBE8(*(v2 + 1640), type metadata accessor for JetPackAsset);
    v3 = sub_1AB2777A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB2777A0()
{
  v1 = v0[212];
  sub_1AB28E968(v0[207], v0[189], type metadata accessor for JetPackAsset);
  sub_1AB014AC0((v0 + 22), &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  sub_1AB014AC0(v1, &qword_1EB437E40);
  sub_1AB014AC0(v0[218], &qword_1EB437E40);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB277988()
{
  sub_1AB4622E4();
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v1);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB506550;
  v4._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  swift_getErrorValue();
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1408);
  *(v0 + 1208) = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1184));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1AB014A58(v0 + 1184, v0 + 1248, &unk_1EB437E60);
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0u;
  sub_1AB017CC4(v0 + 1248, v0 + 736, &unk_1EB437E60);
  *(v0 + 768) = 0;
  v8 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  v11 = *(v0 + 1880);
  *(v8 + 2) = v10 + 1;
  v12 = &v8[40 * v10];
  v13 = *(v0 + 736);
  v14 = *(v0 + 752);
  v12[64] = *(v0 + 768);
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(v0 + 1184, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v3 + 32) = v8;
  Logger.error(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
  v16 = *(v0 + 1696);
  sub_1AB28E968(*(v0 + 1656), *(v0 + 1512), type metadata accessor for JetPackAsset);
  sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  sub_1AB014AC0(v16, &qword_1EB437E40);
  sub_1AB014AC0(*(v0 + 1744), &qword_1EB437E40);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB277D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[206] = a5;
  v5[205] = a4;
  v5[204] = a3;
  v5[203] = a2;
  v5[202] = a1;
  v6 = *(type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v5[207] = v6;
  v5[208] = *(v6 + 64);
  v5[209] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v5[210] = swift_task_alloc();
  v7 = type metadata accessor for JetPackAsset(0);
  v5[211] = v7;
  v5[212] = *(v7 - 8);
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v5[215] = swift_task_alloc();
  v5[216] = swift_task_alloc();
  v5[217] = swift_task_alloc();
  v5[218] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v5[219] = swift_task_alloc();
  v5[220] = swift_task_alloc();
  v5[221] = swift_task_alloc();
  v5[222] = swift_task_alloc();
  v5[223] = swift_task_alloc();
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v5[227] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB277FA8, 0, 0);
}

uint64_t sub_1AB277FA8()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1624);
  v6 = *(v2 + 56);
  *(v0 + 1824) = v6;
  *(v0 + 1832) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v7);
  *(v0 + 1560) = *v4;
  v9 = *(v4 + 2);
  *(v0 + 1840) = v9;
  v10 = *(v4 + 3);
  *(v0 + 1848) = v10;
  *(v0 + 1576) = *v4;
  v15 = *v4;
  sub_1AB28DED4(v0 + 1560, v0 + 1512);
  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v9, v10);
  *(v0 + 1856) = *(&v15 + 1);
  v14 = (*(v8 + 16) + **(v8 + 16));
  v11 = swift_task_alloc();
  *(v0 + 1864) = v11;
  *v11 = v0;
  v11[1] = sub_1AB278198;
  v12 = *(v0 + 1808);

  return v14(v12, v15, *(&v15 + 1), v7, v8);
}

uint64_t sub_1AB278198()
{
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v2 = sub_1AB279A54;
  }

  else
  {

    v2 = sub_1AB2782B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB2782B4()
{
  v158 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  sub_1AB017CC4(*(v0 + 1808), v1, &qword_1EB437E40);
  sub_1AB014A58(v1, v2, &qword_1EB437E40);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = *(v0 + 1800);
  if (v5 == 1)
  {
    sub_1AB014AC0(v6, &qword_1EB437E40);
    v143 = *(v0 + 1872);
  }

  else
  {
    sub_1AB28E968(v6, *(v0 + 1744), type metadata accessor for JetPackAsset);
    if (qword_1ED4D0B80 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1872);
    v13 = *(v0 + 1848);
    v14 = *(v0 + 1840);
    v15 = qword_1ED4D3EB0;
    v155 = *(v0 + 1576);
    sub_1AB28DED4(v0 + 1560, v0 + 1528);
    MEMORY[0x1AC59BA20](45, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v14, v13);
    v16 = *(&v155 + 1);
    *(v0 + 1544) = v155;
    *(v0 + 1552) = v16;
    v17 = *(v15 + 16);
    *(swift_task_alloc() + 16) = v0 + 1544;
    os_unfair_lock_lock((v17 + 24));
    sub_1AB05CF04((v17 + 16), &v155);
    os_unfair_lock_unlock((v17 + 24));
    if (v12)
    {
      return;
    }

    v60 = v155;

    if (v60)
    {
      if (qword_1EB435780 != -1)
      {
        swift_once();
      }

      v148 = *(v0 + 1824);
      v61 = *(v0 + 1816);
      v62 = *(v0 + 1688);
      v63 = *(v0 + 1624);
      sub_1AB4622E4();
      v64 = *(v0 + 280);
      v65 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 256), v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1AB4D4720;
      *(v0 + 1152) = MEMORY[0x1E69E6158];
      *(v0 + 1128) = 0xD000000000000054;
      *(v0 + 1136) = 0x80000001AB5065A0;
      *(v67 + 48) = 0u;
      *(v67 + 32) = 0u;
      sub_1AB017CC4(v0 + 1128, v67 + 32, &unk_1EB437E60);
      *(v67 + 64) = 0;
      *(v66 + 32) = v67;
      Logger.error(_:)(v66, v64, v65);

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      sub_1AB014AC0(v61, &qword_1EB437E40);
      v148(v61, 1, 1, v62);
      v68 = v63[3];
      v69 = v63[4];
      __swift_project_boxed_opaque_existential_1Tm(v63, v68);
      v152 = (*(v69 + 24) + **(v69 + 24));
      v70 = swift_task_alloc();
      *(v0 + 1880) = v70;
      *v70 = v0;
      v70[1] = sub_1AB27AFDC;
      v71 = *(v0 + 1744);

      v152(v71, v68, v69);
      return;
    }

    sub_1AB28DBE8(*(v0 + 1744), type metadata accessor for JetPackAsset);
    v143 = 0;
  }

  v7 = *(v0 + 1816);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1688);
  v10 = *(v8 + 48);
  *(v0 + 1896) = v10;
  *(v0 + 1904) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v151 = v10;
  if (v10(v7, 1, v9))
  {
    v11 = 0;
  }

  else
  {
    v18 = v7 + *(v9 + 20);
    v11 = *(v18 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v142 = v11;
  *(v0 + 649) = v11 & 1;
  v19 = *(v0 + 1792);
  sub_1AB01494C(*(v0 + 1624) + 40, v0 + 536);
  sub_1AB014A58(v7, v19, &qword_1EB437E40);
  if (v151(v19, 1, v9) == 1)
  {
    v20 = 4;
  }

  else
  {
    v21 = *(v0 + 1736);
    sub_1AB28E968(*(v0 + 1792), v21, type metadata accessor for JetPackAsset);
    v22 = *(v0 + 560);
    v23 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v22);
    (*(v23 + 8))(&v155, v21, v22, v23);
    v20 = v155;
    sub_1AB28DBE8(v21, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v24 = (v0 + 696);
  v25 = *(v0 + 1816);
  v26 = *(v0 + 1784);
  v27 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EB435770;
  sub_1AB4622E4();
  v145 = *(v0 + 608);
  v147 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v147);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AB4D4720;
  *&v155 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v29._countAndFlagsBits = 0x7341646568636163;
  v29._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  sub_1AB014A58(v25, v26, &qword_1EB437E40);
  v30 = v151(v26, 1, v27);
  v31 = *(v0 + 1784);
  if (v30 == 1)
  {
    sub_1AB014AC0(*(v0 + 1784), &qword_1EB437E40);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1AB28E968(v31, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1032, v0 + 936, &unk_1EB437E60);
  *v24 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v33 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
  }

  v36 = (v0 + 968);
  *(v33 + 2) = v35 + 1;
  v37 = &v33[40 * v35];
  v38 = *v24;
  v39 = *(v0 + 712);
  v37[64] = *(v0 + 728);
  *(v37 + 2) = v38;
  *(v37 + 3) = v39;
  *&v155 = v33;
  sub_1AB014AC0(v0 + 1032, &unk_1EB437E60);
  v40._countAndFlagsBits = 0x3D73757461747320;
  v40._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  if (v20 == 4)
  {
    v41 = 0;
    *v36 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v36 = v20;
    v41 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v41;
  sub_1AB014A58(v0 + 968, v0 + 1000, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB017CC4(v0 + 1000, v0 + 656, &unk_1EB437E60);
  *(v0 + 688) = 0;
  v42 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_1AB0168A8((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 1632);
  *(v42 + 2) = v44 + 1;
  v46 = &v42[40 * v44];
  v47 = *(v0 + 656);
  v48 = *(v0 + 672);
  v46[64] = *(v0 + 688);
  *(v46 + 2) = v47;
  *(v46 + 3) = v48;
  *&v155 = v42;
  sub_1AB014AC0(v0 + 968, &unk_1EB437E60);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v28 + 32) = v155;
  Logger.info(_:)(v28, v147, v145);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  v50 = *(v45 + 32);
  LOBYTE(v155) = v50;
  v51 = sub_1AB05D148();
  if (v20 != 4 && (v51 & 1) != 0)
  {
    v52 = *(v0 + 1816);
    v53 = *(v0 + 1776);
    v54 = *(v0 + 1688);
    v55 = swift_allocBox();
    v57 = v56;
    sub_1AB014A58(v52, v53, &qword_1EB437E40);
    v58 = v151(v53, 1, v54);
    v59 = *(v0 + 1776);
    if (v58 == 1)
    {
      sub_1AB014AC0(v59, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v59, v57, type metadata accessor for JetPackAsset);
      if (v20 < 2 && (v142 & 1) == 0)
      {
        sub_1AB4622E4();
        v122 = *(v0 + 480);
        v154 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v122);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_1AB4D4720;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001AB506580;
        *(v124 + 48) = 0u;
        *(v124 + 32) = 0u;
        sub_1AB017CC4(v0 + 1192, v124 + 32, &unk_1EB437E60);
        *(v124 + 64) = 0;
        *(v123 + 32) = v124;
        Logger.info(_:)(v123, v122, v154);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
        if (v20 - 1 < 2)
        {
          LOBYTE(v155) = v50;
          if (sub_1AB39D43C())
          {
            v125 = *(v0 + 1680);
            v126 = *(v0 + 1672);
            v127 = *(v0 + 1664);
            v128 = *(v0 + 1656);
            v129 = *(v0 + 1648);
            v150 = *(v0 + 1640);
            v130 = *(v0 + 1632);
            v131 = *(v0 + 1624);
            *(v57 + *(*(v0 + 1688) + 40)) = 1;
            v132 = sub_1AB460BE4();
            (*(*(v132 - 8) + 56))(v125, 1, 1, v132);
            v133 = *(v130 + 16);
            v155 = *v130;
            v156 = v133;
            v157 = *(v130 + 32);
            sub_1AB28E900(v129, v126, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1AB014A58(v131, v0 + 96, &qword_1EB4394A8);
            v134 = (*(v128 + 80) + 73) & ~*(v128 + 80);
            v135 = (v127 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            *(v136 + 32) = v150;
            v137 = v156;
            *(v136 + 40) = v155;
            *(v136 + 56) = v137;
            *(v136 + 72) = v157;
            sub_1AB28E968(v126, v136 + v134, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v136 + v135) = v55;
            v138 = (v136 + ((v135 + 15) & 0xFFFFFFFFFFFFFFF8));
            v139 = *(v0 + 160);
            v138[3] = *(v0 + 144);
            v138[4] = v139;
            v140 = *(v0 + 128);
            v138[1] = *(v0 + 112);
            v138[2] = v140;
            *v138 = *(v0 + 96);

            sub_1AB28DB8C(v130, v0 + 896);

            sub_1AB3B2A60(0, 0, v125, &unk_1AB4E36A8, v136);
          }
        }

        v141 = *(v0 + 1616);
        swift_beginAccess();
        sub_1AB28E900(v57, v141, type metadata accessor for JetPackAsset);

        goto LABEL_63;
      }
    }
  }

  LOBYTE(v155) = v50;
  if ((sub_1AB39D43C() & 1) == 0)
  {
    sub_1AB28D17C();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();
    goto LABEL_63;
  }

  if (v20 == 3)
  {
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1816), *(v0 + 1768), &qword_1EB437E40);
  }

  v73 = *(v0 + 1632);
  sub_1AB014A58(*(v0 + 1624), v0 + 16, &qword_1EB4394A8);
  v74 = *(v73 + 32);
  v75 = *(v73 + 16);
  *(v0 + 736) = *v73;
  *(v0 + 752) = v75;
  *(v0 + 768) = v74;
  sub_1AB01494C(v0 + 16, v0 + 176);
  sub_1AB01494C(v0 + 56, v0 + 216);
  sub_1AB460CC4();
  if (v143)
  {
    v76 = *(v0 + 1896);
    v77 = *(v0 + 1816);
    v78 = *(v0 + 1752);
    v79 = *(v0 + 1688);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    sub_1AB014A58(v77, v78, &qword_1EB437E40);
    if (v76(v78, 1, v79) == 1)
    {
      sub_1AB014AC0(*(v0 + 1752), &qword_1EB437E40);
    }

    else
    {
      v89 = *(v0 + 650);
      sub_1AB28E968(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
      if (v89 != 4 && !*(v0 + 650) && *(v0 + 649) == 1)
      {
        sub_1AB4622E4();
        v90 = *(v0 + 520);
        v91 = *(v0 + 528);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v90);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1AB4D4720;
        *&v155 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v93._countAndFlagsBits = 0xD000000000000025;
        v93._object = 0x80000001AB506460;
        LogMessage.StringInterpolation.appendLiteral(_:)(v93);
        swift_getErrorValue();
        v94 = *(v0 + 1416);
        v95 = *(v0 + 1424);
        *(v0 + 1120) = v95;
        v96 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
        (*(*(v95 - 8) + 16))(v96, v94, v95);
        sub_1AB014A58(v0 + 1096, v0 + 1160, &unk_1EB437E60);
        *(v0 + 816) = 0u;
        *(v0 + 832) = 0u;
        sub_1AB017CC4(v0 + 1160, v0 + 816, &unk_1EB437E60);
        *(v0 + 848) = 0;
        v97 = v155;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1AB0168A8(0, *(v97 + 2) + 1, 1, v97);
        }

        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        if (v99 >= v98 >> 1)
        {
          v97 = sub_1AB0168A8((v98 > 1), v99 + 1, 1, v97);
        }

        v100 = *(v0 + 1704);
        v144 = *(v0 + 1768);
        v146 = *(v0 + 1616);
        *(v97 + 2) = v99 + 1;
        v101 = &v97[40 * v99];
        v102 = *(v0 + 816);
        v103 = *(v0 + 832);
        v101[64] = *(v0 + 848);
        *(v101 + 2) = v102;
        *(v101 + 3) = v103;
        v153 = v100;
        *&v155 = v97;
        sub_1AB014AC0(v0 + 1096, &unk_1EB437E60);
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v104);
        *(v92 + 32) = v155;
        Logger.error(_:)(v92, v90, v91);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
        sub_1AB4622E4();
        v106 = *(v0 + 440);
        v105 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v106);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1AB4D4720;
        *(v0 + 1248) = MEMORY[0x1E69E6158];
        *(v0 + 1224) = 0xD000000000000075;
        *(v0 + 1232) = 0x80000001AB506490;
        *(v108 + 48) = 0u;
        *(v108 + 32) = 0u;
        sub_1AB017CC4(v0 + 1224, v108 + 32, &unk_1EB437E60);
        *(v108 + 64) = 0;
        *(v107 + 32) = v108;
        Logger.warning(_:)(v107, v106, v105);

        sub_1AB014AC0(v144, &qword_1EB437E40);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
        sub_1AB28E968(v153, v146, type metadata accessor for JetPackAsset);
        goto LABEL_63;
      }

      sub_1AB28DBE8(*(v0 + 1704), type metadata accessor for JetPackAsset);
    }

    v109 = *(v0 + 1768);
    swift_willThrow();
    sub_1AB014AC0(v109, &qword_1EB437E40);
LABEL_63:
    sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

    v110 = *(v0 + 8);

    v110();
    return;
  }

  v80 = (v0 + 856);
  v81 = *(v0 + 1768);
  v82 = *(v0 + 1760);
  v83 = *(v0 + 1688);
  sub_1AB4622E4();
  v84 = *(v0 + 400);
  v149 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v84);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1AB4D4720;
  *&v155 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v86._countAndFlagsBits = 0xD000000000000032;
  v86._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v86);
  sub_1AB014A58(v81, v82, &qword_1EB437E40);
  v87 = v151(v82, 1, v83);
  v88 = *(v0 + 1760);
  if (v87 == 1)
  {
    sub_1AB014AC0(*(v0 + 1760), &qword_1EB437E40);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v111 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1AB28E968(v88, v111, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1288, v0 + 1320, &unk_1EB437E60);
  *v80 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 1320, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v112 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_1AB0168A8(0, *(v112 + 2) + 1, 1, v112);
  }

  v114 = *(v112 + 2);
  v113 = *(v112 + 3);
  if (v114 >= v113 >> 1)
  {
    v112 = sub_1AB0168A8((v113 > 1), v114 + 1, 1, v112);
  }

  *(v112 + 2) = v114 + 1;
  v115 = &v112[40 * v114];
  v116 = *v80;
  v117 = *(v0 + 872);
  v115[64] = *(v0 + 888);
  *(v115 + 2) = v116;
  *(v115 + 3) = v117;
  *&v155 = v112;
  sub_1AB014AC0(v0 + 1288, &unk_1EB437E60);
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v118);
  *(v85 + 32) = v155;
  Logger.info(_:)(v85, v84, v149);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v119 = swift_task_alloc();
  *(v0 + 1928) = v119;
  *v119 = v0;
  v119[1] = sub_1AB27D9F8;
  v120 = *(v0 + 1768);
  v121 = *(v0 + 1720);

  SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v121, v0 + 736, v120);
}

uint64_t sub_1AB279A54()
{
  v120 = v0;
  v1 = (v0 + 776);

  v2 = *(v0 + 1872);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  *&v117 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001AB506430;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1464);
  v8 = *(v0 + 1472);
  *(v0 + 1280) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1256));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB014A58(v0 + 1256, v0 + 1064, &unk_1EB437E60);
  *v1 = 0u;
  *(v0 + 792) = 0u;
  sub_1AB017CC4(v0 + 1064, v0 + 776, &unk_1EB437E60);
  *(v0 + 808) = 0;
  v10 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v117 + 16) + 1, 1, v117);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *v1;
  v15 = *(v0 + 792);
  v13[64] = *(v0 + 808);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  *&v117 = v10;
  sub_1AB014AC0(v0 + 1256, &unk_1EB437E60);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v10;
  Logger.error(_:)(v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
  v17 = *(v0 + 1816);
  v18 = *(v0 + 1696);
  v19 = *(v0 + 1688);
  v20 = *(v18 + 48);
  *(v0 + 1896) = v20;
  *(v0 + 1904) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v114 = v20;
  if (v20(v17, 1, v19))
  {
    v21 = 0;
  }

  else
  {
    v22 = v17 + *(v19 + 20);
    v21 = *(v22 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v111 = v21;
  *(v0 + 649) = v21 & 1;
  v23 = *(v0 + 1792);
  sub_1AB01494C(*(v0 + 1624) + 40, v0 + 536);
  sub_1AB014A58(v17, v23, &qword_1EB437E40);
  if (v114(v23, 1, v19) == 1)
  {
    v24 = 4;
  }

  else
  {
    v25 = *(v0 + 1736);
    sub_1AB28E968(*(v0 + 1792), v25, type metadata accessor for JetPackAsset);
    v26 = *(v0 + 560);
    v27 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v26);
    (*(v27 + 8))(&v117, v25, v26, v27);
    v24 = v117;
    sub_1AB28DBE8(v25, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v28 = (v0 + 696);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 1784);
  v31 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EB435770;
  sub_1AB4622E4();
  v32 = *(v0 + 600);
  v112 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v32);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AB4D4720;
  *&v117 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v34._countAndFlagsBits = 0x7341646568636163;
  v34._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  sub_1AB014A58(v29, v30, &qword_1EB437E40);
  v35 = v114(v30, 1, v31);
  v36 = *(v0 + 1784);
  if (v35 == 1)
  {
    sub_1AB014AC0(*(v0 + 1784), &qword_1EB437E40);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    v37 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1AB28E968(v36, v37, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1032, v0 + 936, &unk_1EB437E60);
  *v28 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v38 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
  }

  v41 = (v0 + 968);
  *(v38 + 2) = v40 + 1;
  v42 = &v38[40 * v40];
  v43 = *v28;
  v44 = *(v0 + 712);
  v42[64] = *(v0 + 728);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *&v117 = v38;
  sub_1AB014AC0(v0 + 1032, &unk_1EB437E60);
  v45._countAndFlagsBits = 0x3D73757461747320;
  v45._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  if (v24 == 4)
  {
    v46 = 0;
    *v41 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v41 = v24;
    v46 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v46;
  sub_1AB014A58(v0 + 968, v0 + 1000, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB017CC4(v0 + 1000, v0 + 656, &unk_1EB437E60);
  *(v0 + 688) = 0;
  v47 = v117;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1AB0168A8(0, *(v47 + 2) + 1, 1, v47);
  }

  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1AB0168A8((v48 > 1), v49 + 1, 1, v47);
  }

  v50 = *(v0 + 1632);
  *(v47 + 2) = v49 + 1;
  v51 = &v47[40 * v49];
  v52 = *(v0 + 656);
  v53 = *(v0 + 672);
  v51[64] = *(v0 + 688);
  *(v51 + 2) = v52;
  *(v51 + 3) = v53;
  *&v117 = v47;
  sub_1AB014AC0(v0 + 968, &unk_1EB437E60);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v54);
  *(v33 + 32) = v117;
  Logger.info(_:)(v33, v32, v112);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  v55 = *(v50 + 32);
  LOBYTE(v117) = v55;
  v56 = sub_1AB05D148();
  if (v24 != 4 && (v56 & 1) != 0)
  {
    v57 = *(v0 + 1816);
    v58 = *(v0 + 1776);
    v59 = *(v0 + 1688);
    v60 = swift_allocBox();
    v62 = v61;
    sub_1AB014A58(v57, v58, &qword_1EB437E40);
    v63 = v114(v58, 1, v59);
    v64 = *(v0 + 1776);
    if (v63 == 1)
    {
      sub_1AB014AC0(v64, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v64, v62, type metadata accessor for JetPackAsset);
      if (v24 < 2 && (v111 & 1) == 0)
      {
        sub_1AB4622E4();
        v91 = *(v0 + 480);
        v116 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v91);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1AB4D4720;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001AB506580;
        *(v93 + 48) = 0u;
        *(v93 + 32) = 0u;
        sub_1AB017CC4(v0 + 1192, v93 + 32, &unk_1EB437E60);
        *(v93 + 64) = 0;
        *(v92 + 32) = v93;
        Logger.info(_:)(v92, v91, v116);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
        if (v24 - 1 < 2)
        {
          LOBYTE(v117) = v55;
          if (sub_1AB39D43C())
          {
            v94 = *(v0 + 1680);
            v95 = *(v0 + 1672);
            v96 = *(v0 + 1664);
            v97 = *(v0 + 1656);
            v98 = *(v0 + 1648);
            v115 = *(v0 + 1640);
            v99 = *(v0 + 1632);
            v100 = *(v0 + 1624);
            *(v62 + *(*(v0 + 1688) + 40)) = 1;
            v101 = sub_1AB460BE4();
            (*(*(v101 - 8) + 56))(v94, 1, 1, v101);
            v102 = *(v99 + 16);
            v117 = *v99;
            v118 = v102;
            v119 = *(v99 + 32);
            sub_1AB28E900(v98, v95, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1AB014A58(v100, v0 + 96, &qword_1EB4394A8);
            v103 = (*(v97 + 80) + 73) & ~*(v97 + 80);
            v104 = (v96 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
            v105 = swift_allocObject();
            *(v105 + 16) = 0;
            *(v105 + 24) = 0;
            *(v105 + 32) = v115;
            v106 = v118;
            *(v105 + 40) = v117;
            *(v105 + 56) = v106;
            *(v105 + 72) = v119;
            sub_1AB28E968(v95, v105 + v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v105 + v104) = v60;
            v107 = (v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
            v108 = *(v0 + 160);
            v107[3] = *(v0 + 144);
            v107[4] = v108;
            v109 = *(v0 + 128);
            v107[1] = *(v0 + 112);
            v107[2] = v109;
            *v107 = *(v0 + 96);

            sub_1AB28DB8C(v99, v0 + 896);

            sub_1AB3B2A60(0, 0, v94, &unk_1AB4E36A8, v105);
          }
        }

        v110 = *(v0 + 1616);
        swift_beginAccess();
        sub_1AB28E900(v62, v110, type metadata accessor for JetPackAsset);

        sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

        v78 = *(v0 + 8);
        goto LABEL_43;
      }
    }
  }

  LOBYTE(v117) = v55;
  if (sub_1AB39D43C())
  {
    if (v24 == 3)
    {
      (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
    }

    else
    {
      sub_1AB014A58(*(v0 + 1816), *(v0 + 1768), &qword_1EB437E40);
    }

    v66 = *(v0 + 1632);
    sub_1AB014A58(*(v0 + 1624), v0 + 16, &qword_1EB4394A8);
    v67 = *(v66 + 32);
    v68 = *(v66 + 16);
    *(v0 + 736) = *v66;
    *(v0 + 752) = v68;
    *(v0 + 768) = v67;
    sub_1AB01494C(v0 + 16, v0 + 176);
    sub_1AB01494C(v0 + 56, v0 + 216);
    sub_1AB460CC4();
    v69 = (v0 + 856);
    v70 = *(v0 + 1768);
    v71 = *(v0 + 1760);
    v72 = *(v0 + 1688);
    sub_1AB4622E4();
    v73 = *(v0 + 400);
    v113 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v73);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1AB4D4720;
    *&v117 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
    v75._countAndFlagsBits = 0xD000000000000032;
    v75._object = 0x80000001AB506510;
    LogMessage.StringInterpolation.appendLiteral(_:)(v75);
    sub_1AB014A58(v70, v71, &qword_1EB437E40);
    v76 = v114(v71, 1, v72);
    v77 = *(v0 + 1760);
    if (v76 == 1)
    {
      sub_1AB014AC0(*(v0 + 1760), &qword_1EB437E40);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = *(v0 + 1688);
      v80 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
      sub_1AB28E968(v77, v80, type metadata accessor for JetPackAsset);
    }

    sub_1AB014A58(v0 + 1288, v0 + 1320, &unk_1EB437E60);
    *v69 = 0u;
    *(v0 + 872) = 0u;
    sub_1AB017CC4(v0 + 1320, v0 + 856, &unk_1EB437E60);
    *(v0 + 888) = 0;
    v81 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1AB0168A8(0, *(v81 + 2) + 1, 1, v81);
    }

    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_1AB0168A8((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[40 * v83];
    v85 = *v69;
    v86 = *(v0 + 872);
    v84[64] = *(v0 + 888);
    *(v84 + 2) = v85;
    *(v84 + 3) = v86;
    *&v117 = v81;
    sub_1AB014AC0(v0 + 1288, &unk_1EB437E60);
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v87);
    *(v74 + 32) = v117;
    Logger.info(_:)(v74, v73, v113);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
    v88 = swift_task_alloc();
    *(v0 + 1928) = v88;
    *v88 = v0;
    v88[1] = sub_1AB27D9F8;
    v89 = *(v0 + 1768);
    v90 = *(v0 + 1720);

    return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v90, v0 + 736, v89);
  }

  sub_1AB28D17C();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();
  sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

  v78 = *(v0 + 8);
LABEL_43:

  return v78();
}

uint64_t sub_1AB27AFDC()
{
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v2 = sub_1AB27C45C;
  }

  else
  {
    v2 = sub_1AB27B0F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB27B0F0()
{
  v133 = v0;
  sub_1AB28DBE8(*(v0 + 1744), type metadata accessor for JetPackAsset);
  v120 = *(v0 + 1888);
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v2 + 48);
  *(v0 + 1896) = v4;
  *(v0 + 1904) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v127 = v4;
  if (v4(v1, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = *(v6 + *(type metadata accessor for JetPackAsset.Metadata(0) + 40));
  }

  v119 = v5;
  *(v0 + 649) = v5 & 1;
  v7 = *(v0 + 1792);
  sub_1AB01494C(*(v0 + 1624) + 40, v0 + 536);
  sub_1AB014A58(v1, v7, &qword_1EB437E40);
  if (v127(v7, 1, v3) == 1)
  {
    v8 = 4;
  }

  else
  {
    v9 = *(v0 + 1736);
    sub_1AB28E968(*(v0 + 1792), v9, type metadata accessor for JetPackAsset);
    v10 = *(v0 + 560);
    v11 = *(v0 + 568);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 536), v10);
    (*(v11 + 8))(&v130, v9, v10, v11);
    v8 = v130;
    sub_1AB28DBE8(v9, type metadata accessor for JetPackAsset);
  }

  *(v0 + 650) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 536);
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  v12 = (v0 + 696);
  v13 = *(v0 + 1816);
  v14 = *(v0 + 1784);
  v15 = *(v0 + 1688);
  *(v0 + 1912) = qword_1EB435770;
  sub_1AB4622E4();
  v122 = *(v0 + 608);
  v124 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 576), v124);
  *(v0 + 1920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D4720;
  *&v130 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0x7341646568636163;
  v17._object = 0xEC0000003D746573;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  sub_1AB014A58(v13, v14, &qword_1EB437E40);
  v18 = v127(v14, 1, v15);
  v19 = *(v0 + 1784);
  if (v18 == 1)
  {
    sub_1AB014AC0(*(v0 + 1784), &qword_1EB437E40);
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
  }

  else
  {
    *(v0 + 1056) = *(v0 + 1688);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 1032));
    sub_1AB28E968(v19, boxed_opaque_existential_0, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1032, v0 + 936, &unk_1EB437E60);
  *v12 = 0u;
  *(v0 + 712) = 0u;
  sub_1AB017CC4(v0 + 936, v0 + 696, &unk_1EB437E60);
  *(v0 + 728) = 0;
  v21 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = (v0 + 968);
  *(v21 + 2) = v23 + 1;
  v25 = &v21[40 * v23];
  v26 = *v12;
  v27 = *(v0 + 712);
  v25[64] = *(v0 + 728);
  *(v25 + 2) = v26;
  *(v25 + 3) = v27;
  *&v130 = v21;
  sub_1AB014AC0(v0 + 1032, &unk_1EB437E60);
  v28._countAndFlagsBits = 0x3D73757461747320;
  v28._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  if (v8 == 4)
  {
    v29 = 0;
    *v24 = 0;
    *(v0 + 976) = 0;
    *(v0 + 984) = 0;
  }

  else
  {
    *v24 = v8;
    v29 = &type metadata for JetPackAssetCacheStatus;
  }

  *(v0 + 992) = v29;
  sub_1AB014A58(v0 + 968, v0 + 1000, &unk_1EB437E60);
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_1AB017CC4(v0 + 1000, v0 + 656, &unk_1EB437E60);
  *(v0 + 688) = 0;
  v30 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
  }

  v33 = *(v0 + 1632);
  *(v30 + 2) = v32 + 1;
  v34 = &v30[40 * v32];
  v35 = *(v0 + 656);
  v36 = *(v0 + 672);
  v34[64] = *(v0 + 688);
  *(v34 + 2) = v35;
  *(v34 + 3) = v36;
  *&v130 = v30;
  sub_1AB014AC0(v0 + 968, &unk_1EB437E60);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  *(v16 + 32) = v130;
  Logger.info(_:)(v16, v124, v122);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 576);
  v38 = *(v33 + 32);
  LOBYTE(v130) = v38;
  v39 = sub_1AB05D148();
  if (v8 != 4 && (v39 & 1) != 0)
  {
    v40 = *(v0 + 1816);
    v41 = *(v0 + 1776);
    v42 = *(v0 + 1688);
    v43 = swift_allocBox();
    v45 = v44;
    sub_1AB014A58(v40, v41, &qword_1EB437E40);
    v46 = v127(v41, 1, v42);
    v47 = *(v0 + 1776);
    if (v46 == 1)
    {
      sub_1AB014AC0(v47, &qword_1EB437E40);
      swift_deallocBox();
    }

    else
    {
      sub_1AB28E968(v47, v45, type metadata accessor for JetPackAsset);
      if (v8 < 2 && (v119 & 1) == 0)
      {
        sub_1AB4622E4();
        v99 = *(v0 + 480);
        v129 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v99);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_1AB4D4720;
        *(v0 + 1216) = MEMORY[0x1E69E6158];
        *(v0 + 1192) = 0xD000000000000012;
        *(v0 + 1200) = 0x80000001AB506580;
        *(v101 + 48) = 0u;
        *(v101 + 32) = 0u;
        sub_1AB017CC4(v0 + 1192, v101 + 32, &unk_1EB437E60);
        *(v101 + 64) = 0;
        *(v100 + 32) = v101;
        Logger.info(_:)(v100, v99, v129);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
        if (v8 - 1 < 2)
        {
          LOBYTE(v130) = v38;
          if (sub_1AB39D43C())
          {
            v102 = *(v0 + 1680);
            v103 = *(v0 + 1672);
            v104 = *(v0 + 1664);
            v105 = *(v0 + 1656);
            v106 = *(v0 + 1648);
            v126 = *(v0 + 1640);
            v107 = *(v0 + 1632);
            v108 = *(v0 + 1624);
            *(v45 + *(*(v0 + 1688) + 40)) = 1;
            v109 = sub_1AB460BE4();
            (*(*(v109 - 8) + 56))(v102, 1, 1, v109);
            v110 = *(v107 + 16);
            v130 = *v107;
            v131 = v110;
            v132 = *(v107 + 32);
            sub_1AB28E900(v106, v103, type metadata accessor for SilverBulletJetPackAssetFetcher);
            sub_1AB014A58(v108, v0 + 96, &qword_1EB4394A8);
            v111 = (*(v105 + 80) + 73) & ~*(v105 + 80);
            v112 = (v104 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
            v113 = swift_allocObject();
            *(v113 + 16) = 0;
            *(v113 + 24) = 0;
            *(v113 + 32) = v126;
            v114 = v131;
            *(v113 + 40) = v130;
            *(v113 + 56) = v114;
            *(v113 + 72) = v132;
            sub_1AB28E968(v103, v113 + v111, type metadata accessor for SilverBulletJetPackAssetFetcher);
            *(v113 + v112) = v43;
            v115 = (v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8));
            v116 = *(v0 + 160);
            v115[3] = *(v0 + 144);
            v115[4] = v116;
            v117 = *(v0 + 128);
            v115[1] = *(v0 + 112);
            v115[2] = v117;
            *v115 = *(v0 + 96);

            sub_1AB28DB8C(v107, v0 + 896);

            sub_1AB3B2A60(0, 0, v102, &unk_1AB4E36A8, v113);
          }
        }

        v118 = *(v0 + 1616);
        swift_beginAccess();
        sub_1AB28E900(v45, v118, type metadata accessor for JetPackAsset);

        goto LABEL_50;
      }
    }
  }

  LOBYTE(v130) = v38;
  if ((sub_1AB39D43C() & 1) == 0)
  {
    sub_1AB28D17C();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    goto LABEL_50;
  }

  if (v8 == 3)
  {
    (*(v0 + 1824))(*(v0 + 1768), 1, 1, *(v0 + 1688));
  }

  else
  {
    sub_1AB014A58(*(v0 + 1816), *(v0 + 1768), &qword_1EB437E40);
  }

  v49 = *(v0 + 1632);
  sub_1AB014A58(*(v0 + 1624), v0 + 16, &qword_1EB4394A8);
  v50 = *(v49 + 32);
  v51 = *(v49 + 16);
  *(v0 + 736) = *v49;
  *(v0 + 752) = v51;
  *(v0 + 768) = v50;
  sub_1AB01494C(v0 + 16, v0 + 176);
  sub_1AB01494C(v0 + 56, v0 + 216);
  sub_1AB460CC4();
  if (v120)
  {
    v52 = *(v0 + 1896);
    v53 = *(v0 + 1816);
    v54 = *(v0 + 1752);
    v55 = *(v0 + 1688);
    sub_1AB014AC0(v0 + 176, &qword_1EB4394A8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    sub_1AB014A58(v53, v54, &qword_1EB437E40);
    if (v52(v54, 1, v55) == 1)
    {
      sub_1AB014AC0(*(v0 + 1752), &qword_1EB437E40);
    }

    else
    {
      v65 = *(v0 + 650);
      sub_1AB28E968(*(v0 + 1752), *(v0 + 1704), type metadata accessor for JetPackAsset);
      if (v65 != 4 && !*(v0 + 650) && *(v0 + 649) == 1)
      {
        sub_1AB4622E4();
        v66 = *(v0 + 520);
        v67 = *(v0 + 528);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 496), v66);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1AB4D4720;
        *&v130 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
        v69._countAndFlagsBits = 0xD000000000000025;
        v69._object = 0x80000001AB506460;
        LogMessage.StringInterpolation.appendLiteral(_:)(v69);
        swift_getErrorValue();
        v70 = *(v0 + 1416);
        v71 = *(v0 + 1424);
        *(v0 + 1120) = v71;
        v72 = __swift_allocate_boxed_opaque_existential_0((v0 + 1096));
        (*(*(v71 - 8) + 16))(v72, v70, v71);
        sub_1AB014A58(v0 + 1096, v0 + 1160, &unk_1EB437E60);
        *(v0 + 816) = 0u;
        *(v0 + 832) = 0u;
        sub_1AB017CC4(v0 + 1160, v0 + 816, &unk_1EB437E60);
        *(v0 + 848) = 0;
        v73 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1AB0168A8(0, *(v73 + 2) + 1, 1, v73);
        }

        v75 = *(v73 + 2);
        v74 = *(v73 + 3);
        if (v75 >= v74 >> 1)
        {
          v73 = sub_1AB0168A8((v74 > 1), v75 + 1, 1, v73);
        }

        v76 = *(v0 + 1704);
        v121 = *(v0 + 1768);
        v123 = *(v0 + 1616);
        *(v73 + 2) = v75 + 1;
        v77 = &v73[40 * v75];
        v78 = *(v0 + 816);
        v79 = *(v0 + 832);
        v77[64] = *(v0 + 848);
        *(v77 + 2) = v78;
        *(v77 + 3) = v79;
        v128 = v76;
        *&v130 = v73;
        sub_1AB014AC0(v0 + 1096, &unk_1EB437E60);
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v80);
        *(v68 + 32) = v130;
        Logger.error(_:)(v68, v66, v67);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
        sub_1AB4622E4();
        v82 = *(v0 + 440);
        v81 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 416), v82);
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_1AB4D4720;
        *(v0 + 1248) = MEMORY[0x1E69E6158];
        *(v0 + 1224) = 0xD000000000000075;
        *(v0 + 1232) = 0x80000001AB506490;
        *(v84 + 48) = 0u;
        *(v84 + 32) = 0u;
        sub_1AB017CC4(v0 + 1224, v84 + 32, &unk_1EB437E60);
        *(v84 + 64) = 0;
        *(v83 + 32) = v84;
        Logger.warning(_:)(v83, v82, v81);

        sub_1AB014AC0(v121, &qword_1EB437E40);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 416);
        sub_1AB28E968(v128, v123, type metadata accessor for JetPackAsset);
        goto LABEL_50;
      }

      sub_1AB28DBE8(*(v0 + 1704), type metadata accessor for JetPackAsset);
    }

    v85 = *(v0 + 1768);
    swift_willThrow();
    sub_1AB014AC0(v85, &qword_1EB437E40);
LABEL_50:
    sub_1AB014AC0(*(v0 + 1816), &qword_1EB437E40);

    v86 = *(v0 + 8);

    return v86();
  }

  v56 = (v0 + 856);
  v57 = *(v0 + 1768);
  v58 = *(v0 + 1760);
  v59 = *(v0 + 1688);
  sub_1AB4622E4();
  v60 = *(v0 + 400);
  v125 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v60);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1AB4D4720;
  *&v130 = sub_1AB0168A8(0, 51, 0, MEMORY[0x1E69E7CC0]);
  v62._countAndFlagsBits = 0xD000000000000032;
  v62._object = 0x80000001AB506510;
  LogMessage.StringInterpolation.appendLiteral(_:)(v62);
  sub_1AB014A58(v57, v58, &qword_1EB437E40);
  v63 = v127(v58, 1, v59);
  v64 = *(v0 + 1760);
  if (v63 == 1)
  {
    sub_1AB014AC0(*(v0 + 1760), &qword_1EB437E40);
    *(v0 + 1288) = 0u;
    *(v0 + 1304) = 0u;
  }

  else
  {
    *(v0 + 1312) = *(v0 + 1688);
    v88 = __swift_allocate_boxed_opaque_existential_0((v0 + 1288));
    sub_1AB28E968(v64, v88, type metadata accessor for JetPackAsset);
  }

  sub_1AB014A58(v0 + 1288, v0 + 1320, &unk_1EB437E60);
  *v56 = 0u;
  *(v0 + 872) = 0u;
  sub_1AB017CC4(v0 + 1320, v0 + 856, &unk_1EB437E60);
  *(v0 + 888) = 0;
  v89 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v89 = sub_1AB0168A8(0, *(v89 + 2) + 1, 1, v89);
  }

  v91 = *(v89 + 2);
  v90 = *(v89 + 3);
  if (v91 >= v90 >> 1)
  {
    v89 = sub_1AB0168A8((v90 > 1), v91 + 1, 1, v89);
  }

  *(v89 + 2) = v91 + 1;
  v92 = &v89[40 * v91];
  v93 = *v56;
  v94 = *(v0 + 872);
  v92[64] = *(v0 + 888);
  *(v92 + 2) = v93;
  *(v92 + 3) = v94;
  *&v130 = v89;
  sub_1AB014AC0(v0 + 1288, &unk_1EB437E60);
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v95);
  *(v61 + 32) = v130;
  Logger.info(_:)(v61, v60, v125);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
  v96 = swift_task_alloc();
  *(v0 + 1928) = v96;
  *v96 = v0;
  v96[1] = sub_1AB27D9F8;
  v97 = *(v0 + 1768);
  v98 = *(v0 + 1720);

  return SilverBulletJetPackAssetFetcher._fetch(_:candidate:)(v98, v0 + 736, v97);
}