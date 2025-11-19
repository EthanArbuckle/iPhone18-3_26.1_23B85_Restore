uint64_t sub_1AB17C1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FA8);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FB8);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}

uint64_t sub_1AB17C8A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F90);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FA0);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB01A8D8;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}

uint64_t sub_1AB17CF5C()
{
  if (qword_1ED4D19D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4D19E0;
  v0 = *algn_1ED4D19E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D47F0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0x537363697274656DLL;
  *(v2 + 56) = 0xEF676E696C706D61;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v3 = sub_1AB460484();
  v5 = v4;

  qword_1ED4D3E40 = v3;
  *algn_1ED4D3E48 = v5;
}

uint64_t MetricsSamplingLottery.init(eventName:percentage:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (qword_1ED4D01B0 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED4D3E40;
  v10 = *algn_1ED4D3E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D47F0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590);
  sub_1AB027E20();
  v13 = sub_1AB460484();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D47F0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0x646563726F467369;
  *(v16 + 56) = 0xE800000000000000;

  v17 = sub_1AB460484();
  v19 = v18;

  *a3 = v17;
  *(a3 + 8) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AB4D47F0;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = 0xD000000000000011;
  *(v20 + 56) = 0x80000001AB4FFFF0;
  v21 = sub_1AB460484();
  v23 = v22;

  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  return result;
}

uint64_t sub_1AB17D2D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = qword_1ED4D1D40;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1AB014A58(a1, v5, &qword_1EB4395E0);
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11 == 1)
  {
    sub_1AB014AC0(v5, &qword_1EB4395E0);
    v12 = 0;
  }

  else
  {
    sub_1AB45F8D4();
    v12 = v13;
    (*(v10 + 8))(v5, v9);
  }

  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437000);
  v19[4] = &protocol witness table for PreferenceKey<A>;
  v19[0] = v7;
  v19[1] = v6;
  if (v11 == 1)
  {
    v14 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v12 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E69E63B0];
  }

  v18[0] = v12;
  v18[3] = v14;
  v15 = off_1F1FF50F0[0];
  type metadata accessor for LocalPreferences();
  (v15)(v18, v19);
  return sub_1AB014AC0(a1, &qword_1EB4395E0);
}

uint64_t MetricsSamplingLottery.isForced.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v3 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
LABEL_5:
      v5 = 0;
      return v5 & 1;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  v5 = sub_1AB026D00(v1, v2);
  return v5 & 1;
}

uint64_t MetricsSamplingLottery.shouldCollect.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_1AB45F9B4();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *v0;
  v20 = *(v0 + 8);
  v21 = *(v0 + 24);
  v38 = *(v0 + 16);
  v39 = v21;
  v40 = v19;
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v24 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v24[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v24 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (qword_1ED4D1D40 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB026D00(v40, v20);
    if (v26 != 2 && (v26 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (os_unfair_lock_opaque_low)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v23 <= 0.0)
  {
    return 0;
  }

  if (v23 >= 1.0)
  {
    return 1;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  sub_1AB09D7EC(v38, v39);
  if ((v27 & 1) == 0)
  {
    sub_1AB45F8C4();
    v36 = v3;
    v28 = v37;
    v35 = *(v37 + 32);
    v35(v12, v9, v4);
    sub_1AB45F904();
    v29 = v28;
    v3 = v36;
    v30 = *(v29 + 8);
    v30(v12, v4);
    v35(v18, v15, v4);
    _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v31 = sub_1AB45F924();
    v30(v6, v4);
    v30(v18, v4);
    if (v31)
    {
      return 1;
    }
  }

  v32 = vcvtd_n_f64_u64(sub_1AB17DA10(0x20000000000001uLL), 0x35uLL);
  if (v32 <= 0.0 || v32 > v23)
  {
    return 0;
  }

  v41 = v40;
  v42 = v20;
  v43 = v38;
  v44 = v39;
  v45 = v23;
  v46 = v22;

  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  (*(v37 + 56))(v3, 0, 1, v4);
  sub_1AB17D2D8(v3);

  return 1;
}

unint64_t sub_1AB17DA10(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1AC59F040](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1AC59F040](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB17DA9C(uint64_t a1, int a2)
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

uint64_t sub_1AB17DAE4(uint64_t result, int a2, int a3)
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

unint64_t sub_1AB17DB30()
{
  result = qword_1EB432730;
  if (!qword_1EB432730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432730);
  }

  return result;
}

uint64_t LocalizedStringsBundle.fetchStrings(withLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0AAAE8, 0, 0);
}

uint64_t sub_1AB17DBC8()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1AB17DE40(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 24))(a1, a2, v2[5], v2[6], v5, v6);
}

uint64_t sub_1AB17E1F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1AB45F414();
    if (v10)
    {
      v11 = sub_1AB45F444();
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
      result = sub_1AB45F434();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_1AB45F414();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1AB45F444();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1AB45F434();
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

uint64_t sub_1AB17E420(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1AB17E5B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1AB017254(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1AB17E1F0(v13, a3, a4, &v12);
  v10 = v4;
  sub_1AB017254(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1AB17E5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AB45F414();
  v11 = result;
  if (result)
  {
    result = sub_1AB45F444();
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

  sub_1AB45F434();
  sub_1AB17E1F0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1AB17E6F0(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v6);

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  JetPackPath.init(_:)(v8);
  v9 = (*(v7 + 16))(&v14, v6, v7);
  v11 = v10;
  if (v3)
  {
  }

  else
  {

    if (v11 >> 60 == 15)
    {
      sub_1AB17DB30();
      swift_allocError();
      *v12 = a2;
      *(v12 + 8) = a3;
      *(v12 + 16) = 2;
      swift_willThrow();
    }
  }

  return v9;
}

uint64_t sub_1AB17E808()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB17E89C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AB17E8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_1AB17E9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14[-v8 - 8];
  v10 = *a2;
  sub_1AB0B9254(a1, v14);
  v15 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v14, &v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = sub_1AB066D84(a1);
  if (!v3)
  {
    return (*(v7 + 32))(v13, v9, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1AB17EB80()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB17EC00(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1AB17ED94(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

unint64_t sub_1AB17EFF0()
{
  result = qword_1EB437028;
  if (!qword_1EB437028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437028);
  }

  return result;
}

void sub_1AB17F044(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1AB03BD38(0, v2, 0);
    v49 = v52;
    v3 = v1 + 64;
    v4 = sub_1AB4614F4();
    v5 = 0;
    v6 = *(v1 + 36);
    v44 = v1 + 72;
    v45 = v2;
    v47 = v1 + 64;
    v48 = v1;
    v46 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_28;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v4);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(v9 + 8 * v4);
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v50 = v11;
        v51 = v12;
        swift_bridgeObjectRetain_n();
        v16 = v13;
        MEMORY[0x1AC59BA20](2236474, 0xE300000000000000);
        v17 = [v15 description];
        v18 = sub_1AB460544();
        v20 = v19;

        MEMORY[0x1AC59BA20](v18, v20);

        MEMORY[0x1AC59BA20](34, 0xE100000000000000);
      }

      else
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v50 = v11;
          v51 = v12;
          swift_bridgeObjectRetain_n();
          v23 = v13;
          MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
          v24 = [v22 description];
          v25 = sub_1AB460544();
          v27 = v26;

          MEMORY[0x1AC59BA20](v25, v27);
        }

        else
        {
          v50 = v11;
          v51 = v12;
          swift_bridgeObjectRetain_n();
          v28 = v13;
          MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
          v29 = [v28 description];
          v30 = sub_1AB460544();
          v32 = v31;

          MEMORY[0x1AC59BA20](v30, v32);
        }
      }

      v33 = v49;
      v34 = *(v49 + 16);
      v35 = *(v49 + 24) >> 1;
      if (v35 <= v34)
      {
        sub_1AB03BD38((v35 != 0), v34 + 1, 1);
        v33 = v49;
      }

      *(v33 + 16) = v34 + 1;
      v36 = v33 + 16 * v34;
      *(v36 + 32) = v50;
      *(v36 + 40) = v51;
      v1 = v48;
      v7 = 1 << *(v48 + 32);
      if (v4 >= v7)
      {
        goto LABEL_30;
      }

      v3 = v47;
      v37 = *(v47 + 8 * v8);
      if ((v37 & (1 << v4)) == 0)
      {
        goto LABEL_31;
      }

      v49 = v33;
      v6 = v46;
      if (v46 != *(v48 + 36))
      {
        goto LABEL_32;
      }

      v38 = v37 & (-2 << (v4 & 0x3F));
      if (v38)
      {
        v7 = __clz(__rbit64(v38)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v8 << 6;
        v40 = v8 + 1;
        v41 = (v44 + 8 * v8);
        while (v40 < (v7 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_1AB031480(v4, v46, 0);
            v7 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        sub_1AB031480(v4, v46, 0);
      }

LABEL_4:
      ++v5;
      v4 = v7;
      if (v5 == v45)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

Swift::Void __swiftcall DefaultCoreAnalyticsLoggerProvider.send(eventName:payload:)(Swift::String eventName, Swift::OpaquePointer payload)
{
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v5 = v31;
  v29 = v32;
  __swift_project_boxed_opaque_existential_1Tm(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  v41 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x80000001AB5000F0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v40 = MEMORY[0x1E69E6158];
  v38 = countAndFlagsBits;
  v39 = object;
  sub_1AB014A58(&v38, v34, &unk_1EB437E60);
  v35 = 0u;
  v36 = 0u;

  sub_1AB0169C4(v34, &v35);
  v37 = 0;
  v8 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
    v41 = v8;
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v35;
  v13 = v36;
  v11[64] = v37;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v41 = v8;
  sub_1AB014AC0(&v38, &unk_1EB437E60);
  v14._object = 0x80000001AB500110;
  v14._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  sub_1AB17F044(payload._rawValue);
  *&v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB04E498();
  v16 = sub_1AB460484();
  v18 = v17;

  v40 = MEMORY[0x1E69E6158];
  v38 = v16;
  v39 = v18;
  sub_1AB014A58(&v38, v34, &unk_1EB437E60);
  v35 = 0u;
  v36 = 0u;
  sub_1AB0169C4(v34, &v35);
  v37 = 0;
  v19 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    v41 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v35;
  v24 = v36;
  v22[64] = v37;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v41 = v19;
  sub_1AB014AC0(&v38, &unk_1EB437E60);
  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v6 + 32) = v41;
  Logger.debug(_:)(v6, v5, v29);

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v26 = sub_1AB460514();
  v27 = swift_allocObject();
  v27[2]._rawValue = payload._rawValue;
  v32 = sub_1AB17FB2C;
  v33 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB17F8AC;
  v31 = &block_descriptor_5;
  v28 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v28);
}

id sub_1AB17F8AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1AB02DE80();
    v4 = sub_1AB4602D4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__n128 CoreAnalyticsLogger.init(provider:decorator:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AB0149B0(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t CoreAnalyticsLogger.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  v8 = v7;
  sub_1AB014A58((v3 + 5), v14, &qword_1EB437030);
  if (v15)
  {
    v9 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    (*(a3 + 24))(a2, a3);
    v10 = (*(v9 + 8))();

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_1AB014AC0(v14, &qword_1EB437030);
    v10 = (*(a3 + 24))(a2, a3);
  }

  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v11);
  (*(v12 + 8))(v6, v8, v10, v11, v12);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine34CoreAnalyticsEventPayloadDecorator_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t AssetPushSubscriptionRecord.assetURLString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.channelID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.bundleID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.usageID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AssetPushSubscriptionRecord.scheduleFromDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 80))
  {
    v3 = 1;
  }

  else
  {
    sub_1AB45F954();
    v3 = 0;
  }

  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AssetPushSubscriptionRecord.scheduleToDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 96))
  {
    v3 = 1;
  }

  else
  {
    sub_1AB45F954();
    v3 = 0;
  }

  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AssetPushSubscriptionRecord.serverDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 120))
  {
    v3 = 1;
  }

  else
  {
    sub_1AB45F954();
    v3 = 0;
  }

  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AssetPushSubscriptionRecord.modifiedAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 144))
  {
    v3 = 1;
  }

  else
  {
    sub_1AB45F954();
    v3 = 0;
  }

  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AssetPushSubscriptionRecord.init(assetURLString:channelID:bundleID:usageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 4) = 1;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = 0;
  *(a9 + 80) = 1;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 100) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = 0;
  *(a9 + 128) = 1;
  *(a9 + 136) = 0;
  *(a9 + 144) = 1;
  return result;
}

