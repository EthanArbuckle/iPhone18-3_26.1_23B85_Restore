unint64_t sub_1D18F2D28()
{
  result = qword_1EC646A40;
  if (!qword_1EC646A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A40);
  }

  return result;
}

unint64_t sub_1D18F2D80()
{
  result = qword_1EC646A48;
  if (!qword_1EC646A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A48);
  }

  return result;
}

uint64_t sub_1D18F2DD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D18F2E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D18F2E7C(uint64_t a1)
{
  v2 = *(type metadata accessor for ActionService() + 44);
  v15[2] = *(a1 + v2);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v3)
  {

LABEL_5:
    sub_1D18F2298(a1);
    if (v6)
    {
      return static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBE000);
    }

    v8 = v5;
    v14 = 0;
    v9 = &v14;
    return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v9, v8);
  }

  v4 = sub_1D1E6904C();

  if (v4)
  {
    goto LABEL_5;
  }

  v15[1] = *(a1 + v2);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v10)
  {
  }

  else
  {
    v11 = sub_1D1E6904C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D18F2360(a1);
  if (v13)
  {
    return static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBE000);
  }

  v8 = v12;
  v15[0] = 0;
  v9 = v15;
  return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v9, v8);
}

uint64_t sub_1D18F2FE8(uint64_t a1)
{
  v2 = type metadata accessor for ActionService();
  v3 = *(v2 + 44);
  LOBYTE(v14) = *(a1 + v3);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v4)
  {
  }

  else
  {
    v5 = sub_1D1E6904C();

    if ((v5 & 1) == 0)
    {
      LOBYTE(v14) = *(a1 + v3);
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v8)
      {
      }

      else
      {
        v9 = sub_1D1E6904C();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      v10 = *(a1 + *(v2 + 60));
      v14 = v10;
      v13 = -105;
      v16 = StaticCharacteristicsBag.int(for:)(&v13);
      if (v16.is_nil)
      {
        return 0;
      }

      value = v16.value;
      v14 = v10;
      v13 = 3;
      v12 = sub_1D1CE4920(&v13);
      if (v12 == 2)
      {
        return 0;
      }

      if ((v12 & 1) == 0)
      {
        return sub_1D1E6736C();
      }

      if (value != 2)
      {
        if (value == 1)
        {
          return sub_1D1E673EC();
        }

        if (value)
        {
          return 0;
        }

        return sub_1D1E673AC();
      }

      return sub_1D1E6735C();
    }
  }

  v14 = *(a1 + *(v2 + 60));
  v13 = -104;
  v15 = StaticCharacteristicsBag.int(for:)(&v13);
  if (v15.is_nil)
  {
    return 0;
  }

  v7 = v15.value;
  result = 0;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        return result;
      }

      return sub_1D1E673AC();
    }

    return sub_1D1E6735C();
  }

  if (!v7)
  {
    return sub_1D1E6736C();
  }

  if (v7 == 1)
  {
    return sub_1D1E673EC();
  }

  return result;
}

uint64_t sub_1D18F31D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18F323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    return sub_1D18F3250(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D18F3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1D18F3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    return sub_1D18F3274(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1D18F3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1D18F3284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18F32E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18F3358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v8 = *(a2 + 16);
  if (!v8)
  {

LABEL_32:
    *a3 = a1;
    a3[1] = v7;
    return result;
  }

  v60 = a2;
  v61 = v6;
  v57 = a3;
  v58 = *(a2 + 16);
  v9 = 0;
  v10 = a2 + 32;
  v11 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  while (v9 < *(a2 + 16))
  {
    sub_1D18F5324(v10, &v64);
    v13 = v65;
    v14 = [v65 v11[319]];
    v15 = [v14 v12[320]];

    if (v64 != a1)
    {
      sub_1D18F5380(&v64);
      goto LABEL_4;
    }

    v16 = v8;
    v17 = a1;
    v18 = [v13 cluster];
    v19 = [v18 unsignedIntValue];

    ClusterKind.init(rawValue:)(v19);
    v62 = v63[0];
    if (v63[0] == 30)
    {
      sub_1D18F5380(&v64);
      v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v8 = v16;
      a2 = v60;
      goto LABEL_4;
    }

    v20 = [v13 attribute];
    v21 = [v20 unsignedIntValue];

    sub_1D18C20AC(&v66, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1D171D15C(v15);
    v25 = v61[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_34;
    }

    v28 = v23;
    v59 = v21;
    if (v61[3] >= v27)
    {
      v31 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v61;
        if ((v23 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1D17395FC();
        v32 = v61;
        if ((v28 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1D17293EC(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1D171D15C(v15);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_39;
      }

      v24 = v29;
      v31 = v17;
      v32 = v61;
      if ((v28 & 1) == 0)
      {
LABEL_16:
        v33 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 2 * v24) = v15;
        *(v32[7] + 8 * v24) = v33;
        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_36;
        }

        v32[2] = v36;
      }
    }

    v37 = v31;
    v61 = v32;
    v38 = v32[7];
    v39 = *(v38 + 8 * v24);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v38 + 8 * v24);
    *(v38 + 8 * v24) = 0x8000000000000000;
    v43 = sub_1D171D278(v62);
    v44 = *(v41 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_35;
    }

    v47 = v42;
    if (*(v41 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        sub_1D17395E8();
      }
    }

    else
    {
      sub_1D1729150(v46, v40);
      v48 = sub_1D171D278(v62);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_38;
      }

      v43 = v48;
    }

    v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v50 = *(v38 + 8 * v24);
    *(v38 + 8 * v24) = v41;

    v51 = *(v38 + 8 * v24);
    a1 = v37;
    a2 = v60;
    v8 = v58;
    if ((v47 & 1) == 0)
    {
      v52 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
      v51[(v43 >> 6) + 8] |= 1 << v43;
      *(v51[6] + v43) = v62;
      *(v51[7] + 8 * v43) = v52;
      v53 = v51[2];
      v35 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v35)
      {
        goto LABEL_37;
      }

      v51[2] = v54;
    }

    v55 = v51[7] + 8 * v43;
    sub_1D1B0DC1C(v63, v59);
    sub_1D18F5380(&v64);
    v11 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_4:
    ++v9;
    v10 += 56;
    if (v8 == v9)
    {

      a3 = v57;
      v7 = v61;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1D1E690FC();
  __break(1u);
LABEL_39:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void *sub_1D18F3768@<X0>(void *a1@<X8>)
{
  result = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1D18F3798@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void *sub_1D18F37C8()
{
  result = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  qword_1EC6BE118 = 0;
  unk_1EC6BE120 = result;
  return result;
}

uint64_t AttributeValueSet.value<A>(for:in:as:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  AttributeValueSet.value(for:in:)(a1, a2, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v7 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v7 ^ 1u, 1, a3);
}

double AttributeValueSet.value(for:in:)@<D0>(int a1@<W0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v11 = sub_1D171D15C(v10);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(*(v7 + 56) + 8 * v11);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(v15 + 24);

  v16(&v23, v14, v15);
  if (!*(v13 + 16) || (v17 = sub_1D171D278(v23), (v18 & 1) == 0) || (v19 = *(*(v13 + 56) + 8 * v17), , , !*(v19 + 16)) || (v20 = sub_1D171D4E0(a1), (v21 & 1) == 0))
  {

LABEL_11:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_1D1741970(*(v19 + 56) + 32 * v20, a3);

  return result;
}

{
  v5 = *v3;
  v6 = v3[1];
  return AttributeValueSet.value(for:in:)(a1, a2, a3);
}

uint64_t AttributeValueSet.value<A>(for:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = v4[1];
  *&v40 = *v4;
  *(&v40 + 1) = v9;
  AttributeValueSet.value(for:in:)(a1, a2, v45);
  sub_1D18C20AC(v45, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  v11 = *(a3 - 8);
  (*(v11 + 56))(a4, v10 ^ 1u, 1, a3);
  sub_1D18C20AC(v45, &v40);
  if (!v41)
  {
    sub_1D18F49A8(v45);
    v36 = &v40;
    return sub_1D18F49A8(v36);
  }

  sub_1D1742194(&v40, v44);
  if ((*(v11 + 48))(a4, 1, a3) != 1)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v44);
    v36 = v45;
    return sub_1D18F49A8(v36);
  }

  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 24))(&v40, v12, v13);
  v14 = sub_1D1A38104(a1, &v40);
  v16 = v15;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EE07A0B0);
  sub_1D1741970(v44, v43);
  sub_1D17419CC(a2, &v40);

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6833C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136446978;
    v22 = sub_1D1B1312C(v14, v16, &v39);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2082;
    v23 = sub_1D1E6940C();
    v25 = sub_1D1B1312C(v23, v24, &v39);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    sub_1D1741970(v43, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v26 = sub_1D1E678BC();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v29 = sub_1D1B1312C(v26, v28, &v39);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2082;
    v30 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    v31 = *(v30 + 8);
    v32 = sub_1D1E68FAC();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v35 = sub_1D1B1312C(v32, v34, &v39);

    *(v20 + 34) = v35;
    _os_log_impl(&dword_1D16EC000, v18, v19, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v21, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);

    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1D18F49A8(v45);
  return __swift_destroy_boxed_opaque_existential_1(&v40);
}

BOOL AttributeValueSet.supports(attribute:in:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1D18F51E0(a1, v6, v2, v4, v5);
}

BOOL AttributeValueSet.supports(attribute:in:)(int a1, void *a2)
{
  v4 = v2[1];
  v16[0] = *v2;
  v16[1] = v4;
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1D18F5DF8(v7, v16, v5, v6);
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    v11 = v9;
    if (v9-- == 0)
    {
      break;
    }

    v13 = *(v8 + v10);
    v10 += 4;
  }

  while (v13 != a1);
  v14 = v11 != 0;

  return v14;
}

uint64_t AttributeValueSet.values(for:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  if (!*(a1 + 16))
  {
    return v4;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  v127 = v3 + 64;
  v128 = a1 + 32;
  v129 = *(a1 + 16);
  while (1)
  {
    v9 = (v8 + 12 * v7);
    v135 = *(v9 + 3);
    v136 = *(v9 + 1);
    v140 = *(v9 + 8);
    v130 = v7;
    if (v9[1])
    {
      v10 = *(v3 + 16);
      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = 0;
        v14 = 0;
        v15 = v12 - 32;
        v16 = v11;
        v11[2] = v10;
        v11[3] = (v15 + (v15 >> 63)) & 0xFFFFFFFFFFFFFFFELL;
        v17 = 1 << *(v3 + 32);
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(v3 + 64);
        v20 = v11 + 4;
        v21 = (v17 + 63) >> 6;
        if (v19)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_9:
          v22 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_122;
          }

          if (v22 >= v21)
          {
            goto LABEL_130;
          }

          v19 = *(v127 + 8 * v22);
          ++v13;
        }

        while (!v19);
        v13 = v22;
LABEL_13:
        while (1)
        {
          ++v14;
          *v20 = *(*(v3 + 48) + ((v13 << 7) | (2 * __clz(__rbit64(v19)))));
          if (v14 == v10)
          {
            break;
          }

          v19 &= v19 - 1;
          ++v20;
          if (!v19)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v23 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D1E739C0;
      *(v16 + 32) = v23;
    }

    v132 = *(v16 + 16);
    if (v132)
    {
      break;
    }

LABEL_114:

    v7 = v130 + 1;
    v8 = v128;
    if (v130 + 1 == v129)
    {
      sub_1D17169C0(v5);
      sub_1D17169C0(v6);
      return v4;
    }
  }

  v24 = 0;
  v133 = v16 + 32;
  v131 = v16;
  while (1)
  {
    if (v24 >= *(v16 + 16))
    {
      goto LABEL_128;
    }

    v25 = *(v133 + 2 * v24);
    v134 = v24;
    if (v135 == 30)
    {
      if (*(v3 + 16) && (v26 = sub_1D171D15C(v25), (v27 & 1) != 0) && (v28 = *(*(v3 + 56) + 8 * v26), (v29 = *(v28 + 16)) != 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
        v30 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v30);
        v32 = 0;
        v33 = 0;
        *(v30 + 16) = v29;
        *(v30 + 24) = 2 * v31 - 64;
        v34 = 1 << *(v28 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v28 + 64);
        v37 = (v30 + 32);
        v38 = (v34 + 63) >> 6;
        if (v36)
        {
          goto LABEL_34;
        }

        do
        {
LABEL_30:
          v39 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_126;
          }

          if (v39 >= v38)
          {
            goto LABEL_131;
          }

          v36 = *(v28 + 64 + 8 * v39);
          ++v32;
        }

        while (!v36);
        v32 = v39;
LABEL_34:
        while (1)
        {
          ++v33;
          *v37 = *(*(v28 + 48) + (__clz(__rbit64(v36)) | (v32 << 6)));
          if (v33 == v29)
          {
            break;
          }

          v36 &= v36 - 1;
          ++v37;
          if (!v36)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D1E739C0;
      *(v30 + 32) = v135;
    }

    v138 = *(v30 + 16);
    if (v138)
    {
      break;
    }

LABEL_20:

    v24 = v134 + 1;
    v16 = v131;
    if (v134 + 1 == v132)
    {
      goto LABEL_114;
    }
  }

  v40 = 0;
  v139 = v30 + 32;
  v137 = v30;
  while (1)
  {
    v141 = v40;
    if (v40 >= *(v30 + 16))
    {
      goto LABEL_127;
    }

    v145 = *(v139 + v40);
    if (v140)
    {
      if (*(v3 + 16) && (v41 = sub_1D171D15C(v25), (v42 & 1) != 0) && (v43 = *(*(v3 + 56) + 8 * v41), *(v43 + 16)) && (v44 = sub_1D171D278(v145), (v45 & 1) != 0) && (v46 = *(*(v43 + 56) + 8 * v44), (v47 = *(v46 + 16)) != 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
        v48 = swift_allocObject();
        v49 = _swift_stdlib_malloc_size(v48);
        v50 = 0;
        v51 = 0;
        v52 = v49 - 32;
        if (v49 < 32)
        {
          v52 = v49 - 29;
        }

        *(v48 + 16) = v47;
        *(v48 + 24) = 2 * (v52 >> 2);
        v53 = 1 << *(v46 + 32);
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        else
        {
          v54 = -1;
        }

        v55 = v54 & *(v46 + 64);
        v56 = (v48 + 32);
        v57 = (v53 + 63) >> 6;
        if (v55)
        {
          goto LABEL_59;
        }

        do
        {
LABEL_55:
          v58 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_121;
          }

          if (v58 >= v57)
          {
            goto LABEL_129;
          }

          v55 = *(v46 + 64 + 8 * v58);
          ++v50;
        }

        while (!v55);
        v50 = v58;
LABEL_59:
        while (1)
        {
          ++v51;
          *v56 = *(*(v46 + 48) + ((v50 << 8) | (4 * __clz(__rbit64(v55)))));
          if (v51 == v47)
          {
            break;
          }

          v55 &= v55 - 1;
          ++v56;
          if (!v55)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D1E739C0;
      *(v48 + 32) = v136;
    }

    v143 = *(v48 + 16);
    if (v143)
    {
      break;
    }

LABEL_41:

    v30 = v137;
    v40 = v141 + 1;
    if (v141 + 1 == v138)
    {
      goto LABEL_20;
    }
  }

  v59 = 0;
  v142 = v48 + 32;
  while (v59 < *(v48 + 16))
  {
    v146 = *(v142 + 4 * v59);
    if (*(v3 + 16) && (v62 = sub_1D171D15C(v25), (v63 & 1) != 0) && (v64 = *(*(v3 + 56) + 8 * v62), *(v64 + 16)) && (v65 = sub_1D171D278(v145), (v66 & 1) != 0) && (v67 = *(*(v64 + 56) + 8 * v65), *(v67 + 16)) && (v68 = sub_1D171D4E0(v146), (v69 & 1) != 0))
    {
      sub_1D1741970(*(v67 + 56) + 32 * v68, v150);
    }

    else
    {
      memset(v150, 0, 32);
    }

    sub_1D18C20AC(v150, &v148);
    sub_1D17169C0(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v147[0] = v4;
    v72 = sub_1D171D15C(v25);
    v73 = v4[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_118;
    }

    v76 = v71;
    if (v4[3] >= v75)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v79 = *&v147[0];
        if (v71)
        {
          goto LABEL_87;
        }
      }

      else
      {
        sub_1D17395FC();
        v79 = *&v147[0];
        if (v76)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      sub_1D17293EC(v75, isUniquelyReferenced_nonNull_native);
      v77 = sub_1D171D15C(v25);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_133;
      }

      v72 = v77;
      v79 = *&v147[0];
      if (v76)
      {
        goto LABEL_87;
      }
    }

    v80 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
    v79[(v72 >> 6) + 8] |= 1 << v72;
    *(v79[6] + 2 * v72) = v25;
    *(v79[7] + 8 * v72) = v80;
    v81 = v79[2];
    v82 = __OFADD__(v81, 1);
    v83 = v81 + 1;
    if (v82)
    {
      goto LABEL_123;
    }

    v79[2] = v83;
LABEL_87:
    v84 = v48;
    v85 = v25;
    v86 = v3;
    v144 = v79;
    v87 = v79[7];
    sub_1D17169C0(v6);
    v88 = *(v87 + 8 * v72);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v147[0] = *(v87 + 8 * v72);
    v90 = *&v147[0];
    *(v87 + 8 * v72) = 0x8000000000000000;
    v92 = sub_1D171D278(v145);
    v93 = *(v90 + 16);
    v94 = (v91 & 1) == 0;
    v95 = v93 + v94;
    if (__OFADD__(v93, v94))
    {
      goto LABEL_119;
    }

    v96 = v91;
    if (*(v90 + 24) >= v95)
    {
      if ((v89 & 1) == 0)
      {
        sub_1D17395E8();
        v90 = *&v147[0];
      }
    }

    else
    {
      sub_1D1729150(v95, v89);
      v90 = *&v147[0];
      v97 = sub_1D171D278(v145);
      if ((v96 & 1) != (v98 & 1))
      {
        goto LABEL_132;
      }

      v92 = v97;
    }

    v99 = *(v87 + 8 * v72);
    *(v87 + 8 * v72) = v90;

    v100 = *(v87 + 8 * v72);
    v3 = v86;
    v25 = v85;
    if ((v96 & 1) == 0)
    {
      v101 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
      v100[(v92 >> 6) + 8] |= 1 << v92;
      *(v100[6] + v92) = v145;
      *(v100[7] + 8 * v92) = v101;
      v102 = v100[2];
      v82 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v82)
      {
        goto LABEL_124;
      }

      v100[2] = v103;
    }

    v104 = v100[7];
    if (v149)
    {
      sub_1D1742194(&v148, v147);
      v105 = *(v104 + 8 * v92);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v107 = *(v104 + 8 * v92);
      *(v104 + 8 * v92) = 0x8000000000000000;
      v108 = sub_1D171D4E0(v146);
      v110 = v107[2];
      v111 = (v109 & 1) == 0;
      v82 = __OFADD__(v110, v111);
      v112 = v110 + v111;
      if (v82)
      {
        goto LABEL_120;
      }

      v113 = v109;
      if (v107[3] >= v112)
      {
        v48 = v84;
        if ((v106 & 1) == 0)
        {
          v125 = v108;
          sub_1D173946C();
          v108 = v125;
        }
      }

      else
      {
        sub_1D1728EBC(v112, v106);
        v108 = sub_1D171D4E0(v146);
        if ((v113 & 1) != (v114 & 1))
        {
          goto LABEL_134;
        }

        v48 = v84;
      }

      v4 = v144;
      if (v113)
      {
        v60 = (v107[7] + 32 * v108);
        __swift_destroy_boxed_opaque_existential_1(v60);
        sub_1D1742194(v147, v60);
      }

      else
      {
        v107[(v108 >> 6) + 8] |= 1 << v108;
        *(v107[6] + 4 * v108) = v146;
        sub_1D1742194(v147, (v107[7] + 32 * v108));
        v123 = v107[2];
        v82 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v82)
        {
          goto LABEL_125;
        }

        v107[2] = v124;
      }

      v61 = *(v104 + 8 * v92);
      *(v104 + 8 * v92) = v107;
    }

    else
    {
      sub_1D18F49A8(&v148);
      v115 = *(v104 + 8 * v92);
      v116 = sub_1D171D4E0(v146);
      if (v117)
      {
        v118 = v116;
        v119 = *(v104 + 8 * v92);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *(v104 + 8 * v92);
        *(v104 + 8 * v92) = 0x8000000000000000;
        if (!v120)
        {
          sub_1D173946C();
        }

        sub_1D1742194((*(v121 + 56) + 32 * v118), v147);
        sub_1D1750920(v118, v121);
        v122 = *(v104 + 8 * v92);
        *(v104 + 8 * v92) = v121;
      }

      else
      {
        memset(v147, 0, sizeof(v147));
      }

      sub_1D18F49A8(v147);
      v48 = v84;
      v4 = v144;
    }

    ++v59;
    sub_1D18F49A8(v150);
    v6 = sub_1D18F3798;
    v5 = sub_1D18F3768;
    if (v143 == v59)
    {
      goto LABEL_41;
    }
  }

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
  sub_1D1E690FC();
  __break(1u);
LABEL_133:
  sub_1D1E690FC();
  __break(1u);
LABEL_134:
  type metadata accessor for MTRAttributeIDType(0);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D18F49A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D18F4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45[3] = a5;
  v45[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v38 = a3;
  *(&v38 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v45, v44);
  sub_1D18C20AC(v44, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v42 = 0;
  }

  v43 = v13 ^ 1;
  sub_1D18C20AC(v44, &v38);
  if (v39)
  {
    sub_1D1742194(&v38, v41);
    if (v43)
    {
      (*(a6 + 24))(&v38, a5, a6);
      v14 = sub_1D1A38104(a1, &v38);
      v16 = v15;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE07A0B0);
      sub_1D1741970(v41, v40);
      sub_1D17419CC(v45, &v38);

      v18 = sub_1D1E6707C();
      v19 = sub_1D1E6833C();

      if (!os_log_type_enabled(v18, v19))
      {

        __swift_destroy_boxed_opaque_existential_1(v40);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1D18F49A8(v44);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        goto LABEL_12;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136446978;
      v22 = sub_1D1B1312C(v14, v16, &v37);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v37);
      *(v20 + 22) = 2082;
      sub_1D1741970(v40, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v23 = sub_1D1E678BC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v26 = sub_1D1B1312C(v23, v25, &v37);

      *(v20 + 24) = v26;
      *(v20 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v27 = *(a6 + 8);
      v28 = sub_1D1E68FAC();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v31 = sub_1D1B1312C(v28, v30, &v37);

      *(v20 + 34) = v31;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    v32 = v44;
  }

  else
  {
    sub_1D18F49A8(v44);
    v32 = &v38;
  }

  sub_1D18F49A8(v32);
LABEL_12:
  v33 = v42;
  v34 = v43;
  __swift_destroy_boxed_opaque_existential_1(v45);
  LOBYTE(v45[0]) = v34;
  return v33 | (v34 << 32);
}

uint64_t sub_1D18F4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42[3] = a5;
  v42[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v36 = a3;
  *(&v36 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v42, v41);
  sub_1D18C20AC(v41, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = 0;
  }

  sub_1D18C20AC(v41, &v36);
  if (v37)
  {
    sub_1D1742194(&v36, v39);
    if (!v40)
    {
      (*(a6 + 24))(&v36, a5, a6);
      v13 = sub_1D1A38104(a1, &v36);
      v15 = v14;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE07A0B0);
      sub_1D1741970(v39, v38);
      sub_1D17419CC(v42, &v36);

      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6833C();

      if (!os_log_type_enabled(v17, v18))
      {

        __swift_destroy_boxed_opaque_existential_1(v38);
        __swift_destroy_boxed_opaque_existential_1(v39);
        sub_1D18F49A8(v41);
        __swift_destroy_boxed_opaque_existential_1(&v36);
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136446978;
      v21 = sub_1D1B1312C(v13, v15, &v35);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v35);
      *(v19 + 22) = 2082;
      sub_1D1741970(v38, &v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v38);
      v25 = sub_1D1B1312C(v22, v24, &v35);

      *(v19 + 24) = v25;
      *(v19 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      v26 = *(a6 + 8);
      v27 = sub_1D1E68FAC();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v30 = sub_1D1B1312C(v27, v29, &v35);

      *(v19 + 34) = v30;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v39);
    v31 = v41;
  }

  else
  {
    sub_1D18F49A8(v41);
    v31 = &v36;
  }

  sub_1D18F49A8(v31);
LABEL_12:
  v32 = v40;
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v32;
}

BOOL sub_1D18F51E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  v13 = a3[1];
  v22[0] = *a3;
  v22[1] = v13;
  v14 = sub_1D18F5DF8(v12, v22, a4, a5);
  v15 = *(v14 + 16);
  v16 = 32;
  do
  {
    v17 = v15;
    if (v15-- == 0)
    {
      break;
    }

    v19 = *(v14 + v16);
    v16 += 4;
  }

  while (v19 != v8);
  v20 = v17 != 0;

  (*(v9 + 8))(v12, a4);
  return v20;
}

uint64_t AttributeValueSet.clusterFeatureMap(at:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v5 = sub_1D18F5E08(v4, v1, v2, v3);
  return v5 | ((HIDWORD(v5) & 1) << 32);
}

uint64_t sub_1D18F5448(void *a1, uint64_t a2, const char *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1D18F5F10(v8, v3, v6, v7, a2, a3);
}

uint64_t AttributeValueSet.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v26 = *v1;

  v3 = DescriptorClusterDecoder.endpointIDs.getter();

  result = sub_1D18C01E0(v4, v3);
  v6 = result;
  v7 = 0;
  v8 = result + 56;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 56);
  v12 = (v9 + 63) >> 6;
  v13 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      do
      {
LABEL_8:
        v28 = *(*(v6 + 48) + ((v7 << 7) | (2 * __clz(__rbit64(v11)))));

        v15 = DescriptorClusterDecoder.deviceTypes.getter();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D177E688(0, v13[2] + 1, 1, v13);
          v13 = result;
        }

        v17 = v13[2];
        v16 = v13[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_1D177E688((v16 > 1), v17 + 1, 1, v13);
          v13 = result;
        }

        v11 &= v11 - 1;
        v13[2] = v17 + 1;
        v13[v17 + 4] = v15;
      }

      while (v11);
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v19 = v13[2];
  if (v19)
  {
    v20 = 0;
    while (v20 < v13[2])
    {
      v21 = v20 + 1;
      v22 = v13[v20 + 4];

      result = sub_1D17A4778(v23);
      v20 = v21;
      if (v19 == v21)
      {
        v18 = v27;
        goto LABEL_19;
      }
    }

    goto LABEL_23;
  }

LABEL_19:

  v24 = sub_1D17846F8(v18);

  static MatterDeviceType.primaryDeviceType(for:)(v24, a1);
}

Swift::String_optional __swiftcall AttributeValueSet.defaultName(in:)(Swift::UInt16 in)
{
  v4 = *v1;
  v3 = v1[1];
  v21 = *v1;
  v22 = v3;
  v23 = in;
  v24 = 0;
  v25 = 0;
  v26 = 0;

  v5 = DescriptorClusterDecoder.availableClusterKinds.getter();
  v6 = sub_1D17198DC(7, v5);

  if (!v6)
  {
    goto LABEL_10;
  }

  v25 = &type metadata for BasicClusterPath;
  v26 = sub_1D18F6128();
  LOWORD(v21) = in;
  BYTE2(v21) = 7;
  AttributeValueSet.value(for:in:)(0, &v21, &v19);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (!v20)
  {
    sub_1D18F49A8(&v19);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A68, &qword_1D1E81F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v21 = v4;
    v22 = v3;
    v23 = in;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v8 = DescriptorClusterDecoder.availableClusterKinds.getter();
    v9 = sub_1D17198DC(8, v8);

    if (!v9)
    {
      goto LABEL_19;
    }

    v25 = &type metadata for BasicClusterPath;
    v26 = sub_1D18F6128();
    LOWORD(v21) = in;
    BYTE2(v21) = 8;
    AttributeValueSet.value(for:in:)(0, &v21, &v19);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    if (!v20)
    {

      sub_1D18F49A8(&v19);
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A60, &qword_1D1E81F88);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_19:

LABEL_20:
      v11 = 0;
      v10 = 0;
      goto LABEL_30;
    }

    v7 = v21;
    if (v21 >> 62)
    {
      v11 = sub_1D1E6873C();
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_17;
    }

LABEL_28:
    v12 = MEMORY[0x1D3891EF0](0, v7);
    goto LABEL_18;
  }

  v7 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (!sub_1D1E6873C())
  {
LABEL_25:

    goto LABEL_19;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_17:
  v12 = *(v7 + 32);
LABEL_18:
  v13 = v12;

  v14 = [v13 value];

  v15 = sub_1D1E6781C();
  v17 = v16;

  v10 = v17;
  v11 = v15;
LABEL_30:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1D18F5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D18F617C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D18F61D4(a2, boxed_opaque_existential_1);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D18C20AC(v40, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D18C20AC(v40, &v34);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D18F49A8(v40);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x3631746E4955, 0xE600000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D18F49A8(v40);
    v28 = &v34;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v29 | (v30 << 16);
}

uint64_t sub_1D18F5E08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_1D18F4A10(65532, v10, *a2, a2[1], a3, a4);
  (*(v7 + 8))(v10, a3);
  return v11 | ((HIDWORD(v11) & 1) << 32);
}

uint64_t sub_1D18F5F10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v13 = sub_1D18F4DF0(a5, boxed_opaque_existential_1, *a2, a2[1], a3, a4);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D17419CC(v28, v27);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      v20 = *(a4 + 8);
      v21 = sub_1D1E68FAC();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v24 = sub_1D1B1312C(v21, v23, &v26);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v16, v17, a6, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v14;
}

unint64_t sub_1D18F6128()
{
  result = qword_1EC646A58;
  if (!qword_1EC646A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A58);
  }

  return result;
}

unint64_t sub_1D18F617C()
{
  result = qword_1EC646A70;
  if (!qword_1EC646A70)
  {
    type metadata accessor for ClusterPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A70);
  }

  return result;
}

uint64_t sub_1D18F61D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MatterClusterDecoder.value(for:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a3 + 8))(&v11, a2, a3);
  v8 = (*(a3 + 16))(a2, a3);
  (*(a3 + 24))(v10 + 2, a2, a3);
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v8;
  AttributeValueSet.value(for:in:)(a1, v10, a4);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  (*(a3 + 8))(&v11, a2, a3);
  v8 = (*(a3 + 16))(a2, a3);
  (*(a3 + 24))(v10 + 2, a2, a3);
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v8;
  AttributeValueSet.value(for:in:)(a1, v10, a4);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t MatterClusterDecoder.clusterPath.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = (*(a2 + 16))();
  (*(v3 + 24))(&v8, a1, v3);
  LOBYTE(v3) = v8;
  *(a3 + 24) = &type metadata for BasicClusterPath;
  result = sub_1D18F6128();
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 2) = v3;
  return result;
}

uint64_t MatterClusterDecoder.value(for:in:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  (*(a4 + 8))(&v9, a3, a4);
  AttributeValueSet.value(for:in:)(a1, a2, a5);
}

uint64_t MatterClusterDecoder.supportedAttributes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v19);
  v18[0] = v19[0];
  v18[1] = v19[1];
  v4 = (*(a2 + 16))(a1, a2);
  (*(a2 + 24))(v17 + 2, a1, a2);
  v17[3] = &type metadata for BasicClusterPath;
  v5 = sub_1D18F6128();
  v17[4] = v5;
  LOWORD(v17[0]) = v4;
  v6 = __swift_project_boxed_opaque_existential_1(v17, &type metadata for BasicClusterPath);
  v7 = sub_1D18F5DF8(v6, v18, &type metadata for BasicClusterPath, v5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D177DE70(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_1D177DE70((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      *&v10[4 * v14 + 32] = v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D17852A8(v10);

  return v15;
}

uint64_t MatterClusterDecoder.supports(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(a3 + 8))(v12, a2, a3);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v6 = (*(v3 + 16))(a2, v3);
  (*(v3 + 24))(v10 + 2, a2, v3);
  v10[3] = &type metadata for BasicClusterPath;
  v7 = sub_1D18F6128();
  v10[4] = v7;
  LOWORD(v10[0]) = v6;
  v8 = __swift_project_boxed_opaque_existential_1(v10, &type metadata for BasicClusterPath);
  LOBYTE(v3) = sub_1D18F51E0(a1, v8, v11, &type metadata for BasicClusterPath, v7);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v3 & 1;
}

Swift::Bool __swiftcall MatterClusterDecoder.supports(attribute:)(Swift::UInt32 attribute)
{
  v3 = v2;
  v4 = v1;
  (*(v2 + 8))(v21);
  v7 = v21[0];
  v6 = v21[1];
  v8 = (*(v3 + 16))(v4, v3);
  (*(v3 + 24))(v20 + 2, v4, v3);
  v20[3] = &type metadata for BasicClusterPath;
  v9 = sub_1D18F6128();
  v20[4] = v9;
  LOWORD(v20[0]) = v8;
  v19[0] = v7;
  v19[1] = v6;
  v10 = __swift_project_boxed_opaque_existential_1(v20, &type metadata for BasicClusterPath);
  v11 = sub_1D18F5DF8(v10, v19, &type metadata for BasicClusterPath, v9);
  v12 = *(v11 + 16);
  v13 = 32;
  do
  {
    v14 = v12;
    if (v12-- == 0)
    {
      break;
    }

    v16 = *(v11 + v13);
    v13 += 4;
  }

  while (v16 != attribute);
  v17 = v14 != 0;

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t AttributeValueSet.descriptorCluster(for:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  if ((a1 & 0x10000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *(a2 + 18) = 0;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

char *DescriptorClusterDecoder.endpointIDs.getter()
{
  v1 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v1;
  v18 = *(v0 + 32);
  v2 = sub_1D18F766C(3, v1 | (BYTE2(v1) << 16), v17, &qword_1EC646A88, &qword_1D1E82058);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_19:

    v16 = sub_1D1784650(v3);

    return v16;
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1D178D614(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1D3891EF0](i v4)];
        swift_unknownObjectRelease();
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D178D614((v9 > 1), v10 + 1, 1);
        }

        *(v3 + 16) = v10 + 1;
        *(v3 + 2 * v10 + 32) = v8;
      }
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = [*(v4 + v11) unsignedShortValue];
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          sub_1D178D614((v13 > 1), v14 + 1, 1);
          v12 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 2 * v14 + 32) = v12;
        v11 += 8;
        --v5;
      }

      while (v5);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t DescriptorClusterDecoder.deviceTypes.getter()
{
  v1 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v1;
  v36 = *(v0 + 32);
  v2 = sub_1D18F766C(0, v1 | (BYTE2(v1) << 16), v35, &qword_1EC646A80, &unk_1D1E82048);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_29:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_28:
  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  v6 = 0;
  v33 = v3 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v31 = v4;
  v32 = v3;
  do
  {
    v30 = v7;
    v8 = v6;
    while (1)
    {
      if (v33)
      {
        v9 = MEMORY[0x1D3891EF0](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = [v9 deviceType];
      v12 = [v11 unsignedIntValue];

      MatterDeviceType.init(rawValue:)(v12);
      v13 = v34;
      if (v34 != 28)
      {
        break;
      }

      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      v15 = v10;
      v16 = sub_1D1E6707C();
      v17 = sub_1D1E6833C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        sub_1D18F7B2C();
        v15 = v15;
        v20 = sub_1D1E678BC();
        v22 = v5;
        v23 = sub_1D1B1312C(v20, v21, &v34);

        *(v18 + 4) = v23;
        v5 = v22;
        _os_log_impl(&dword_1D16EC000, v16, v17, "(MatterDescriptorCluster): deviceType is nil. Are we missing a definition? (%s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v24 = v19;
        v4 = v31;
        v3 = v32;
        MEMORY[0x1D3893640](v24, -1, -1);
        MEMORY[0x1D3893640](v18, -1, -1);
      }

      ++v8;
      if (v6 == v5)
      {
        v7 = v30;
        goto LABEL_30;
      }
    }

    v7 = v30;
    v25 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D177E1AC(0, *(v30 + 2) + 1, 1, v30);
    }

    v27 = *(v7 + 2);
    v26 = *(v7 + 3);
    if (v27 >= v26 >> 1)
    {
      v7 = sub_1D177E1AC((v26 > 1), v27 + 1, 1, v7);
    }

    *(v7 + 2) = v27 + 1;
    v7[v27 + 32] = v13;
    v5 = v25;
  }

  while (v6 != v25);
LABEL_30:

  v28 = sub_1D17846F8(v7);

  return v28;
}

char DescriptorClusterDecoder.availableClusterKinds.getter()
{
  v22 = *v0;
  v23 = v0[1];
  v24 = *(v0 + 8);
  v25 = *(v0 + 18);
  v26 = *(v0 + 3);
  v1 = DescriptorClusterDecoder.availableClusterIDs.getter();
  v2 = v1;
  v3 = v1 + 56;
  v4 = 1 << v1[32];
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 7);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      LOBYTE(v8) = ClusterKind.init(rawValue:)(*(*(v2 + 6) + ((v9 << 8) | (4 * v11))));
      if (v21 != 30)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
    if ((v8 & 1) == 0)
    {
      v8 = sub_1D177DE5C(0, *(v10 + 16) + 1, 1, v10);
      v10 = v8;
    }

    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v20 = v13 + 1;
      v16 = v10;
      v17 = *(v10 + 16);
      v8 = sub_1D177DE5C((v14 > 1), v13 + 1, 1, v16);
      v13 = v17;
      v15 = v20;
      v10 = v8;
    }

    *(v10 + 16) = v15;
    *(v10 + v13 + 32) = v21;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      v18 = sub_1D17846C4(v10);

      LOBYTE(v8) = v18;
      return v8;
    }

    v6 = *&v3[8 * v12];
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return v8;
}