uint64_t sub_1AB17FFD8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6E69646E65507369;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6465696669646F6DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C756465686373;
    v9 = 0x797469726F697270;
    if (a1 != 7)
    {
      v9 = 0x6954726576726573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x4449656C646E7562;
    v3 = 0x44496567617375;
    if (a1 != 4)
    {
      v3 = 0x656C756465686373;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4C52557465737361;
    if (a1 != 1)
    {
      v4 = 0x496C656E6E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AB180190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB1810C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB1801C4(uint64_t a1)
{
  v2 = sub_1AB180618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB180200(uint64_t a1)
{
  v2 = sub_1AB180618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPushSubscriptionRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437038);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v34 = *(v1 + 16);
  v35 = v8;
  v9 = *(v1 + 24);
  v32 = *(v1 + 32);
  v33 = v9;
  v10 = *(v1 + 40);
  v30 = *(v1 + 48);
  v31 = v10;
  v11 = *(v1 + 56);
  v28 = *(v1 + 64);
  v29 = v11;
  v26 = *(v1 + 72);
  v27 = *(v1 + 80);
  v12 = *(v1 + 88);
  v25 = *(v1 + 96);
  v23 = *(v1 + 100);
  v24 = v12;
  LODWORD(v12) = *(v1 + 104);
  v20 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = v12;
  v19 = *(v1 + 121);
  v18 = *(v1 + 124);
  v17 = *(v1 + 128);
  v15[1] = *(v1 + 136);
  v16 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB180618();
  sub_1AB462274();
  v51 = 0;
  v48 = v7;
  v13 = v36;
  sub_1AB461B94();
  if (!v13)
  {
    v50 = 1;
    sub_1AB461B44();
    v49 = 2;
    sub_1AB461B44();
    v36 = v4;
    v47 = 3;
    sub_1AB461B44();
    v46 = 4;
    sub_1AB461B44();
    v45 = 5;
    sub_1AB461BA4();
    v44 = 6;
    sub_1AB461BA4();
    v43 = 7;
    v42 = v22;
    sub_1AB461B94();
    v41 = 8;
    sub_1AB461BA4();
    v40 = 9;
    sub_1AB461BC4();
    v39 = 10;
    v38 = v17;
    sub_1AB461B94();
    v37 = 11;
    sub_1AB461BA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1AB180618()
{
  result = qword_1EB437040;
  if (!qword_1EB437040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437040);
  }

  return result;
}

uint64_t AssetPushSubscriptionRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437048);
  v5 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v7 = &v34 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB180618();
  sub_1AB462224();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v52 = v5;
    LOBYTE(v63) = 0;
    v8 = sub_1AB461A64();
    v103 = BYTE4(v8) & 1;
    LOBYTE(v63) = 1;
    v9 = sub_1AB461A14();
    v51 = v10;
    LOBYTE(v63) = 2;
    v48 = sub_1AB461A14();
    v49 = v9;
    v50 = v11;
    LOBYTE(v63) = 3;
    v12 = sub_1AB461A14();
    v14 = v13;
    v47 = v12;
    LOBYTE(v63) = 4;
    v15 = sub_1AB461A14();
    v17 = v16;
    v46 = v15;
    LOBYTE(v63) = 5;
    v45 = sub_1AB461A74();
    v102 = v18 & 1;
    LOBYTE(v63) = 6;
    v44 = sub_1AB461A74();
    v100 = v19 & 1;
    LOBYTE(v63) = 7;
    v42 = sub_1AB461A64();
    v43 = v8;
    v97 = BYTE4(v42) & 1;
    LOBYTE(v63) = 8;
    v41 = sub_1AB461A74();
    v95 = v20 & 1;
    LOBYTE(v63) = 9;
    v40 = sub_1AB461A94();
    LOBYTE(v63) = 10;
    v21 = sub_1AB461A64();
    v22 = v21;
    v94 = BYTE4(v21) & 1;
    v91 = 11;
    v39 = sub_1AB461A74();
    v24 = v23;
    v40 &= 1u;
    (*(v52 + 8))(v7, v104);
    v92 = v24 & 1;
    LODWORD(v53) = v43;
    v36 = v103;
    BYTE4(v53) = v103;
    v25 = v51;
    *(&v53 + 1) = v49;
    *&v54 = v51;
    *(&v54 + 1) = v48;
    *&v55 = v50;
    *(&v55 + 1) = v47;
    *&v56 = v14;
    *(&v56 + 1) = v46;
    *&v57 = v17;
    *(&v57 + 1) = v45;
    v35 = v102;
    LOBYTE(v58) = v102;
    *(&v58 + 1) = v44;
    v37 = v100;
    LOBYTE(v59) = v100;
    DWORD1(v59) = v42;
    v38 = v97;
    BYTE8(v59) = v97;
    *&v60 = v41;
    LODWORD(v104) = v95;
    BYTE8(v60) = v95;
    BYTE9(v60) = v40;
    HIDWORD(v60) = v22;
    LODWORD(v52) = v94;
    LOBYTE(v61) = v94;
    *(&v61 + 1) = v39;
    v24 &= 1u;
    v62 = v24;
    v26 = v59;
    v27 = v60;
    v28 = v61;
    *(a2 + 144) = v24;
    *(a2 + 112) = v27;
    *(a2 + 128) = v28;
    v29 = v54;
    *a2 = v53;
    *(a2 + 16) = v29;
    v30 = v55;
    v31 = v56;
    v32 = v57;
    *(a2 + 80) = v58;
    *(a2 + 96) = v26;
    *(a2 + 48) = v31;
    *(a2 + 64) = v32;
    *(a2 + 32) = v30;
    sub_1AB180CB4(&v53, &v63);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v63 = v43;
    v64 = v36;
    v65 = v49;
    v66 = v25;
    v67 = v48;
    v68 = v50;
    v69 = v47;
    v70 = v14;
    v71 = v46;
    v72 = v17;
    v73 = v45;
    v74 = v35;
    *v75 = *v101;
    *&v75[3] = *&v101[3];
    v76 = v44;
    v77 = v37;
    v79 = v99;
    v78 = v98;
    v80 = v42;
    v81 = v38;
    *v82 = *v96;
    *&v82[3] = *&v96[3];
    v83 = v41;
    v84 = v104;
    v85 = v40;
    v86 = v22;
    v87 = v52;
    *&v88[3] = *&v93[3];
    *v88 = *v93;
    v89 = v39;
    v90 = v24;
    return sub_1AB180CEC(&v63);
  }
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AB180D80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AB180DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPushSubscriptionRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB180FBC()
{
  result = qword_1EB437050;
  if (!qword_1EB437050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437050);
  }

  return result;
}

unint64_t sub_1AB181014()
{
  result = qword_1EB437058;
  if (!qword_1EB437058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437058);
  }

  return result;
}

unint64_t sub_1AB18106C()
{
  result = qword_1EB437060[0];
  if (!qword_1EB437060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB437060);
  }

  return result;
}

uint64_t sub_1AB1810C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xEE00676E69727453 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44496567617375 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006D6F7246 || (sub_1AB461DA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEA00000000006F54 || (sub_1AB461DA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6954726576726573 && a2 == 0xEF706D617473656DLL || (sub_1AB461DA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E69646E65507369 && a2 == 0xE900000000000067 || (sub_1AB461DA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB500150 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 11;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t AnyIntent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpecializedIntentBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_1AB03B82C(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_1AB18188C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *Promise.__allocating_init(error:)(uint64_t a1)
{
  v2 = type metadata accessor for Promise.State();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - v3;
  *(&v6 - v3) = a1;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1AB0141CC(v4);
}

uint64_t Promise.invalidate(_:)(void *a1)
{
  v3 = type metadata accessor for Promise.State();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8 - 8];
  v10 = *(v1 + 2);
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v9, &v1[v11], v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v13 = *v9;
    *v7 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = a1;
    (*(v4 + 40))(&v1[v11], v7, v3);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v15 = type metadata accessor for Promise.Observer();
    if (!sub_1AB4609F4())
    {
    }

    v16 = 0;
    for (i = v13 + 32; ; i += 80)
    {
      v18 = sub_1AB4609D4();
      sub_1AB460974();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v15 - 8);
      (*(v19 + 16))(v23, i, v15);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_12;
      }

      sub_1AB03D640(a1, v15);
      (*(v19 + 8))(v23, v15);
      ++v16;
      if (v20 == sub_1AB4609F4())
      {
      }
    }

    sub_1AB461644();
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_13:
    result = sub_1AB461884();
    __break(1u);
    return result;
  }

  os_unfair_lock_unlock(v10 + 4);
  return (*(v4 + 8))(v9, v3);
}

void sub_1AB181D70(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - v6;
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for Result();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  (*(v9 + 16))(v11, v18, v8);
  v15 = a2;
  Result.init(from:orElse:)(v11, a2, v4, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    Promise.reject(_:)(*v14);
  }

  else
  {
    (*(v5 + 32))(v7, v14, v4);
    Promise.resolve(_:)(v7);
    (*(v5 + 8))(v7, v4);
  }
}

void sub_1AB181FE4(char a1, id a2)
{
  if ((a1 & 1) != 0 || !a2)
  {
    sub_1AB42EC48();
  }

  else
  {
    v3 = a2;
    sub_1AB2A1A60(a2);
  }
}

void sub_1AB182084(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1AB2A1A60(a1);
  }

  else
  {
    sub_1AB42EC48();
  }
}

char *static Promise.resolved(toError:)(void *a1)
{
  v2 = Promise.__allocating_init(error:)(a1);
  v3 = a1;
  return v2;
}

char *Promise.replace<A>(on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();

  return Promise.flatMap<A>(on:_:)(a1, a2, a3, v6, WitnessTable);
}

uint64_t sub_1AB18220C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
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
      if (v11 >= 4)
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

  return (v5 | v10) + 253;
}

void sub_1AB182324(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
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

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
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

uint64_t sub_1AB1824DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB182518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB182568(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1AB18268C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - v5, v1 + *(v3 + 136), v2);
  return sub_1AB4605E4();
}

uint64_t EventSubscription.description.getter()
{
  v1 = *v0;
  v5 = sub_1AB462314();
  v2 = MEMORY[0x1AC59BA20](40, 0xE100000000000000);
  v3 = (*(*v1 + 96))(v2);
  MEMORY[0x1AC59BA20](v3);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v5;
}

uint64_t EventSubscription.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB182898()
{
  sub_1AB4620A4();
  EventSubscription.hash(into:)();
  return sub_1AB462104();
}

uint64_t sub_1AB182928()
{
  type metadata accessor for TransientStateStore.Change();
  *(v0 + 16) = sub_1AB4609A4();
  return v0;
}

uint64_t sub_1AB182984(uint64_t a1)
{
  v2 = type metadata accessor for TransientStateStore.Change();
  (*(*(v2 - 8) + 16))(v4, a1, v2);
  swift_beginAccess();
  sub_1AB460A64();
  sub_1AB460A14();
  return swift_endAccess();
}

uint64_t sub_1AB182A5C()
{

  return swift_deallocClassInstance();
}

uint64_t TransientStateStore.__allocating_init(isConcurrent:)(char a1)
{
  v2 = swift_allocObject();
  TransientStateStore.init(isConcurrent:)(a1);
  return v2;
}

uint64_t TransientStateStore.init(isConcurrent:)(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 16) = v3;
  v4 = type metadata accessor for StatePath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
  swift_getTupleTypeMetadata2();
  v6 = sub_1AB4609A4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1AB06D700(v6, v4, v5, WitnessTable);

  *(v2 + 24) = v8;
  type metadata accessor for TransientStateStore.Transaction();
  *(v2 + 32) = sub_1AB4609A4();
  *(v2 + 40) = 0;
  sub_1AB460A64();
  type metadata accessor for AsyncEvent();
  *(v2 + 48) = AsyncEvent.__allocating_init()();
  return v2;
}

uint64_t sub_1AB182C94(char a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 16) = v2;
  type metadata accessor for StatePath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
  swift_getWitnessTable();
  v3 = sub_1AB461894();

  *(v1 + 24) = v3;
  type metadata accessor for TransientStateStore.Transaction();
  *(v1 + 32) = sub_1AB4609A4();
  *(v1 + 40) = 1;
  sub_1AB460A64();
  type metadata accessor for AsyncEvent();
  *(v1 + 48) = AsyncEvent.__allocating_init()();
  return v1;
}

uint64_t TransientStateStore.onChange.getter()
{
  sub_1AB18684C();
}

void sub_1AB182E30(void (*a1)(void))
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_1AB186D38();
    v4 = v3;
    (a1)([v4 lock]);
    [v4 unlock];
  }

  else
  {
    a1();
  }
}