uint64_t DescriptorClusterDecoder.valueSet.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t *DescriptorClusterDecoder.init(valueSet:endpointID:)@<X0>(uint64_t *result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  *(a3 + 18) = 0;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1D18F70B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DescriptorClusterDecoder.value<A>(for:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (v4[3])
  {
    v9 = v4[4];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MatterDevice.readValue(for:in:)(a1, a2, ObjectType, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v11 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
  }

  else
  {
    v13 = *v4;
    v14 = v4[1];

    AttributeValueSet.value<A>(for:in:as:)(a1, a2, a3, a4);
  }
}

char *DescriptorClusterDecoder.availableClusterIDs.getter()
{
  v1 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v1;
  v18 = *(v0 + 32);
  v2 = sub_1D18F766C(1, v1 | (BYTE2(v1) << 16), v17, &qword_1EC646A88, &qword_1D1E82058);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_19:

    v16 = sub_1D17845DC(v3);

    return v16;
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1D178D5B4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1D3891EF0](i v4)];
        swift_unknownObjectRelease();
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D178D5B4((v9 > 1), v10 + 1, 1);
        }

        *(v3 + 16) = v10 + 1;
        *(v3 + 4 * v10 + 32) = v8;
      }
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = [*(v4 + v11) unsignedIntValue];
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          sub_1D178D5B4((v13 > 1), v14 + 1, 1);
          v12 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 4 * v14 + 32) = v12;
        v11 += 8;
        --v5;
      }

      while (v5);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t MatterDevice.descriptorCluster(for:)@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  if ((a1 & 0x10000) != 0)
  {
    LOWORD(a1) = 0;
  }

  *(v6 + 32) = a1;
  *(v6 + 34) = 0;
  *(v6 + 36) = 0;
  *(v6 + 40) = 1;
  (*(a2 + 120))(v10);

  v8 = v10[0];
  v9 = v10[1];
  *(a3 + 18) = 0;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t MatterDevice.rootDescriptorCluster.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  (*(a1 + 120))(v8);

  v6 = v8[0];
  v7 = v8[1];
  *(a2 + 18) = 0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

char *MatterDevice.allEndpointIDs.getter(uint64_t a1, uint64_t a2)
{
  MatterDevice.rootDescriptorCluster.getter(a2, &v4);
  v2 = DescriptorClusterDecoder.endpointIDs.getter();

  swift_unknownObjectRelease();
  return v2;
}

BOOL MatterDevice.supportsDiagnosticsLogs.getter(uint64_t a1, uint64_t a2)
{
  MatterDevice.rootDescriptorCluster.getter(a2, &v5);
  v2 = DescriptorClusterDecoder.availableClusterKinds.getter();

  swift_unknownObjectRelease();
  v3 = sub_1D17198DC(4, v2);

  return v3;
}

uint64_t sub_1D18F766C(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = HIWORD(a2);
  v16[3] = &type metadata for BasicClusterPath;
  v16[4] = sub_1D18F6128();
  LOWORD(v16[0]) = a2;
  BYTE2(v16[0]) = v10;
  if (a3[3])
  {
    v11 = a3[4];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MatterDevice.readValue(for:in:)(a1, v16, ObjectType, v11);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    if (swift_dynamicCast())
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = sub_1D18F778C(a1, a2 & 0xFFFFFF, *a3, a3[1], a4, a5);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_1D18F778C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a2;
  v12 = HIWORD(a2);
  v44[3] = &type metadata for BasicClusterPath;
  v44[4] = sub_1D18F6128();
  LOWORD(v44[0]) = v10;
  BYTE2(v44[0]) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *&v38 = a3;
  *(&v38 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v44, v43);
  sub_1D18C20AC(v43, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
  }

  sub_1D18C20AC(v43, &v38);
  if (v39)
  {
    sub_1D1742194(&v38, v41);
    if (!v42)
    {
      LOBYTE(v38) = BYTE2(v44[0]);
      v13 = sub_1D1A38104(a1, &v38);
      v15 = v14;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE07A0B0);
      sub_1D1741970(v41, v40);
      sub_1D17419CC(v44, &v38);

      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6833C();

      if (!os_log_type_enabled(v17, v18))
      {

        __swift_destroy_boxed_opaque_existential_1(v40);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1D18F49A8(v43);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136446978;
      v21 = sub_1D1B1312C(v13, v15, &v37);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      v22 = sub_1D1E6940C();
      v24 = sub_1D1B1312C(v22, v23, &v37);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2082;
      sub_1D1741970(v40, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v25 = sub_1D1E678BC();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v28 = sub_1D1B1312C(v25, v27, &v37);

      *(v19 + 24) = v28;
      *(v19 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v29 = BasicClusterPath.description.getter();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v32 = sub_1D1B1312C(v29, v31, &v37);

      *(v19 + 34) = v32;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    v33 = v43;
  }

  else
  {
    sub_1D18F49A8(v43);
    v33 = &v38;
  }

  sub_1D18F49A8(v33);
LABEL_12:
  v34 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v34;
}

unint64_t sub_1D18F7B2C()
{
  result = qword_1EC646A78;
  if (!qword_1EC646A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC646A78);
  }

  return result;
}

uint64_t sub_1D18F7B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D18F7BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1D18F7C28@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 path];
  v7 = [a1 error];
  if ([a1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v16[0] = v12;
  v16[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, *(&v13 + 1));
    *(&v15 + 1) = *(&v13 + 1);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(*(*(&v13 + 1) - 8) + 16))(boxed_opaque_existential_1, v8, *(&v13 + 1));

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {

    sub_1D1741A30(v16, &qword_1EC649700, &qword_1D1E6E910);
    v14 = 0u;
    v15 = 0u;
  }

  result = v14;
  v11 = v15;
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = result;
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  return result;
}

double sub_1D18F7D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x1E696F520];
  v9 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_1D171D2F0(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
LABEL_11:
    *(a4 + 48) = 0;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v11, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
LABEL_13:

    goto LABEL_11;
  }

  v14 = *MEMORY[0x1E696F500];
  v15 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_9;
  }

  v17 = sub_1D171D2F0(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v17, &v60);
  sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);

    goto LABEL_13;
  }

  v20 = v58;
  sub_1D18F847C(v58, v20, a3, &v58);

  v21 = v59;
  if (v59)
  {
    v22 = __swift_project_boxed_opaque_existential_1(&v58, v59);
    *(&v61 + 1) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v22, v21);
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    sub_1D1741A30(&v58, &qword_1EC649700, &qword_1D1E6E910);
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  v25 = *MEMORY[0x1E696F530];
  v26 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {

    goto LABEL_26;
  }

  v28 = sub_1D171D2F0(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v28, &v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v31 = v58;
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC646A90, 0x1E696ABC0);
  v32 = sub_1D1E6836C();
  v41 = v32;
  if (v32)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    v57 = v20;
    v56 = v41;
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6833C();

    if (os_log_type_enabled(v44, v45))
    {
      log = v44;
      v46 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v60 = v55;
      *v46 = 136446466;
      *&v58 = v56;
      v47 = v56;
      v48 = sub_1D1E678BC();
      v50 = sub_1D1B1312C(v48, v49, &v60);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      *&v58 = v57;
      v51 = sub_1D1E678BC();
      v53 = sub_1D1B1312C(v51, v52, &v60);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_1D16EC000, log, v45, "Manually decoded error: (%{public}s), path: (%{public}s)", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v55, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);

      sub_1D174E7C4(v31, *(&v31 + 1));
    }

    else
    {

      sub_1D174E7C4(v31, *(&v31 + 1));
    }

    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_29;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1D1E6709C();
  __swift_project_value_buffer(v33, qword_1EE07A0B0);
  sub_1D1741854(v31, *(&v31 + 1));
  v34 = sub_1D1E6707C();
  v35 = sub_1D1E6833C();
  sub_1D174E7C4(v31, *(&v31 + 1));
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v58 = v37;
    *v36 = 136446210;
    v60 = v31;
    sub_1D1741854(v31, *(&v31 + 1));
    v38 = sub_1D1E678BC();
    v40 = sub_1D1B1312C(v38, v39, &v58);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1D16EC000, v34, v35, "Report contained error data but failed to decode: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D3893640](v37, -1, -1);
    MEMORY[0x1D3893640](v36, -1, -1);

    sub_1D174E7C4(v31, *(&v31 + 1));
  }

  else
  {
    sub_1D174E7C4(v31, *(&v31 + 1));
  }

LABEL_28:
  sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
  v41 = 0;
LABEL_29:
  *a4 = a2;
  *(a4 + 8) = v20;
  result = *&v62;
  v42 = v63;
  *(a4 + 16) = v62;
  *(a4 + 32) = v42;
  *(a4 + 48) = v41;
  return result;
}

double sub_1D18F847C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1D1741C08(a3, &v18, &qword_1EC649700, &qword_1D1E6E910);
  if (v19)
  {
    goto LABEL_2;
  }

  sub_1D1741A30(&v18, &qword_1EC649700, &qword_1D1E6E910);
  v8 = [a2 attribute];
  v9 = [v8 unsignedIntValue];

  v10 = [a2 cluster];
  LODWORD(v8) = [v10 unsignedIntValue];

  ClusterKind.init(rawValue:)(v8);
  v11 = v20[0];
  if (LOBYTE(v20[0]) != 30 && sub_1D19B5758(v9, v20))
  {
    LOBYTE(v20[0]) = v11;
    sub_1D19B0CEC(v9, a1, &v18);
    if (v19)
    {
LABEL_2:
      sub_1D16EEE38(&v18, v20);
      sub_1D16EEE38(v20, a4);
      return result;
    }

    sub_1D1741A30(&v18, &qword_1EC649700, &qword_1D1E6E910);
  }

  v12 = *MEMORY[0x1E696F568];
  v13 = sub_1D1E6781C();
  if (*(a1 + 16))
  {
    v15 = sub_1D171D2F0(v13, v14);
    v17 = v16;

    if (v17)
    {
      sub_1D1741970(*(a1 + 56) + 32 * v15, a4);
      return result;
    }
  }

  else
  {
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1D18F8630@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_1D171D2F0(0xD000000000000011, 0x80000001D1EBE020), (v7 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v6, &v13);
    sub_1D1741970(&v13, v12);

    sub_1D18F7D84(v8, a2, v12, a3);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E696F578]);

    v11 = sub_1D1A10510();

    *&result = sub_1D18F7C28(v11, a2, a3).n128_u64[0];
  }

  return result;
}

uint64_t MTRAttributePath.attributeID.getter()
{
  v1 = [v0 attribute];
  v2 = [v1 unsignedIntValue];

  return v2;
}

HomeDataModel::ClusterKind_optional MTRAttributePath.clusterKind.getter()
{
  v1 = [v0 cluster];
  v2 = [v1 unsignedIntValue];

  return ClusterKind.init(rawValue:)(v2);
}

uint64_t sub_1D18F8A98()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = [v2 endpoint];
  v4 = [v3 unsignedIntValue];

  v5 = [v2 cluster];
  v6 = [v5 unsignedIntValue];

  ClusterKind.init(rawValue:)(v6);
  v7 = [v2 attribute];
  v8 = [v7 unsignedIntValue];

  if (LOBYTE(v29[0]) == 30)
  {
    v9 = [v2 cluster];
    [v9 unsignedIntValue];

    v10 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v10);

    v12 = 0x2D6E776F6E6B6E75;
    v11 = 0xE800000000000000;
    *&v29[0] = 0x2D6E776F6E6B6E75;
    *(&v29[0] + 1) = 0xE800000000000000;
    v13 = [v2 attribute];
    v14 = [v13 unsignedIntValue];

    LODWORD(v27) = v14;
    v15 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v15);

    v17 = 0x2D6E776F6E6B6E75;
    v16 = 0xE800000000000000;
    v18 = *(v1 + 48);
    if (v18)
    {
LABEL_3:
      *&v29[0] = 0;
      *(&v29[0] + 1) = 0xE000000000000000;
      v19 = v18;
      v20 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v20);

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      MEMORY[0x1D3890F70](v12, v11);

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      MEMORY[0x1D3890F70](v17, v16);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      *&v27 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E68ABC();

      return *&v29[0];
    }
  }

  else
  {
    v12 = sub_1D1E6789C();
    v11 = v22;
    v17 = sub_1D1A38104(v8, v29);
    v16 = v23;
    v18 = *(v1 + 48);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  sub_1D1741C08(v1 + 16, &v27, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v28)
  {
    sub_1D1741A30(&v27, &qword_1EC645D58, &unk_1D1E7E530);
    LODWORD(v27) = v4;
    *&v29[0] = sub_1D1E68FAC();
    *(&v29[0] + 1) = v26;
    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    MEMORY[0x1D3890F70](v12, v11);

    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    MEMORY[0x1D3890F70](v17, v16);

    MEMORY[0x1D3890F70](0x7974706D6520, 0xE600000000000000);
    return *&v29[0];
  }

  sub_1D16EEE38(&v27, v29);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  v24 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v24);

  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  MEMORY[0x1D3890F70](v12, v11);

  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  MEMORY[0x1D3890F70](v17, v16);

  MEMORY[0x1D3890F70](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  sub_1D1E68ABC();
  v25 = v27;
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D18F8F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D18F8FD4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void ActionCommand.init(command:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 accessory];
  v5 = sub_1D1E682DC();
  v7 = v6;

  if ((v7 & 1) != 0 || (v8 = [a1 clusterID], v9 = objc_msgSend(v8, sel_unsignedIntValue), v8, ClusterKind.init(rawValue:)(v9), LOBYTE(v47[0]) == 30) || (v10 = objc_msgSend(a1, sel_expectedValues)) == 0)
  {
    type metadata accessor for ActionCommand.Error(0);
    sub_1D18FA678(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error);
    swift_allocError();
    *v19 = [a1 clusterID];
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v11 = v10;
  v37 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v12 = sub_1D1E67C1C();

  v13 = [a1 commandID];
  v14 = [v13 unsignedIntValue];

  v15 = sub_1D18F96EC(v12, &unk_1EC64A340, &qword_1D1E71800);

  v16.value._rawValue = [a1 commandFields];
  if (v16.value._rawValue)
  {
    rawValue = v16.value._rawValue;
    v18 = sub_1D1E675FC();
  }

  else
  {
    v18 = 0;
  }

  v16.value._rawValue = v18;
  MatterCommandFields.init(commandFields:)(v16);
  if (LOBYTE(v47[0]) - 24 >= 4)
  {
    if (LOBYTE(v47[0]) == 11)
    {
      v41 = v15;
      v20 = v14;
      v36 = a2;
      v21 = &type metadata for StaticOnOffCluster.Command;
      v22 = sub_1D18FA3A8();
    }

    else
    {
      if (LOBYTE(v47[0]) != 17)
      {

        goto LABEL_20;
      }

      v41 = v15;
      v20 = v14;
      v36 = a2;
      v21 = &type metadata for StaticColorControlCluster.Command;
      v22 = sub_1D18FA3FC();
    }
  }

  else
  {
    v41 = v15;
    v20 = v14;
    v36 = a2;
    v21 = &type metadata for StaticRVCClusterGroup.Command;
    v22 = sub_1D18FA450();
  }

  v23 = v22;
  v43 = v47[0];
  v42 = v48;
  v24 = *(v22 + 16);
  v39 = sub_1D1E685AC();
  v40 = &v36;
  v38 = *(v39 - 8);
  v25 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v27 = &v36 - v26;

  v24(&v43, v20, v41, &v42, v21, v23);
  Description = v21[-1].Description;
  if (Description[6](v27, 1, v21) == 1)
  {

    (*(v38 + 8))(v27, v39);
LABEL_20:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_21;
  }

  *(&v45 + 1) = v21;
  v46 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  Description[4](boxed_opaque_existential_1, v27, v21);

  if (!*(&v45 + 1))
  {
LABEL_21:
    sub_1D1741A30(&v44, &qword_1EC646A98, &unk_1D1E858B0);
    type metadata accessor for ActionCommand.Error(0);
    sub_1D18FA678(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error);
    swift_allocError();
    goto LABEL_7;
  }

  sub_1D16EEE20(&v44, v47);
  v30 = [a1 accessory];
  v31 = [v30 uniqueIdentifier];

  v32 = v36;
  sub_1D1E66A5C();

  v33 = type metadata accessor for ActionCommand(0);
  *(v32 + v33[5]) = v37;
  v34 = [a1 endpointID];
  v35 = [v34 unsignedShortValue];

  *(v32 + v33[6]) = v35;
  sub_1D16EEE20(v47, v32 + v33[7]);
}

uint64_t sub_1D18F95E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D178CFF0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_1D1742194(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F96EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D178CFB0(0, v3, 0);
    v4 = v14;
    v8 = (a1 + 32);
    do
    {
      v12 = *v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      swift_dynamicCast();
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D178CFB0((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      *(v14 + 8 * v10 + 32) = v13;
      ++v8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D18F9814(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D178D010(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D010((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9944(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 56);
    do
    {
      v8 = *(v4 - 15);
      v9 = *(v4 - 1);
      v10 = *v4;
      sub_1D18F098C(*(v4 - 3), *(v4 - 16));

      swift_dynamicCast();
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178CFF0((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v4 += 4;
      *(v2 + 16) = v6 + 1;
      sub_1D1742194(&v11, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[1];
      v15 = v4[2];
      v16 = v5;
      v7 = v4[3];
      v17[0] = v4[4];
      *(v17 + 9) = *(v4 + 73);
      v8 = v4[1];
      v14[0] = *v4;
      v14[1] = v8;
      v12[8] = v15;
      v12[9] = v7;
      v13[0] = v4[4];
      *(v13 + 9) = *(v4 + 73);
      v12[6] = v14[0];
      v12[7] = v6;
      sub_1D18A9844(v14, v12);
      swift_dynamicCast();
      v18 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D178CFF0((v9 > 1), v10 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v10 + 1;
      sub_1D1742194(v12, (v2 + 32 * v10 + 32));
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9BB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D1E692CC();
      sub_1D1E6896C();
      v6 = *(v7 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_1D18F9C80(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D1E6873C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CFF0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        sub_1D1741B10(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D178CFF0((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_1D1742194(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1D1741B10(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178CFF0((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_1D1742194(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1D18F9E6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D178DA90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3891EF0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D178DA90((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_1D18FBA88();
        *(v17 + 16) = v8 + 1;
        v10 = v17 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v17 + 16);
        v13 = *(v17 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          sub_1D178DA90((v13 > 1), v12 + 1, 1);
        }

        v15 = sub_1D18FBA88();
        *(v17 + 16) = v12 + 1;
        v16 = v17 + 16 * v12;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18F9FDC(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1D18FBAF0(v9, v6, type metadata accessor for StaticService);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D178CF40((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_1D18FA678(&qword_1EC646AF0, type metadata accessor for StaticService);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_1D18FBAF0(v6, boxed_opaque_existential_1, type metadata accessor for StaticService);
      *(v8 + 16) = v12 + 1;
      sub_1D16EEE20(&v15, v8 + 40 * v12 + 32);
      sub_1D18FBB58(v6, type metadata accessor for StaticService);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t ActionCommand.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionCommand.init(accessoryID:nodeID:endpointID:matterCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ActionCommand(0);
  *(a5 + v11[5]) = a2;
  *(a5 + v11[6]) = a3;
  v12 = a5 + v11[7];

  return sub_1D16EEE20(a4, v12);
}

unint64_t sub_1D18FA3A8()
{
  result = qword_1EC646AA0;
  if (!qword_1EC646AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AA0);
  }

  return result;
}

unint64_t sub_1D18FA3FC()
{
  result = qword_1EC646AA8;
  if (!qword_1EC646AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AA8);
  }

  return result;
}

unint64_t sub_1D18FA450()
{
  result = qword_1EC646AB0;
  if (!qword_1EC646AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AB0);
  }

  return result;
}

uint64_t ActionCommand.expectedValues()()
{
  v1 = type metadata accessor for ActionCommand(0);
  v2 = (v0 + *(v1 + 28));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return MatterCommand.expectedValues(endpointID:)(*(v0 + *(v1 + 24)), v3, v4);
}

BOOL static ActionCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionCommand(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = (a1 + v4[7]);
  v6 = v5[3];
  v7 = v5[4];
  v8 = v4;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return MatterCommand.isEqual(_:)((a2 + v8[7]), v6, v7);
}

uint64_t ActionCommand.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionCommand(0);
  MEMORY[0x1D3892890](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  sub_1D1E6923C();
  v3 = (v0 + v1[7]);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v4 + 8);
  return sub_1D1E676EC();
}

uint64_t sub_1D18FA678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActionCommand.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionCommand(0);
  MEMORY[0x1D3892890](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  sub_1D1E6923C();
  v3 = (v0 + v1[7]);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = *(v4 + 8);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

BOOL sub_1D18FA7A8(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  v6 = (a1 + a3[7]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  return MatterCommand.isEqual(_:)((a2 + a3[7]), v7, v8);
}

uint64_t sub_1D18FA844(int *a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + a1[5]));
  v3 = *(v1 + a1[6]);
  sub_1D1E6923C();
  v4 = (v1 + a1[7]);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v6 = *(v5 + 8);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D18FA924(uint64_t a1, int *a2)
{
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  sub_1D1E6923C();
  v5 = (v2 + a2[7]);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = *(v6 + 8);
  return sub_1D1E676EC();
}

uint64_t sub_1D18FA9F0(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  sub_1D1E6923C();
  v5 = (v2 + a2[7]);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = *(v6 + 8);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ActionCommand.init(template:endpoint:accessoryID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - v8;
  v61 = type metadata accessor for StaticRVCClusterGroup();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v61);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v51 - v14;
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - v20;
  v22 = type metadata accessor for StaticEndpoint();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430F0, &qword_1D1E71450);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v51 - v28;
  sub_1D17419CC(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  if (!swift_dynamicCast())
  {
    (*(v16 + 8))(v62, v15);
    sub_1D18FBB58(v63, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_11;
  }

  v56 = v29;
  v57 = a4;
  v54 = v70;
  v55 = v71;
  sub_1D18FBAF0(v63, v25, type metadata accessor for StaticEndpoint);
  v52 = *(v16 + 16);
  v52(v21, v62, v15);
  v30 = &v25[*(v22 + 20)];
  v31 = type metadata accessor for EndpointPath(0);
  v32 = *(v31 + 24);
  v53 = *&v30[*(v31 + 20)];
  v33 = *&v30[v32];
  sub_1D18FB784(&v25[*(v22 + 40)], v9);
  if ((*(v10 + 48))(v9, 1, v61) == 1)
  {
    sub_1D18FB7F4(v54, *(&v54 + 1), v55);
    v34 = *(v16 + 8);
    v34(v62, v15);
    sub_1D18FBB58(v63, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34(v21, v15);
    sub_1D18FBB58(v25, type metadata accessor for StaticEndpoint);
    sub_1D1741A30(v9, &qword_1EC644778, &unk_1D1E75B10);
LABEL_8:
    v45 = type metadata accessor for ActionCommand(0);
    v44 = v56;
    (*(*(v45 - 1) + 56))(v56, 1, 1, v45);
    goto LABEL_9;
  }

  v35 = v21;
  v36 = v9;
  v37 = v60;
  sub_1D18FB82C(v36, v60, type metadata accessor for StaticRVCClusterGroup);
  v64 = v54;
  v65 = v55;
  v38 = v59;
  sub_1D18FBAF0(v37, v59, type metadata accessor for StaticRVCClusterGroup);
  StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(&v64, v38, &v68);
  v39 = v69;
  if (v69 == 255)
  {
    v46 = *(v16 + 8);
    v46(v62, v15);
    sub_1D18FBB58(v63, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D18FBB58(v37, type metadata accessor for StaticRVCClusterGroup);
    v46(v21, v15);
    sub_1D18FBB58(v25, type metadata accessor for StaticEndpoint);
    goto LABEL_8;
  }

  LODWORD(v61) = v33;
  v40 = v68;
  v41 = v58;
  v42 = v35;
  v52(v58, v35, v15);
  v66 = &type metadata for StaticRVCClusterGroup.Command;
  v67 = sub_1D18FA450();
  *&v64 = v40;
  BYTE8(v64) = v39;
  v43 = *(v16 + 8);
  v43(v62, v15);
  sub_1D18FBB58(v63, type metadata accessor for StaticEndpoint);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D18FBB58(v60, type metadata accessor for StaticRVCClusterGroup);
  v43(v42, v15);
  sub_1D18FBB58(v25, type metadata accessor for StaticEndpoint);
  v44 = v56;
  (*(v16 + 32))(v56, v41, v15);
  v45 = type metadata accessor for ActionCommand(0);
  *(v44 + v45[5]) = v53;
  *(v44 + v45[6]) = v61;
  sub_1D16EEE20(&v64, v44 + v45[7]);
  (*(*(v45 - 1) + 56))(v44, 0, 1, v45);
LABEL_9:
  type metadata accessor for ActionCommand(0);
  v47 = *(v45 - 1);
  if (!(*(v47 + 48))(v44, 1, v45))
  {
    v50 = v57;
    sub_1D18FB82C(v44, v57, type metadata accessor for ActionCommand);
    __swift_destroy_boxed_opaque_existential_1(v72);
    return (*(v47 + 56))(v50, 0, 1, v45);
  }

  sub_1D1741A30(v44, &qword_1EC6430F0, &qword_1D1E71450);
  a4 = v57;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v72);
  v48 = type metadata accessor for ActionCommand(0);
  return (*(*(v48 - 8) + 56))(a4, 1, 1, v48);
}

uint64_t ActionCommand.init(template:endpoint:accessoryID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v47 = a4;
  v6 = sub_1D1E66A7C();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for StaticRVCClusterGroup();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v39 - v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = type metadata accessor for StaticEndpoint();
  v24 = a2 + *(v23 + 20);
  v25 = type metadata accessor for EndpointPath(0);
  v26 = *(v25 + 24);
  v40 = *(v24 + *(v25 + 20));
  v41 = *(v24 + v26);
  v27 = a2;
  sub_1D18FB784(a2 + *(v23 + 40), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D18FB7F4(v20, v21, v22);
    (*(v43 + 8))(v45, v44);
    sub_1D18FBB58(a2, type metadata accessor for StaticEndpoint);
    sub_1D1741A30(v12, &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    v28 = v44;
    v29 = v45;
    v30 = v43;
    v31 = v46;
    sub_1D18FB82C(v12, v46, type metadata accessor for StaticRVCClusterGroup);
    *&v48 = v20;
    *(&v48 + 1) = v21;
    v49 = v22;
    sub_1D18FBAF0(v31, v18, type metadata accessor for StaticRVCClusterGroup);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(&v48, v18, &v52);
    v32 = v53;
    if (v53 != 255)
    {
      v33 = v52;
      v34 = v42;
      (*(v30 + 16))(v42, v29, v28);
      v50 = &type metadata for StaticRVCClusterGroup.Command;
      v51 = sub_1D18FA450();
      *&v48 = v33;
      BYTE8(v48) = v32;
      (*(v30 + 8))(v29, v28);
      sub_1D18FBB58(v27, type metadata accessor for StaticEndpoint);
      sub_1D18FBB58(v46, type metadata accessor for StaticRVCClusterGroup);
      v35 = v47;
      (*(v30 + 32))(v47, v34, v28);
      v36 = type metadata accessor for ActionCommand(0);
      *(v35 + v36[5]) = v40;
      *(v35 + v36[6]) = v41;
      sub_1D16EEE20(&v48, v35 + v36[7]);
      return (*(*(v36 - 1) + 56))(v35, 0, 1, v36);
    }

    (*(v30 + 8))(v29, v28);
    sub_1D18FBB58(v27, type metadata accessor for StaticEndpoint);
    sub_1D18FBB58(v46, type metadata accessor for StaticRVCClusterGroup);
  }

  v38 = type metadata accessor for ActionCommand(0);
  return (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
}

uint64_t sub_1D18FB784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18FB7F4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 == 2)
  {
    return sub_1D1771B5C(result, a2);
  }

  if (v3 == 1)
  {
    return sub_1D18FB818(result, a2, a3 & 0x1F);
  }

  return result;
}

uint64_t sub_1D18FB818(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D18FB82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D18FB904()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    result = sub_1D18FB9A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D18FB9A0()
{
  result = qword_1EC646AD8;
  if (!qword_1EC646AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC646AD8);
  }

  return result;
}

uint64_t sub_1D18FBA04()
{
  result = sub_1D1741B10(319, &qword_1EC6445D0, 0x1E696AD98);
  if (v1 <= 0x3F)
  {
    result = sub_1D1E66A7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D18FBA88()
{
  result = qword_1EE079C10;
  if (!qword_1EE079C10)
  {
    sub_1D1741B10(255, &qword_1EE07B620, 0x1E696CB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079C10);
  }

  return result;
}

uint64_t sub_1D18FBAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18FBB58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18FBBB8(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 64); ; i += 5)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12[0] = *(i - 4);
      v12[1] = v10;
      v12[2] = v11;
      v12[3] = v9;
      v12[4] = v8;

      a2(&v13, v12);

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1D18FBCA4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(*(a4 + 56) + 8 * v15);
      v17[0] = *(*(a4 + 48) + v15);
      v18 = v16;

      a2(&v19, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v19;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FBDE8(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_1D1E66A7C();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v7 + 16;
  v22 = (v7 + 8);
  v24 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v23;
LABEL_9:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v21(&v25, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v22)(v10, v19);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v10, v19);
  }

  else
  {
LABEL_5:
    v19 = v23;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FC000(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_1D1E66A7C();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v7 + 16;
  v22 = (v7 + 8);
  v24 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v23;
LABEL_9:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v21(&v25, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v22)(v10, v19);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v10, v19);
  }

  else
  {
LABEL_5:
    v19 = v23;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FC220(uint64_t a1, uint64_t (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D18FC33C(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1900E74();
    sub_1D1900EC0(&qword_1EE079CE8, sub_1D1900E74);
    sub_1D1E681BC();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_1D1E6877C())
        {
          sub_1D1900E74();
          swift_dynamicCast();
          v18 = v21[0];
          v16 = v9;
          v17 = v10;
          if (v21[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_1D1716918();
    }

    else
    {
LABEL_19:
      sub_1D1716918();
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D18FC598(uint64_t a1, void (*a2)(uint64_t *, void **), uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(a4 + 48) + 8 * v16);
    sub_1D1741970(*(a4 + 56) + 32 * v16, &v20);
    v19 = v17;
    v18 = v17;
    a2(&v21, &v19);
    result = sub_1D1741A30(&v19, &qword_1EC646C38, &qword_1D1E82548);
    if (v4)
    {
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

      return v21;
    }

    v10 = *(v7 + 8 * v14);
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

uint64_t sub_1D18FC6E4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v8 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v27 - v9;
  v31 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v29 = a4;

  v17 = 0;
  while (v14)
  {
    v30 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v29;
    v22 = *(v29 + 48);
    v23 = sub_1D1E66A7C();
    (*(*(v23 - 8) + 16))(v10, v22 + *(*(v23 - 8) + 72) * v20, v23);
    v24 = *(v21 + 56);
    v25 = type metadata accessor for StaticAccessory(0);
    sub_1D1900E0C(v24 + *(*(v25 - 8) + 72) * v20, &v10[*(v27 + 48)], type metadata accessor for StaticAccessory);
    v26 = v30;
    v28(&v31, v10);
    v5 = v26;
    result = sub_1D1741A30(v10, &qword_1EC644B30, &qword_1D1E77280);
    if (v26)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v31;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v30 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionEndpoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ActionEndpoint()
{
  result = qword_1EC646C10;
  if (!qword_1EC646C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionEndpoint.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionEndpoint() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActionEndpoint.deviceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionEndpoint() + 44));
}

uint64_t ActionEndpoint.clusters.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionEndpoint() + 48));
}

uint64_t ActionEndpoint.clusters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionEndpoint() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ActionEndpoint.linkedEndpointIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionEndpoint() + 56));
}

uint64_t sub_1D18FCCF0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ActionEndpoint();
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v7 + 44)), &v12);
  if (v12 == 23)
  {
    sub_1D18FB784(v1 + *(v7 + 52), v6);
    v9 = type metadata accessor for StaticRVCClusterGroup();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      result = sub_1D1741A30(v6, &qword_1EC644778, &unk_1D1E75B10);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = v9;
      *(a1 + 32) = &protocol witness table for StaticRVCClusterGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1D1900F78(v6, boxed_opaque_existential_1, type metadata accessor for StaticRVCClusterGroup);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ActionEndpoint.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionEndpoint() + 44));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t ActionEndpoint.init(staticEndpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for StaticEndpoint();
  v6 = *(a1 + v5[12]);
  v7 = type metadata accessor for ActionEndpoint();
  *(a2 + v7[5]) = v6;
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a2 + v7[6]);
  *v11 = v9;
  v11[1] = v10;
  *(a2 + v7[7]) = 1;
  sub_1D1900E0C(a1 + v5[5], a2 + v7[8], type metadata accessor for EndpointPath);
  sub_1D1900E0C(a1 + v5[13], a2 + v7[9], type metadata accessor for MatterTileMetadata);
  *(a2 + v7[11]) = *(a1 + v5[8]);
  *(a2 + v7[12]) = *(a1 + v5[9]);
  sub_1D1900E0C(a1 + v5[10], a2 + v7[13], type metadata accessor for StaticClusterGroups);
  *(a2 + v7[14]) = *(a1 + v5[11]);
  v12 = *(a1 + v5[7]);

  result = sub_1D1900FE0(a1, type metadata accessor for StaticEndpoint);
  *(a2 + v7[10]) = v12;
  return result;
}

uint64_t ActionEndpoint.init(staticEndpoint:overridingAttributes:)@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v68 - v7;
  v75 = type metadata accessor for StaticCluster();
  v77 = *(v75 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x1EEE9AC00](v75);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v68 - v11;
  v12 = sub_1D1E66A7C();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  v13 = type metadata accessor for StaticEndpoint();
  v73 = *(a1 + v13[12]);
  v14 = v73;
  v15 = type metadata accessor for ActionEndpoint();
  *(a3 + v15[5]) = v14;
  v16 = (a1 + v13[6]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a3 + v15[6]);
  *v19 = v17;
  v19[1] = v18;
  *(a3 + v15[7]) = 1;
  sub_1D1900E0C(a1 + v13[5], a3 + v15[8], type metadata accessor for EndpointPath);
  sub_1D1900E0C(a1 + v13[13], a3 + v15[9], type metadata accessor for MatterTileMetadata);
  *(a3 + v15[11]) = *(a1 + v13[8]);
  v20 = v15[12];
  *(a3 + v20) = *(a1 + v13[9]);
  v21 = v13[10];
  v22 = v15[13];

  v23 = v74;
  StaticClusterGroups.copyApplying(overridingAttributes:)(v74, a3 + v22);
  *(a3 + v15[14]) = *(a1 + v13[11]);
  v24 = v13[7];
  v68 = a1;
  v25 = v15[10];
  v26 = a3;
  *(a3 + v25) = *(a1 + v24);
  v27 = sub_1D18D9C84(MEMORY[0x1E69E7CC0]);
  v79 = a3;
  v28 = v20;

  v29 = sub_1D18FBCA4(v27, sub_1D19000A8, v78, v23);

  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v74 = (v77 + 56);

  v35 = 0;
  v69 = a3;
  v73 = v29;
  if (v33)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v37 = v28;
        v38 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v39 = *(*(v29 + 48) + (v38 | (v35 << 6)));
        if (*(v29 + 16))
        {
          v40 = sub_1D171D278(v39);
          if (v41)
          {
            break;
          }
        }

        v55 = sub_1D171D278(v39);
        if (v56)
        {
          v57 = v55;
          v58 = *(v26 + v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = *(v26 + v28);
          v80 = v60;
          v61 = v76;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D1739780();
            v60 = v80;
          }

          sub_1D1900F78(*(v60 + 56) + *(v77 + 72) * v57, v61, type metadata accessor for StaticCluster);
          sub_1D1750AB4(v57, v60);
          v62 = 0;
          *(v26 + v28) = v60;
        }

        else
        {
          v62 = 1;
          v61 = v76;
        }

        (*v74)(v61, v62, 1, v75);
        sub_1D1741A30(v61, &qword_1EC646AF8, &unk_1D1E97C50);
        v29 = v73;
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      v42 = *(v29 + 56);
      v71 = *(v77 + 72);
      v43 = v70;
      sub_1D1900E0C(v42 + v71 * v40, v70, type metadata accessor for StaticCluster);
      sub_1D1900F78(v43, v72, type metadata accessor for StaticCluster);
      v44 = *(v26 + v28);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v26 + v28);
      v46 = v80;
      v47 = sub_1D171D278(v39);
      v49 = v46[2];
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_31;
      }

      v53 = v48;
      if (v46[3] < v52)
      {
        break;
      }

      if (v45)
      {
        goto LABEL_22;
      }

      v64 = v47;
      sub_1D1739780();
      v28 = v37;
      v47 = v64;
      v63 = v80;
      if (v53)
      {
LABEL_23:
        sub_1D19000C4(v72, v63[7] + v47 * v71, type metadata accessor for StaticCluster);
        goto LABEL_27;
      }

LABEL_25:
      v63[(v47 >> 6) + 8] |= 1 << v47;
      *(v63[6] + v47) = v39;
      sub_1D1900F78(v72, v63[7] + v47 * v71, type metadata accessor for StaticCluster);
      v65 = v63[2];
      v51 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v51)
      {
        goto LABEL_32;
      }

      v63[2] = v66;
LABEL_27:
      v26 = v69;
      *(v69 + v28) = v63;
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    sub_1D1729800(v52, v45);
    v47 = sub_1D171D278(v39);
    if ((v53 & 1) != (v54 & 1))
    {
      goto LABEL_33;
    }

LABEL_22:
    v28 = v37;
    v63 = v80;
    if (v53)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_4:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      sub_1D1900FE0(v68, type metadata accessor for StaticEndpoint);
    }

    v33 = *(v30 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D18FD6B0(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v81 = a3;
  v7 = type metadata accessor for StaticColorControlCluster();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = type metadata accessor for StaticCluster();
  v84 = *(v18 - 8);
  v19 = *(v84 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v76 = &v69 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v69 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
  v27 = *(*(v83 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v83);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v69 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v69 = v36;
  v70 = &v69 - v35;
  v37 = *a2;
  v38 = *(a2 + 1);
  v82 = v4;
  v78 = v17;
  v79 = v18;
  v73 = v38;
  v74 = v10;
  v72 = v15;
  if (v37 - 19) <= 0xA && ((0x5E1u >> (v37 - 19)))
  {
    LOBYTE(v37) = byte_1D1E825CC[(v37 - 19)];
  }

  v80 = a1;
  v39 = *a1;
  v40 = *a1 + 64;
  v41 = 1 << *(*a1 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(*a1 + 64);
  v44 = (v41 + 63) >> 6;

  v46 = 0;
  v85 = v37;
  if (v43)
  {
    while (1)
    {
      v47 = v46;
LABEL_11:
      v48 = __clz(__rbit64(v43)) | (v47 << 6);
      v49 = *(*(v39 + 48) + v48);
      sub_1D1900E0C(*(v39 + 56) + *(v84 + 72) * v48, &v33[*(v83 + 48)], type metadata accessor for StaticCluster);
      *v33 = v49;
      sub_1D1900F08(v33, v30);
      if (dword_1D1E82554[*v30] == dword_1D1E82554[v85])
      {
        break;
      }

      v43 &= v43 - 1;
      result = sub_1D1741A30(v30, &qword_1EC6455C8, &qword_1D1E79B78);
      v46 = v47;
      if (!v43)
      {
        goto LABEL_8;
      }
    }

    v60 = v69;
    sub_1D1900F08(v30, v69);
    v61 = v70;
    sub_1D1900F08(v60, v70);
    v62 = *(v83 + 48);
    v63 = v71;
    sub_1D1900E0C(v61 + v62, v71, type metadata accessor for StaticCluster);
    v64 = v79;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v65 = v63;
      v66 = v74;
      sub_1D1900F78(v65, v74, type metadata accessor for StaticColorControlCluster);
      v67 = v72;
      StaticColorControlCluster.copyApplying(overridingAttributes:)(v73, v72);
      sub_1D1900FE0(v66, type metadata accessor for StaticColorControlCluster);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v68 = v61 + v62;
      v67 = v72;
      sub_1D1900E0C(v68, v72, type metadata accessor for StaticCluster);
      sub_1D1900FE0(v63, type metadata accessor for StaticCluster);
    }

    (*(v84 + 56))(v67, 0, 1, v64);
    sub_1D1B0DD20(v67, v85);
    return sub_1D1741A30(v61, &qword_1EC6455C8, &qword_1D1E79B78);
  }

  else
  {
    while (1)
    {
LABEL_8:
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        return result;
      }

      if (v47 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v47);
      ++v46;
      if (v43)
      {
        goto LABEL_11;
      }
    }

    result = type metadata accessor for ActionEndpoint();
    v50 = *(v81 + *(result + 48));
    if (*(v50 + 16))
    {
      result = sub_1D171D278(v85);
      if (v51)
      {
        v52 = *(v50 + 56) + *(v84 + 72) * result;
        v53 = v75;
        sub_1D1900E0C(v52, v75, type metadata accessor for StaticCluster);
        v54 = v77;
        sub_1D1900F78(v53, v77, type metadata accessor for StaticCluster);
        v55 = v76;
        sub_1D1900E0C(v54, v76, type metadata accessor for StaticCluster);
        v56 = v79;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v57 = v55;
          v58 = v74;
          sub_1D1900F78(v57, v74, type metadata accessor for StaticColorControlCluster);
          v59 = v78;
          StaticColorControlCluster.copyApplying(overridingAttributes:)(v73, v78);
          sub_1D1900FE0(v58, type metadata accessor for StaticColorControlCluster);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v59 = v78;
          sub_1D1900E0C(v54, v78, type metadata accessor for StaticCluster);
          sub_1D1900FE0(v55, type metadata accessor for StaticCluster);
        }

        (*(v84 + 56))(v59, 0, 1, v56);
        sub_1D1B0DD20(v59, v85);
        return sub_1D1900FE0(v54, type metadata accessor for StaticCluster);
      }
    }
  }

  return result;
}

void ClusterKind.primaryClusterKind.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 - 19) <= 0xA && ((0x5E1u >> (v2 - 19)))
  {
    LOBYTE(v2) = byte_1D1E825CC[(v2 - 19)];
  }

  *a1 = v2;
}

uint64_t sub_1D18FDDF8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 1701667182;
    v8 = 0x6168636165527369;
    if (a1 != 3)
    {
      v8 = 0x746E696F70646E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7344496D6F6F72;
    }

    if (a1 <= 1u)
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
    v1 = 0x7372657473756C63;
    v2 = 0x4772657473756C63;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x617461646174656DLL;
    v4 = 0x7453656369766564;
    if (a1 != 6)
    {
      v4 = 0x7954656369766564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D18FDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1900A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D18FDFB0(uint64_t a1)
{
  v2 = sub_1D190012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18FDFEC(uint64_t a1)
{
  v2 = sub_1D190012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionEndpoint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B00, &qword_1D1E821F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D190012C();
  sub_1D1E6930C();
  LOBYTE(v21) = 0;
  sub_1D1E66A7C();
  sub_1D1900EC0(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for ActionEndpoint();
    v21 = *(v3 + v11[5]);
    HIBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1900308(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v21) = 2;
    sub_1D1E68ECC();
    v15 = *(v3 + v11[7]);
    LOBYTE(v21) = 3;
    sub_1D1E68EDC();
    v16 = v11[8];
    LOBYTE(v21) = 4;
    type metadata accessor for EndpointPath(0);
    sub_1D1900EC0(&qword_1EC646B18, type metadata accessor for EndpointPath);
    sub_1D1E68F1C();
    v17 = v11[9];
    LOBYTE(v21) = 5;
    type metadata accessor for MatterTileMetadata();
    sub_1D1900EC0(&qword_1EC646B20, type metadata accessor for MatterTileMetadata);
    sub_1D1E68F1C();
    v21 = *(v3 + v11[10]);
    HIBYTE(v20) = 6;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1900EC0(&qword_1EC646B28, type metadata accessor for MTRDeviceState);
    sub_1D1E68F1C();
    v21 = *(v3 + v11[11]);
    HIBYTE(v20) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1900180(&qword_1EC646B30, sub_1D18F16D8);
    sub_1D1E68F1C();
    v21 = *(v3 + v11[12]);
    HIBYTE(v20) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19001F8();
    sub_1D1E68F1C();
    v18 = v11[13];
    LOBYTE(v21) = 9;
    type metadata accessor for StaticClusterGroups();
    sub_1D1900EC0(&qword_1EC646B58, type metadata accessor for StaticClusterGroups);
    sub_1D1E68F1C();
    v21 = *(v3 + v11[14]);
    HIBYTE(v20) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
    sub_1D19004B4(&qword_1EC646B68);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActionEndpoint.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D1900EC0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for ActionEndpoint();
  sub_1D176D4E8(a1, *(v1 + v4[5]));
  v5 = (v1 + v4[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  v8 = *(v1 + v4[7]);
  sub_1D1E6922C();
  v9 = v1 + v4[8];
  sub_1D1E676EC();
  v10 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v9 + *(v10 + 20)));
  v11 = *(v9 + *(v10 + 24));
  sub_1D1E6923C();
  v12 = v1 + v4[9];
  MatterTileMetadata.hash(into:)();
  MEMORY[0x1D3892850](*(v2 + v4[10]));
  sub_1D176DB8C(a1, *(v2 + v4[11]));
  sub_1D185BAEC(a1, *(v2 + v4[12]));
  v13 = v2 + v4[13];
  StaticClusterGroups.hash(into:)(a1);
  v14 = *(v2 + v4[14]);

  return sub_1D176E508(a1, v14);
}

uint64_t ActionEndpoint.hashValue.getter()
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ActionEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = type metadata accessor for StaticClusterGroups();
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MatterTileMetadata();
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for EndpointPath(0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B70, &qword_1D1E82210);
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - v15;
  v17 = type metadata accessor for ActionEndpoint();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D190012C();
  v47 = v16;
  v22 = v48;
  sub_1D1E692FC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v9;
  v35 = v17;
  v48 = a1;
  v36 = v20;
  LOBYTE(v50) = 0;
  sub_1D1900EC0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v23 = v44;
  sub_1D1E68D7C();
  v24 = v36;
  (*(v43 + 32))(v36, v23, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v49 = 1;
  sub_1D1900308(&qword_1EC646B78, &qword_1EC644B20);
  sub_1D1E68D7C();
  v44 = v10;
  v25 = v35;
  *&v24[v35[5]] = v50;
  LOBYTE(v50) = 2;
  v33[1] = 0;
  v26 = sub_1D1E68D2C();
  v27 = &v24[v25[6]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v50) = 3;
  v24[v25[7]] = sub_1D1E68D3C() & 1;
  LOBYTE(v50) = 4;
  sub_1D1900EC0(&qword_1EC646B80, type metadata accessor for EndpointPath);
  v30 = v34;
  sub_1D1E68D7C();
  sub_1D1900F78(v30, &v24[v25[8]], type metadata accessor for EndpointPath);
  LOBYTE(v50) = 5;
  sub_1D1900EC0(&qword_1EC646B88, type metadata accessor for MatterTileMetadata);
  v31 = v41;
  sub_1D1E68D7C();
  sub_1D1900F78(v31, &v24[v25[9]], type metadata accessor for MatterTileMetadata);
  type metadata accessor for MTRDeviceState(0);
  v49 = 6;
  sub_1D1900EC0(&qword_1EC646B90, type metadata accessor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v24[v25[10]] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v49 = 7;
  sub_1D1900180(&qword_1EC646B98, sub_1D18F1924);
  sub_1D1E68D7C();
  *&v24[v25[11]] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
  v49 = 8;
  sub_1D19003A4();
  sub_1D1E68D7C();
  *&v24[v25[12]] = v50;
  LOBYTE(v50) = 9;
  sub_1D1900EC0(&qword_1EC646BB8, type metadata accessor for StaticClusterGroups);
  sub_1D1E68D7C();
  sub_1D1900F78(v39, &v36[v35[13]], type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
  v49 = 10;
  sub_1D19004B4(&qword_1EC646BC0);
  sub_1D1E68D7C();
  (*(v45 + 8))(v47, v46);
  v32 = v36;
  *&v36[v35[14]] = v50;
  sub_1D1900E0C(v32, v37, type metadata accessor for ActionEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_1D1900FE0(v32, type metadata accessor for ActionEndpoint);
}

uint64_t sub_1D18FF34C()
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18FF390()
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ActionEndpoint.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ActionEndpoint.foregroundColor.getter()
{
  v1 = type metadata accessor for ActionEndpoint();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 44)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t _s13HomeDataModel14ActionEndpointV7roomIDsShy10Foundation4UUIDVGvg_0()
{
  v1 = *(v0 + *(type metadata accessor for ActionEndpoint() + 20));
}

uint64_t sub_1D18FF59C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void ActionEndpoint.tileIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionEndpoint();
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 44)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a1 + 48) = xmmword_1EC646798;
    *(a1 + 64) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v4;
    *(a1 + 73) = v6;
    *a1 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a1, v10);
  }
}

uint64_t ActionEndpoint.statusString(with:associatedMatterDevice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-v3 - 8];
  v5 = type metadata accessor for StaticRVCClusterGroup();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for ActionEndpoint();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v10 + 44)), v15);
  result = 0;
  if (v15[0] == 23)
  {
    sub_1D18FCCF0(v15);
    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646BD0, &qword_1D1E82238);
      v12 = swift_dynamicCast();
      (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        sub_1D1900F78(v4, v9, type metadata accessor for StaticRVCClusterGroup);
        v13 = StaticRVCClusterGroup.actionStatusString.getter();
        sub_1D1900FE0(v9, type metadata accessor for StaticRVCClusterGroup);
        return v13;
      }
    }

    else
    {
      sub_1D1741A30(v15, &qword_1EC646BC8, &qword_1D1E82230);
      (*(v6 + 56))(v4, 1, 1, v5);
    }

    sub_1D1741A30(v4, &qword_1EC644778, &unk_1D1E75B10);
    return 0;
  }

  return result;
}

BOOL ActionEndpoint.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v23 - v3;
  v5 = type metadata accessor for StaticRVCClusterGroup();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionEndpoint();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v10 + 44)), &v27);
  if (v27 != 23)
  {
    return 0;
  }

  sub_1D18FCCF0(&v24);
  if (!*(&v25 + 1))
  {
    v16 = &qword_1EC646BC8;
    v17 = &qword_1D1E82230;
    v18 = &v24;
LABEL_12:
    sub_1D1741A30(v18, v16, v17);
    return 0;
  }

  sub_1D16EEE20(&v24, v26);
  sub_1D17419CC(v26, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646BD0, &qword_1D1E82238);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    (*(v6 + 56))(v4, 1, 1, v5);
    v16 = &qword_1EC644778;
    v17 = &unk_1D1E75B10;
    v18 = v4;
    goto LABEL_12;
  }

  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1D1900F78(v4, v9, type metadata accessor for StaticRVCClusterGroup);
  v11 = v9[*(v5 + 20)];
  v12 = v11 > 6;
  v13 = (1 << v11) & 0x6E;
  if (v12 || v13 == 0)
  {
    v20 = &v9[*(v5 + 24)];
    v21 = v20[1];
    v24 = *v20;
    v25 = v21;
    if (StaticRVCClusterGroup.RunMode.isCleaning.getter())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      v15 = 1;
    }

    else
    {
      v22 = v20[1];
      v23[0] = *v20;
      v23[1] = v22;
      v15 = StaticRVCClusterGroup.RunMode.isMapping.getter();
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v15 = 0;
  }

  sub_1D1900FE0(v9, type metadata accessor for StaticRVCClusterGroup);
  return v15;
}

uint64_t sub_1D18FFC34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D18FFC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1D18FFCD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v2 + *(a1 + 44)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a2 + 48) = xmmword_1EC646798;
    *(a2 + 64) = v5;
    *(a2 + 16) = v8;
    *(a2 + 32) = v4;
    *(a2 + 73) = v6;
    *a2 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a2, v10);
  }
}

uint64_t sub_1D18FFDA4(uint64_t a1)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(a1 + 44)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

char ActionEndpoint.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionEndpoint();
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 44)), &v13);
  v5 = v13;
  v6 = v1 + *(v3 + 36);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);

    v10._countAndFlagsBits = v8;
    v10._object = v7;
    result = IconSymbol.init(rawValue:)(v10).value;
    v11 = v12;
  }

  else
  {
    v11 = 92;
  }

  *a1 = v5;
  *(a1 + 8) = 32;
  *(a1 + 9) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t _s13HomeDataModel14ActionEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionEndpoint();
  if ((sub_1D17A6E98(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = v4[8];
  v11 = a1 + v10;
  v12 = a2 + v10;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(v11 + *(v13 + 20)) != *(v12 + *(v13 + 20)) || *(v11 + *(v13 + 24)) != *(v12 + *(v13 + 24)) || !_s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0((a1 + v4[9]), a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || (sub_1D17A7F14(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0 || (sub_1D184C184(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0 || !_s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(a1 + v4[13], a2 + v4[13]))
  {
    return 0;
  }

  v14 = v4[14];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_1D17A8098(v15, v16);
}

uint64_t sub_1D19000C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D190012C()
{
  result = qword_1EC646B08;
  if (!qword_1EC646B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B08);
  }

  return result;
}

uint64_t sub_1D1900180(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643410, &qword_1D1E71890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19001F8()
{
  result = qword_1EC646B40;
  if (!qword_1EC646B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19002B4();
    sub_1D1900EC0(&qword_1EC646B50, type metadata accessor for StaticCluster);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B40);
  }

  return result;
}

unint64_t sub_1D19002B4()
{
  result = qword_1EC646B48;
  if (!qword_1EC646B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B48);
  }

  return result;
}

uint64_t sub_1D1900308(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1900EC0(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19003A4()
{
  result = qword_1EC646BA0;
  if (!qword_1EC646BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D1900460();
    sub_1D1900EC0(&qword_1EC646BB0, type metadata accessor for StaticCluster);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646BA0);
  }

  return result;
}

unint64_t sub_1D1900460()
{
  result = qword_1EC646BA8;
  if (!qword_1EC646BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646BA8);
  }

  return result;
}

uint64_t sub_1D19004B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B60, &qword_1D1E82208);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D19005B0(void *a1)
{
  a1[1] = sub_1D1900EC0(&qword_1EC646BE0, type metadata accessor for ActionEndpoint);
  a1[2] = sub_1D1900EC0(&qword_1EC646BE8, type metadata accessor for ActionEndpoint);
  a1[3] = sub_1D1900EC0(&qword_1EC646BF0, type metadata accessor for ActionEndpoint);
  a1[4] = sub_1D1900EC0(&qword_1EC646BF8, type metadata accessor for ActionEndpoint);
  a1[5] = sub_1D1900EC0(&qword_1EC646C00, type metadata accessor for ActionEndpoint);
  result = sub_1D1900EC0(&qword_1EC646C08, type metadata accessor for ActionEndpoint);
  a1[6] = result;
  return result;
}

void sub_1D19006FC()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1791340();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EndpointPath(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MatterTileMetadata();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MTRDeviceState(319);
          if (v4 <= 0x3F)
          {
            sub_1D1900840();
            if (v5 <= 0x3F)
            {
              sub_1D190089C();
              if (v6 <= 0x3F)
              {
                type metadata accessor for StaticClusterGroups();
                if (v7 <= 0x3F)
                {
                  sub_1D1900908();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1900840()
{
  if (!qword_1EE07B6B8)
  {
    sub_1D1785A60();
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B6B8);
    }
  }
}

void sub_1D190089C()
{
  if (!qword_1EE07B788)
  {
    type metadata accessor for StaticCluster();
    sub_1D1785A0C();
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B788);
    }
  }
}

void sub_1D1900908()
{
  if (!qword_1EE07B698)
  {
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B698);
    }
  }
}

unint64_t sub_1D1900974()
{
  result = qword_1EC646C20;
  if (!qword_1EC646C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C20);
  }

  return result;
}

unint64_t sub_1D19009CC()
{
  result = qword_1EC646C28;
  if (!qword_1EC646C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C28);
  }

  return result;
}