uint64_t sub_1AB182F28@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v79 = sub_1AB461354();
  v81 = *(v79 - 8);
  v11 = MEMORY[0x1EEE9AC00](v79);
  v77 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  swift_beginAccess();
  v86[0] = a2;
  v15 = type metadata accessor for StatePath();
  v80 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
  v93 = *(v10 + 88);
  swift_getWitnessTable();
  v16 = v15;
  sub_1AB460414();

  if (!*(&v88 + 1))
  {
    sub_1AB014AC0(&v87, &qword_1EB4372E0);
    swift_endAccess();
    return (*(a4 + 24))(a3, a4);
  }

  v75 = a4;
  v78 = a5;
  sub_1AB0149B0(&v87, v92);
  swift_endAccess();
  sub_1AB01494C(v92, &v87);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    v17 = *(a3 - 8);
    (*(v17 + 56))(v14, 0, 1, a3);
    return (*(v17 + 32))(v78, v14, a3);
  }

  v73 = *(a3 - 8);
  v19 = *(v73 + 56);
  v76 = a3;
  v74 = v19;
  v19(v14, 1, 1, a3);
  v20 = v81 + 8;
  v21 = *(v81 + 8);
  v22 = v14;
  v23 = v79;
  v21(v22, v79);
  v24 = v80;
  if ((a1[5] & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AB01494C(v92, v86);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    sub_1AB014AC0(&v82, &qword_1EB4372E8);
LABEL_11:
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v32 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AB4D47F0;
    v91 = sub_1AB0168A8(0, 15, 0, MEMORY[0x1E69E7CC0]);
    v34._countAndFlagsBits = 0x7461206574617453;
    v34._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    *(&v83 + 1) = v16;
    *&v82 = v24;
    sub_1AB01522C(&v82, v86);
    v87 = 0u;
    v88 = 0u;

    sub_1AB0169C4(v86, &v87);
    LOBYTE(v89) = 0;
    v35 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1AB0168A8((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[40 * v37];
    v39 = v87;
    v40 = v88;
    v38[64] = v89;
    *(v38 + 2) = v39;
    *(v38 + 3) = v40;
    v91 = v35;
    sub_1AB014AC0(&v82, &unk_1EB437E60);
    v41._countAndFlagsBits = 544106784;
    v41._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);

    *&v87 = sub_1AB4604F4();
    sub_1AB02F088();
    v42 = sub_1AB4607B4();
    v44 = v43;
    swift_getObjectType();
    *&v87 = sub_1AB462314();
    *(&v87 + 1) = v45;
    MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
    MEMORY[0x1AC59BA20](v42, v44);

    v47 = *(&v87 + 1);
    v46 = v87;
    v48 = MEMORY[0x1E69E6158];
    *(&v83 + 1) = MEMORY[0x1E69E6158];

    v82 = __PAIR128__(v47, v46);
    v87 = 0u;
    v88 = 0u;
    sub_1AB0169C4(&v82, &v87);
    LOBYTE(v89) = 0;
    v49 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_1AB0168A8(0, *(v49 + 2) + 1, 1, v49);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_1AB0168A8((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[40 * v51];
    v53 = v87;
    v54 = v88;
    v52[64] = v89;
    *(v52 + 2) = v53;
    *(v52 + 3) = v54;
    v91 = v49;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    *(v33 + 32) = v91;
    v91 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v56._object = 0x80000001AB500010;
    v56._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    v57 = v76;
    *(&v83 + 1) = swift_getMetatypeMetadata();
    *&v82 = v57;
    sub_1AB01522C(&v82, v86);
    v87 = 0u;
    v88 = 0u;
    sub_1AB0169C4(v86, &v87);
    LOBYTE(v89) = 0;
    v58 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1AB0168A8(0, *(v58 + 2) + 1, 1, v58);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    if (v60 >= v59 >> 1)
    {
      v58 = sub_1AB0168A8((v59 > 1), v60 + 1, 1, v58);
    }

    *(v58 + 2) = v60 + 1;
    v61 = &v58[40 * v60];
    v62 = v87;
    v63 = v88;
    v61[64] = v89;
    *(v61 + 2) = v62;
    *(v61 + 3) = v63;
    v91 = v58;
    sub_1AB014AC0(&v82, &unk_1EB437E60);
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    *(v33 + 40) = v91;
    v65 = sub_1AB461094();
    if (os_log_type_enabled(v32, v65))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v66 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v66[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v66 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v68 = swift_allocObject();
      *(v68 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v87 = v33;
      *(&v87 + 1) = sub_1AB01A8D8;
      *&v88 = v68;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v69 = sub_1AB460484();
      v71 = v70;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1AB4D4720;
      *(v72 + 56) = v48;
      *(v72 + 64) = sub_1AB016854();
      *(v72 + 32) = v69;
      *(v72 + 40) = v71;
      sub_1AB45FF14();
    }

    (*(v75 + 24))();
    return __swift_destroy_boxed_opaque_existential_1Tm(v92);
  }

  v81 = v20;
  v87 = v82;
  v88 = v83;
  v89 = v84;
  v90 = v85;
  v91 = v24;
  swift_beginAccess();
  sub_1AB4603C4();
  sub_1AB460314();
  swift_endAccess();
  sub_1AB014AC0(&v82, &qword_1EB4372E0);
  sub_1AB186C58(&v87, &v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372C8);
  v25 = v77;
  v26 = v76;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB186DA0(&v87);
    v74(v25, 1, 1, v26);
    v21(v25, v23);
    goto LABEL_11;
  }

  v74(v25, 0, 1, v26);
  v27 = v73;
  v28 = v24;
  v29 = v78;
  (*(v73 + 32))(v78, v25, v26);
  v30 = *(v75 + 8);
  *(&v83 + 1) = v26;
  *&v84 = v30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v82);
  (*(v27 + 16))(boxed_opaque_existential_0, v29, v26);
  v91 = v28;
  swift_beginAccess();

  sub_1AB460424();
  swift_endAccess();
  sub_1AB186DA0(&v87);
  return __swift_destroy_boxed_opaque_existential_1Tm(v92);
}

uint64_t sub_1AB183B10(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for TransientStateStore.Change();
  (*(*(v5 - 8) + 16))(&v42, a1, v5);
  if (v44 > 1u)
  {
    if (v44 == 2)
    {
      v8 = v42;
      swift_beginAccess();
      v9 = v1[3];
      v12 = *(v9 + 64);
      v11 = v9 + 64;
      v10 = v12;
      v13 = 1 << *(v1[3] + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & v10;
      v16 = (v13 + 63) >> 6;
      v32 = v1[3];

      v17 = 0;
      v31 = v8;
      if (!v15)
      {
        goto LABEL_11;
      }

      do
      {
        while (1)
        {
          v18 = v17;
LABEL_19:
          v21 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v22 = v21 | (v18 << 6);
          v23 = *(*(v32 + 48) + 8 * v22);
          sub_1AB01494C(*(v32 + 56) + 40 * v22, v33);
          *&v34 = v23;
          sub_1AB0149B0(v33, &v34 + 8);

LABEL_20:
          v37 = v34;
          v38 = v35;
          v39 = v36;
          v24 = v34;
          if (!v34)
          {
          }

          *&v33[0] = v8;
          type metadata accessor for StatePath();
          if (StatePath<A>.starts(with:)())
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v37 + 8);

          if (!v15)
          {
            goto LABEL_11;
          }
        }

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
        swift_getWitnessTable();
        sub_1AB4603C4();
        sub_1AB460314();
        swift_endAccess();
        if (*(&v35 + 1))
        {
          sub_1AB014AC0(&v34, &qword_1EB4372E0);
          *&v34 = v24;
          sub_1AB460A64();
          sub_1AB460A14();
        }

        else
        {

          sub_1AB014AC0(&v34, &qword_1EB4372E0);
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v37 + 8);
        v8 = v31;
      }

      while (v15);
LABEL_11:
      if (v16 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = v16;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
          v15 = 0;
          v35 = 0u;
          v36 = 0u;
          v17 = v20;
          v34 = 0u;
          goto LABEL_20;
        }

        v15 = *(v11 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v26 = v1[3];
      v27 = type metadata accessor for StatePath();

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
      v41 = v4;
      WitnessTable = swift_getWitnessTable();
      v30 = MEMORY[0x1AC59B6D0](v26, v27, v28, WitnessTable);

      if ((v30 & 1) == 0)
      {
        *&v34 = nullsub_1(v2[3]);
        sub_1AB460A64();
        sub_1AB460374();

        swift_getWitnessTable();
        sub_1AB460A04();
        swift_beginAccess();
        sub_1AB4603C4();
        sub_1AB4603B4();
        return swift_endAccess();
      }
    }
  }

  else if (v44)
  {
    v25 = v42;
    *&v33[0] = v42;
    swift_beginAccess();
    type metadata accessor for StatePath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
    swift_getWitnessTable();
    sub_1AB4603C4();
    sub_1AB460314();
    swift_endAccess();
    if (*(&v38 + 1))
    {
      sub_1AB014AC0(&v37, &qword_1EB4372E0);
      *&v37 = v25;
      sub_1AB460A64();
      return sub_1AB460A14();
    }

    else
    {

      return sub_1AB014AC0(&v37, &qword_1EB4372E0);
    }
  }

  else
  {
    v6 = v42;
    sub_1AB0149B0(&v43, &v37);
    sub_1AB01494C(&v37, &v34);
    v40 = v6;
    swift_beginAccess();
    type metadata accessor for StatePath();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437200);
    swift_getWitnessTable();
    sub_1AB4603C4();
    sub_1AB460424();
    swift_endAccess();
    *&v34 = v6;
    sub_1AB460A64();
    sub_1AB460A14();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  }

  return result;
}

uint64_t sub_1AB1841B0(uint64_t a1)
{
  v3 = a1;
  type metadata accessor for StatePath();
  sub_1AB460A64();
  swift_getWitnessTable();
  result = sub_1AB460F44();
  if ((result & 1) == 0)
  {
    v3 = a1;
    return AsyncEvent.post(_:)(&v3);
  }

  return result;
}

uint64_t sub_1AB184254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  type metadata accessor for TransientStateStore.Transaction();
  sub_1AB460A64();

  swift_getWitnessTable();
  sub_1AB460474();

  if (v4)
  {
    sub_1AB182984(a2);
  }

  else
  {
    type metadata accessor for StatePath();
    v5 = sub_1AB4602B4();
    sub_1AB183B10(a2);
    sub_1AB1841B0(v5);
  }
}

uint64_t TransientStateStore.updateState(at:to:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  sub_1AB01494C(a2, v6);
  v6[40] = 0;

  v7 = v2;
  v8 = &v5;
  sub_1AB182E30(sub_1AB186D84);
  v3 = type metadata accessor for TransientStateStore.Change();
  return (*(*(v3 - 8) + 8))(&v5, v3);
}

uint64_t TransientStateStore.removeState(at:recursively:)(void *a1, char a2)
{
  v6[0] = *a1;
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v7 = v3;

  v8 = v2;
  v9 = v6;
  sub_1AB182E30(sub_1AB186D84);
  v4 = type metadata accessor for TransientStateStore.Change();
  return (*(*(v4 - 8) + 8))(v6, v4);
}

Swift::Void __swiftcall TransientStateStore.removeAllState()()
{
  memset(v1, 0, sizeof(v1));
  v2 = 3;
  v3 = v1;
  sub_1AB182E30(sub_1AB186D84);
  v0 = type metadata accessor for TransientStateStore.Change();
  (*(*(v0 - 8) + 8))(v1, v0);
}

uint64_t sub_1AB184684(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  type metadata accessor for TransientStateStore.Transaction();
  swift_allocObject();
  v6 = sub_1AB182928();
  v21 = v6;
  swift_beginAccess();
  sub_1AB460A64();

  sub_1AB460A14();
  v7 = swift_endAccess();
  a2(v7);
  if (v19)
  {

    swift_beginAccess();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1AB460FB4();
    swift_endAccess();

    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1AB460FB4();
    swift_endAccess();

    type metadata accessor for StatePath();
    v22 = sub_1AB4602B4();
    swift_beginAccess();
    v9 = *(v6 + 16);
    v10 = type metadata accessor for TransientStateStore.Change();

    if (sub_1AB4609F4())
    {
      v11 = 0;
      v12 = v9 + 32;
      while (1)
      {
        v13 = sub_1AB4609D4();
        sub_1AB460974();
        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = v6;
        v15 = a4;
        v16 = *(v10 - 8);
        result = (*(v16 + 16))(v20, v12, v10);
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_13;
        }

        sub_1AB183B10(v20);
        (*(v16 + 8))(v20, v10);
        ++v11;
        v12 += 56;
        v18 = v17 == sub_1AB4609F4();
        a4 = v15;
        v6 = v14;
        if (v18)
        {
          goto LABEL_9;
        }
      }

      result = sub_1AB461644();
      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
LABEL_9:

      if (a4)
      {
        sub_1AB1841B0(v22);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t TransientStateStore.deinit()
{

  return v0;
}

uint64_t TransientStateStore.__deallocating_deinit()
{
  TransientStateStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB184ABC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7275636E6F437369 && a2 == 0xEC000000746E6572;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1AB184B88(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x7275636E6F437369;
  }
}

uint64_t sub_1AB184BEC()
{
  sub_1AB18684C();
}

uint64_t sub_1AB184D14()
{
  sub_1AB4620A4();
  sub_1AB15ADD8(v2, *v0);
  return sub_1AB462104();
}

uint64_t sub_1AB184D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB184ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB184DA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB170894();
  *a1 = result;
  return result;
}

uint64_t sub_1AB184DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB184E30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void static TransientStateStore<>.registerForCoding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB435CA0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB4371F8;
  os_unfair_lock_lock((qword_1EB4371F8 + 24));
  sub_1AB185A7C(&v8[4], a1, a2, a3, a4);

  os_unfair_lock_unlock(v8 + 6);
}

uint64_t TransientStateStore<>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 88);
  v23 = *(v3 + 80);
  v24 = a2;
  v34 = v23;
  v35 = a2;
  v25 = a3;
  v36 = a3;
  v37 = v6;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v7 = sub_1AB461B04();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = v28;
  sub_1AB462224();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v12 = v6;
    v13 = v24;
    v28 = a1;
    v14 = v25;
    v22 = v4;
    LOBYTE(v34) = 0;
    v15 = v27;
    v21 = sub_1AB461A94();
    type metadata accessor for StatePath();
    v38 = v12;
    swift_getWitnessTable();
    sub_1AB4603C4();
    v33 = 1;
    v31 = v13;
    v32 = v14;
    WitnessTable = swift_getWitnessTable();
    v17 = sub_1AB1868C8();
    v29 = WitnessTable;
    v30 = v17;
    swift_getWitnessTable();
    sub_1AB461AC4();
    v18 = v26;
    swift_allocObject();
    v10 = sub_1AB182C94(v21 & 1);
    (*(v18 + 8))(v9, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return v10;
}

uint64_t sub_1AB185270(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v38 = v5;
  v39 = a3;
  v25 = a3;
  v26 = a4;
  v40 = a4;
  v41 = v6;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v7 = sub_1AB461C14();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  swift_beginAccess();
  v37 = a1[4];
  type metadata accessor for TransientStateStore.Transaction();
  sub_1AB460A64();
  swift_getWitnessTable();
  if (sub_1AB460F44())
  {
    v27 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v28, v28[3]);
    v10 = v27;
    sub_1AB462274();
    LOBYTE(v37) = 0;
    v11 = v29;
    sub_1AB461BC4();
    if (v11)
    {
      return (*(v30 + 8))(v9, v10);
    }

    else
    {
      v29 = v9;
      v16 = swift_beginAccess();
      v28 = &v24;
      MEMORY[0x1EEE9AC00](v16);
      v17 = v25;
      v18 = v26;
      *(&v24 - 4) = v5;
      *(&v24 - 3) = v17;
      *(&v24 - 2) = v18;
      *(&v24 - 1) = v6;
      type metadata accessor for StatePath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
      v42 = v6;
      swift_getWitnessTable();
      v19 = sub_1AB460354();

      v36 = v19;
      v35 = 1;
      sub_1AB4603C4();
      v33 = v17;
      v34 = v18;
      WitnessTable = swift_getWitnessTable();
      v21 = sub_1AB186CE4();
      v31 = WitnessTable;
      v32 = v21;
      swift_getWitnessTable();
      v22 = v27;
      v23 = v29;
      sub_1AB461BF4();
      (*(v30 + 8))(v23, v22);
    }
  }

  else
  {
    v13 = sub_1AB4616E4();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
    v15[3] = type metadata accessor for TransientStateStore();
    *v15 = a1;

    sub_1AB461694();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B30], v13);
    return swift_willThrow();
  }
}