unint64_t sub_1D1900A24()
{
  result = qword_1EC646C30;
  if (!qword_1EC646C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C30);
  }

  return result;
}

uint64_t sub_1D1900A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7344496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372657473756C63 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4772657473756C63 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE040 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D1900E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1900E74()
{
  result = qword_1EE079CF0;
  if (!qword_1EE079CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CF0);
  }

  return result;
}

uint64_t sub_1D1900EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1900F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1900F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1900FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActionMatterDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ActionMatterDevice()
{
  result = qword_1EC646CB0;
  if (!qword_1EC646CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionMatterDevice.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ActionMatterDevice() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActionMatterDevice.deviceTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionMatterDevice() + 32));
}

uint64_t ActionMatterDevice.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionMatterDevice() + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionMatterDevice.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionMatterDevice() + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionMatterDevice.actionEndpoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionMatterDevice() + 44));
}

uint64_t ActionMatterDevice.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionMatterDevice() + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t ActionMatterDevice.mainActionEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-v5];
  v7 = *(v1 + *(type metadata accessor for ActionMatterDevice() + 44));
  v14 = v1;

  sub_1D1746B24(sub_1D1903ECC, v7, v6);

  v8 = type metadata accessor for ActionEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {

    sub_1D1771D3C(v11, a1);

    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return sub_1D1741A30(v6, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v6, a1, type metadata accessor for ActionEndpoint);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

BOOL sub_1D1901590(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for ActionEndpoint() + 44));
  v4 = *(a2 + *(type metadata accessor for ActionMatterDevice() + 32));

  v5 = *(sub_1D1E63F58(v4, v3) + 2);

  return v5 != 0;
}

uint64_t ActionMatterDevice.init(staticDevice:overridingEndpoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v50 - v7;
  v8 = type metadata accessor for StaticEndpoint();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v14 = *(*(v54 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v54);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v50 - v18);
  v20 = sub_1D1E66A7C();
  v58 = *(*(v20 - 8) + 16);
  (v58)(a3, a1, v20);
  v21 = type metadata accessor for StaticMatterDevice();
  v22 = *(a1 + v21[5]);
  v23 = type metadata accessor for ActionMatterDevice();
  *(a3 + v23[5]) = v22;
  v24 = (a1 + v21[6]);
  v25 = *v24;
  v55 = v24[1];
  v26 = v55;
  v27 = (a3 + v23[6]);
  *v27 = v25;
  v27[1] = v26;
  *(a3 + v23[7]) = 1;
  v53 = *(a1 + v21[8]);
  *(a3 + v23[8]) = v53;
  v28 = v58;
  (v58)(a3 + v23[9], a1 + v21[9], v20);
  v28(a3 + v23[10], a1 + v21[10], v20);
  v29 = v21[15];
  v50 = v23;
  v30 = v23[12];
  v52 = a3;
  sub_1D190431C(a1 + v29, a3 + v30, type metadata accessor for MatterTileMetadata);
  v31 = v21[14];
  v51 = a1;
  v32 = *(a1 + v31);
  v61 = sub_1D18D9E5C(MEMORY[0x1E69E7CC0]);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v58 = v32;
  swift_bridgeObjectRetain_n();

  v39 = 0;
  v55 = v13;
  if (v36)
  {
LABEL_8:
    while (1)
    {
      v41 = __clz(__rbit64(v36)) | (v39 << 6);
      v42 = *(*(v58 + 48) + 2 * v41);
      v43 = v54;
      sub_1D190431C(*(v58 + 56) + *(v56 + 72) * v41, v19 + *(v54 + 48), type metadata accessor for StaticEndpoint);
      *v19 = v42;
      sub_1D1904000(v19, v17);
      v44 = *v17;
      sub_1D1904384(v17 + *(v43 + 48), type metadata accessor for StaticEndpoint);
      sub_1D1904000(v19, v17);
      sub_1D19042B4(v17 + *(v43 + 48), v13, type metadata accessor for StaticEndpoint);
      if (!*(v59 + 16))
      {
        break;
      }

      v45 = sub_1D171D15C(v44);
      if ((v46 & 1) == 0)
      {
        break;
      }

      v47 = *(*(v59 + 56) + 8 * v45);

      sub_1D190431C(v13, v60, type metadata accessor for StaticEndpoint);
      if (!v47)
      {
        goto LABEL_13;
      }

LABEL_14:
      v36 &= v36 - 1;
      v48 = v57;
      ActionEndpoint.init(staticEndpoint:overridingAttributes:)(v60, v47, v57);
      v49 = type metadata accessor for ActionEndpoint();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_1D1B0E988(v48, v44);
      v13 = v55;
      sub_1D1904384(v55, type metadata accessor for StaticEndpoint);
      result = sub_1D1741A30(v19, &qword_1EC6448D0, &qword_1D1E76600);
      if (!v36)
      {
        goto LABEL_4;
      }
    }

    sub_1D190431C(v13, v60, type metadata accessor for StaticEndpoint);
LABEL_13:
    v47 = sub_1D18DA034(MEMORY[0x1E69E7CC0]);
    goto LABEL_14;
  }

LABEL_4:
  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v37)
    {
      sub_1D1904384(v51, type metadata accessor for StaticMatterDevice);

      *(v52 + v50[11]) = v61;
      return result;
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1901B98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x6574617473;
    }

    if (a1)
    {
      v5 = 0x644965646F6ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64496D6F6F72;
    v2 = 0x6E456E6F69746361;
    if (a1 != 7)
    {
      v2 = 0x617461646174656DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7954656369766564;
    if (a1 != 4)
    {
      v3 = 0x6449656D6F68;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D1901CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1904878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1901CE0(uint64_t a1)
{
  v2 = sub_1D1904070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1901D1C(uint64_t a1)
{
  v2 = sub_1D1904070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionMatterDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C48, &unk_1D1E825F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1904070();
  sub_1D1E6930C();
  LOBYTE(v22) = 0;
  sub_1D1E66A7C();
  sub_1D1904598(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for ActionMatterDevice();
    v12 = *(v3 + v11[5]);
    LOBYTE(v22) = 1;
    sub_1D1E68F6C();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v22) = 2;
    sub_1D1E68ECC();
    v22 = *(v3 + v11[7]);
    v21 = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1904598(&qword_1EC646B28, type metadata accessor for MTRDeviceState);
    sub_1D1E68F1C();
    v22 = *(v3 + v11[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8);
    sub_1D1E68F1C();
    v16 = v11[9];
    LOBYTE(v22) = 5;
    sub_1D1E68F1C();
    v17 = v11[10];
    LOBYTE(v22) = 6;
    sub_1D1E68F1C();
    v22 = *(v3 + v11[11]);
    v21 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D19040C4();
    sub_1D1E68F1C();
    v18 = v11[12];
    LOBYTE(v22) = 8;
    type metadata accessor for MatterTileMetadata();
    sub_1D1904598(&qword_1EC646B20, type metadata accessor for MatterTileMetadata);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActionMatterDevice.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for ActionMatterDevice();
  MEMORY[0x1D3892890](*(v1 + v4[5]));
  v5 = (v1 + v4[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v4[7]));
  sub_1D176DB8C(a1, *(v1 + v4[8]));
  v8 = v1 + v4[9];
  sub_1D1E676EC();
  v9 = v2 + v4[10];
  sub_1D1E676EC();
  sub_1D185ACDC(a1, *(v2 + v4[11]));
  v10 = v2 + v4[12];
  return MatterTileMetadata.hash(into:)();
}

uint64_t ActionMatterDevice.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for ActionMatterDevice();
  MEMORY[0x1D3892890](*(v0 + v2[5]));
  v3 = (v0 + v2[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v0 + v2[7]));
  sub_1D176DB8C(v10, *(v0 + v2[8]));
  v6 = v0 + v2[9];
  sub_1D1E676EC();
  v7 = v1 + v2[10];
  sub_1D1E676EC();
  sub_1D185ACDC(v10, *(v1 + v2[11]));
  v8 = v1 + v2[12];
  MatterTileMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t ActionMatterDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = type metadata accessor for MatterTileMetadata();
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D1E66A7C();
  v40 = *(v43 - 8);
  v5 = *(v40 + 64);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C68, &unk_1D1E82608);
  v41 = *(v45 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v15 = &v36 - v14;
  v16 = type metadata accessor for ActionMatterDevice();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1904070();
  v44 = v15;
  v21 = v46;
  sub_1D1E692FC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v16;
  v36 = v19;
  LOBYTE(v48) = 0;
  v23 = sub_1D1904598(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v46 = v23;
  v24 = *(v40 + 32);
  v25 = v36;
  v24(v36, v42, v43);
  LOBYTE(v48) = 1;
  *&v25[v22[5]] = sub_1D1E68DCC();
  LOBYTE(v48) = 2;
  v26 = sub_1D1E68D2C();
  v27 = v25;
  v28 = a1;
  v29 = &v27[v22[6]];
  *v29 = v26;
  v29[1] = v30;
  type metadata accessor for MTRDeviceState(0);
  v47 = 3;
  sub_1D1904598(&qword_1EC646B90, type metadata accessor for MTRDeviceState);
  sub_1D1E68D7C();
  v31 = v22;
  *&v36[v22[7]] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v47 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924);
  sub_1D1E68D7C();
  *&v36[v22[8]] = v48;
  LOBYTE(v48) = 5;
  v42 = v11;
  v32 = v43;
  sub_1D1E68D7C();
  v24(&v36[v31[9]], v42, v32);
  LOBYTE(v48) = 6;
  sub_1D1E68D7C();
  v24(&v36[v31[10]], v8, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C58, &qword_1D1E82600);
  v47 = 7;
  sub_1D19041F8();
  sub_1D1E68D7C();
  *&v36[v31[11]] = v48;
  LOBYTE(v48) = 8;
  sub_1D1904598(&qword_1EC646B88, type metadata accessor for MatterTileMetadata);
  v33 = v39;
  sub_1D1E68D7C();
  (*(v41 + 8))(v44, v45);
  v34 = v36;
  sub_1D19042B4(v33, &v36[v31[12]], type metadata accessor for MatterTileMetadata);
  sub_1D190431C(v34, v37, type metadata accessor for ActionMatterDevice);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1D1904384(v34, type metadata accessor for ActionMatterDevice);
}

uint64_t sub_1D1902C94(__int128 *a1, int *a2)
{
  v4 = v2;
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  v6 = (v2 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  sub_1D176DB8C(a1, *(v2 + a2[8]));
  v9 = v2 + a2[9];
  sub_1D1E676EC();
  v10 = v4 + a2[10];
  sub_1D1E676EC();
  sub_1D185ACDC(a1, *(v4 + a2[11]));
  v11 = v4 + a2[12];
  return MatterTileMetadata.hash(into:)();
}

uint64_t sub_1D1902DB0(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  v5 = (v2 + a2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  sub_1D176DB8C(v12, *(v2 + a2[8]));
  v8 = v2 + a2[9];
  sub_1D1E676EC();
  v9 = v4 + a2[10];
  sub_1D1E676EC();
  sub_1D185ACDC(v12, *(v4 + a2[11]));
  v10 = v4 + a2[12];
  MatterTileMetadata.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t ActionMatterDevice.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ActionMatterDevice.foregroundColor.getter()
{
  v1 = type metadata accessor for ActionMatterDevice();
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t ActionMatterDevice.roomIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  v6 = type metadata accessor for ActionMatterDevice();
  (*(v2 + 16))(v5 + v4, v0 + *(v6 + 40), v1);
  v7 = sub_1D179BE14(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  return v7;
}

void ActionMatterDevice.tileIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionMatterDevice();
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a1 + 48) = xmmword_1EC646798;
    *(a1 + 64) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v4;
    *(a1 + 73) = v6;
    *a1 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a1, v10);
  }
}

uint64_t ActionMatterDevice.statusString(with:associatedMatterDevice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  v8 = *(v0 + *(type metadata accessor for ActionMatterDevice() + 44));
  v16 = v0;

  sub_1D1746B24(sub_1D1904B4C, v8, v5);

  v9 = type metadata accessor for ActionEndpoint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v5, 1, v9) == 1)
  {

    sub_1D1771D3C(v12, v7);

    if (v11(v5, 1, v9) != 1)
    {
      sub_1D1741A30(v5, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v5, v7, type metadata accessor for ActionEndpoint);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  if (v11(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v14 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1904384(v7, type metadata accessor for ActionEndpoint);
    return v14;
  }
}

BOOL ActionMatterDevice.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  v8 = *(v0 + *(type metadata accessor for ActionMatterDevice() + 44));
  v16 = v0;

  sub_1D1746B24(sub_1D1904B4C, v8, v5);

  v9 = type metadata accessor for ActionEndpoint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v5, 1, v9) == 1)
  {

    sub_1D1771D3C(v12, v7);

    if (v11(v5, 1, v9) != 1)
    {
      sub_1D1741A30(v5, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v5, v7, type metadata accessor for ActionEndpoint);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  if (v11(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v13 = ActionEndpoint.isActivated.getter();
    sub_1D1904384(v7, type metadata accessor for ActionEndpoint);
  }

  return v13;
}

uint64_t ActionMatterDevice.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = *(v0 + *(type metadata accessor for ActionMatterDevice() + 44));
  v15 = v0;

  sub_1D1746B24(sub_1D1904B4C, v8, v5);

  v9 = type metadata accessor for ActionEndpoint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v5, 1, v9) == 1)
  {

    sub_1D1771D3C(v12, v7);

    if (v11(v5, 1, v9) != 1)
    {
      sub_1D1741A30(v5, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v5, v7, type metadata accessor for ActionEndpoint);
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  sub_1D1741A30(v7, &qword_1EC646C40, &unk_1D1E825E0);
  return 0;
}

void sub_1D190396C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v2 + *(a1 + 32)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a2 + 48) = xmmword_1EC646798;
    *(a2 + 64) = v5;
    *(a2 + 16) = v8;
    *(a2 + 32) = v4;
    *(a2 + 73) = v6;
    *a2 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a2, v10);
  }
}

uint64_t sub_1D1903A38(uint64_t a1)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(a1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1D1903ADC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E739C0;
  (*(v4 + 16))(v7 + v6, v1 + *(a1 + 40), v3);
  v8 = sub_1D179BE14(v7);
  swift_setDeallocating();
  (*(v4 + 8))(v7 + v6, v3);
  swift_deallocClassInstance();
  return v8;
}

BOOL sub_1D1903C04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  ActionMatterDevice.mainActionEndpoint.getter(&v7 - v2);
  v4 = type metadata accessor for ActionEndpoint();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v5 = ActionEndpoint.isActivated.getter();
    sub_1D1904384(v3, type metadata accessor for ActionEndpoint);
  }

  return v5;
}

uint64_t sub_1D1903D08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v5 - v2;
  ActionMatterDevice.mainActionEndpoint.getter(&v5 - v2);
  sub_1D1741A30(v3, &qword_1EC646C40, &unk_1D1E825E0);
  return 0;
}

uint64_t sub_1D1903DA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  ActionMatterDevice.mainActionEndpoint.getter(&v7 - v2);
  v4 = type metadata accessor for ActionEndpoint();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v6 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1904384(v3, type metadata accessor for ActionEndpoint);
    return v6;
  }
}