uint64_t sub_1AB185754@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AB01494C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372C8);
  if (swift_dynamicCast())
  {
    sub_1AB186C38(v20, &v23);
    return sub_1AB186C38(&v23, a6);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1AB014AC0(v20, &qword_1EB4372D0);
    v26 = "ansactions are pending";
    v13 = sub_1AB4616E4();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
    v16 = a1[3];
    v17 = __swift_project_boxed_opaque_existential_1Tm(a1, v16);
    v15[3] = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    *&v23 = a2;
    *(&v23 + 1) = a3;
    v24 = a4;
    v25 = a5;
    *(v19 + 56) = _s10CodingKeysOMa();
    *(v19 + 64) = swift_getWitnessTable();
    *(v19 + 32) = 1;
    sub_1AB461694();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B30], v13);
    return swift_willThrow();
  }
}

uint64_t sub_1AB1859C8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TransientStateStore<>.init(from:)(a1, *(a2 - 8), *(a2 - 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1AB185A20()
{
  v0 = sub_1AB1DA694(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372D8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB4371F8 = result;
  return result;
}

uint64_t sub_1AB185A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getMetatypeMetadata();
  v9 = sub_1AB460604();
  v11 = v10;
  v12 = sub_1AB24AADC(a2, a3, a4, a5, v9, v10);
  if (!v12 || v12 == a2)
  {
  }

  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](v9, v11);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

unint64_t sub_1AB185BA8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *result;
  v6 = 0uLL;
  if (*(*result + 16))
  {
    result = sub_1AB014DB4(a2, a3);
    v6 = 0uLL;
    v7 = 0uLL;
    if (v8)
    {
      v9 = (*(v5 + 56) + 32 * result);
      v6 = *v9;
      v7 = v9[1];
    }
  }

  else
  {
    v7 = 0uLL;
  }

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_1AB185C18()
{
  if (*v0)
  {
    return 1702060386;
  }

  else
  {
    return 0x656D614E65707974;
  }
}

uint64_t sub_1AB185C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AB185D28(uint64_t a1)
{
  v2 = sub_1AB186BC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB185D64(uint64_t a1)
{
  v2 = sub_1AB186BC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AB185DA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB186BC8();
  sub_1AB462224();
  if (!v2)
  {
    v19 = v5;
    v8 = v20;
    LOBYTE(v21) = 0;
    v9 = sub_1AB461A84();
    v11 = v10;
    v18 = v4;
    if (qword_1EB435CA0 != -1)
    {
      v15 = v9;
      swift_once();
      v9 = v15;
    }

    *&v17 = &v16;
    v12 = qword_1EB4371F8;
    *&v16 = MEMORY[0x1EEE9AC00](v9);
    *(&v16 - 2) = v16;
    *(&v16 - 1) = v11;
    os_unfair_lock_lock(v12 + 6);
    sub_1AB186C1C(&v12[4], &v21);
    os_unfair_lock_unlock(v12 + 6);
    if (v21)
    {
      v16 = v21;
      v17 = *v22;

      v25 = 1;
      *&v22[1] = v16;
      *&v22[3] = v17;
      __swift_allocate_boxed_opaque_existential_0(&v21);
      sub_1AB461B04();
      sub_1AB461AC4();
      (*(v19 + 8))(v7, v18);
      sub_1AB186C38(&v21, v23);
      v14 = v23[1];
      *v8 = v23[0];
      *(v8 + 16) = v14;
      *(v8 + 32) = v23[2];
      *(v8 + 48) = v24;
    }

    else
    {
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB5002A0);
      MEMORY[0x1AC59BA20](v16, v11);

      MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB5002C0);
      LOBYTE(v21) = 1;
      sub_1AB4616B4();
      swift_allocError();
      sub_1AB01561C(&qword_1EB4372A0, &qword_1EB437290);
      v13 = v18;
      sub_1AB461684();

      swift_willThrow();
      (*(v19 + 8))(v7, v13);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_1AB18619C(void *a1)
{
  v3 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372A8);
  v26 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v23 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v24 = sub_1AB186BC8();
  sub_1AB462274();
  sub_1AB186C58(v3, &v30);
  __swift_project_boxed_opaque_existential_1Tm(&v30, v31);
  DynamicType = swift_getDynamicType();
  v8 = v33;
  v25 = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  v27 = DynamicType;
  v28 = v25;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B0);
  v9 = sub_1AB460604();
  v10 = v9;
  v12 = v11;
  if (qword_1EB435CA0 != -1)
  {
    v9 = swift_once();
  }

  v13 = qword_1EB4371F8;
  MEMORY[0x1EEE9AC00](v9);
  *(&v23 - 2) = v10;
  *(&v23 - 1) = v12;
  os_unfair_lock_lock(v13 + 6);
  sub_1AB186EF4(&v13[4], &v30);
  if (v2)
  {
    os_unfair_lock_unlock(v13 + 6);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v13 + 6);
    if (v30)
    {
      LOBYTE(v30) = 0;
      v14 = v34;
      sub_1AB461BB4();

      __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
      LOBYTE(v30) = 1;
      sub_1AB461C14();
      sub_1AB461BF4();
      (*(v26 + 8))(v6, v14);
    }

    else
    {
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v30 = 0xD000000000000029;
      *(&v30 + 1) = 0x80000001AB5002F0;
      MEMORY[0x1AC59BA20](v10, v12);

      v15 = sub_1AB4616E4();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8);
      v18 = v3[3];
      v19 = __swift_project_boxed_opaque_existential_1Tm(v3, v18);
      v17[3] = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A70);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D4720;
      v22 = v24;
      *(v21 + 56) = &type metadata for StatefulCodingThunk.CodingKeys;
      *(v21 + 64) = v22;
      *(v21 + 32) = 0;
      sub_1AB461694();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
      swift_willThrow();
      (*(v26 + 8))(v6, v34);
    }
  }
}

unint64_t sub_1AB186650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB460444();

  return sub_1AB1866AC(a1, v6, a2, a3);
}

unint64_t sub_1AB1866AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1AB460504();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1AB1868C8()
{
  result = qword_1EB437208[0];
  if (!qword_1EB437208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB437208);
  }

  return result;
}

uint64_t sub_1AB186A4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine19TransientStateStoreC6Change33_14D9DE9796768514AF83B5D6DBA1DAA7LLOyx_G(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AB186AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB186AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB186B4C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1AB186BC8()
{
  result = qword_1EB437298;
  if (!qword_1EB437298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437298);
  }

  return result;
}

uint64_t sub_1AB186C38(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_1AB186C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AB186CE4()
{
  result = qword_1EB4372C0;
  if (!qword_1EB4372C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4372C0);
  }

  return result;
}

unint64_t sub_1AB186D38()
{
  result = qword_1EB435738;
  if (!qword_1EB435738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB435738);
  }

  return result;
}

unint64_t sub_1AB186DE4()
{
  result = qword_1EB4372F0;
  if (!qword_1EB4372F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4372F0);
  }

  return result;
}

unint64_t sub_1AB186E3C()
{
  result = qword_1EB4372F8;
  if (!qword_1EB4372F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4372F8);
  }

  return result;
}

unint64_t sub_1AB186E94()
{
  result = qword_1EB437300;
  if (!qword_1EB437300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437300);
  }

  return result;
}

id sub_1AB186F0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD78]) init];
  v1 = objc_allocWithZone(type metadata accessor for MetricsInspectorScanner());
  result = sub_1AB186F60(v0);
  qword_1EB46C2D8 = result;
  return result;
}

id sub_1AB186F60(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_serviceBrowser] = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD10]);
  v5 = a1;
  v6 = [v4 init];
  *&v1[OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_stateLock] = v6;
  *&v1[OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_foundServices] = MEMORY[0x1E69E7CC0];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_init);
  [v5 setDelegate_];
  v8 = [objc_opt_self() mainRunLoop];
  [v5 scheduleInRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

  v9 = sub_1AB460514();
  v10 = sub_1AB460514();
  [v5 searchForServicesOfType:v9 inDomain:v10];

  return v7;
}