BOOL _s13HomeDataModel18ActionMatterDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionMatterDevice();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  if ((sub_1D17A7F14(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v11 = v5[9];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[10];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D184BB9C(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v13 = v5[12];

  return static MatterTileMetadata.== infix(_:_:)((a1 + v13), a2 + v13);
}

uint64_t sub_1D1904000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1904070()
{
  result = qword_1EC646C50;
  if (!qword_1EC646C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C50);
  }

  return result;
}

unint64_t sub_1D19040C4()
{
  result = qword_1EC646C60;
  if (!qword_1EC646C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D1904598(&qword_1EC646BF8, type metadata accessor for ActionEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C60);
  }

  return result;
}

uint64_t sub_1D1904180(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643410, &qword_1D1E71890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19041F8()
{
  result = qword_1EC646C70;
  if (!qword_1EC646C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D1904598(&qword_1EC646BF0, type metadata accessor for ActionEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C70);
  }

  return result;
}

uint64_t sub_1D19042B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D190431C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1904384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1904474(void *a1)
{
  a1[1] = sub_1D1904598(&qword_1EC646C80, type metadata accessor for ActionMatterDevice);
  a1[2] = sub_1D1904598(&qword_1EC646C88, type metadata accessor for ActionMatterDevice);
  a1[3] = sub_1D1904598(&qword_1EC646C90, type metadata accessor for ActionMatterDevice);
  a1[4] = sub_1D1904598(&qword_1EC646C98, type metadata accessor for ActionMatterDevice);
  a1[5] = sub_1D1904598(&qword_1EC646CA0, type metadata accessor for ActionMatterDevice);
  result = sub_1D1904598(&qword_1EC646CA8, type metadata accessor for ActionMatterDevice);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1904598(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1904608()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MTRDeviceState(319);
    if (v1 <= 0x3F)
    {
      sub_1D1900840();
      if (v2 <= 0x3F)
      {
        sub_1D19046F8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MatterTileMetadata();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D19046F8()
{
  if (!qword_1EC646CC0)
  {
    type metadata accessor for ActionEndpoint();
    v0 = sub_1D1E6769C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC646CC0);
    }
  }
}

unint64_t sub_1D1904774()
{
  result = qword_1EC646CC8;
  if (!qword_1EC646CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CC8);
  }

  return result;
}

unint64_t sub_1D19047CC()
{
  result = qword_1EC646CD0;
  if (!qword_1EC646CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CD0);
  }

  return result;
}

unint64_t sub_1D1904824()
{
  result = qword_1EC646CD8;
  if (!qword_1EC646CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CD8);
  }

  return result;
}

uint64_t sub_1D1904878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D6F6F72 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E456E6F69746361 && a2 == 0xEF73746E696F7064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id HMMatterCommand.init(commandId:endpointId:clusterId:accessory:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1D1E692CC();
  v10 = sub_1D1E692AC();
  v11 = sub_1D1E692CC();
  if (a5)
  {
    v12 = sub_1D1E675DC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D18F9814(a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v14 = sub_1D1E67BFC();

  v15 = [v13 initWithCommandID:v9 endpointID:v10 clusterID:v11 accessory:a4 commandFields:v12 expectedValues:v14];

  return v15;
}

id HMMatterCommand.init(actionCommand:)(uint64_t a1)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  v3 = sub_1D1E66A2C();
  v4 = [v2 accessoryFor_];

  if (v4)
  {
    v5 = type metadata accessor for ActionCommand(0);
    v6 = (a1 + *(v5 + 28));
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    if (((*(v8 + 24))(v7, v8) & 0x100000000) != 0)
    {
      sub_1D1905F20(a1, type metadata accessor for ActionCommand);
    }

    else
    {
      v9 = *(a1 + *(v5 + 24));
      v10 = v6[3];
      v11 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v10);
      (*(v11 + 40))(&v29, v10, v11);
      v12 = v29;
      v13 = v6[3];
      v14 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v13);
      (*(v14 + 64))(&v28, v13, v14);
      if (v28)
      {
        v15 = MatterCommandFields.asDictionary()();
      }

      else
      {
        v15 = 0;
      }

      v16 = dword_1D1E8294C[v12];
      v17 = v6[3];
      v18 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v17);
      v19 = MatterCommand.expectedValues(endpointID:)(v9, v17, v18);
      v20 = sub_1D1E692CC();
      v21 = sub_1D1E692AC();
      v22 = sub_1D1E692CC();
      if (v15)
      {
        v23 = sub_1D1E675DC();
      }

      else
      {
        v23 = 0;
      }

      v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_1D18F9814(v19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v25 = sub_1D1E67BFC();

      v26 = [v24 initWithCommandID:v20 endpointID:v21 clusterID:v22 accessory:v4 commandFields:v23 expectedValues:v25];

      sub_1D1905F20(a1, type metadata accessor for ActionCommand);
      if (v26)
      {

        return v26;
      }
    }
  }

  else
  {
    sub_1D1905F20(a1, type metadata accessor for ActionCommand);
  }

  return 0;
}

uint64_t HMMatterCommand.effectedEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for StaticMatterDevice();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v38 - v14;
  v16 = [v1 accessory];
  v17 = sub_1D1E682DC();
  v19 = v18;

  if (v19)
  {
    goto LABEL_12;
  }

  v38[0] = a1;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE07DC60;
  swift_getKeyPath();
  v38[1] = v20;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v21 = v20 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v22 = *(v21 + *(type metadata accessor for MatterStateSnapshot() + 24));
  a1 = v38[0];
  if (!*(v22 + 16))
  {
    goto LABEL_12;
  }

  v23 = sub_1D17420B0(v17);
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D1905FE8(*(v22 + 56) + *(v9 + 72) * v23, v13, type metadata accessor for StaticMatterDevice);
  sub_1D1905F80(v13, v15, type metadata accessor for StaticMatterDevice);
  v25 = *&v15[*(v8 + 56)];
  v26 = [v2 endpointID];
  v27 = [v26 unsignedShortValue];

  if (*(v25 + 16) && (v28 = sub_1D171D15C(v27), (v29 & 1) != 0))
  {
    v30 = v28;
    v31 = *(v25 + 56);
    v32 = type metadata accessor for StaticEndpoint();
    v33 = *(v32 - 8);
    v34 = v31 + *(v33 + 72) * v30;
    a1 = v38[0];
    sub_1D1905FE8(v34, v7, type metadata accessor for StaticEndpoint);
    (*(v33 + 56))(v7, 0, 1, v32);
  }

  else
  {
    v32 = type metadata accessor for StaticEndpoint();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  }

  sub_1D1905F20(v15, type metadata accessor for StaticMatterDevice);
  type metadata accessor for StaticEndpoint();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v7, 1, v32) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_12:
    v36 = type metadata accessor for StaticEndpoint();
    return (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  sub_1D1905F80(v7, a1, type metadata accessor for StaticEndpoint);
  return (*(v35 + 56))(a1, 0, 1, v32);
}