id sub_1AB1870D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_serviceBrowser;
  [*&v0[OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_serviceBrowser] stop];
  v4 = *&v0[v3];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainRunLoop];
  v8 = *MEMORY[0x1E695DA28];
  [v6 removeFromRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

  v9 = OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_foundServices;
  result = swift_beginAccess();
  v11 = *&v0[v9];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18.receiver = v1;
    v18.super_class = ObjectType;
    return objc_msgSendSuper2(&v18, sel_dealloc);
  }

  result = sub_1AB4618F4();
  v12 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v17 = ObjectType;

    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1AC59C990](v13, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 stop];
      v16 = [v5 mainRunLoop];
      [v15 removeFromRunLoop:v16 forMode:v8];
    }

    while (v12 != v13);

    ObjectType = v17;
    v1 = v0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *sub_1AB18732C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_stateLock);
  [v1 lock];
  v2 = OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_foundServices;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_24:
    v4 = sub_1AB4618F4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1AC59C990](v7, v3);
        }

        else
        {
          if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [v8 hostName];
        if (v10)
        {
          break;
        }

        ++v7;
        if (v5 == v4)
        {
          goto LABEL_21;
        }
      }

      v21 = v1;
      v11 = v10;
      v12 = sub_1AB460544();
      v20 = v13;

      v19 = [v9 port];
      v14 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AB2AF980(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = sub_1AB2AF980((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[24 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v20;
      *(v17 + 6) = v19;
      v1 = v21;
    }

    while (v5 != v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:

  [v1 unlock];
  return v6;
}

uint64_t sub_1AB1875E0(void *a1, uint64_t a2)
{
  v4 = [a1 name];
  v5 = sub_1AB460544();
  v7 = v6;

  if (v5 == 0xD00000000000001FLL && 0x80000001AB500560 == v7)
  {
  }

  else
  {
    v9 = sub_1AB461DA4();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v11 = [objc_opt_self() mainRunLoop];
  [a1 scheduleInRunLoop:v11 forMode:*MEMORY[0x1E695DA28]];

  [a1 resolveWithTimeout_];
  v12 = OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_foundServices;
  swift_beginAccess();
  v13 = a1;
  MEMORY[0x1AC59BC60]();
  if (*((*(a2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AB460994();
  }

  sub_1AB4609E4();
  swift_endAccess();
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AB4D4720;
  v30 = sub_1AB0168A8(0, 25, 0, MEMORY[0x1E69E7CC0]);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001AB500580;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v29[3] = sub_1AB016760(0, &qword_1EB4373F0);
  v29[0] = v13;
  sub_1AB01522C(v29, v25);
  v26 = 0u;
  v27 = 0u;
  v17 = v13;
  sub_1AB0169C4(v25, &v26);
  v28 = 2;
  v18 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  v22 = v26;
  v23 = v27;
  v21[64] = v28;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  v30 = v18;
  sub_1AB0167A8(v29);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v15 + 32) = v30;
  *&v26 = v14;
  LOBYTE(v29[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v15, v29);
}

uint64_t sub_1AB1879F8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_foundServices;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_1AB1A79C4(a2, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    [a2 stop];
    v10 = [objc_opt_self() mainRunLoop];
    [a2 removeFromRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];

    swift_beginAccess();
    v11 = sub_1AB3C1AB4(v6);
    swift_endAccess();

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v28 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB500540;
    v14._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v27[3] = sub_1AB016760(0, &qword_1EB4373F0);
    v27[0] = a2;
    sub_1AB01522C(v27, v23);
    v24 = 0u;
    v25 = 0u;
    v15 = a2;
    sub_1AB0169C4(v23, &v24);
    v26 = 2;
    v16 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v24;
    v21 = v25;
    v19[64] = v26;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v28 = v16;
    sub_1AB0167A8(v27);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v28;
    *&v24 = v12;
    LOBYTE(v27[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v13, v27);
  }

  return result;
}

uint64_t sub_1AB188128(uint64_t a1)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB5005A0;
  v4._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437400);
  v17[0] = a1;
  sub_1AB01522C(v17, v13);
  v14 = 0u;
  v15 = 0u;

  sub_1AB0169C4(v13, &v14);
  v16 = 0;
  v5 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1AB0168A8(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[40 * v7];
  v9 = v14;
  v10 = v15;
  v8[64] = v16;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v18 = v5;
  sub_1AB0167A8(v17);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v3 + 32) = v18;
  *&v14 = v2;
  LOBYTE(v17[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v3, v17);
}

uint64_t sub_1AB18830C(void *a1)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 36, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB500510;
  v4._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v18[3] = sub_1AB016760(0, &qword_1EB4373F0);
  v18[0] = a1;
  sub_1AB01522C(v18, v14);
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  sub_1AB0169C4(v14, &v15);
  v17 = 2;
  v6 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v15;
  v11 = v16;
  v9[64] = v17;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v19 = v6;
  sub_1AB0167A8(v18);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v19;
  *&v15 = v2;
  LOBYTE(v18[0]) = 3;
  OSLogger.log(contentsOf:withLevel:)(v3, v18);
}

uint64_t sub_1AB1884F8(void *a1, uint64_t a2)
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D47F0;
  v30 = sub_1AB0168A8(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v6._object = 0x80000001AB5004E0;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v29 = sub_1AB016760(0, &qword_1EB4373F0);
  v28[0] = a1;
  sub_1AB01522C(v28, v24);
  v25 = 0u;
  v26 = 0u;
  v7 = a1;
  sub_1AB0169C4(v24, &v25);
  v27 = 2;
  v8 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v25;
  v13 = v26;
  v11[64] = v27;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v30 = v8;
  sub_1AB0167A8(v28);
  v14._countAndFlagsBits = 44;
  v14._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v30;
  v30 = sub_1AB0168A8(0, 9, 0, MEMORY[0x1E69E7CC0]);
  v15._countAndFlagsBits = 0x203A6E6F73616572;
  v15._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437400);
  v28[0] = a2;
  sub_1AB01522C(v28, v24);
  v25 = 0u;
  v26 = 0u;

  sub_1AB0169C4(v24, &v25);
  v27 = 0;
  v16 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[40 * v18];
  v20 = v25;
  v21 = v26;
  v19[64] = v27;
  *(v19 + 2) = v20;
  *(v19 + 3) = v21;
  v30 = v16;
  sub_1AB0167A8(v28);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v5 + 40) = v30;
  *&v25 = v4;
  LOBYTE(v28[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v28);
}

uint64_t sub_1AB18881C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1AB188870@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  a5[4] = a3;
  a5[5] = a4;
  return result;
}

uint64_t sub_1AB188888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a3;
  v58 = a2;
  v8 = *(a5 + 24);
  v9 = sub_1AB461354();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - v11;
  v48 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 16);
  v14 = sub_1AB461354();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v5;
  v22 = v5[1];
  v23 = v5[3];
  v37 = v5[2];
  v38 = v23;
  v24 = v5[4];
  v49 = v5[5];
  v50 = v24;
  ObjectType = swift_getObjectType();
  v39 = v21;
  v54 = v21;
  v55 = v22;
  v26 = v19;

  v40 = ObjectType;
  v47 = a1;
  Preferences.subscript.getter(&v54, ObjectType, v13, v58, v18);

  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v28 = v51;
  (*(v19 + 32))(v51, v18, v13);
  v29 = v53;
  v50(v28);
  if (v29)
  {
    return (*(v19 + 8))(v28, v13);
  }

  v30 = swift_getObjectType();
  v31 = v46;
  v32 = v41;
  v33 = v48;
  (*(v46 + 16))(v41, v52, v48);
  (*(v31 + 56))(v32, 0, 1, v33);
  v54 = v37;
  v55 = v38;

  sub_1AB2B1D98(v32, &v54, v30, v33, v44);
  (*(v42 + 8))(v32, v43);
  v56 = type metadata accessor for PreferenceKey();
  v57 = &protocol witness table for PreferenceKey<A>;
  v54 = v39;
  v55 = v22;
  v34 = v58;
  v35 = *(v58 + 32);

  v35(&v54, v40, v34);
  (*(v31 + 8))(v52, v33);
  (*(v26 + 8))(v51, v13);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v54);
}

void AnyIntentModel.init(deserializing:using:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v7 = sub_1AB4616B4();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - v11;
  v13 = *a2;
  v69 = a1;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, &v73);
  sub_1AB01EC0C(&v73, &v81);
  v14 = v82;
  if (v82)
  {
    v15 = v83;
    __swift_project_boxed_opaque_existential_1Tm(&v81, v82);
    v16 = (*(v15 + 24))(v14, v15);
    v18 = v17;
    sub_1AB066D84(&v73);
    __swift_destroy_boxed_opaque_existential_1Tm(&v81);
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB066D84(&v73);
    sub_1AB18977C(&v81);
  }

  v16 = static StaticIntent.kind.getter();
  v18 = v19;

LABEL_6:
  if (v16 == static StaticIntent.kind.getter() && v18 == v20)
  {

LABEL_13:

    v23 = sub_1AB189DF0(a3, type metadata accessor for StaticIntent);
    v25 = v69;
    if (v23)
    {
      goto LABEL_14;
    }

    v29 = type metadata accessor for StaticIntent();
    goto LABEL_17;
  }

  v22 = sub_1AB461DA4();

  if (v22)
  {
    goto LABEL_13;
  }

  if (v16 == static SidepackedIntent.kind.getter() && v18 == v33)
  {

LABEL_25:

    v23 = sub_1AB189DF0(a3, type metadata accessor for SidepackedIntent);
    v25 = v69;
    if (v23)
    {
LABEL_14:
      v26 = v23;
      v27 = v24;
      MEMORY[0x1EEE9AC00](v23);
      sub_1AB0B9254(v25, &v81);
      *&v70 = v13;
      v28 = v68;
      (*(v27 + 8))(&v81, &v70, v26, v27);
      if (v28)
      {
LABEL_15:
        sub_1AB066D84(v25);
        return;
      }

      *&v70 = a3;
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        goto LABEL_22;
      }

LABEL_27:
      sub_1AB163664();
      swift_allocError();
      v32 = MEMORY[0x1E69E7CC0];
      *v31 = ExtendedExistentialTypeMetadata;
      goto LABEL_28;
    }

    v29 = type metadata accessor for SidepackedIntent();
LABEL_17:
    v30 = v29;
    sub_1AB163664();
    swift_allocError();
    v32 = MEMORY[0x1E69E7CC0];
    *v31 = v30;
LABEL_28:
    v31[1] = v32;
    v31[2] = 0;
    v31[3] = 0;
    swift_willThrow();
    v37 = v25;
LABEL_29:
    sub_1AB066D84(v37);
    return;
  }

  v36 = sub_1AB461DA4();

  if (v36)
  {
    goto LABEL_25;
  }

  sub_1AB3D9870(0xD00000000000001FLL, 0x80000001AB500660, v13, &v73);
  if (!v74)
  {

    v45 = 0x20000001F1FFB098uLL;
    sub_1AB163664();
    swift_allocError();
    *v46 = 0xD00000000000001FLL;
    v46[1] = 0x80000001AB500660;
LABEL_37:
    v46[2] = v45;
    v46[3] = 0;
    swift_willThrow();
    v37 = v69;
    goto LABEL_29;
  }

  v38 = sub_1AB2EF35C(v16, v18);
  v40 = v39;
  v41 = v38;

  if (!v41)
  {

    v45 = type metadata accessor for AnyIntentModel() | 0x6000000000000000;
    sub_1AB163664();
    swift_allocError();
    *v46 = v16;
    v46[1] = v18;
    goto LABEL_37;
  }

  v77 = v41;
  v78 = v40;
  *&v73 = a3;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437488);
  v42 = swift_dynamicCast();
  if (v42)
  {
    v43 = v70;
    MEMORY[0x1EEE9AC00](v42);
    v25 = v69;
    sub_1AB0B9254(v69, &v81);
    v80[0] = v13;
    v44 = v68;
    (*(*(&v43 + 1) + 8))(&v81, v80, v43, *(&v43 + 1));
    if (v44)
    {
      goto LABEL_15;
    }

    v80[0] = a3;
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
LABEL_22:
      sub_1AB066D84(v25);
      sub_1AB0149B0(&v81, &v73);
      v35 = &v73;
LABEL_23:
      sub_1AB0149B0(v35, v67);
      return;
    }

    goto LABEL_27;
  }

  v47 = v41;
  v80[0] = v41;
  v80[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437490);
  v48 = swift_dynamicCast();
  v49 = v69;
  if (!v48)
  {

    sub_1AB163664();
    swift_allocError();
    v55 = MEMORY[0x1E69E7CC0];
    *v56 = v47;
    v56[1] = v55;
    v56[2] = 0;
    v56[3] = 0;
    swift_willThrow();
    v37 = v49;
    goto LABEL_29;
  }

  v50 = v77;
  v65 = v79;
  sub_1AB0B9254(v69, &v73);
  *&v81 = v13;
  v51 = _sSD9JetEngines17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v81);
  v52 = MEMORY[0x1E69E7CC0];
  v75 = v51;
  v76 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v51);
  v71 = &type metadata for _JSONObjectDecoder;
  v72 = sub_1AB0BB6F8();
  *&v70 = swift_allocObject();
  sub_1AB0BB74C(&v73, v70 + 16);
  v53 = v68;
  sub_1AB460E14();
  v54 = v53;
  if (v53)
  {
    sub_1AB0BCB6C(&v73);
  }

  else
  {
    v84 = a3;
    v57 = swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_1AB066D84(v69);
      sub_1AB0BCB6C(&v73);
      sub_1AB0149B0(&v70, &v81);
      v35 = &v81;
      goto LABEL_23;
    }

    sub_1AB163664();
    v54 = swift_allocError();
    *v58 = v57;
    v58[1] = v52;
    v58[2] = 0;
    v58[3] = 0;
    swift_willThrow();
    sub_1AB0BCB6C(&v73);
  }

  v59 = v69;
  *&v73 = v54;
  v60 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if (swift_dynamicCast())
  {

    v61 = v66;
    (*(v66 + 32))(v10, v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1AB4D4720;
    *(v62 + 32) = swift_allocError();
    (*(v61 + 16))(v63, v10, v7);
    sub_1AB163664();
    swift_allocError();
    *v64 = v50;
    v64[1] = v62;
    v64[2] = 0;
    v64[3] = 0;
    swift_willThrow();
    sub_1AB066D84(v59);
    (*(v61 + 8))(v10, v7);
  }

  else
  {
    sub_1AB066D84(v59);
  }
}

uint64_t sub_1AB18977C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnyIntentModel._canonicalized.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SidepackedIntent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7 - 8];
  sub_1AB01494C(v2, v13);
  v12 = v4;
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    return sub_1AB01494C(v2, a2);
  }

  (*(v6 + 8))(v8, v5);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v9);
  return (*(v10 + 40))(v9, v10);
}

uint64_t AnyIntentModel.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SidepackedIntent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    (*(v9 + 8))(v12, v8);
    v19 = a2;
    v20 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(v13 + 32))(boxed_opaque_existential_0, a1, a2);
  }

  else
  {
    (*(a3 + 40))(&v18, a2, a3);
    (*(v13 + 8))(a1, a2);
  }

  return sub_1AB0149B0(&v18, a4);
}

uint64_t AnyIntentModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  AnyIntentModel.init<A>(_:)(v8, v4, v5, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AnyIntentModel.kind.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AnyIntentModel._canonicalIntentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 24);
  v3 = __swift_project_boxed_opaque_existential_1Tm(v1, v7);
  *(a1 + 24) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v5 = *(*(v7 - 8) + 16);

  return v5(boxed_opaque_existential_0, v3, v7);
}

uint64_t AnyIntentModel.debugDescription.getter()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v5 = *(v0 + 3);
  v1 = v0[3];
  v2 = __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v7 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0, v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB437498);
  sub_1AB461824();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v8;
}

uint64_t sub_1AB189E58()
{
  result = type metadata accessor for PreferenceKey();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB189EE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1AB18A06C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1AB18A2D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  v8 = type metadata accessor for SetPreferenceMigrationRule();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t sub_1AB18A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v5 = *(a3 + 16);
  v6 = sub_1AB461354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  ObjectType = swift_getObjectType();
  v12 = *v3;
  v11 = v3[1];
  v13 = *(a3 + 28);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v9, v3 + v13, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  v18[0] = v12;
  v18[1] = v11;

  sub_1AB2B1D98(v9, v18, ObjectType, v5, v17);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AB18A528()
{
  sub_1AB460684();
}

uint64_t sub_1AB18A650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB18B428();
  *a1 = result;
  return result;
}

void sub_1AB18A680(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702125924;
  v5 = 0xEC000000656D6954;
  v6 = 0x74696157636E7973;
  if (v2 != 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001AB4FE460;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7465736572;
  if (v2 != 3)
  {
    v8 = 0x676E697473697865;
    v7 = 0xEC000000796C6E4FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656D695474696177;
  if (v2 != 1)
  {
    v10 = 0x6C6F506568636163;
    v9 = 0xEB00000000796369;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *sub_1AB18A770(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v2[2] = [objc_allocWithZone(JESoftLinkedMTStandardIDService) initWithAMSBag_];
  v2[3] = v3;
  v2[4] = 0;
  return v2;
}

uint64_t sub_1AB18A7D0()
{
  v1 = *(v0 + 16);
  v2 = sub_1AB460934();
  v3 = [v1 resetIDForTopics_];

  v4 = v3;
  sub_1AB0D4408(v4);
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  v8 = swift_allocObject();
  v8[2] = nullsub_1;
  v8[3] = 0;
  v8[4] = v5;
  v10[0] = sub_1AB18B118;
  v10[1] = v8;
  v10[2] = sub_1AB18B124;
  v10[3] = v5;
  sub_1AB01494C(v12, v11);
  v11[40] = 0;
  swift_retain_n();

  sub_1AB0D482C(v10);

  sub_1AB014AC0(v10, &unk_1EB439860);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v5;
}

uint64_t sub_1AB18A978(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437538);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  v8 = *(v3 + 16);
  v9 = sub_1AB460514();
  if (a3)
  {
    sub_1AB09A670(a3);
    a3 = sub_1AB4602D4();
  }

  v10 = [v8 idFieldsForTopic:v9 options:a3];

  v13[4] = sub_1AB18B110;
  v13[5] = v5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AB09C234;
  v13[3] = &block_descriptor_6;
  v11 = _Block_copy(v13);

  [v10 addFinishBlock_];
  _Block_release(v11);

  return v5;
}

void sub_1AB18AB28(uint64_t a1, id a2)
{
  if (a1)
  {
    sub_1AB4602E4();
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    sub_1AB18AED4();
    v3 = swift_allocError();
    *v4 = 1;
  }

  v5 = a2;
  sub_1AB2A14F4(v3);
}

uint64_t sub_1AB18AC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437530);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v4 = *(v0 + 16);
  v5 = sub_1AB460514();
  sub_1AB0BA124(v3);
  v6 = sub_1AB4602D4();

  v7 = [v4 secretValueForNamespace:v5 options:v6];

  v10[4] = sub_1AB18B108;
  v10[5] = v1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AB09C234;
  v10[3] = &block_descriptor_6;
  v8 = _Block_copy(v10);

  [v7 addFinishBlock_];
  _Block_release(v8);

  return v1;
}

void sub_1AB18ADC4(void *a1, id a2)
{
  if (a1)
  {
    v3 = sub_1AB460544();
    v5 = v4;
    v11 = a1;
    sub_1AB42F144(v3, v5);

    v6 = v11;
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1AB18AED4();
      v7 = swift_allocError();
      v9 = v8;
      a2 = 0;
      *v9 = 1;
    }

    v10 = a2;
    sub_1AB2A241C(v7);
    v6 = v7;
  }
}

unint64_t sub_1AB18AED4()
{
  result = qword_1EB437520;
  if (!qword_1EB437520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437520);
  }

  return result;
}

void sub_1AB18AF28(uint64_t *a1, void (*a2)(uint64_t *))
{
  v2 = *a1;
  a2(&v2);
  sub_1AB42EC48();
}

uint64_t sub_1AB18AFB4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x6469746E65696C63;
  }

  else
  {
    v5 = 0x646972657375;
  }

  if (v4)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*a2)
  {
    v7 = 0x6469746E65696C63;
  }

  else
  {
    v7 = 0x646972657375;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {

    goto LABEL_20;
  }

  v10 = sub_1AB461DA4();

  if (v10)
  {
LABEL_20:
    if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }

    v11 = type metadata accessor for MTMetricsIdentifier();
    if ((sub_1AB45F974() & 1) == 0 || (sub_1AB45F974() & 1) == 0)
    {
      return 0;
    }

    v12 = *(v11 + 32);
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    if (v13 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for MTStandardIDServiceWrapper.IDOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MTStandardIDServiceWrapper.IDOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AB18B28C()
{
  sub_1AB45F9B4();
  if (v0 <= 0x3F)
  {
    sub_1AB18B328();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB18B328()
{
  if (!qword_1EB4353D0)
  {
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4353D0);
    }
  }
}

unint64_t sub_1AB18B37C()
{
  result = qword_1EB432558;
  if (!qword_1EB432558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432558);
  }

  return result;
}

unint64_t sub_1AB18B3D4()
{
  result = qword_1EB437568;
  if (!qword_1EB437568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437568);
  }

  return result;
}

uint64_t sub_1AB18B428()
{
  v0 = sub_1AB4619B4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t URLExpression.MatchResult.raw.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AB45F764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLExpression.MatchResult.scheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLExpression.MatchResult() + 20));

  return v1;
}

uint64_t type metadata accessor for URLExpression.MatchResult()
{
  result = qword_1EB437588;
  if (!qword_1EB437588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLExpression.MatchResult.host.getter()
{
  v1 = *(v0 + *(type metadata accessor for URLExpression.MatchResult() + 24));

  return v1;
}

uint64_t URLExpression.MatchResult.path.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for URLExpression.MatchResult() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  v7 = v4;
}

uint64_t URLExpression.MatchResult.query.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for URLExpression.MatchResult() + 32));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

void URLExpression.init(schemePattern:hostPattern:pathPattern:queryPattern:)(uint64_t a1@<X6>, uint64_t a2@<X7>, void *a3@<X8>, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v11 = sub_1AB461614();
  v13 = sub_1AB322C10(v11, v12);
  if (v7)
  {
  }

  else
  {
    v15 = v13;
    v16 = v14;

    v17 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v18 = sub_1AB0C5760(v15, v16, 0);
    v19 = sub_1AB461614();
    v21 = sub_1AB322C10(v19, v20);
    v23 = v22;

    v24 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v25 = sub_1AB0C5760(v21, v23, 0);
    PathExpression.init(pattern:)(a1, a2, a4, &v28);
    v26 = v28;
    QueryExpression.init(pattern:)(a5, a6, a7, &v28);
    v27 = v28;
    *a3 = v18;
    a3[1] = v25;
    a3[2] = v26;
    a3[3] = v27;
  }
}

uint64_t URLExpression.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v72 - v6;
  v8 = sub_1AB45F3E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(v2 + 8);
  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  sub_1AB45F324();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1AB18BE28(v7);
    matched = type metadata accessor for URLExpression.MatchResult();
    v17 = *(*(matched - 8) + 56);
    v18 = a2;
    return v17(v18, 1, 1, matched);
  }

  v76 = v14;
  v77 = v13;
  v75 = a1;
  v81 = a2;
  (*(v9 + 32))(v11, v7, v8);
  v19 = sub_1AB45F3B4();
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21;
  }

  v24 = 7;
  if (((v22 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
  {
    v24 = 11;
  }

  v25 = v24 | (v23 << 16);
  v26 = sub_1AB460514();
  v85 = v25;
  v82 = v21;
  v83 = v22;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437578);
  v28 = sub_1AB18BE90();
  v29 = sub_1AB0273A8();
  v79 = v28;
  v80 = v27;
  v78 = v29;
  v30 = sub_1AB4612F4();
  [v12 rangeOfFirstMatchInString:v26 options:0 range:{v30, v31}];

  sub_1AB460FD4();
  if (v32)
  {
    (*(v9 + 8))(v11, v8);
LABEL_27:

LABEL_28:
    matched = type metadata accessor for URLExpression.MatchResult();
    v17 = *(*(matched - 8) + 56);
    v18 = v81;
    return v17(v18, 1, 1, matched);
  }

  v74 = v15;
  v33 = sub_1AB45F344();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35;
  }

  v38 = 7;
  if (((v36 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
  {
    v38 = 11;
  }

  v39 = v38 | (v37 << 16);
  v40 = sub_1AB460514();
  v85 = v39;
  v82 = v35;
  v83 = v36;

  v41 = sub_1AB4612F4();
  [v77 rangeOfFirstMatchInString:v40 options:0 range:{v41, v42}];

  v77 = v35;
  sub_1AB460FD4();
  if (v43)
  {
    (*(v9 + 8))(v11, v8);

    goto LABEL_27;
  }

  v74 = v74;
  v45 = sub_1AB45F364();
  v47 = v45;
  v48 = v46;
  v49 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v49 = v45;
  }

  v50 = 7;
  if (((v46 >> 60) & ((v45 & 0x800000000000000) == 0)) != 0)
  {
    v50 = 11;
  }

  v51 = v50 | (v49 << 16);
  v52 = sub_1AB460514();
  v85 = v51;
  v73 = v47;
  v82 = v47;
  v83 = v48;

  v53 = sub_1AB4612F4();
  v54 = v74;
  v56 = [v74 firstMatchInString:v52 options:0 range:{v53, v55}];

  if (!v56)
  {

    (*(v9 + 8))(v11, v8);
    goto LABEL_28;
  }

  v80 = v48;
  v85 = v76;

  v58 = MEMORY[0x1AC59A6D0](v57);
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0xE000000000000000;
  }

  QueryExpression.match(_:)(v58, v60, &v82);

  (*(v9 + 8))(v11, v8);
  v61 = v82;
  if (!v82)
  {

    goto LABEL_28;
  }

  v63 = v83;
  v62 = v84;
  v64 = sub_1AB45F764();
  v65 = v81;
  (*(*(v64 - 8) + 16))(v81, v75, v64);
  v66 = type metadata accessor for URLExpression.MatchResult();
  v67 = (v65 + v66[5]);
  *v67 = v21;
  v67[1] = v22;
  v68 = (v65 + v66[6]);
  *v68 = v77;
  v68[1] = v36;
  v69 = (v65 + v66[7]);
  v70 = v73;
  *v69 = v56;
  v69[1] = v70;
  v69[2] = v80;
  v71 = (v65 + v66[8]);
  *v71 = v61;
  v71[1] = v63;
  v71[2] = v62;
  return (*(*(v66 - 1) + 56))(v65, 0, 1, v66);
}

uint64_t sub_1AB18BE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AB18BE90()
{
  result = qword_1EB437580;
  if (!qword_1EB437580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB437578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB437580);
  }

  return result;
}