double HMMatterCommand.associatedMatterTemplate.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = [v1 accessory];
  v13 = sub_1D1E682DC();
  v15 = v14;

  if (v15)
  {
    goto LABEL_7;
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE07DC60;
  swift_getKeyPath();
  v22[1] = v16;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v17 = v16 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v18 = *(v17 + *(type metadata accessor for MatterStateSnapshot() + 24));
  if (!*(v18 + 16))
  {
    goto LABEL_7;
  }

  v19 = sub_1D17420B0(v13);
  if (v20)
  {
    sub_1D1905FE8(*(v18 + 56) + *(v5 + 72) * v19, v9, type metadata accessor for StaticMatterDevice);
    sub_1D1905F80(v9, v11, type metadata accessor for StaticMatterDevice);
    static MatterCommandFactory.template(for:device:)(v2, v11, a1);
    sub_1D1905F20(v11, type metadata accessor for StaticMatterDevice);
  }

  else
  {
LABEL_7:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double HMMatterCommand.associatedMatterCommand.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 clusterID];
  v5 = [v4 unsignedIntValue];

  ClusterKind.init(rawValue:)(v5);
  if (v31 == 30)
  {
    goto LABEL_16;
  }

  v6 = [v2 expectedValues];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v8 = sub_1D1E67C1C();

  v9 = [v2 commandID];
  v10 = [v9 unsignedIntValue];

  v11 = sub_1D18F95CC(v8);

  v12.value._rawValue = [v2 commandFields];
  if (v12.value._rawValue)
  {
    rawValue = v12.value._rawValue;
    v14 = sub_1D1E675FC();
  }

  else
  {
    v14 = 0;
  }

  v12.value._rawValue = v14;
  MatterCommandFields.init(commandFields:)(v12);
  if (v31 - 24 >= 4)
  {
    if (v31 == 11)
    {
      v28 = v11;
      v15 = &type metadata for StaticOnOffCluster.Command;
      v16 = sub_1D18FA3A8();
    }

    else
    {
      if (v31 != 17)
      {

        goto LABEL_16;
      }

      v28 = v11;
      v15 = &type metadata for StaticColorControlCluster.Command;
      v16 = sub_1D18FA3FC();
    }
  }

  else
  {
    v28 = v11;
    v15 = &type metadata for StaticRVCClusterGroup.Command;
    v16 = sub_1D18FA450();
  }

  v17 = v16;
  v30 = v31;
  v29 = v31;
  v18 = *(v16 + 16);
  v19 = sub_1D1E685AC();
  v27[1] = v27;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v27 - v22;

  v18(&v30, v10, v28, &v29, v15, v17);
  Description = v15[-1].Description;
  if ((Description[6])(v23, 1, v15) != 1)
  {
    *(a1 + 24) = v15;
    *(a1 + 32) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    Description[4](boxed_opaque_existential_1, v23, v15);

    return result;
  }

  (*(v20 + 8))(v23, v19);
LABEL_16:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t HMMatterCommand.overridingAttributes.getter@<X0>(unint64_t *a1@<X8>)
{
  HMMatterCommand.associatedMatterCommand.getter(&v13);
  if (v14)
  {
    sub_1D1742190(&v13, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = (*(v4 + 72))(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v8 + 40))(&v13, v7, v8);
      v9 = v13;
      v10 = [v1 endpointID];
      v11 = [v10 unsignedShortValue];

      *a1 = v9 | (v11 << 16);
      a1[1] = v6;
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    result = sub_1D1741A30(&v13, &qword_1EC646A98, &unk_1D1E858B0);
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t HMMatterCommand.matterExpectedValues.getter()
{
  v1 = v0;
  HMMatterCommand.associatedMatterCommand.getter(&v11);
  if (v12)
  {
    sub_1D1742190(&v11, v13);
    v2 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = (*(v3 + 56))(v2, v3);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = [v1 endpointID];
    v8 = [v7 unsignedShortValue];

    v9 = MatterCommand.expectedValues(for:endpointID:)(v4, v8, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D1741A30(&v11, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v9;
}

unint64_t HMMatterCommand.matterCommandFields.getter()
{
  HMMatterCommand.associatedMatterCommand.getter(&v4);
  if (v5)
  {
    sub_1D1742190(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v1 + 64))(&v4, v0, v1);
    if (v4)
    {
      v2 = MatterCommandFields.asDictionary()();
    }

    else
    {
      v2 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1D1741A30(&v4, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v2;
}

char *Set<>.byExecutionOrder()(uint64_t a1)
{
  v2 = sub_1D19065AC(a1, sub_1D1808600, sub_1D1805A04);
  sub_1D1906050(&v2);
  return v2;
}

BOOL sub_1D1905DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  HMMatterCommand.associatedMatterCommand.getter(&v13);
  if (!v14)
  {
    sub_1D1741A30(&v13, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  sub_1D1742190(&v13, v16);
  HMMatterCommand.associatedMatterCommand.getter(&v11);
  if (!v12)
  {
    sub_1D1741A30(&v11, &qword_1EC646A98, &unk_1D1E858B0);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return 0;
  }

  sub_1D1742190(&v11, &v13);
  v4 = v17;
  v5 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, v14);
  v9 = v6 < (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(&v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_1D1905F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1905F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1905FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1906050(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D190666C(v6);
  return sub_1D1E6897C();
}

void sub_1D190611C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D19062C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v7 = *(sub_1D1E66A7C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_1D1E66A7C() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D1906460(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1D19065AC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1D1E6873C();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1D1716918();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1D190666C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1E68F9C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
        v6 = sub_1D1E67C8C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D1906D9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D1906780(0, v2, 1, a1);
  }
}

void sub_1D1906780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = a1;
  v44 = a2;
  if (a3 != a2)
  {
    v4 = *a4;
    v47 = *a4;
LABEL_9:
    v7 = *(v4 + 8 * a3);
    v45 = a3;
    v8 = a3;
    while (1)
    {
      v9 = *(v4 + 8 * (v8 - 1));
      v6 = v7;
      v5 = v9;
      v10 = [v6 clusterID];
      v11 = [v10 unsignedIntValue];

      ClusterKind.init(rawValue:)(v11);
      v12 = v54;
      if (v54 == 30)
      {
        goto LABEL_5;
      }

      v13 = [v6 expectedValues];
      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = v13;
      v48 = v8 - 1;
      v49 = v8;
      v52 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v15 = sub_1D1E67C1C();

      v16 = [v6 commandID];
      v51 = [v16 unsignedIntValue];

      v17 = *(v15 + 16);
      v53 = v6;
      if (v17)
      {
        *&v54 = MEMORY[0x1E69E7CC0];
        sub_1D178CFB0(0, v17, 0);
        v18 = v54;
        v19 = 32;
        do
        {
          v56 = *(v15 + v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          swift_dynamicCast();
          v20 = v63;
          *&v54 = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1D178CFB0((v21 > 1), v22 + 1, 1);
            v18 = v54;
          }

          *(v18 + 16) = v22 + 1;
          *(v18 + 8 * v22 + 32) = v20;
          v19 += 8;
          --v17;
        }

        while (v17);

        v6 = v53;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v23.value._rawValue = [v6 commandFields];
      if (v23.value._rawValue)
      {
        rawValue = v23.value._rawValue;
        v25 = sub_1D1E675FC();
      }

      else
      {
        v25 = 0;
      }

      v23.value._rawValue = v25;
      MatterCommandFields.init(commandFields:)(v23);
      v26 = v54;
      if ((v12 - 24) >= 4)
      {
        if (v12 == 11)
        {
          v27 = sub_1D18FA3A8();
          v28 = &type metadata for StaticOnOffCluster.Command;
        }

        else
        {
          if (v12 != 17)
          {

            v4 = v47;
            v5 = v52;
LABEL_5:
            v59 = 0;
            v57 = 0u;
            v58 = 0u;
LABEL_6:
            sub_1D1741A30(&v57, &qword_1EC646A98, &unk_1D1E858B0);
            goto LABEL_7;
          }

          v27 = sub_1D18FA3FC();
          v28 = &type metadata for StaticColorControlCluster.Command;
        }
      }

      else
      {
        v27 = sub_1D18FA450();
        v28 = &type metadata for StaticRVCClusterGroup.Command;
      }

      LOBYTE(v56) = v12;
      v63 = v26;
      v50 = *(v27 + 16);
      v29 = sub_1D1E685AC();
      v30 = *(v29 - 8);
      v31 = *(v30 + 64);
      MEMORY[0x1EEE9AC00](v29);
      v33 = &v43 - v32;

      v50(&v56, v51, v18, &v63, v28, v27);
      Description = v28[-1].Description;
      if (Description[6](v33, 1, v28) == 1)
      {

        (*(v30 + 8))(v33, v29);
        v4 = v47;
        v5 = v52;
        v6 = v53;
        goto LABEL_5;
      }

      *(&v58 + 1) = v28;
      v59 = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
      Description[4](boxed_opaque_existential_1, v33, v28);

      v4 = v47;
      v5 = v52;
      v6 = v53;
      if (!*(&v58 + 1))
      {
        goto LABEL_6;
      }

      sub_1D1742190(&v57, v60);
      HMMatterCommand.associatedMatterCommand.getter(&v54);
      if (!v55)
      {
        sub_1D1741A30(&v54, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v60);
LABEL_7:

LABEL_8:
        a3 = v45 + 1;
        if (v45 + 1 == v44)
        {
          return;
        }

        goto LABEL_9;
      }

      sub_1D1742190(&v54, &v57);
      v36 = v61;
      v37 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v38 = (*(v37 + 48))(v36, v37);
      v39 = *(&v58 + 1);
      v40 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      v41 = (*(v40 + 48))(v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v57);
      __swift_destroy_boxed_opaque_existential_1(v60);

      if (v38 >= v41)
      {
        goto LABEL_8;
      }

      if (!v4)
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 8 * v49);
      v42 = v48;
      *(v4 + 8 * v49) = *(v4 + 8 * v48);
      *(v4 + 8 * v42) = v7;
      v8 = v42;
      if (v42 == v46)
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_1D1906D9C(ValueMetadata **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v170 = a1;
  v174 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_176:
    v4 = *v170;
    if (!*v170)
    {
      goto LABEL_216;
    }

    Description = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v161 = Description;
LABEL_179:
      v196 = v161;
      Description = *(v161 + 2);
      if (Description >= 2)
      {
        while (*v174)
        {
          v162 = *&v161[16 * Description];
          v163 = v161;
          v164 = *&v161[16 * Description + 24];
          v165 = v176;
          sub_1D19083E8((*v174 + 8 * v162), (*v174 + 8 * *&v161[16 * Description + 16]), (*v174 + 8 * v164), v4);
          v176 = v165;
          if (v165)
          {
            goto LABEL_187;
          }

          if (v164 < v162)
          {
            goto LABEL_203;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_1D1E0BE44(v163);
          }

          if (Description - 2 >= *(v163 + 2))
          {
            goto LABEL_204;
          }

          v166 = &v163[16 * Description];
          *v166 = v162;
          *(v166 + 1) = v164;
          v196 = v163;
          sub_1D1E0BDB8(Description - 1);
          v161 = v196;
          Description = *(v196 + 2);
          if (Description <= 1)
          {
            goto LABEL_187;
          }
        }

        goto LABEL_214;
      }

LABEL_187:

      return;
    }

LABEL_210:
    v161 = sub_1D1E0BE44(Description);
    goto LABEL_179;
  }

  v168 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7 + 1;
    v173 = v7;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_51;
    }

    v10 = v7;
    v169 = v8;
    v11 = *v174;
    v193 = *(*v174 + 8 * v9);
    *&v190 = *(v11 + 8 * v7);
    v12 = v190;
    Description = v193;
    v4 = v12;
    v13 = v176;
    LODWORD(v180) = sub_1D1905DDC(&v193, &v190);
    v176 = v13;
    if (v13)
    {

      return;
    }

    v7 += 2;
    v14 = v10 + 2 < v6;
    v179 = v6;
    v178 = v11;
    LOBYTE(v10) = v180;
    if (!v14)
    {
LABEL_41:
      if ((v10 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_44:
      v45 = v173;
      v8 = v169;
      if (v7 < v173)
      {
        goto LABEL_207;
      }

      if (v173 < v7)
      {
        v46 = 8 * v7 - 8;
        v47 = 8 * v173;
        v48 = v7;
        do
        {
          if (v45 != --v48)
          {
            v49 = *v174;
            if (!*v174)
            {
              goto LABEL_213;
            }

            v50 = *(v49 + v47);
            *(v49 + v47) = *(v49 + v46);
            *(v49 + v46) = v50;
          }

          ++v45;
          v46 -= 8;
          v47 += 8;
        }

        while (v45 < v48);
      }

      goto LABEL_51;
    }

    while (1)
    {
      v15 = *(v11 + 8 * v9);
      v9 = v7;
      v16 = *(v11 + 8 * v7);
      v17 = v15;
      v4 = [v16 clusterID];
      Description = [v4 unsignedIntValue];

      ClusterKind.init(rawValue:)(Description);
      v18 = v185;
      if (v185 == 30 || (v19 = [v16 expectedValues]) == 0)
      {
        v192 = 0;
        v190 = 0u;
        v191 = 0u;
LABEL_35:
        sub_1D1741A30(&v190, &qword_1EC646A98, &unk_1D1E858B0);
        goto LABEL_36;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v21 = sub_1D1E67C1C();

      v183 = v16;
      v22 = [v16 commandID];
      LODWORD(v177) = [v22 unsignedIntValue];

      v23 = *(v21 + 16);
      v182 = v9;
      v181 = v17;
      if (v23)
      {
        *&v185 = MEMORY[0x1E69E7CC0];
        sub_1D178CFB0(0, v23, 0);
        Description = v185;
        v24 = 32;
        do
        {
          v188 = *(v21 + v24);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          swift_dynamicCast();
          v25 = v189;
          *&v185 = Description;
          v27 = *(Description + 16);
          v26 = *(Description + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1D178CFB0((v26 > 1), v27 + 1, 1);
            Description = v185;
          }

          *(Description + 16) = v27 + 1;
          *(Description + 8 * v27 + 32) = v25;
          v24 += 8;
          --v23;
        }

        while (v23);

        v6 = v179;
        v9 = v182;
        v11 = v178;
        v17 = v181;
      }

      else
      {

        Description = MEMORY[0x1E69E7CC0];
      }

      v16 = v183;
      v28.value._rawValue = [v183 commandFields];
      if (v28.value._rawValue)
      {
        rawValue = v28.value._rawValue;
        v4 = sub_1D1E675FC();
      }

      else
      {
        v4 = 0;
      }

      v28.value._rawValue = v4;
      MatterCommandFields.init(commandFields:)(v28);
      v30 = v185;
      if ((v18 - 24) >= 4)
      {
        if (v18 == 11)
        {
          v31 = sub_1D18FA3A8();
          v4 = &type metadata for StaticOnOffCluster.Command;
        }

        else
        {
          if (v18 != 17)
          {

            goto LABEL_34;
          }

          v31 = sub_1D18FA3FC();
          v4 = &type metadata for StaticColorControlCluster.Command;
        }
      }

      else
      {
        v31 = sub_1D18FA450();
        v4 = &type metadata for StaticRVCClusterGroup.Command;
      }

      LOBYTE(v188) = v18;
      v189 = v30;
      v32 = *(v31 + 16);
      v33 = sub_1D1E685AC();
      v175 = &v167;
      v34 = *(v33 - 8);
      v35 = *(v34 + 64);
      MEMORY[0x1EEE9AC00](v33);
      v37 = &v167 - v36;

      v32(&v188, v177, Description, &v189, v4, v31);
      Description = *(v4 - 8);
      if ((*(Description + 48))(v37, 1, v4) == 1)
      {

        (*(v34 + 8))(v37, v33);
        v6 = v179;
        v9 = v182;
        v11 = v178;
        v17 = v181;
        v16 = v183;
LABEL_34:
        v192 = 0;
        v190 = 0u;
        v191 = 0u;
        LOBYTE(v10) = v180;
        goto LABEL_35;
      }

      *(&v191 + 1) = v4;
      v192 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v190);
      v39 = *(Description + 32);
      Description += 32;
      v39(boxed_opaque_existential_1, v37, v4);

      v6 = v179;
      v9 = v182;
      v11 = v178;
      LOBYTE(v10) = v180;
      v17 = v181;
      v16 = v183;
      if (!*(&v191 + 1))
      {
        goto LABEL_35;
      }

      sub_1D1742190(&v190, &v193);
      Description = v17;
      HMMatterCommand.associatedMatterCommand.getter(&v185);
      if (*(&v186 + 1))
      {
        break;
      }

      sub_1D1741A30(&v185, &qword_1EC646A98, &unk_1D1E858B0);
      __swift_destroy_boxed_opaque_existential_1(&v193);
LABEL_36:

      if (v10)
      {
        v7 = v9;
        goto LABEL_44;
      }

LABEL_37:
      v7 = v9 + 1;
      if (v9 + 1 == v6)
      {
        v7 = v6;
        goto LABEL_41;
      }
    }

    sub_1D1742190(&v185, &v190);
    v40 = v194;
    v41 = v195;
    __swift_project_boxed_opaque_existential_1(&v193, v194);
    v4 = (*(v41 + 48))(v40, v41);
    v42 = v16;
    v10 = *(&v191 + 1);
    v43 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
    v44 = v10;
    LODWORD(v10) = v180;
    Description = (*(v43 + 48))(v44, v43);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    __swift_destroy_boxed_opaque_existential_1(&v193);

    if ((v10 ^ (v4 >= Description)))
    {
      goto LABEL_37;
    }

    v7 = v9;
    if (v10)
    {
      goto LABEL_44;
    }

LABEL_42:
    v8 = v169;
LABEL_51:
    v51 = v174[1];
    if (v7 >= v51)
    {
      goto LABEL_121;
    }

    if (__OFSUB__(v7, v173))
    {
      goto LABEL_206;
    }

    if (v7 - v173 >= v168)
    {
LABEL_121:
      v53 = v173;
LABEL_122:
      if (v7 < v53)
      {
        goto LABEL_205;
      }

      v115 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v115;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v115 + 2) + 1, 1, v115);
      }

      v4 = *(v8 + 2);
      v116 = *(v8 + 3);
      Description = v4 + 1;
      if (v4 >= v116 >> 1)
      {
        v8 = sub_1D177D070((v116 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = Description;
      v117 = &v8[16 * v4];
      *(v117 + 4) = v173;
      *(v117 + 5) = v7;
      v118 = *v170;
      if (!*v170)
      {
        goto LABEL_215;
      }

      if (!v4)
      {
LABEL_3:
        v6 = v174[1];
        if (v7 >= v6)
        {
          goto LABEL_176;
        }

        continue;
      }

      while (1)
      {
        v119 = Description - 1;
        if (Description >= 4)
        {
          break;
        }

        if (Description == 3)
        {
          v120 = *(v8 + 4);
          v121 = *(v8 + 5);
          v130 = __OFSUB__(v121, v120);
          v122 = v121 - v120;
          v123 = v130;
LABEL_142:
          if (v123)
          {
            goto LABEL_194;
          }

          v136 = &v8[16 * Description];
          v138 = *v136;
          v137 = *(v136 + 1);
          v139 = __OFSUB__(v137, v138);
          v140 = v137 - v138;
          v141 = v139;
          if (v139)
          {
            goto LABEL_197;
          }

          v142 = &v8[16 * v119 + 32];
          v144 = *v142;
          v143 = *(v142 + 1);
          v130 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v130)
          {
            goto LABEL_200;
          }

          if (__OFADD__(v140, v145))
          {
            goto LABEL_201;
          }

          if (v140 + v145 >= v122)
          {
            if (v122 < v145)
            {
              v119 = Description - 2;
            }

            goto LABEL_163;
          }

          goto LABEL_156;
        }

        v146 = &v8[16 * Description];
        v148 = *v146;
        v147 = *(v146 + 1);
        v130 = __OFSUB__(v147, v148);
        v140 = v147 - v148;
        v141 = v130;
LABEL_156:
        if (v141)
        {
          goto LABEL_196;
        }

        v149 = &v8[16 * v119];
        v151 = *(v149 + 4);
        v150 = *(v149 + 5);
        v130 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v130)
        {
          goto LABEL_199;
        }

        if (v152 < v140)
        {
          goto LABEL_3;
        }

LABEL_163:
        v4 = v119 - 1;
        if (v119 - 1 >= Description)
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*v174)
        {
          goto LABEL_212;
        }

        v157 = v8;
        Description = *&v8[16 * v4 + 32];
        v158 = *&v8[16 * v119 + 40];
        v159 = v176;
        sub_1D19083E8((*v174 + 8 * Description), (*v174 + 8 * *&v8[16 * v119 + 32]), (*v174 + 8 * v158), v118);
        v176 = v159;
        if (v159)
        {
          goto LABEL_187;
        }

        if (v158 < Description)
        {
          goto LABEL_190;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = sub_1D1E0BE44(v157);
        }

        if (v4 >= *(v157 + 2))
        {
          goto LABEL_191;
        }

        v160 = &v157[16 * v4];
        *(v160 + 4) = Description;
        *(v160 + 5) = v158;
        v196 = v157;
        sub_1D1E0BDB8(v119);
        v8 = v196;
        Description = *(v196 + 2);
        if (Description <= 1)
        {
          goto LABEL_3;
        }
      }

      v124 = &v8[16 * Description + 32];
      v125 = *(v124 - 64);
      v126 = *(v124 - 56);
      v130 = __OFSUB__(v126, v125);
      v127 = v126 - v125;
      if (v130)
      {
        goto LABEL_192;
      }

      v129 = *(v124 - 48);
      v128 = *(v124 - 40);
      v130 = __OFSUB__(v128, v129);
      v122 = v128 - v129;
      v123 = v130;
      if (v130)
      {
        goto LABEL_193;
      }

      v131 = &v8[16 * Description];
      v133 = *v131;
      v132 = *(v131 + 1);
      v130 = __OFSUB__(v132, v133);
      v134 = v132 - v133;
      if (v130)
      {
        goto LABEL_195;
      }

      v130 = __OFADD__(v122, v134);
      v135 = v122 + v134;
      if (v130)
      {
        goto LABEL_198;
      }

      if (v135 >= v127)
      {
        v153 = &v8[16 * v119 + 32];
        v155 = *v153;
        v154 = *(v153 + 1);
        v130 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v130)
        {
          goto LABEL_202;
        }

        if (v122 < v156)
        {
          v119 = Description - 2;
        }

        goto LABEL_163;
      }

      goto LABEL_142;
    }

    break;
  }

  v52 = v173 + v168;
  if (__OFADD__(v173, v168))
  {
    goto LABEL_208;
  }

  if (v52 >= v51)
  {
    v52 = v174[1];
  }

  if (v52 < v173)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (v7 == v52)
  {
    v53 = v173;
    goto LABEL_122;
  }

  v169 = v8;
  v4 = *v174;
  v171 = v52;
  v172 = v4;
  while (2)
  {
    v54 = *(v4 + 8 * v7);
    v55 = v7;
    v175 = v7;
LABEL_66:
    v178 = v55 - 1;
    v56 = *(v4 + 8 * (v55 - 1));
    v57 = v54;
    v58 = v56;
    v59 = [v57 clusterID];
    Description = [v59 unsignedIntValue];

    ClusterKind.init(rawValue:)(Description);
    v60 = v185;
    if (v185 == 30 || (v61 = [v57 expectedValues]) == 0)
    {
      v192 = 0;
      v190 = 0u;
      v191 = 0u;
      v4 = v172;
      goto LABEL_62;
    }

    v62 = v61;
    v177 = v55;
    v183 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v63 = sub_1D1E67C1C();

    v64 = [v57 commandID];
    LODWORD(v181) = [v64 unsignedIntValue];

    v65 = *(v63 + 16);
    v182 = v57;
    if (v65)
    {
      *&v185 = MEMORY[0x1E69E7CC0];
      sub_1D178CFB0(0, v65, 0);
      Description = v185;
      v66 = 32;
      do
      {
        v188 = *(v63 + v66);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        swift_dynamicCast();
        v67 = v189;
        *&v185 = Description;
        v69 = *(Description + 16);
        v68 = *(Description + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1D178CFB0((v68 > 1), v69 + 1, 1);
          Description = v185;
        }

        *(Description + 16) = v69 + 1;
        *(Description + 8 * v69 + 32) = v67;
        v66 += 8;
        --v65;
      }

      while (v65);

      v57 = v182;
    }

    else
    {

      Description = MEMORY[0x1E69E7CC0];
    }

    v70.value._rawValue = [v57 commandFields];
    if (v70.value._rawValue)
    {
      v71 = v70.value._rawValue;
      v72 = sub_1D1E675FC();
    }

    else
    {
      v72 = 0;
    }

    v70.value._rawValue = v72;
    MatterCommandFields.init(commandFields:)(v70);
    v73 = v185;
    if ((v60 - 24) < 4)
    {
      v74 = sub_1D18FA450();
      v75 = &type metadata for StaticRVCClusterGroup.Command;
      goto LABEL_80;
    }

    if (v60 != 11)
    {
      if (v60 == 17)
      {
        v74 = sub_1D18FA3FC();
        v75 = &type metadata for StaticColorControlCluster.Command;
        goto LABEL_80;
      }

      v4 = v172;
      v58 = v183;
LABEL_111:
      v192 = 0;
      v190 = 0u;
      v191 = 0u;
      v7 = v175;
LABEL_62:
      sub_1D1741A30(&v190, &qword_1EC646A98, &unk_1D1E858B0);

LABEL_63:
      goto LABEL_64;
    }

    v74 = sub_1D18FA3A8();
    v75 = &type metadata for StaticOnOffCluster.Command;
LABEL_80:
    LOBYTE(v188) = v60;
    v189 = v73;
    v179 = *(v74 + 16);
    v76 = sub_1D1E685AC();
    v180 = &v167;
    v77 = *(v76 - 8);
    v78 = *(v77 + 64);
    MEMORY[0x1EEE9AC00](v76);
    v80 = &v167 - v79;

    v179(&v188, v181, Description, &v189, v75, v74);
    Description = v75[-1].Description;
    if ((*(Description + 48))(v80, 1, v75) == 1)
    {

      (*(v77 + 8))(v80, v76);
      v4 = v172;
      v58 = v183;
      v57 = v182;
      goto LABEL_111;
    }

    *(&v191 + 1) = v75;
    v192 = v74;
    v81 = __swift_allocate_boxed_opaque_existential_1(&v190);
    v82 = *(Description + 32);
    Description += 32;
    v82(v81, v80, v75);

    v58 = v183;
    if (!*(&v191 + 1))
    {
      v7 = v175;
      v4 = v172;
      v57 = v182;
      goto LABEL_62;
    }

    sub_1D1742190(&v190, &v193);
    v83 = [v58 clusterID];
    v84 = [v83 unsignedIntValue];

    ClusterKind.init(rawValue:)(v84);
    v85 = v189;
    if (v189 == 30)
    {
      goto LABEL_114;
    }

    v86 = [v58 expectedValues];
    if (!v86)
    {
      goto LABEL_114;
    }

    v87 = v86;
    v88 = sub_1D1E67C1C();

    v89 = [v58 commandID];
    LODWORD(v181) = [v89 unsignedIntValue];

    v90 = *(v88 + 16);
    if (v90)
    {
      v189 = MEMORY[0x1E69E7CC0];
      sub_1D178CFB0(0, v90, 0);
      v91 = v189;
      v92 = 32;
      do
      {
        v184 = *(v88 + v92);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        swift_dynamicCast();
        v93 = v188;
        v189 = v91;
        v95 = *(v91 + 16);
        v94 = *(v91 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_1D178CFB0((v94 > 1), v95 + 1, 1);
          v91 = v189;
        }

        *(v91 + 16) = v95 + 1;
        *(v91 + 8 * v95 + 32) = v93;
        v92 += 8;
        --v90;
      }

      while (v90);

      v58 = v183;
    }

    else
    {

      v91 = MEMORY[0x1E69E7CC0];
    }

    v96.value._rawValue = [v58 commandFields];
    if (v96.value._rawValue)
    {
      v97 = v96.value._rawValue;
      v98 = sub_1D1E675FC();
    }

    else
    {
      v98 = 0;
    }

    v96.value._rawValue = v98;
    MatterCommandFields.init(commandFields:)(v96);
    v99 = v189;
    if ((v85 - 24) >= 4)
    {
      if (v85 == 11)
      {
        v100 = sub_1D18FA3A8();
        v101 = &type metadata for StaticOnOffCluster.Command;
      }

      else
      {
        if (v85 != 17)
        {

LABEL_114:
          v187 = 0;
          v185 = 0u;
          v186 = 0u;
          v7 = v175;
          v4 = v172;
LABEL_116:
          Description = v182;
          sub_1D1741A30(&v185, &qword_1EC646A98, &unk_1D1E858B0);
          __swift_destroy_boxed_opaque_existential_1(&v193);

          goto LABEL_63;
        }

        v100 = sub_1D18FA3FC();
        v101 = &type metadata for StaticColorControlCluster.Command;
      }
    }

    else
    {
      v100 = sub_1D18FA450();
      v101 = &type metadata for StaticRVCClusterGroup.Command;
    }

    LOBYTE(v184) = v85;
    v188 = v99;
    v180 = *(v100 + 16);
    v102 = sub_1D1E685AC();
    v103 = *(v102 - 8);
    v104 = *(v103 + 64);
    MEMORY[0x1EEE9AC00](v102);
    v106 = &v167 - v105;

    (v180)(&v184, v181, v91, &v188, v101, v100);
    v107 = v101[-1].Description;
    if (v107[6](v106, 1, v101) == 1)
    {

      (*(v103 + 8))(v106, v102);
      v58 = v183;
      goto LABEL_114;
    }

    *(&v186 + 1) = v101;
    v187 = v100;
    v108 = __swift_allocate_boxed_opaque_existential_1(&v185);
    v107[4](v108, v106, v101);

    if (!*(&v186 + 1))
    {
      v7 = v175;
      v4 = v172;
      v58 = v183;
      goto LABEL_116;
    }

    sub_1D1742190(&v185, &v190);
    v109 = v194;
    v110 = v195;
    __swift_project_boxed_opaque_existential_1(&v193, v194);
    v111 = (*(v110 + 48))(v109, v110);
    v112 = *(&v191 + 1);
    v113 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
    Description = (*(v113 + 48))(v112, v113);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    __swift_destroy_boxed_opaque_existential_1(&v193);

    v7 = v175;
    if (v111 >= Description)
    {
      v4 = v172;
LABEL_64:
      if (++v7 == v171)
      {
        v7 = v171;
        v8 = v169;
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  v4 = v172;
  if (v172)
  {
    v54 = *(&v172->Kind + v177);
    v114 = v178;
    *(&v172->Kind + v177) = *(&v172->Kind + v178);
    *(v4 + 8 * v114) = v54;
    v55 = v114;
    if (v114 == v173)
    {
      goto LABEL_64;
    }

    goto LABEL_66;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
}