uint64_t sub_1AB18BF2C()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  SyncEvent.init()();
  return v0;
}

uint64_t SyncEvent.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  type metadata accessor for EventSubscription();
  *(v0 + 24) = sub_1AB4609A4();
  return v0;
}

id SyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EventSubscription.init<A>(_:)(v7, a2, &v13);
  v9 = v13;
  v10 = *(v3 + 16);
  [v10 lock];
  sub_1AB18C1D4();
  result = [v10 unlock];
  *a3 = v9;
  return result;
}

uint64_t sub_1AB18C1D4()
{
  swift_beginAccess();
  type metadata accessor for EventSubscription();
  sub_1AB460A64();

  sub_1AB460A14();
  return swift_endAccess();
}

id SyncEvent.removeObserver(_:)()
{
  v1 = *(v0 + 16);
  [v1 lock];
  sub_1AB18C310();

  return [v1 unlock];
}

uint64_t sub_1AB18C310()
{
  swift_beginAccess();
  type metadata accessor for EventSubscription();
  sub_1AB460A64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1AB460F74();
  if (v1 != 1)
  {
    swift_beginAccess();
    sub_1AB460A24();
    swift_endAccess();
  }

  return result;
}

id SyncEvent.post(_:)()
{
  v1 = *(v0 + 16);
  [v1 lock];
  sub_1AB18C4D4(v0);

  return [v1 unlock];
}

uint64_t sub_1AB18C4D4(uint64_t a1)
{
  swift_beginAccess();
  v14 = *(a1 + 24);
  type metadata accessor for EventSubscription();
  v2 = sub_1AB460A64();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC59BB60](&v12, v2, WitnessTable);
  v15 = v12;
  sub_1AB4618D4();
  sub_1AB4618A4();
  sub_1AB4618C4();
  sub_1AB4618B4();
  v4 = v13;
  if (v13)
  {
    v5 = v12;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = v4;
      if (EventSubscription.isValid.getter() & 1) != 0 && (v12 = v4, EventSubscription.notify(_:)(), v12 = v4, (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AB2B0528(0, *(v6 + 2) + 1, 1, v6);
        }

        v8 = *(v6 + 2);
        v7 = *(v6 + 3);
        if (v8 >= v7 >> 1)
        {
          v6 = sub_1AB2B0528((v7 > 1), v8 + 1, 1, v6);
        }

        *(v6 + 2) = v8 + 1;
        *&v6[8 * v8 + 32] = v5;
      }

      sub_1AB4618B4();
      v5 = v12;
      v4 = v13;
    }

    while (v13);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v6 + 2);
  if (!v10)
  {
  }

  while (v10 <= *(v6 + 2))
  {
    v11 = v10 - 1;
    swift_beginAccess();
    sub_1AB460A24();
    swift_endAccess();

    v10 = v11;
    if (!v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t SandboxExtensionFileAsset.filePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1AB18C7FC()
{
  if (*v0)
  {
    return 0x68746150656C6966;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1AB18C83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001AB500810 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x68746150656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1AB18C924(uint64_t a1)
{
  v2 = sub_1AB18CEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB18C960(uint64_t a1)
{
  v2 = sub_1AB18CEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtensionFileAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB18CEE0();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v37) = 0;
  sub_1AB18CF40();
  sub_1AB461AC4();
  v10 = v42;
  v35 = v41;
  v32 = v43;
  v33 = v44;
  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v30 = v45;
  v31 = v44;
  v29[1] = __swift_project_boxed_opaque_existential_1Tm(&v41, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4720;
  v46 = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
  v12._countAndFlagsBits = 0xD000000000000033;
  v12._object = 0x80000001AB500740;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v40[3] = MEMORY[0x1E69E6158];
  v40[0] = v35;
  v40[1] = v10;
  sub_1AB01522C(v40, v36);
  v37 = 0u;
  v38 = 0u;

  sub_1AB0169C4(v36, &v37);
  v39 = 2;
  v13 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = a2;
  v34 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v46 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[40 * v16];
  v18 = v37;
  v19 = v38;
  v17[64] = v39;
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  v46 = v13;
  sub_1AB0167A8(v40);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v11 + 32) = v46;
  Logger.debug(_:)(v11, v31, v30);

  __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  v41 = v35;
  v42 = v34;
  v43 = v32;
  v44 = v33;
  v21 = SandboxExtensionToken.consume()();

  if (!v21)
  {
    v22 = sub_1AB4616B4();
    swift_allocError();
    v35 = v23;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    v24 = v35;
    sub_1AB461694();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    swift_willThrow();
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v41) = 1;
  v25 = sub_1AB461A84();
  v27 = v26;
  (*(v6 + 8))(v8, v5);
  v28 = v29[0];
  *v29[0] = v25;
  *(v28 + 8) = v27;
  *(v28 + 16) = v21;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 1;

  sub_1AB18D714(v21, 0, 0, 0, 1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1AB18CF34(v21, 0, 0, 0, 1);
}

unint64_t sub_1AB18CEE0()
{
  result = qword_1EB433B00;
  if (!qword_1EB433B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B00);
  }

  return result;
}

uint64_t sub_1AB18CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_1AB18CF40()
{
  result = qword_1EB433C38;
  if (!qword_1EB433C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C38);
  }

  return result;
}

uint64_t SandboxExtensionFileAsset.encode(to:)(void *a1)
{
  v56 = sub_1AB4605C4();
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4375A0);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v47 - v8;
  v10 = *(v1 + 8);
  v58 = *v1;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v15 = *(v1 + 40);
    v16 = *(v1 + 32);
    v57 = sub_1AB4616E4();
    v55 = swift_allocError();
    v18 = v17;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8) + 48);
    v18[3] = &type metadata for SandboxExtensionFileAsset;
    v19 = swift_allocObject();
    *v18 = v19;
    *(v19 + 16) = v58;
    *(v19 + 24) = v10;
    *(v19 + 32) = v11;
    *(v19 + 40) = v12;
    *(v19 + 48) = v16;
    *(v19 + 56) = v15;
    *(v19 + 64) = 1;
    v20 = a1[3];
    v58 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v20);

    sub_1AB18D714(v11, v12, v16, v15, 1);
    sub_1AB462234();
    sub_1AB461694();
    (*(*(v57 - 8) + 104))(v18, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }

  else
  {
    v54 = v2;
    v55 = v7;
    v48 = HIDWORD(v11);
    v50 = HIDWORD(v12);
    v52 = HIDWORD(v14);
    v47 = v12;
    v22 = a1[3];
    v51 = HIDWORD(v13);
    v23 = a1;
    v49 = v13;
    v24 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v23, v22);
    sub_1AB18CEE0();
    v53 = v9;
    sub_1AB462274();
    v25 = v58;
    v64 = v58;
    v65 = v10;
    sub_1AB460594();
    sub_1AB0273A8();
    sub_1AB461464();
    (*(v4 + 8))(v6, v56);
    v64 = __PAIR64__(v48, v11);
    v65 = __PAIR64__(v50, v47);
    v66 = __PAIR64__(v52, v24);
    v67 = __PAIR64__(v51, v49);
    v26 = sandbox_extension_issue_file_to_process();

    v27 = v10;
    if (v26)
    {
      v28 = v25;
      v29 = sub_1AB460704();
      v31 = v30;

      free(v26);
      v56 = v27;
    }

    else
    {
      v29 = 0;
      v31 = 0;
      v28 = 0;
      v56 = 0;
    }

    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v32 = v67;
    v52 = v68;
    v51 = __swift_project_boxed_opaque_existential_1Tm(&v64, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AB4D4720;
    v69 = sub_1AB0168A8(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v34._object = 0x80000001AB5007F0;
    v34._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    if (v31)
    {

      v35 = v29;
      v36 = v31;
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v63[3] = MEMORY[0x1E69E6158];
    v63[0] = v35;
    v63[1] = v36;
    sub_1AB01522C(v63, v59);
    v60 = 0u;
    v61 = 0u;
    sub_1AB0169C4(v59, &v60);
    v62 = 2;
    v37 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[40 * v39];
    v41 = v60;
    v42 = v61;
    v40[64] = v62;
    *(v40 + 2) = v41;
    *(v40 + 3) = v42;
    v69 = v37;
    sub_1AB0167A8(v63);
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    *(v33 + 32) = v69;
    Logger.debug(_:)(v33, v32, v52);

    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    v64 = v29;
    v65 = v31;
    v66 = v28;
    v67 = v56;
    LOBYTE(v60) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4375A8);
    sub_1AB18D720();
    v44 = v57;
    v45 = v53;
    v46 = v54;
    sub_1AB461BF4();
    if (v46)
    {
      (*(v55 + 8))(v45, v44);
      return sub_1AB158004(v29, v31);
    }

    else
    {
      sub_1AB158004(v29, v31);
      LOBYTE(v64) = 1;
      sub_1AB461BB4();
      return (*(v55 + 8))(v45, v44);
    }
  }
}

uint64_t sub_1AB18D714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_1AB18D720()
{
  result = qword_1EB4375B0;
  if (!qword_1EB4375B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4375A8);
    sub_1AB18D7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375B0);
  }

  return result;
}

unint64_t sub_1AB18D7A4()
{
  result = qword_1EB4375B8;
  if (!qword_1EB4375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375B8);
  }

  return result;
}

uint64_t sub_1AB18D804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1AB18D84C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB18D8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AB18D8F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AB18D96C()
{
  result = qword_1EB4375C0;
  if (!qword_1EB4375C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375C0);
  }

  return result;
}

unint64_t sub_1AB18D9C4()
{
  result = qword_1EB433AF0;
  if (!qword_1EB433AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AF0);
  }

  return result;
}

unint64_t sub_1AB18DA1C()
{
  result = qword_1EB433AF8;
  if (!qword_1EB433AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AF8);
  }

  return result;
}

uint64_t MetricsContextEnableRequirements.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB18DB0C()
{
  result = qword_1EB432EC0;
  if (!qword_1EB432EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432EC0);
  }

  return result;
}

uint64_t Models.DeepLinkDestination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v8);
  v10 = v6;
  static AnyActionTypes.makeInstance(byDeserializing:using:)(v8, &v10, v9);
  sub_1AB066D84(a1);
  sub_1AB066D84(v8);

  if (!v3)
  {
    return sub_1AB0149B0(v9, a3);
  }

  return result;
}

uint64_t sub_1AB18DC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AB461DA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AB18DCB8(uint64_t a1)
{
  v2 = sub_1AB18DF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB18DCF4(uint64_t a1)
{
  v2 = sub_1AB18DF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.DeepLinkDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4375C8);
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB18DF28();
  sub_1AB462224();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v8 = sub_1AB462214();
    sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v8);

    sub_1AB18DF7C(v11);
    (*(v14 + 8))(v7, v5);
    sub_1AB0149B0(v11, v12);
    v9 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB18DF28()
{
  result = qword_1EB4375D0;
  if (!qword_1EB4375D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375D0);
  }

  return result;
}

uint64_t sub_1AB18DF7C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CodeByKind();
  sub_1AB461B04();
  swift_getWitnessTable();
  result = sub_1AB461AC4();
  if (!v1)
  {
    return sub_1AB0149B0(&v4, a1);
  }

  return result;
}

uint64_t Models.DeepLinkDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4375D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB18DF28();
  sub_1AB462274();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1AB462264();
  sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v6);

  sub_1AB18E20C(v8[1]);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AB18E20C(uint64_t a1)
{
  sub_1AB01494C(a1, v3);
  CodeByKind.init(wrappedValue:)(v3, v4);
  sub_1AB461C14();
  v1 = type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  sub_1AB461BF4();
  return (*(*(v1 - 8) + 8))(v4, v1);
}

uint64_t Models.DeepLinkDestination.segue.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_1AB0149B0(a1, v1);
}

unint64_t sub_1AB18E3F8()
{
  result = qword_1EB4375E0;
  if (!qword_1EB4375E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375E0);
  }

  return result;
}

unint64_t sub_1AB18E450()
{
  result = qword_1EB4375E8;
  if (!qword_1EB4375E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375E8);
  }

  return result;
}

unint64_t sub_1AB18E4A8()
{
  result = qword_1EB4375F0;
  if (!qword_1EB4375F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4375F0);
  }

  return result;
}

unint64_t MetricsFieldsAggregator.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = sub_1AB028040(MEMORY[0x1E69E7CC0]);
  result = sub_1AB028064(v2);
  a1[1] = result;
  return result;
}

uint64_t sub_1AB18E53C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB18E5A8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
  v1 = *(v0 + 8);

  return v1();
}

double MetricsFieldsAggregator.init(bag:accountProvider:device:bundle:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *a1;
  v16[3] = type metadata accessor for Unstable.Accounts();
  v16[4] = &protocol witness table for Unstable.Accounts;
  v16[0] = a2;
  *&v17 = v7;
  swift_unknownObjectRetain();
  v8 = a3;
  sub_1AB0281A8(&v17, v8, &v12);
  v17 = v12;
  if (qword_1ED4D0C18 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED4D3EC8;
  sub_1AB01494C(v16, &v12 + 8);
  *&v12 = v9;
  swift_bridgeObjectRetain_n();
  sub_1AB036C6C(&v12, 1682535268, 0xE400000000000000);
  sub_1AB039450(&v12);
  if (qword_1EB435750 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB46C258;
  sub_1AB01494C(v16, &v12 + 8);
  *&v12 = v10;

  sub_1AB0357BC(&v12, 0x64656E6769537369, 0xEA00000000006E49);
  sub_1AB0394A4(&v12);
  sub_1AB01494C(v16, &v12 + 8);
  *&v12 = v9;
  sub_1AB035BBC(&v12, 0xD000000000000010, 0x80000001AB4FEB00);
  sub_1AB036010(&v12);
  sub_1AB01494C(v16, v15);
  *&v12 = 0x6449746E65696C63;
  *(&v12 + 1) = 0xE800000000000000;
  v13 = 0x646E655265676170;
  v14 = 0xEA00000000007265;
  v15[5] = v7;
  sub_1AB0394F8(&v12, 0xD000000000000012, 0x80000001AB4FF980);

  sub_1AB036064(&v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  result = *&v17;
  *a4 = v17;
  return result;
}

double static MetricsFieldsAggregator.default.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *&v23 = sub_1AB028040(MEMORY[0x1E69E7CC0]);
  *(&v23 + 1) = sub_1AB028064(v2);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  sub_1AB03837C(v4, 7368801, 0xE300000000000000, &v23, &type metadata for AppMetricsFieldProvider, &protocol witness table for AppMetricsFieldProvider, &unk_1F1FF8BD0, sub_1AB0223E4);

  sub_1AB0363D8(0x6D6954746E657665, 0xE900000000000065, &v23, &type metadata for EventTimeMetricsFieldProvider, &protocol witness table for EventTimeMetricsFieldProvider, &unk_1F1FF8BA8, sub_1AB0223E4);
  if (qword_1ED4D1060 != -1)
  {
    swift_once();
  }

  sub_1AB038740(v5, 0x7974696361706163, 0xE800000000000000, &v23, &type metadata for CapacityMetricsFieldsProvider, &protocol witness table for CapacityMetricsFieldsProvider, &unk_1F1FF8B80, sub_1AB0223E4);

  if (qword_1EB435750 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB46C258;

  MainScreenSize = JEGestaltGetMainScreenSize();
  v9 = v8;
  MainScreenScale = JEGestaltGetMainScreenScale();
  sub_1AB036810(v6, 0x6E6565726373, 0xE600000000000000, MainScreenSize, v9, MainScreenScale);

  sub_1AB0363D8(0x6E496D6574737973, 0xEA00000000006F66, &v23, &type metadata for SystemInfoMetricsFieldsProvider, &protocol witness table for SystemInfoMetricsFieldsProvider, &unk_1F1FF8B08, sub_1AB0223E4);
  type metadata accessor for PageHistoryFieldProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437600);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v2;
  *(v11 + 24) = v12;
  sub_1AB038B1C(v11, 0x7473694865676170, 0xEB0000000079726FLL);

  v13 = sub_1AB029018(&unk_1F1FF3528, &qword_1EB437638);
  sub_1AB0360C8(&unk_1F1FF3548);
  sub_1AB038740(v13, 0x676E696C706D6173, 0xE800000000000000, &v23, &type metadata for XPSamplingFieldsProvider, &protocol witness table for XPSamplingFieldsProvider, &unk_1F1FF8AB8, sub_1AB0223E4);

  v14 = [v3 mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = sub_1AB460544();
    v18 = v17;

    if (v16 == 0xD000000000000011 && 0x80000001AB500860 == v18)
    {
    }

    else
    {
      v19 = sub_1AB461DA4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_1AB038740(v20, 0x6E65674172657375, 0xE900000000000074, &v23, &type metadata for UserAgentFieldProvider, &protocol witness table for UserAgentFieldProvider, &unk_1F1FF89F0, sub_1AB01A8D8);
  }

LABEL_11:
  sub_1AB038EFC(1, 0x6973736572706D69, 0xEB00000000736E6FLL, &v23, &type metadata for ImpressionsMetricsFieldsProvider, &protocol witness table for ImpressionsMetricsFieldsProvider, &unk_1F1FF8A90, sub_1AB0223E4);
  sub_1AB1910EC(0, 0x65676175676E616CLL, 0xE900000000000073);
  sub_1AB0370C4(0, 0, 0x6C65694665676170, 0xEA00000000007364);

  if (qword_1ED4D0C20 != -1)
  {
    swift_once();
  }

  sub_1AB038740(v21, 0x7542746E65696C63, 0xEF65707954646C69, &v23, &type metadata for ClientBuildTypeFieldProvider, &protocol witness table for ClientBuildTypeFieldProvider, &unk_1F1FF8A18, sub_1AB0223E4);

  result = *&v23;
  *a1 = v23;
  return result;
}

uint64_t _s9JetEngine23MetricsFieldsAggregatorV19removeOptInProvider10forRequestyAA0c14FieldInclusionK0V_tF_0(void *a1)
{
  v2 = v1;
  v3 = sub_1AB0370A8(*a1, a1[1]);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v9 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB06A9CC();
      v7 = v9;
    }

    sub_1AB0149B0((*(v7 + 56) + 40 * v5), v10);
    sub_1AB18FAE0(v5, v7);
    *v2 = v7;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  return sub_1AB014AC0(v10, &qword_1EB4375F8);
}

uint64_t _s9JetEngine23MetricsFieldsAggregatorV21removingOptInProvider10forRequestAcA0c14FieldInclusionK0V_tF_0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  sub_1AB1770FC(v5);
  return sub_1AB014AC0(v5, &qword_1EB4375F8);
}

uint64_t sub_1AB18EFBC(void *a1, void *a2, uint64_t (*a3)(void *, void *, uint64_t, uint64_t, uint64_t))
{
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  return a3(v8, v10, v3, v6, v7);
}

uint64_t _s9JetEngine23MetricsFieldsAggregatorV20removeOptOutProvider10forRequestyAA0c14FieldExclusionK0V_tF_0(void *a1)
{
  v2 = v1;
  v3 = sub_1AB0370A8(*a1, a1[1]);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 8);
    v9 = *(v2 + 8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB06983C();
      v7 = v9;
    }

    sub_1AB0149B0((*(v7 + 56) + 40 * v5), v10);
    sub_1AB18FAE0(v5, v7);
    *(v2 + 8) = v7;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  return sub_1AB014AC0(v10, &qword_1EB4375F8);
}

uint64_t _s9JetEngine23MetricsFieldsAggregatorV22removingOptOutProvider10forRequestAcA0c14FieldExclusionK0V_tF_0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  sub_1AB1770BC(v5);
  return sub_1AB014AC0(v5, &qword_1EB4375F8);
}

uint64_t sub_1AB18F158(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v10 = sub_1AB462104();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1AB18F308(int64_t a1, uint64_t a2)
{
  v4 = sub_1AB461864();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1AB461504();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_1AB460444();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_1AB18F5BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v10 = sub_1AB462104();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18F78C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB02B4BC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1AB461524();
      result = sub_1AB02B2E4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18F930(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v9 = sub_1AB462104();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18FAE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v11 = sub_1AB462104();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18FC9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1AB4620A4();
      if (v9)
      {
        MEMORY[0x1AC59D3F0](1);

        sub_1AB460684();
      }

      else
      {
        MEMORY[0x1AC59D3F0](0);
      }

      v10 = sub_1AB462104();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18FE68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v9);
      result = sub_1AB462104();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB18FFFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v11 = sub_1AB462104();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB1901CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v9 = sub_1AB462104();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB19037C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v9 = sub_1AB462104();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1AB19052C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    while (1)
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v9 = sub_1AB462104();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB190718(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();
      sub_1AB460684();

      result = sub_1AB462104();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB1909A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1AB462094();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB190B14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB4620A4();

      sub_1AB460684();
      v12 = sub_1AB462104();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB190CCC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB02B4BC(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_1AB461524();
      result = sub_1AB02B2E4(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1AB190E70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v25 = ~v5;
    v26 = a2 + 64;
    v24 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      v7 = *(a2 + 48) + 56 * v6;
      v8 = *(v7 + 8);
      v9 = *(v7 + 48);
      sub_1AB4620A4();
      sub_1AB4620C4();

      if (v8)
      {

        sub_1AB460684();
      }

      sub_1AB460684();
      sub_1AB4620C4();
      if (v9)
      {
        sub_1AB460684();
      }

      v10 = sub_1AB462104();

      v11 = v10 & v25;
      if (v3 >= v24)
      {
        v4 = v26;
        if (v11 < v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v26;
        if (v11 >= v24)
        {
          goto LABEL_14;
        }
      }

      if (v3 >= v11)
      {
LABEL_14:
        v12 = *(a2 + 48);
        v13 = v12 + 56 * v3;
        v14 = (v12 + 56 * v6);
        if (v3 != v6 || v13 >= v14 + 56)
        {
          v15 = *v14;
          v16 = v14[1];
          v17 = v14[2];
          *(v13 + 48) = *(v14 + 6);
          *(v13 + 16) = v16;
          *(v13 + 32) = v17;
          *v13 = v15;
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
      v6 = (v6 + 1) & v25;
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

uint64_t sub_1AB1910EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[3] = &type metadata for LanguagesMetricFieldProvider;
  v32[4] = &protocol witness table for LanguagesMetricFieldProvider;
  v32[0] = a1;
  sub_1AB01494C(v32, &v27);

  sub_1AB034DC0(&v27, a2, a3, &v29);
  v5 = *(&v30 + 1);
  sub_1AB014AC0(&v29, &qword_1EB4375F8);
  if (v5)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v26 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001AB5008A0;
    v8._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v28 = &type metadata for MetricsFieldInclusionRequest;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_1AB01522C(&v27, v25);
    v29 = 0u;
    v30 = 0u;

    sub_1AB0169C4(v25, &v29);
    v31 = 1;
    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
      v26 = v9;
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v29;
    v14 = v30;
    v12[64] = v31;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v26 = v9;
    sub_1AB014AC0(&v27, &unk_1EB437E60);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v26;
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
      *&v29 = v7;
      *(&v29 + 1) = sub_1AB0223E4;
      *&v30 = v19;

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
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}