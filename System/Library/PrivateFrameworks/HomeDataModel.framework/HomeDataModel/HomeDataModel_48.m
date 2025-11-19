unint64_t sub_1D1AE2180(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D1E686AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1D1E684EC();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D1AE2320(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D1E686AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1D1E691FC() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D1AE24A4(unint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v47 = sub_1D1E66A7C();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2(0);
  v10 = *(*(v49 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - v15;
  v17 = *v3;
  v18 = *v3 + 56;
  v19 = -1 << *(*v3 + 32);
  v20 = (a1 + 1) & ~v19;
  if (((1 << v20) & *(v18 + 8 * (v20 >> 6))) != 0)
  {
    v50 = v7;
    v21 = v14;
    v22 = ~v19;

    v23 = sub_1D1E686AC();
    if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) != 0)
    {
      v51 = (v23 + 1) & v22;
      v24 = *(v21 + 72);
      v43 = (v50 + 8);
      v44 = (v50 + 32);
      v25 = v48;
      v50 = v24;
      v45 = v22;
      do
      {
        v26 = v24 * v20;
        sub_1D1AE37A8(*(v17 + 48) + v24 * v20, v16, a3);
        v27 = *(v17 + 40);
        sub_1D1E6920C();
        sub_1D1AE37A8(v16, v25, a3);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
        v29 = (*(*(v28 - 8) + 48))(v25, 3, v28);
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }
        }

        else
        {
          if (!v29)
          {
            v30 = v46;
            v31 = v25;
            v32 = v18;
            v33 = v47;
            (*v44)(v46, v31, v47);
            MEMORY[0x1D3892850](1);
            sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
            sub_1D1E676EC();
            v34 = v30;
            v22 = v45;
            v35 = v33;
            v18 = v32;
            v25 = v48;
            (*v43)(v34, v35);
            goto LABEL_15;
          }

          v36 = 0;
        }

        MEMORY[0x1D3892850](v36);
LABEL_15:
        v37 = sub_1D1E6926C();
        sub_1D1AE3810(v16, a3);
        v38 = v37 & v22;
        if (a1 >= v51)
        {
          v24 = v50;
          if (v38 < v51)
          {
            goto LABEL_6;
          }

LABEL_19:
          if (a1 < v38)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }

        v24 = v50;
        if (v38 < v51)
        {
          goto LABEL_19;
        }

LABEL_20:
        v39 = v24 * a1;
        if ((v24 * a1) < v26 || *(v17 + 48) + v24 * a1 >= *(v17 + 48) + v26 + v24)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v20;
          if (v39 == v26)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v20;
LABEL_6:
        v20 = (v20 + 1) & v22;
      }

      while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
    }

    *(v18 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v18 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v40 = *(v17 + 16);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v42;
    ++*(v17 + 36);
  }

  return result;
}

uint64_t sub_1D1AE2920(unint64_t a1)
{
  v32 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v8;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = a1;
    v16 = sub_1D1E686AC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v34 = (v16 + 1) & v13;
      v35 = v10;
      v17 = *(v3 + 72);
      v18 = v9;
      v33 = v17;
      while (1)
      {
        v19 = v17 * v12;
        v20 = v36;
        sub_1D1AE37A8(*(v18 + 48) + v17 * v12, v36, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v21 = v18;
        v22 = *(v18 + 40);
        sub_1D1E6920C();
        v23 = v37;
        sub_1D1AE37A8(v20, v37, type metadata accessor for WriteInProgressStatusViewModel.ID);
        MEMORY[0x1D3892850](0);
        v24 = sub_1D1E66A7C();
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        sub_1D1E676EC();
        (*(*(v24 - 8) + 8))(v23, v24);
        v25 = sub_1D1E6926C();
        sub_1D1AE3810(v20, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v26 = v25 & v13;
        if (v15 >= v34)
        {
          if (v26 < v34)
          {
            v18 = v21;
          }

          else
          {
            v18 = v21;
            if (v15 >= v26)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v18 = v21;
          if (v26 >= v34 || v15 >= v26)
          {
LABEL_13:
            v17 = v33;
            v27 = v33 * v15;
            if (v33 * v15 < v19 || *(v18 + 48) + v33 * v15 >= (*(v18 + 48) + v19 + v33))
            {
              swift_arrayInitWithTakeFrontToBack();
              v15 = v12;
            }

            else
            {
              v15 = v12;
              if (v27 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                v15 = v12;
              }
            }

            goto LABEL_6;
          }
        }

        v17 = v33;
LABEL_6:
        v12 = (v12 + 1) & v13;
        v10 = v35;
        if (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_21;
        }
      }
    }

    v18 = v9;
LABEL_21:
    *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v15) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v9;
  }

  v28 = *(v18 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v30;
    ++*(v18 + 36);
  }

  return result;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC0D12SubscriptionV6ReasonO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeState.Stream.StateSubscription.Reason();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_1D1AE37A8(a1, &v25 - v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1AE37A8(a2, &v17[v18], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v18], 3, v19) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v17[v18], 3, v19) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1D1741A30(v17, &qword_1EC642AD8, &unk_1D1E6E820);
    v22 = 0;
    return v22 & 1;
  }

  if (!v21)
  {
    sub_1D1AE37A8(v17, v12, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v20(&v17[v18], 3, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v20(&v17[v18], 3, v19) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC0D12SubscriptionV0A13SpecificationO2eeoiySbAI_AItFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1D1A82B50(*a2);
      sub_1D1A82B50(v2);
      v4 = sub_1D17A6E98(v2, v3);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1D1A82B50(*a2);
    sub_1D1A82B50(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1D1A82B60(v2);
  sub_1D1A82B60(v3);
  return v4 & 1;
}

uint64_t type metadata accessor for HomeState.Stream.StateSubscription.Reason()
{
  result = qword_1EC64A988;
  if (!qword_1EC64A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1AE3140(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D1AE3188(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE081480);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Releasing provided assertion.", v7, 2u);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  return [v2 _endActiveAssertion_];
}

unint64_t sub_1D1AE32DC()
{
  result = qword_1EC64A960;
  if (!qword_1EC64A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A960);
  }

  return result;
}

unint64_t sub_1D1AE3334()
{
  result = qword_1EC64A968;
  if (!qword_1EC64A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A968);
  }

  return result;
}

unint64_t sub_1D1AE338C()
{
  result = qword_1EC64A970;
  if (!qword_1EC64A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A970);
  }

  return result;
}

unint64_t sub_1D1AE33E0()
{
  result = qword_1EC64A978;
  if (!qword_1EC64A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A978);
  }

  return result;
}

unint64_t sub_1D1AE3438()
{
  result = qword_1EC64A980;
  if (!qword_1EC64A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A980);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel0A5StateV6StreamC0D12SubscriptionV0A13SpecificationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1AE34A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D1AE34EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1AE3568()
{
  sub_1D1AE35C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D1AE35C0()
{
  if (!qword_1EE07B5F0)
  {
    v0 = sub_1D1E66A7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B5F0);
    }
  }
}

uint64_t sub_1D1AE3608(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1AE3664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D1AE36D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1ADEC14(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_1D1AE37A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE3810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AE3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE38D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1ADE588(a1, v4, v5, v6, v7, v8);
}

uint64_t static HomeState.Stream.homeStates()()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC3C3C;

  return sub_1D1AE7F94(sub_1D1AE3AB8, 0);
}

uint64_t sub_1D1AE3AB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642498 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EC64F560;
  *a1 = qword_1EC64F558;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F568;
  *(a1 + 16) = byte_1EC64F568;

  return sub_1D186145C(v1, v2);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(coverageProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D19C8EA0;

  return sub_1D1AE7F94(a1, a2);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(coverageConfig:)(uint64_t a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 72) = *(a1 + 16);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC64ABE8;
  *(v1 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE3C9C, v2, 0);
}

uint64_t sub_1D1AE3C9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1D1AC3828(v1, v2, v3);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = sub_1D1AE889C;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1D1AE3DD8;

  return sub_1D1AE7F94(sub_1D1AE88B0, v5);
}

uint64_t sub_1D1AE3DD8(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE3F0C, v4, 0);
}

uint64_t sub_1D1AE3F0C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(defaultingCoverageProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE4008, v3, 0);
}

uint64_t sub_1D1AE4008()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AE40F8;

  return sub_1D1AE7F94(sub_1D1AE8E98, v3);
}

uint64_t sub_1D1AE40F8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

void *sub_1D1AE4210@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
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
      v4 = sub_1D179B6E8(&unk_1F4D65C08);
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

uint64_t sub_1D1AE4364()
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
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v1[11] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE44A0, v6, 0);
}

uint64_t sub_1D1AE44A0()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1D1E6701C();
  __swift_project_value_buffer(v2, qword_1EC64A2A8);
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
  v0[12] = v17;
  (*(v11 + 8))(v9, v10);
  swift_beginAccess();
  v18 = *(v13 + 64);
  v0[13] = v18;
  v19 = v18;
  sub_1D1E67E3C();
  v20 = sub_1D1E67E7C();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v18;
  v21[5] = v17;
  v22 = v19;

  v23 = sub_1D1B1DFC0(0, 0, v12, &unk_1D1E97420, v21);
  v0[14] = v23;
  sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  v24 = *(MEMORY[0x1E69E86C0] + 4);
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_1D1AE4780;
  v26 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v25, v23, v26);
}

uint64_t sub_1D1AE4780()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE48AC, v3, 0);
}

uint64_t sub_1D1AE48AC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1AE4938(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_1D1E66A7C();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC64ABE8;
  v3[17] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE4A34, v7, 0);
}

uint64_t sub_1D1AE4A34()
{
  v53 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v52[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v52);

    v5 = v52[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 144) = v5;
  if (v5 >> 62)
  {
    v6 = sub_1D1E6873C();
    *(v0 + 152) = v6;
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_27:
    v43 = *(v0 + 144);
    v44 = *(v0 + 128);

    v45 = *(v0 + 8);

    return v45();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 152) = v6;
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v7;
      v9 = *(v0 + 144);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v10 = *(v9 + 8 * v7 + 32);
      }

      v11 = v10;
      *(v0 + 168) = v10;
      v12 = *(v0 + 96);
      (*(v0 + 88))();
      v14 = *(v0 + 40);
      v13 = *(v0 + 48);
      *(v0 + 176) = v14;
      *(v0 + 184) = v13;
      v15 = *(v0 + 56);
      *(v0 + 57) = v15;
      if (*(v8 + 1096) != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EC6BE298);
      v17 = v11;

      sub_1D186145C(v13, v15);
      v18 = sub_1D1E6707C();
      v19 = sub_1D1E6835C();

      sub_1D1861470(v13, v15);
      if (os_log_type_enabled(v18, v19))
      {
        log = v18;
        v21 = *(v0 + 120);
        v20 = *(v0 + 128);
        v47 = *(v0 + 112);
        v22 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v52[0] = v49;
        *v22 = 136315650;
        v48 = v19;
        v23 = [v17 name];
        v51 = v17;
        v24 = sub_1D1E6781C();
        v26 = v25;

        v27 = sub_1D1B1312C(v24, v26, v52);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2082;
        v28 = [v51 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v29 = sub_1D1E68FAC();
        v31 = v30;
        (*(v21 + 8))(v20, v47);
        v8 = 0x1EC642000;
        v32 = sub_1D1B1312C(v29, v31, v52);

        *(v22 + 14) = v32;
        *(v22 + 22) = 2082;
        v17 = v51;
        *(v0 + 64) = v14;
        *(v0 + 72) = v13;
        *(v0 + 80) = v15;
        v33 = SnapshotCoverageConfig.debugDescription.getter();
        v35 = sub_1D1B1312C(v33, v34, v52);

        *(v22 + 24) = v35;
        v18 = log;
        _os_log_impl(&dword_1D16EC000, log, v48, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v49, -1, -1);
        MEMORY[0x1D3893640](v22, -1, -1);
      }

      if (*(v14 + 16))
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 >= 3)
        {
          LOBYTE(v15) = -1;
          sub_1D186145C(v13, 255);
          sub_1D1861470(v13, 255);
          v36 = 0;
          v37 = 3;
        }

        else
        {
          sub_1D186145C(v13, v15);
          sub_1D186145C(v13, v15);

          v36 = v13;
          v37 = v15;
        }

        sub_1D1861470(v36, v37);
        break;
      }

      sub_1D186145C(v13, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v13, 3);
      sub_1D1861470(v13, 3);

      sub_1D1861470(v13, 3);

      v7 = *(v0 + 160) + 1;
      if (v7 == *(v0 + 152))
      {
        goto LABEL_27;
      }
    }

    v38 = *(v0 + 136);
    v39 = *(v0 + 104);
    sub_1D1AE8998(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v40 = swift_task_alloc();
    *(v0 + 192) = v40;
    *(v40 + 16) = v14;
    *(v40 + 24) = v13;
    *(v40 + 32) = v15;
    *(v40 + 40) = v39;
    *(v40 + 48) = v17;
    v41 = *(MEMORY[0x1E69E88D8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 200) = v42;
    *v42 = v0;
    v42[1] = sub_1D1AE5098;
  }

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1AE5098()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 57);

  sub_1D1861470(v3, v6);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5214, v5, 0);
}

uint64_t sub_1D1AE5214()
{
  v47 = v0;

  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 152))
  {
LABEL_2:
    v2 = *(v0 + 144);
    v3 = *(v0 + 128);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v1;
      v7 = *(v0 + 144);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v8 = *(v7 + 8 * v1 + 32);
      }

      v9 = v8;
      *(v0 + 168) = v8;
      v10 = *(v0 + 96);
      (*(v0 + 88))();
      v12 = *(v0 + 40);
      v11 = *(v0 + 48);
      *(v0 + 176) = v12;
      *(v0 + 184) = v11;
      v13 = *(v0 + 56);
      *(v0 + 57) = v13;
      if (*(v6 + 1096) != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EC6BE298);
      v15 = v9;

      sub_1D186145C(v11, v13);
      v16 = sub_1D1E6707C();
      v17 = sub_1D1E6835C();

      sub_1D1861470(v11, v13);
      if (os_log_type_enabled(v16, v17))
      {
        log = v16;
        v19 = *(v0 + 120);
        v18 = *(v0 + 128);
        v41 = *(v0 + 112);
        v20 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v20 = 136315650;
        v42 = v17;
        v21 = [v15 name];
        v45 = v15;
        v22 = sub_1D1E6781C();
        v24 = v23;

        v25 = sub_1D1B1312C(v22, v24, &v46);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        v26 = [v45 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8]);
        v27 = sub_1D1E68FAC();
        v29 = v28;
        (*(v19 + 8))(v18, v41);
        v6 = 0x1EC642000;
        v30 = sub_1D1B1312C(v27, v29, &v46);

        *(v20 + 14) = v30;
        *(v20 + 22) = 2082;
        v15 = v45;
        *(v0 + 64) = v12;
        *(v0 + 72) = v11;
        *(v0 + 80) = v13;
        v31 = SnapshotCoverageConfig.debugDescription.getter();
        v33 = sub_1D1B1312C(v31, v32, &v46);

        *(v20 + 24) = v33;
        v16 = log;
        _os_log_impl(&dword_1D16EC000, log, v42, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v43, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      if (*(v12 + 16))
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 >= 3)
        {
          LOBYTE(v13) = -1;
          sub_1D186145C(v11, 255);
          sub_1D1861470(v11, 255);
          v34 = 0;
          v35 = 3;
        }

        else
        {
          sub_1D186145C(v11, v13);
          sub_1D186145C(v11, v13);

          v34 = v11;
          v35 = v13;
        }

        sub_1D1861470(v34, v35);
        break;
      }

      sub_1D186145C(v11, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v11, 3);
      sub_1D1861470(v11, 3);

      sub_1D1861470(v11, 3);

      v1 = *(v0 + 160) + 1;
      if (v1 == *(v0 + 152))
      {
        goto LABEL_2;
      }
    }

    v36 = *(v0 + 136);
    v37 = *(v0 + 104);
    sub_1D1AE8998(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v38 = swift_task_alloc();
    *(v0 + 192) = v38;
    *(v38 + 16) = v12;
    *(v38 + 24) = v11;
    *(v38 + 32) = v13;
    *(v38 + 40) = v37;
    *(v38 + 48) = v15;
    v39 = *(MEMORY[0x1E69E88D8] + 4);
    v40 = swift_task_alloc();
    *(v0 + 200) = v40;
    *v40 = v0;
    v40[1] = sub_1D1AE5098;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1AE5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 64) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5860, v9, 0);
}

uint64_t sub_1D1AE5860()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v15 = *(v0 + 16);
  v6 = *(v0 + 64);
  v7 = sub_1D1E67E7C();
  v14 = *(*(v7 - 8) + 56);
  v14(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;

  sub_1D186145C(v4, v6);

  v9 = v2;
  sub_1D1DE256C(v1, &unk_1D1E973F8, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v14(v1, 1, 1, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(v10 + 56) = v3;
  *(v10 + 64) = v9;

  sub_1D186145C(v4, v6);

  v11 = v9;
  sub_1D1DE256C(v1, &unk_1D1E97408, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1AE5A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 33) = a5;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE5A8C, 0, 0);
}

uint64_t sub_1D1AE5A8C()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 33);
    v3 = *(v0 + 48);
    *(v0 + 16) = v1;
    *(v0 + 24) = v3;
    *(v0 + 32) = v2;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1D1AE5B78;
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    return sub_1D1AE5C6C(v5, (v0 + 16));
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D1AE5B78()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1AE5C6C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 64) = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v3 + 88) = v8;
  v9 = *(v8 - 8);
  *(v3 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a2;
  v14 = a2[1];
  *(v3 + 120) = v12;
  *(v3 + 128) = v13;
  *(v3 + 136) = v14;
  *(v3 + 168) = *(a2 + 16);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC64ABE8;
  *(v3 + 144) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5E24, v15, 0);
}

uint64_t sub_1D1AE5E24()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 56) + 24);
  v3 = [*(v0 + 48) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  *(v0 + 40) = v2;
  sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v0 + 104);
  if (*(v5 + 16))
  {

    v7 = sub_1D1742188(v6);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    if (v12)
    {
      v13 = v7;
      v31 = *(v5 + 56);
      v14 = type metadata accessor for HomeState();
      v15 = *(v14 - 8);
      sub_1D1AE8CD0(v31 + *(v15 + 72) * v13, v10, type metadata accessor for HomeState);
      (*(v9 + 8))(v8, v11);

      (*(v15 + 56))(v10, 0, 1, v14);
      goto LABEL_7;
    }

    (*(v9 + 8))(v8, v11);
  }

  else
  {
    v10 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v14 = type metadata accessor for HomeState();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
LABEL_7:
  v16 = *(v0 + 80);
  type metadata accessor for HomeState();
  v17 = 1;
  if (!(*(*(v14 - 8) + 48))(v16, 1, v14))
  {
    sub_1D1AE8CD0(v16, *(v0 + 120), type metadata accessor for StateSnapshot);
    v17 = 0;
    v16 = *(v0 + 80);
  }

  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  sub_1D1741A30(v16, &qword_1EC649148, &qword_1D1E96490);
  v20 = type metadata accessor for StateSnapshot(0);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v18, v17, 1, v20);
  sub_1D1741C08(v18, v19, &unk_1EC649E30, &unk_1D1E91250);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1D1741A30(*(v0 + 112), &unk_1EC649E30, &unk_1D1E91250);
LABEL_15:
    *(v0 + 152) = *(*(v0 + 56) + 144);

    return MEMORY[0x1EEE6DFA0](sub_1D1AE62FC, 0, 0);
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = *v23;

  sub_1D1AE8C70(v23, type metadata accessor for StateSnapshot);
  LOBYTE(v22) = sub_1D192A9D0(v24, v22);

  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = *(v0 + 112);
  v26 = *(v0 + 104);
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);
  sub_1D1741A30(*(v0 + 120), &unk_1EC649E30, &unk_1D1E91250);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1D1AE62FC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  **(v0 + 72) = v3;
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1D1AE63E0;
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 72);
  v9 = *(v0 + 168);

  return sub_1D1AB6894(v8, v1, v7, v9, 0);
}

uint64_t sub_1D1AE63E0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 72);
  v5 = *v0;

  sub_1D1AE8C70(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE6534, v2, 0);
}

uint64_t sub_1D1AE6534()
{
  v1 = v0[14];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  sub_1D1741A30(v0[15], &unk_1EC649E30, &unk_1D1E91250);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1AE65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 56) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE6610, 0, 0);
}

uint64_t sub_1D1AE6610()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);
  if (SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter())
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AE66F0, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D1AE66F0()
{
  v14 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 56);
  v12 = *(v0 + 24);
  v13 = v3;
  sub_1D186145C(v12, v3);
  LOBYTE(v2) = sub_1D1AE692C(v1, &v12);
  sub_1D1861470(v12, v13);
  if (v2)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(*(v0 + 32) + 152);
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_1D1AE682C;
    v8 = *(v0 + 24);
    v9 = *(v0 + 56);

    return sub_1D1AB6F80(v4, 0, 0, v5, v8, v9, 0);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1AE682C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1AE692C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v71[-v7];
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v71[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v71[-v19];
  v20 = *a2;
  v21 = *(a2 + 8);
  if (v21 == 255)
  {
    sub_1D186145C(*a2, 255);
    sub_1D1861470(v20, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v81 = *a2;
    v82 = v21;
    v78 = 0;
    v79 = 3;
    sub_1D186145C(v20, v21);
    sub_1D186145C(v20, v21);
    v22 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v81, &v78);

    sub_1D1861470(v20, v21);
    if (v22)
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v23 = sub_1D1E6709C();
      __swift_project_value_buffer(v23, qword_1EC6BE298);
      v24 = sub_1D1E6707C();
      v25 = sub_1D1E6831C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D16EC000, v24, v25, "Skipping matter snapshot because filter is noDevices", v26, 2u);
        MEMORY[0x1D3893640](v26, -1, -1);
      }

      v27 = 0;
      return v27 & 1;
    }
  }

  v75 = v14;
  v28 = *(v2 + 24);
  v29 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v81 = v28;
  sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v30 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v31 = *(v28 + v30);
  v32 = *(v31 + 16);
  v76 = v10;
  if (!v32)
  {
    v74 = *(v10 + 8);
    v74(v16, v9);
LABEL_14:
    v37 = type metadata accessor for HomeState();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    goto LABEL_15;
  }

  v33 = v9;

  v34 = sub_1D1742188(v16);
  if ((v35 & 1) == 0)
  {

    v74 = *(v76 + 8);
    v74(v16, v9);
    goto LABEL_14;
  }

  v36 = v34;
  v74 = *(v31 + 56);
  v37 = type metadata accessor for HomeState();
  v38 = *(v37 - 8);
  v73 = a1;
  v39 = v38;
  sub_1D1AE8CD0(v74 + *(v38 + 72) * v36, v8, type metadata accessor for HomeState);
  v9 = v33;
  v74 = *(v76 + 8);
  v74(v16, v33);

  (*(v39 + 56))(v8, 0, 1, v37);
  a1 = v73;
LABEL_15:
  type metadata accessor for HomeState();
  v40 = 1;
  if (!(*(*(v37 - 8) + 48))(v8, 1, v37))
  {
    sub_1D1AE8CD0(&v8[*(v37 + 24)], v77, type metadata accessor for MatterStateSnapshot);
    v40 = 0;
  }

  sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
  v41 = type metadata accessor for MatterStateSnapshot();
  v42 = v77;
  (*(*(v41 - 8) + 56))(v77, v40, 1, v41);
  v43 = HMHome.allMatterNodeIDs.getter();
  v44 = sub_1D179D1E0(&unk_1F4D65C38);
  v45 = MEMORY[0x1EEE9AC00](v44);
  *&v71[-32] = v20;
  v71[-24] = v21;
  *&v71[-16] = v42;
  *&v71[-8] = v45;
  v27 = sub_1D18B5F74(sub_1D1AE8BE4, &v71[-48], v43);

  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v46 = sub_1D1E6709C();
  __swift_project_value_buffer(v46, qword_1EC6BE298);
  sub_1D186145C(v20, v21);
  v47 = a1;
  v48 = sub_1D1E6707C();
  v49 = sub_1D1E6835C();

  sub_1D1861470(v20, v21);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v9;
    v51 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v80[0] = v73;
    *v51 = 67240962;
    *(v51 + 4) = v27 & 1;
    *(v51 + 8) = 2080;
    v52 = [v47 name];
    v53 = sub_1D1E6781C();
    v72 = v49;
    v54 = v53;
    v56 = v55;

    v57 = sub_1D1B1312C(v54, v56, v80);

    *(v51 + 10) = v57;
    *(v51 + 18) = 2080;
    v58 = [v47 uniqueIdentifier];
    v59 = v27;
    v60 = v75;
    sub_1D1E66A5C();

    sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v61 = sub_1D1E68FAC();
    v63 = v62;
    v64 = v60;
    v27 = v59;
    v74(v64, v50);
    v65 = sub_1D1B1312C(v61, v63, v80);

    *(v51 + 20) = v65;
    *(v51 + 28) = 2080;
    v78 = v20;
    v79 = v21;
    sub_1D186145C(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
    v66 = sub_1D1E678BC();
    v68 = sub_1D1B1312C(v66, v67, v80);

    *(v51 + 30) = v68;
    _os_log_impl(&dword_1D16EC000, v48, v72, "_matterSnapshotNeedsRefresh: %{BOOL,public}d for home %s (%s) with filter: %s", v51, 0x26u);
    v69 = v73;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v69, -1, -1);
    MEMORY[0x1D3893640](v51, -1, -1);
  }

  sub_1D1741A30(v77, &unk_1EC64F390, &qword_1D1E92B10);
  return v27 & 1;
}

uint64_t sub_1D1AE724C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
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

    sub_1D1AE8C70(v12, type metadata accessor for MatterStateSnapshot);
    if (*(v24 + 16) && (v25 = sub_1D17420B0(v22), (v26 & 1) != 0))
    {
      sub_1D1AE8CD0(*(v24 + 56) + *(v18 + 72) * v25, v16, type metadata accessor for StaticMatterDevice);
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

      sub_1D1AE8C70(v21, type metadata accessor for StaticMatterDevice);
      return 1;
    }

    sub_1D1AE8C70(v21, type metadata accessor for StaticMatterDevice);
  }

  return 0;
}

uint64_t sub_1D1AE781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE7840, 0, 0);
}

uint64_t sub_1D1AE7840()
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

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0x687365726665725FLL, 0xEA00000000002928, sub_1D1AE8DF8, v3, v7);
}

uint64_t sub_1D1AE793C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D1AE7A4C(uint64_t a1, void *a2, uint64_t a3)
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
    aBlock[4] = sub_1D1AE8E00;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_43;
    v14 = _Block_copy(aBlock);

    v15 = [a2 _refreshBeforeDate_completionHandler_];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1AE7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6701C();
  __swift_project_value_buffer(v13, qword_1EC64A2A8);
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
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6709C();
  __swift_project_value_buffer(v19, qword_1EC64A290);
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

uint64_t sub_1D1AE7F94(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[12] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE8030, v3, 0);
}

uint64_t sub_1D1AE8030()
{
  v8 = v0;
  v1 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  v0[8] = v1;
  v0[13] = sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  swift_beginAccess();
  LODWORD(v2) = *(v1 + v2);

  if (v2)
  {
    v0[16] = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D1AE85A4;

    return sub_1D1AE4364();
  }

  else
  {
    v5 = [objc_opt_self() defaultPrivateConfiguration];
    if (qword_1EC642318 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v5;
    os_unfair_lock_unlock(&dword_1EC649BD0);
    _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    v7 = 2;
    HomeState.Stream.fastStart(with:homesToPerformSnapshotsIfPossible:)(&v6, 0, 0, &v7);

    swift_unknownObjectRelease();
    _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();

    return MEMORY[0x1EEE6DFA0](sub_1D1AE8298, 0, 0);
  }
}

uint64_t sub_1D1AE8298()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = 3;
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1D1AE8384;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000014, 0x80000001D1EC46A0, sub_1D1AE88B8, v1, v4);
}

uint64_t sub_1D1AE8384()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE849C, 0, 0);
}

uint64_t sub_1D1AE84B8()
{
  v1 = v0[13];
  v2 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  v0[9] = v2;
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v4 = *(v2 + v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D1AE85A4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE86D0, v3, 0);
}

uint64_t sub_1D1AE86D0()
{
  v0[18] = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1D1AE8770;
  v3 = v0[10];
  v2 = v0[11];

  return sub_1D1AE4938(v3, v2);
}

uint64_t sub_1D1AE8770()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE8E9C, v3, 0);
}

uint64_t sub_1D1AE889C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1D1AC3828(v2, v3, v4);
}

uint64_t sub_1D1AE88C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4BFC;

  return sub_1D1AE5784(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t sub_1D1AE8998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1AE89E0()
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

  return sub_1D1AE5A64(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 48) != 255)
  {
    v3 = *(v0 + 40);
  }

  v4 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1AE8B14()
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

  return sub_1D1AE65E8(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t sub_1D1AE8C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1AE8C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AE8CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE8D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AE781C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AE8E00(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1AE7C2C(a1, v4, v5);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1AE8EA0(unint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = sub_1D1E66A7C();
  v3 = *(v22 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v22);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v11 = 0;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = a1 & 0xC000000000000001;
    v12 = v3 + 1;
    while (1)
    {
      if (v20)
      {
        v13 = MEMORY[0x1D3891EF0](v11, a1);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_12;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v3 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = i;
      v16 = a1;
      v17 = [v13 uniqueIdentifier];
      sub_1D1E66A5C();

      a1 = v16;
      i = v15;
      swift_beginAccess();
      sub_1D1762CB8(v9, v7);
      swift_endAccess();
      (*v12)(v9, v22);

      ++v11;
      if (v14 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1D1AE90A4(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v45 = a3;
  v5 = sub_1D1E66A7C();
  v40 = *(v5 - 8);
  v6 = v40[8];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v39[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-v11];
  if (a1 >> 62)
  {
LABEL_25:
    v13 = sub_1D1E6873C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v13)
  {
    v14 = 0;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    v46 = a1 + 32;
    v54 = (v40 + 1);
    v51 = v40 + 2;
    v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v43 = a1;
    v44 = a2;
    v42 = v12;
    v41 = v13;
    do
    {
      if (v48)
      {
        v23 = MEMORY[0x1D3891EF0](v14, a1);
        v24 = __OFADD__(v14++, 1);
        if (v24)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v14 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v23 = *(v46 + 8 * v14);
        v24 = __OFADD__(v14++, 1);
        if (v24)
        {
          goto LABEL_22;
        }
      }

      v25 = v15[61];
      v50 = v23;
      v26 = [v23 v25];
      sub_1D1E66A5C();

      swift_beginAccess();
      if (*(*a2 + 16) && (sub_1D1742188(v12), (v27 & 1) != 0))
      {
        swift_endAccess();
        (*v54)(v12, v5);
      }

      else
      {
        v49 = v14;
        swift_endAccess();
        v53 = *v54;
        v53(v12, v5);
        v28 = *v45;

        v29 = [v50 v15[61]];
        sub_1D1E66A5C();

        if (*(v28 + 16) && (v30 = *(v28 + 40), sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]), v31 = sub_1D1E676DC(), v32 = -1 << *(v28 + 32), v33 = v31 & ~v32, ((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          v35 = v40[9];
          v36 = v40[2];
          while (1)
          {
            v37 = v52;
            v36(v52, *(v28 + 48) + v35 * v33, v5);
            sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            v38 = sub_1D1E6775C();
            v53(v37, v5);
            if (v38)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v28 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v53(v55, v5);

          a1 = v43;
          a2 = v44;
          v12 = v42;
          v13 = v41;
          v14 = v49;
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        }

        else
        {
LABEL_5:

          v16 = v53;
          v53(v55, v5);
          v15 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v17 = v50;
          v18 = [v50 uniqueIdentifier];
          v19 = v52;
          sub_1D1E66A5C();

          type metadata accessor for HMError(0);
          v57 = 8;
          sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
          sub_1D1AFA21C(&qword_1EC6428A0, type metadata accessor for HMError);
          sub_1D1E6654C();
          v20 = v58;
          a2 = v44;
          swift_beginAccess();
          v21 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *a2;
          *a2 = 0x8000000000000000;
          sub_1D17562C8(v20, v19, isUniquelyReferenced_nonNull_native);
          v16(v19, v5);
          *a2 = v56;
          swift_endAccess();

          v12 = v42;
          a1 = v43;
          v13 = v41;
          v14 = v49;
        }
      }
    }

    while (v14 != v13);
  }
}

unint64_t sub_1D1AE9640(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = v4;
        v10 = [v6 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v11 = sub_1D1E67C1C();

        v4 = v9;
        sub_1D1AE90A4(v11, a2, a3);

        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1D1E6873C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D1AE9798(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v3[17] = v4;
  v5 = *(v4 + 64) + 15;
  v3[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A748, &qword_1D1E96B38) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v13 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v3[32] = v13;
  v14 = *(v13 + 64) + 15;
  v3[33] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9A38, 0, 0);
}

uint64_t sub_1D1AE9A38()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 288) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9AD0, v1, 0);
}

uint64_t sub_1D1AE9AD0()
{
  v1 = *(v0 + 128);
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9B40, 0, 0);
}

uint64_t sub_1D1AE9B40()
{
  if (v0[37])
  {
    v1 = v0[36];

    return MEMORY[0x1EEE6DFA0](sub_1D1AE9CA8, v1, 0);
  }

  else
  {
    v17 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[33];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[29];
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[23];
    v11 = v0[24];
    v14 = v0[22];
    v15 = v0[21];
    v16 = v0[18];

    v12 = v0[1];

    return v12(v17);
  }
}

uint64_t sub_1D1AE9CA8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 304) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9D30, 0, 0);
}

uint64_t sub_1D1AE9D30()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = [*(v0 + 304) homes];
    *(v0 + 312) = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v5 = sub_1D1E67C1C();

    v6 = sub_1D1ABB498(v3, v5);
    *(v0 + 320) = v6;

    v8 = *(v6 + 16);
    *(v0 + 328) = v8;
    if (!v8)
    {

      *(v0 + 344) = MEMORY[0x1E69E7CC8];
      v58 = *(v0 + 288);
      v59 = sub_1D1AEA2E0;
LABEL_41:

      return MEMORY[0x1EEE6DFA0](v59, v58, 0);
    }

    v9 = *(v0 + 256);
    *(v0 + 336) = qword_1EC6BE170;
    v10 = *(v9 + 80);
    v11 = MEMORY[0x1E69E7CC8];
    *(v0 + 472) = v10;
    *(v0 + 368) = 0;
    *(v0 + 376) = v11;
    *(v0 + 360) = v11;
    v12 = *(v0 + 320);
    if (*(v12 + 16))
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 312);
      sub_1D1AFB124(v12 + ((v10 + 32) & ~v10), *(v0 + 264), type metadata accessor for StateSnapshot.UpdateType);
      v15 = [v13 homes];
      v16 = sub_1D1E67C1C();

      v7 = v16;
      if (!(v16 >> 62))
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_6:
          v18 = 0;
          v73 = v7 & 0xFFFFFFFFFFFFFF8;
          v75 = v7 & 0xC000000000000001;
          v19 = MEMORY[0x1E69E7CC8];
          v69 = v17;
          v71 = v7;
          while (1)
          {
            if (v75)
            {
              v7 = MEMORY[0x1D3891EF0](v18, v7);
            }

            else
            {
              if (v18 >= *(v73 + 16))
              {
                goto LABEL_31;
              }

              v7 = *(v7 + 8 * v18 + 32);
            }

            v22 = v7;
            v23 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v24 = *(v0 + 248);
            v25 = [v7 uniqueIdentifier];
            sub_1D1E66A5C();

            v26 = v22;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 88) = v19;
            v7 = sub_1D1742188(v24);
            v29 = v19[2];
            v30 = (v28 & 1) == 0;
            v31 = __OFADD__(v29, v30);
            v32 = v29 + v30;
            if (v31)
            {
              goto LABEL_32;
            }

            v33 = v28;
            if (v19[3] >= v32)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v45 = v7;
                sub_1D173A870();
                v7 = v45;
              }
            }

            else
            {
              v34 = *(v0 + 248);
              sub_1D172B420(v32, isUniquelyReferenced_nonNull_native);
              v35 = *(v0 + 88);
              v7 = sub_1D1742188(v34);
              if ((v33 & 1) != (v36 & 1))
              {
                v60 = *(v0 + 216);

                return sub_1D1E690FC();
              }
            }

            v19 = *(v0 + 88);
            v37 = *(v0 + 248);
            v39 = *(v0 + 216);
            v38 = *(v0 + 224);
            if (v33)
            {
              v20 = v19[7];
              v21 = *(v20 + 8 * v7);
              *(v20 + 8 * v7) = v26;

              (*(v38 + 8))(v37, v39);
            }

            else
            {
              v19[(v7 >> 6) + 8] |= 1 << v7;
              v41 = *(v38 + 16);
              v40 = v38 + 16;
              v42 = v7;
              v41(v19[6] + *(v40 + 56) * v7, v37, v39);
              *(v19[7] + 8 * v42) = v26;

              v7 = (*(v40 - 8))(v37, v39);
              v43 = v19[2];
              v31 = __OFADD__(v43, 1);
              v44 = v43 + 1;
              if (v31)
              {
                goto LABEL_33;
              }

              v19[2] = v44;
            }

            ++v18;
            v7 = v71;
            if (v23 == v69)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
LABEL_34:
      __break(1u);
    }

    v61 = v7;
    v17 = sub_1D1E6873C();
    v7 = v61;
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_36:
    v19 = MEMORY[0x1E69E7CC8];
LABEL_37:
    v62 = *(v0 + 264);

    v63 = StateSnapshot.UpdateType.relevantHome(in:)(v19);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1D1E73FA0;
      *(v64 + 32) = v63;
    }

    else
    {
      v65 = *(v0 + 312);
      v66 = [*(v0 + 304) homes];
      v64 = sub_1D1E67C1C();

      v63 = 0;
    }

    *(v0 + 384) = v63;
    *(v0 + 392) = v64;
    v67 = *(v0 + 288);
    v68 = v63;
    v59 = sub_1D1AEA5EC;
    v58 = v67;
    goto LABEL_41;
  }

  v76 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  v48 = *(v0 + 264);
  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  v51 = *(v0 + 232);
  v53 = *(v0 + 200);
  v52 = *(v0 + 208);
  v54 = *(v0 + 184);
  v55 = *(v0 + 192);
  v70 = *(v0 + 176);
  v72 = *(v0 + 168);
  v74 = *(v0 + 144);

  v56 = *(v0 + 8);

  return v56(v76);
}

uint64_t sub_1D1AEA2E0()
{
  v1 = *(v0 + 128);
  *(v0 + 352) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA350, 0, 0);
}

uint64_t sub_1D1AEA350()
{
  v1 = v0[44];
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[35];
    v4 = v0[36];
    v5 = v0[34];
    v6 = *(v1 + 24);

    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = 5;
    sub_1D1741C08(v3, v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v9 = sub_1D1AFA21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v9;
    v10[4] = sub_1D1A83158;
    v10[5] = v8;

    sub_1D17C6EF0(0, 0, v5, &unk_1D1E975E8, v10);

    sub_1D1741A30(v3, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
  }

  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[33];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[29];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[23];
  v20 = v0[24];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[43];

  v21 = v0[1];

  return v21(v26);
}

uint64_t sub_1D1AEA5EC()
{
  v1 = *(v0 + 128);
  *(v0 + 400) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA65C, 0, 0);
}

uint64_t sub_1D1AEA65C()
{
  v1 = v0[50];
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[34];
    v5 = *(v1 + 24);

    v6 = sub_1D1E67E7C();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = 4;
    sub_1D1741C08(v2, v4, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = sub_1D1AFA21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor);
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = sub_1D1A82E34;
    v9[5] = v7;

    sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v9);

    sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v0[51] = *(v0[16] + v0[42]);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AEA890;

  return sub_1D1E5C7D0();
}

uint64_t sub_1D1AEA890(uint64_t a1)
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 424) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA9A8, v3, 0);
}

uint64_t sub_1D1AEA9A8()
{
  v1 = v0[53];
  if (v1)
  {
    v2 = v0[49];

    v0[58] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D1AEAD88, 0, 0);
  }

  else
  {
    v3 = v0[51];
    v4 = v0[49];
    v5 = v0[38];
    v6 = v0[33];
    v7 = v0[15];
    swift_beginAccess();
    v8 = *(v3 + 112);
    v0[54] = v8;
    swift_beginAccess();
    v9 = *(v3 + 120);
    v0[55] = v9;

    v10 = sub_1D1AFA21C(&qword_1EC64A750, type metadata accessor for SnapshotModerator);
    v11 = swift_task_alloc();
    v0[56] = v11;
    v11[2] = v4;
    v11[3] = v3;
    v11[4] = v5;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v8;
    v11[8] = v9;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A758, &unk_1D1E96B50);
    v14 = *(MEMORY[0x1E69E87D8] + 4);
    v15 = swift_task_alloc();
    v0[57] = v15;
    *v15 = v0;
    v15[1] = sub_1D1AEABD4;

    return MEMORY[0x1EEE6DBF8](v0 + 12, v12, v13, v3, v10, &unk_1D1E96B40, v11, v12);
  }
}

uint64_t sub_1D1AEABD4()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 408);
  v6 = *(*v0 + 392);
  v8 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEAD64, v5, 0);
}

uint64_t sub_1D1AEAD88(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 464);
  v4 = *(v3 + 64);
  v110 = v3 + 64;
  v111 = v3;
  v5 = -1;
  v6 = -1 << *(v111 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  v9 = *(v1 + 376);
  v10 = *(v1 + 360);
  for (i = v8; ; v8 = i)
  {
    v121 = v10;
    v115 = v9;
    if (!v7)
    {
      if (v8 <= v2 + 1)
      {
        v12 = v2 + 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v55 = *(v1 + 200);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
          (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
          v7 = 0;
          goto LABEL_16;
        }

        v7 = *(v110 + 8 * v11);
        ++v2;
        if (v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v102 = a1;
        v72 = sub_1D1E6873C();
        a1 = v102;
        if (!v72)
        {
          goto LABEL_61;
        }

LABEL_32:
        v73 = 0;
        v120 = a1 & 0xFFFFFFFFFFFFFF8;
        v123 = a1 & 0xC000000000000001;
        v74 = MEMORY[0x1E69E7CC8];
        v114 = v72;
        v117 = a1;
        while (1)
        {
          if (v123)
          {
            a1 = MEMORY[0x1D3891EF0](v73, a1);
          }

          else
          {
            if (v73 >= *(v120 + 16))
            {
              goto LABEL_56;
            }

            a1 = *(a1 + 8 * v73 + 32);
          }

          v77 = a1;
          v78 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          v79 = *(v1 + 248);
          v80 = [a1 uniqueIdentifier];
          sub_1D1E66A5C();

          v81 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 88) = v74;
          a1 = sub_1D1742188(v79);
          v84 = v74[2];
          v85 = (v83 & 1) == 0;
          v40 = __OFADD__(v84, v85);
          v86 = v84 + v85;
          if (v40)
          {
            goto LABEL_57;
          }

          v87 = v83;
          if (v74[3] >= v86)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v99 = a1;
              sub_1D173A870();
              a1 = v99;
            }
          }

          else
          {
            v88 = *(v1 + 248);
            sub_1D172B420(v86, isUniquelyReferenced_nonNull_native);
            v89 = *(v1 + 88);
            a1 = sub_1D1742188(v88);
            if ((v87 & 1) != (v90 & 1))
            {
              goto LABEL_49;
            }
          }

          v74 = *(v1 + 88);
          v91 = *(v1 + 248);
          v93 = *(v1 + 216);
          v92 = *(v1 + 224);
          if (v87)
          {
            v75 = v74[7];
            v76 = *(v75 + 8 * a1);
            *(v75 + 8 * a1) = v81;

            (*(v92 + 8))(v91, v93);
          }

          else
          {
            v74[(a1 >> 6) + 8] |= 1 << a1;
            v95 = *(v92 + 16);
            v94 = v92 + 16;
            v96 = a1;
            v95(v74[6] + *(v94 + 56) * a1, v91, v93);
            *(v74[7] + 8 * v96) = v81;

            a1 = (*(v94 - 8))(v91, v93);
            v97 = v74[2];
            v40 = __OFADD__(v97, 1);
            v98 = v97 + 1;
            if (v40)
            {
              goto LABEL_58;
            }

            v74[2] = v98;
          }

          ++v73;
          a1 = v117;
          if (v78 == v114)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v11 = v2;
LABEL_15:
    v118 = *(v1 + 240);
    v15 = *(v1 + 216);
    v14 = *(v1 + 224);
    v16 = *(v1 + 192);
    v17 = *(v1 + 200);
    v18 = *(v1 + 160);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (v11 << 6);
    v21 = *(v111 + 48) + *(v14 + 72) * v20;
    (*(v14 + 16))();
    sub_1D1741C08(*(v111 + 56) + *(v18 + 72) * v20, v16, &qword_1EC645BD0, &qword_1D1E96B30);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    v23 = *(v22 + 48);
    (*(v14 + 32))(v17, v118, v15);
    sub_1D1741A90(v16, v17 + v23, &qword_1EC645BD0, &qword_1D1E96B30);
    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
    v13 = v11;
LABEL_16:
    v24 = *(v1 + 208);
    sub_1D1741A90(*(v1 + 200), v24, &qword_1EC64A748, &qword_1D1E96B38);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      break;
    }

    v26 = *(v1 + 224);
    v27 = *(v1 + 232);
    v28 = *(v1 + 208);
    v113 = v13;
    v116 = *(v1 + 216);
    v29 = *(v1 + 176);
    v30 = *(v1 + 184);
    v31 = *(v1 + 168);
    v32 = v124[19];
    v119 = v124[18];
    v33 = v28 + *(v25 + 48);
    v34 = *(v33 + *(v32 + 48));
    sub_1D1AFB18C(v33, v29, type metadata accessor for StateSnapshot);
    v35 = *(v32 + 48);
    sub_1D1AFB18C(v29, v30, type metadata accessor for StateSnapshot);
    *(v30 + v35) = v34;
    v1 = v124;
    (*(v26 + 32))(v27, v28, v116);
    sub_1D1741C08(v30, v31, &qword_1EC645BD0, &qword_1D1E96B30);
    sub_1D1AFB18C(v31, v119, type metadata accessor for StateSnapshot);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v124[13] = v121;
    a1 = sub_1D1742188(v27);
    v38 = v121[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_53;
    }

    v42 = v37;
    if (v121[3] >= v41)
    {
      if (!v36)
      {
        v57 = a1;
        sub_1D17375D4();
        a1 = v57;
      }
    }

    else
    {
      v43 = v124[29];
      sub_1D1725B48(v41, v36);
      v44 = v124[13];
      a1 = sub_1D1742188(v43);
      if ((v42 & 1) != (v45 & 1))
      {
LABEL_49:
        v100 = *(v1 + 216);

        return sub_1D1E690FC();
      }
    }

    v10 = v124[13];
    v46 = v124[28];
    v47 = v124[29];
    v48 = v124[27];
    v122 = v124[23];
    v50 = v124[17];
    v49 = v124[18];
    if (v42)
    {
      sub_1D1AD70B0(v124[18], v10[7] + *(v50 + 72) * a1);
      (*(v46 + 8))(v47, v48);
      a1 = sub_1D1741A30(v122, &qword_1EC645BD0, &qword_1D1E96B30);
      v2 = v113;
      v9 = v10;
    }

    else
    {
      v10[(a1 >> 6) + 8] |= 1 << a1;
      v52 = *(v46 + 16);
      v51 = v46 + 16;
      v1 = a1;
      v52(v10[6] + *(v51 + 56) * a1, v47, v48);
      sub_1D1AFB18C(v49, v10[7] + *(v50 + 72) * v1, type metadata accessor for StateSnapshot);
      (*(v51 - 8))(v47, v48);
      a1 = sub_1D1741A30(v122, &qword_1EC645BD0, &qword_1D1E96B30);
      v53 = v10[2];
      v40 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v40)
      {
        goto LABEL_54;
      }

      v10[2] = v54;
      v2 = v113;
      v9 = v10;
      v1 = v124;
    }
  }

  v58 = *(v1 + 464);
  v59 = *(v1 + 384);
  v60 = *(v1 + 368);
  v61 = *(v1 + 328);
  v62 = *(v1 + 264);

  a1 = sub_1D1AFB0C4(v62, type metadata accessor for StateSnapshot.UpdateType);
  if (v60 + 1 == v61)
  {
    v63 = *(v1 + 320);

    *(v1 + 344) = v115;
    v64 = *(v1 + 288);
    v65 = sub_1D1AEA2E0;
    goto LABEL_66;
  }

  v66 = *(v1 + 368) + 1;
  *(v1 + 368) = v66;
  *(v1 + 376) = v115;
  *(v1 + 360) = v121;
  v67 = *(v1 + 320);
  if (v66 >= *(v67 + 16))
  {
    goto LABEL_59;
  }

  v68 = *(v1 + 304);
  v69 = *(v1 + 312);
  sub_1D1AFB124(v67 + ((*(v1 + 472) + 32) & ~*(v1 + 472)) + *(*(v1 + 256) + 72) * v66, *(v1 + 264), type metadata accessor for StateSnapshot.UpdateType);
  v70 = [v68 homes];
  v71 = sub_1D1E67C1C();

  a1 = v71;
  if (v71 >> 62)
  {
    goto LABEL_60;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
    goto LABEL_32;
  }

LABEL_61:
  v74 = MEMORY[0x1E69E7CC8];
LABEL_62:
  v103 = *(v1 + 264);

  v104 = StateSnapshot.UpdateType.relevantHome(in:)(v74);

  if (v104)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1D1E73FA0;
    *(v105 + 32) = v104;
  }

  else
  {
    v106 = *(v1 + 312);
    v107 = [*(v1 + 304) homes];
    v105 = sub_1D1E67C1C();

    v104 = 0;
  }

  *(v1 + 384) = v104;
  *(v1 + 392) = v105;
  v108 = *(v1 + 288);
  v109 = v104;
  v65 = sub_1D1AEA5EC;
  v64 = v108;
LABEL_66:

  return MEMORY[0x1EEE6DFA0](v65, v64, 0);
}

uint64_t HomeState.Stream.fetchProfileContent(for:profileBags:profileKind:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  *(v7 + 120) = a5;
  *(v7 + 128) = v6;
  *(v7 + 260) = a6;
  *(v7 + 104) = a2;
  *(v7 + 112) = a3;
  *(v7 + 96) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490) - 8) + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  *(v7 + 144) = v10;
  v11 = *(v10 - 8);
  *(v7 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v13 = *(type metadata accessor for StaticLightProfile() - 8);
  *(v7 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 261) = *a4;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  *(v7 + 192) = qword_1EC64ABE8;
  v15 = swift_task_alloc();
  *(v7 + 200) = v15;
  *v15 = v7;
  v15[1] = sub_1D1AEB8FC;

  return StaticHome.home.getter();
}

uint64_t sub_1D1AEB8FC(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEBA14, v3, 0);
}

uint64_t sub_1D1AEBA14()
{
  v1 = *(v0 + 208);
  if (!v1)
  {
    v19 = *(v0 + 96);
    v20 = type metadata accessor for StateSnapshot(0);
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
LABEL_28:
    v51 = *(v0 + 184);
    v52 = *(v0 + 160);
    v53 = *(v0 + 168);
    v54 = *(v0 + 136);

    v55 = *(v0 + 8);

    return v55();
  }

  v2 = *(v0 + 261);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 160);
    v5 = *(*(v0 + 128) + 24);
    v6 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_getKeyPath();
    *(v0 + 88) = v5;
    sub_1D1AFA21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel);
    sub_1D1E66CAC();

    v7 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
    swift_beginAccess();
    v8 = *(v5 + v7);
    v9 = *(v0 + 160);
    if (*(v8 + 16))
    {

      v10 = sub_1D1742188(v9);
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 136);
      v14 = *(v0 + 144);
      if (v15)
      {
        v16 = v10;
        v56 = *(v8 + 56);
        v58 = *(v0 + 160);
        v17 = type metadata accessor for HomeState();
        v18 = *(v17 - 8);
        sub_1D1AFB124(v56 + *(v18 + 72) * v16, v13, type metadata accessor for HomeState);

        (*(v12 + 8))(v58, v14);

        (*(v18 + 56))(v13, 0, 1, v17);
      }

      else
      {

        (*(v12 + 8))(v11, v14);
        v17 = type metadata accessor for HomeState();
        (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
      }
    }

    else
    {
      v38 = *(v0 + 144);
      v39 = *(v0 + 152);
      v40 = *(v0 + 136);

      (*(v39 + 8))(v9, v38);
      v17 = type metadata accessor for HomeState();
      (*(*(v17 - 8) + 56))(v40, 1, 1, v17);
    }

    v47 = *(v0 + 136);
    type metadata accessor for HomeState();
    v48 = 1;
    if (!(*(*(v17 - 8) + 48))(v47, 1, v17))
    {
      sub_1D1AFB124(v47, *(v0 + 96), type metadata accessor for StateSnapshot);
      v48 = 0;
      v47 = *(v0 + 136);
    }

    v49 = *(v0 + 96);
    sub_1D1741A30(v47, &qword_1EC649148, &qword_1D1E96490);
    v50 = type metadata accessor for StateSnapshot(0);
    (*(*(v50 - 8) + 56))(v49, v48, 1, v50);
    goto LABEL_28;
  }

  v21 = *(v0 + 112);
  v60 = v3;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    do
    {
      v24 = *v23;
      v23 += 2;

      sub_1D17A4D0C(v25);
      --v22;
    }

    while (v22);
    v3 = v60;
  }

  v26 = *(v3 + 16);
  v57 = v3;
  if (v26)
  {
    v27 = *(v0 + 176);
    v28 = *(v0 + 152);
    v29 = v3 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v59 = *(v27 + 72);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = *(v0 + 184);
      v32 = *(v0 + 168);
      v33 = *(v0 + 144);
      sub_1D1AFB124(v29, v31, type metadata accessor for StaticLightProfile);
      (*(v28 + 16))(v32, v31, v33);
      sub_1D1AFB0C4(v31, type metadata accessor for StaticLightProfile);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D177D0AC(0, v30[2] + 1, 1, v30);
      }

      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        v30 = sub_1D177D0AC(v34 > 1, v35 + 1, 1, v30);
      }

      v36 = *(v0 + 168);
      v37 = *(v0 + 144);
      v30[2] = v35 + 1;
      (*(v28 + 32))(v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35, v36, v37);
      v29 += v59;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v41 = *(v0 + 260);
  sub_1D17A3840(v30);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A8, &qword_1D1E97460);
  v42 = sub_1D17D8EA8(&qword_1EC64A9B0, &qword_1EC64A9A8, &qword_1D1E97460);
  *(v0 + 16) = v57;
  *(v0 + 48) = v42;
  v43 = swift_task_alloc();
  *(v0 + 216) = v43;
  *v43 = v0;
  v43[1] = sub_1D1AEC0CC;
  v44 = *(v0 + 120);
  v45 = *(v0 + 104);

  return sub_1D1B9BD98(v45, v0 + 16, v44, v41 & 1);
}

uint64_t sub_1D1AEC0CC()
{
  v2 = *v1;
  v3 = (*v1)[27];
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[10];

    v7 = sub_1D1AEC720;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v7 = sub_1D1AEC20C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, 0);
}

uint64_t sub_1D1AEC20C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 104);
  v4 = *(*(v0 + 128) + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v5 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *(v0 + 256) = v7;
  v8 = (v7 + 32) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 232) = v9;
  *(v9 + 16) = xmmword_1D1E739C0;
  v10 = v9 + v8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  (*(v2 + 16))(v10, v3, v1);
  v12 = sub_1D17841EC(*(v0 + 80));

  *(v10 + v11) = v12;
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_1D1AEC3EC;

  return (sub_1D1AE9798)(v9, 0, 0, 0);
}

uint64_t sub_1D1AEC3EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 192);
  v6 = (*(v2 + 256) + 32) & ~*(v2 + 256);
  v8 = *v1;
  *(v2 + 248) = a1;

  swift_setDeallocating();
  sub_1D1AFB0C4(v4 + v6, type metadata accessor for StateSnapshot.UpdateType);
  swift_deallocClassInstance();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEC560, v5, 0);
}

uint64_t sub_1D1AEC560()
{
  if (*(v0[31] + 16))
  {
    v1 = sub_1D1742188(v0[13]);
    v2 = v0[26];
    if (v3)
    {
      v4 = v1;
      v5 = v0[12];
      v6 = *(v0[31] + 56);
      v7 = type metadata accessor for StateSnapshot(0);
      v8 = *(v7 - 8);
      sub_1D1AFB124(v6 + *(v8 + 72) * v4, v5, type metadata accessor for StateSnapshot);

      v9 = 0;
      goto LABEL_7;
    }

    v12 = v0[31];
  }

  else
  {
    v10 = v0[26];
    v11 = v0[31];
  }

  v7 = type metadata accessor for StateSnapshot(0);
  v8 = *(v7 - 8);
  v9 = 1;
LABEL_7:
  (*(v8 + 56))(v0[12], v9, 1, v7);
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[21];
  v16 = v0[17];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1D1AEC720()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v5 = *(v0 + 8);
  v6 = *(v0 + 224);

  return v5();
}

uint64_t HomeState.Stream.write(valueUpdate:deviceIDs:snapshot:timeout:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = v6;
  *(v7 + 120) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 40) = a1;
  *(v7 + 121) = *a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;
  *(v7 + 80) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEC870, v8, 0);
}

uint64_t sub_1D1AEC870()
{
  v1 = *(v0 + 121);
  if (v1 < 0)
  {
    v18 = swift_task_alloc();
    *(v0 + 88) = v18;
    *v18 = v0;
    v18[1] = sub_1D1961F0C;
    v19 = *(v0 + 72);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);

    return sub_1D1AEFA08(v22, v1 & 1, v20, v21);
  }

  else
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    v5 = sub_1D1788DF8(sub_1D1AFA200, v4, v3);

    result = swift_getKeyPath();
    v7 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = 0;
      while (v9 < *(v5 + 16))
      {
        v10 = v9 + 1;
        *(v0 + 16) = *(v5 + 32 + 16 * v9);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_getAtKeyPath();

        v11 = *(v0 + 16);
        v12 = *(v0 + 24);

        result = sub_1D17A4D0C(*(v0 + 32));
        v9 = v10;
        if (v8 == v10)
        {
          v7 = v23;
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *(v0 + 96) = v7;
      v13 = *(v0 + 120);

      v14 = swift_task_alloc();
      *(v0 + 104) = v14;
      *v14 = v0;
      v14[1] = sub_1D1AECAF0;
      v15 = *(v0 + 64);
      v16 = *(v0 + 72);
      v17 = *(v0 + 40);

      return sub_1D1AECDD0(v17, v1 & 1, v7);
    }
  }

  return result;
}

uint64_t sub_1D1AECAF0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x1EEE6DFA0](sub_1D196250C, v4, 0);
  }

  else
  {
    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D1AECC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StateSnapshot(0);
  v12 = *(a2 + *(result + 60));
  if (*(v12 + 16) && (result = sub_1D1742188(a1), (v13 & 1) != 0))
  {
    sub_1D1AFB124(*(v12 + 56) + *(v7 + 72) * result, v10, type metadata accessor for StaticService);
    v14 = &v10[*(v6 + 132)];
    v15 = *v14;
    v16 = *(v14 + 1);

    result = sub_1D1AFB0C4(v10, type metadata accessor for StaticService);
    *a3 = v15;
    a3[1] = v16;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1D1AECD8C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1D1AECDD0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 284) = a2;
  *(v4 + 40) = a1;
  *(v4 + 64) = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 80) = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v9 = type metadata accessor for StaticLightProfile();
  *(v4 + 104) = v9;
  v10 = *(v9 - 8);
  *(v4 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  *(v4 + 136) = v12;
  v13 = *(v12 - 8);
  *(v4 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AECFF8, 0, 0);
}

uint64_t sub_1D1AECFF8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v7 = *(*(v0 + 112) + 80);
    *(v0 + 280) = v7;
    v8 = v1 + *(v6 + 28);
    v9 = *(v5 + 16);
    *(v0 + 200) = v9;
    *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v8 + ((v7 + 32) & ~v7), v4);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AED200, v10, 0);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = *(v0 + 152);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v23 = *(v0 + 72);
    (*(*(v11 - 8) + 56))(*(v0 + 40), 1, 1);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D1AED200()
{
  v48 = v0;
  v2 = v0;
  v3 = v0[7];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v47 = sub_1D1749970(v6);
    sub_1D1747DDC(&v47);

    v7 = v47;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[17];
  v9(v0[22], v10, v12);
  v9(v11, v10, v12);
  v45 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v46 = v7 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_1D1E6873C();
  }

  else
  {
    v46 = v7 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = 0;
  v16 = v7 & 0xC000000000000001;
  v44 = v7 + 32;
  while (v13 != v14)
  {
    if (v16)
    {
      v1 = v7;
      v17 = MEMORY[0x1D3891EF0](v14, v7);
    }

    else
    {
      if (v14 >= *(v46 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v17 = *(v7 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v2;
    v20 = v2[21];
    v21 = [v17 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v22 = sub_1D1E67C1C();

    v23 = swift_task_alloc();
    *(v23 + 16) = v20;
    v24 = sub_1D174A6C4(sub_1D1778988, v23, v22);

    if (v24)
    {
      v13 = v14;
      v7 = v1;
      v2 = v19;
      break;
    }

    v25 = __OFADD__(v14++, 1);
    v7 = v1;
    v2 = v19;
    if (v25)
    {
      goto LABEL_30;
    }
  }

  if (v45)
  {
    if (v13 != sub_1D1E6873C())
    {
LABEL_19:
      if (v16)
      {
        v26 = MEMORY[0x1D3891EF0](v13, v7);
      }

      else
      {
        if (v13 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v26 = *(v44 + 8 * v13);
      }

      v27 = v26;
      v28 = v2[22];
      v30 = v2[17];
      v29 = v2[18];
      v31 = [v26 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v32 = sub_1D1E67C1C();

      v33 = swift_task_alloc();
      *(v33 + 16) = v28;
      v34 = v2;
      v35 = sub_1D174A6C4(sub_1D1778988, v33, v32);
      v34[28] = v35;

      v1 = *(v29 + 8);
      v34[29] = v1;
      v34[30] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v28, v30);

      v13 = v34[21];
      v15 = v34[17];
      if (v35)
      {

        v1(v13, v15);
        v36 = sub_1D1AED7E8;
        goto LABEL_26;
      }

LABEL_34:
      v36 = (v1)(v13, v15);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v36, v41, v42);
    }
  }

  else if (v13 != *(v46 + 16))
  {
    goto LABEL_19;
  }

  v38 = v2[21];
  v37 = v2[22];
  v39 = v2[17];
  v40 = *(v2[18] + 8);
  v2[27] = v40;
  v40(v37, v39);

  v40(v38, v39);
  v36 = sub_1D1AED698;
LABEL_26:
  v41 = 0;
  v42 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v41, v42);
}

uint64_t sub_1D1AED698()
{
  v1 = *(v0 + 144) + 8;
  (*(v0 + 216))(*(v0 + 184), *(v0 + 136));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v14 = *(v0 + 72);
  (*(*(v2 - 8) + 56))(*(v0 + 40), 1, 1);

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D1AED7E8()
{
  v1 = *(v0 + 224);
  v2 = [v1 home];
  *(v0 + 248) = v2;

  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v0 + 128) + *(*(v0 + 104) + 24));
    v6 = *(*(v0 + 112) + 72);
    v7 = *(v0 + 192);
    while (1)
    {
      if (v4 == v7)
      {
        __break(1u);
        goto LABEL_34;
      }

      v8 = *(v0 + 128);
      v9 = *(v0 + 284);
      sub_1D1AFB124(*(v0 + 48) + v3 + ((*(v0 + 280) + 32) & ~*(v0 + 280)), v8, type metadata accessor for StaticLightProfile);
      v10 = *v5;
      v11 = v5[1];
      sub_1D1AFB0C4(v8, type metadata accessor for StaticLightProfile);
      v12 = v11 == 2 ? v10 : v11;
      if (v9 != (v12 & 1))
      {
        break;
      }

      v7 = *(v0 + 192);
      ++v4;
      v3 += v6;
      if (v4 == v7)
      {

        v13 = *(v0 + 240);
        goto LABEL_11;
      }
    }

    v71 = v6;
    v67 = v2;
    v68 = *(v0 + 144);
    v26 = *(v0 + 284);
    v27 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    v28 = 0;
    v29 = 0;
    v30 = *(v0 + 192);
    while (v29 != v30)
    {
      v35 = *(v0 + 200);
      v34 = *(v0 + 208);
      v36 = *(v0 + 152);
      v37 = *(v0 + 136);
      v38 = *(v0 + 120);
      sub_1D1AFB124(*(v0 + 48) + v28 + ((*(v0 + 280) + 32) & ~*(v0 + 280)), v38, type metadata accessor for StaticLightProfile);
      v35(v36, v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_1D1742188(v36);
      v42 = v27[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_35;
      }

      v46 = v41;
      if (v27[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = v40;
          sub_1D173BFC4();
          v40 = v58;
        }
      }

      else
      {
        v47 = *(v0 + 152);
        sub_1D172DCA8(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_1D1742188(v47);
        if ((v46 & 1) != (v48 & 1))
        {
          v66 = *(v0 + 136);

          sub_1D1E690FC();
          return;
        }
      }

      *(v0 + 272) = v27;
      v50 = *(v0 + 232);
      v49 = *(v0 + 240);
      if (v46)
      {
        v31 = *(v0 + 152);
        v32 = *(v0 + 136);
        v33 = *(v0 + 120);
        *(v27[7] + v40) = v26;
        v50(v31, v32);
        sub_1D1AFB0C4(v33, type metadata accessor for StaticLightProfile);
      }

      else
      {
        v52 = *(v0 + 200);
        v51 = *(v0 + 208);
        v53 = *(v0 + 152);
        v54 = *(v0 + 136);
        v69 = *(v0 + 120);
        v27[(v40 >> 6) + 8] |= 1 << v40;
        v55 = v40;
        v52(v27[6] + *(v68 + 72) * v40, v53, v54);
        *(v27[7] + v55) = v26;
        v50(v53, v54);
        sub_1D1AFB0C4(v69, type metadata accessor for StaticLightProfile);
        v56 = v27[2];
        v44 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v44)
        {
          goto LABEL_36;
        }

        v27[2] = v57;
      }

      ++v29;
      v30 = *(v0 + 192);
      v28 += v71;
      if (v29 == v30)
      {
        v60 = *(v0 + 80);
        v59 = *(v0 + 88);
        v61 = *(*(v0 + 56) + 144);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
        v63 = [v67 uniqueIdentifier];
        sub_1D1E66A5C();

        *(v59 + v62) = v27;
        swift_storeEnumTagMultiPayload();

        v64 = swift_task_alloc();
        *(v0 + 256) = v64;
        *v64 = v0;
        v64[1] = sub_1D1AEDD80;
        v65 = *(v0 + 88);

        sub_1D1AB6894(v65, 0, 0, 0, 0);
        return;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v14 = (*(v0 + 144) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_11:
    (*(v0 + 232))(*(v0 + 184), *(v0 + 136));
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    v70 = *(v0 + 72);
    (*(*(v15 - 8) + 56))(*(v0 + 40), 1, 1);

    v25 = *(v0 + 8);

    v25();
  }
}

uint64_t sub_1D1AEDD80(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 264) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEDEB4, 0, 0);
}

uint64_t sub_1D1AEDEB4()
{
  v70 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);
  v3 = [*(v0 + 248) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 160));
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 96);
    if (v10)
    {
      v11 = *(*(v0 + 264) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AFB124(v11 + *(v13 + 72) * v4, v9, type metadata accessor for StateSnapshot);
      v6(v7, v8);

      (*(v13 + 56))(v9, 0, 1, v12);
    }

    else
    {

      v6(v7, v8);
      v21 = type metadata accessor for StateSnapshot(0);
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    }
  }

  else
  {
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    v19 = *(v0 + 264);

    v15(v16, v17);
    v20 = type metadata accessor for StateSnapshot(0);
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  v22 = *(v0 + 248);
  v24 = *(v0 + 64);
  v23 = *(v0 + 72);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 284);
  v28 = sub_1D1E67E7C();
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v27;
  *(v29 + 40) = v25;
  *(v29 + 48) = v26;
  *(v29 + 56) = v22;
  *(v29 + 64) = v24;

  v30 = v22;
  v31 = sub_1D1B02614(0, 0, v23, &unk_1D1E975A8, v29);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 272);
  v33 = sub_1D1E6709C();
  __swift_project_value_buffer(v33, qword_1EC64A290);

  v34 = sub_1D1E6707C();
  v35 = sub_1D1E6835C();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 272);
  v38 = *(v0 + 240);
  v39 = *(v0 + 248);
  v40 = *(v0 + 232);
  v41 = *(v0 + 184);
  v42 = *(v0 + 136);
  if (v36)
  {
    v67 = v31;
    v43 = swift_slowAlloc();
    v65 = v40;
    v44 = swift_slowAlloc();
    v69 = v44;
    *v43 = 136446210;
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v64 = v41;
    v45 = sub_1D1E6760C();
    v47 = v46;

    v48 = sub_1D1B1312C(v45, v47, &v69);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_1D16EC000, v34, v35, "start override profile write %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x1D3893640](v44, -1, -1);
    v49 = v43;
    v31 = v67;
    MEMORY[0x1D3893640](v49, -1, -1);

    v65(v64, v42);
  }

  else
  {

    v40(v41, v42);
  }

  v50 = *(v0 + 96);
  v51 = *(v0 + 40);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v53 = *(v52 + 48);
  sub_1D1741A90(v50, v51, &unk_1EC649E30, &unk_1D1E91250);
  *(v51 + v53) = v31;
  v54 = *(v0 + 176);
  v55 = *(v0 + 184);
  v57 = *(v0 + 160);
  v56 = *(v0 + 168);
  v58 = *(v0 + 152);
  v60 = *(v0 + 120);
  v59 = *(v0 + 128);
  v61 = *(v0 + 96);
  v66 = *(v0 + 88);
  v68 = *(v0 + 72);
  (*(*(v52 - 8) + 56))(*(v0 + 40), 0, 1, v52);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t HomeState.Stream.setNaturalLight<A>(_:lightProfiles:timeout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 64) = a3;
  *(v8 + 72) = a6;
  *(v8 + 312) = a2;
  *(v8 + 56) = a1;
  *(v8 + 96) = *v7;
  v9 = *(a6 - 8);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 + 64);
  *(v8 + 120) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v8 + 136) = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v15 = sub_1D1E66A7C();
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEE6A4, 0, 0);
}

uint64_t sub_1D1AEE6A4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if (sub_1D1E6827C())
  {
LABEL_4:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    v10 = v0[26];
    v11 = v0[27];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v18 = v0[16];
    v29 = v0[15];
    (*(*(v9 - 8) + 56))(v0[7], 1, 1);

    v19 = v0[1];

    return v19();
  }

  v4 = v0[20];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  sub_1D1E6829C();
  v8 = type metadata accessor for StaticLightProfile();
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1D1741A30(v0[20], &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_4;
  }

  v22 = v0[26];
  v21 = v0[27];
  v23 = v0[21];
  v24 = v0[22];
  v25 = v0[20];
  v26 = *(v8 + 28);
  v27 = *(v24 + 16);
  v0[28] = v27;
  v0[29] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v22, v25 + v26, v23);
  sub_1D1AFB0C4(v25, type metadata accessor for StaticLightProfile);
  (*(v24 + 32))(v21, v22, v23);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEE94C, v28, 0);
}

uint64_t sub_1D1AEE94C()
{
  v48 = v0;
  v2 = v0;
  v3 = v0[11];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v47 = sub_1D1749970(v6);
    sub_1D1747DDC(&v47);

    v7 = v47;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v11 = v0[24];
  v12 = v0[21];
  v9(v0[25], v10, v12);
  v9(v11, v10, v12);
  v45 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v46 = v7 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_1D1E6873C();
  }

  else
  {
    v46 = v7 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = 0;
  v16 = v7 & 0xC000000000000001;
  v44 = v7 + 32;
  while (v13 != v14)
  {
    if (v16)
    {
      v1 = v7;
      v17 = MEMORY[0x1D3891EF0](v14, v7);
    }

    else
    {
      if (v14 >= *(v46 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v17 = *(v7 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v2;
    v20 = v2[24];
    v21 = [v17 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v22 = sub_1D1E67C1C();

    v23 = swift_task_alloc();
    *(v23 + 16) = v20;
    v24 = sub_1D174A6C4(sub_1D1749C64, v23, v22);

    if (v24)
    {
      v13 = v14;
      v7 = v1;
      v2 = v19;
      break;
    }

    v25 = __OFADD__(v14++, 1);
    v7 = v1;
    v2 = v19;
    if (v25)
    {
      goto LABEL_30;
    }
  }

  if (v45)
  {
    if (v13 != sub_1D1E6873C())
    {
LABEL_19:
      if (v16)
      {
        v26 = MEMORY[0x1D3891EF0](v13, v7);
      }

      else
      {
        if (v13 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v26 = *(v44 + 8 * v13);
      }

      v27 = v26;
      v28 = v2[25];
      v30 = v2[21];
      v29 = v2[22];
      v31 = [v26 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v32 = sub_1D1E67C1C();

      v33 = swift_task_alloc();
      *(v33 + 16) = v28;
      v34 = v2;
      v35 = sub_1D174A6C4(sub_1D1778988, v33, v32);
      v34[31] = v35;
      v34[32] = 0;

      v1 = *(v29 + 8);
      v34[33] = v1;
      v34[34] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v28, v30);

      v13 = v34[24];
      v15 = v34[21];
      if (v35)
      {

        v1(v13, v15);
        v36 = sub_1D1AEEF34;
        goto LABEL_26;
      }

LABEL_34:
      v36 = (v1)(v13, v15);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v36, v41, v42);
    }
  }

  else if (v13 != *(v46 + 16))
  {
    goto LABEL_19;
  }

  v38 = v2[24];
  v37 = v2[25];
  v39 = v2[21];
  v40 = *(v2[22] + 8);
  v2[30] = v40;
  v40(v37, v39);

  v40(v38, v39);
  v36 = sub_1D1AEEDE4;
LABEL_26:
  v41 = 0;
  v42 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v41, v42);
}

uint64_t sub_1D1AEEDE4()
{
  v1 = *(v0 + 176) + 8;
  (*(v0 + 240))(*(v0 + 216), *(v0 + 168));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  v14 = *(v0 + 120);
  (*(*(v2 - 8) + 56))(*(v0 + 56), 1, 1);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1AEEF34()
{
  v1 = *(v0 + 248);
  v2 = [v1 home];
  *(v0 + 280) = v2;

  if (v2)
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v7 = *(v0 + 312);
    *(swift_task_alloc() + 16) = v7;
    v8 = *(v5 + 8);
    LOBYTE(v6) = sub_1D1E67AEC();

    if (v6)
    {
      v9 = *(v0 + 144);
      v32 = *(v0 + 88);
      v33 = *(v0 + 136);
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);
      *(v0 + 48) = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
      *(swift_task_alloc() + 16) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      sub_1D1E67A9C();

      v12 = *(v0 + 40);
      *(v0 + 288) = v12;
      v13 = *(v32 + 144);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
      v15 = [v2 uniqueIdentifier];
      sub_1D1E66A5C();

      *(v9 + v14) = v12;
      swift_storeEnumTagMultiPayload();

      v16 = swift_task_alloc();
      *(v0 + 296) = v16;
      *v16 = v0;
      v16[1] = sub_1D1AEF2B0;
      v17 = *(v0 + 144);

      return sub_1D1AB6894(v17, 0, 0, 0, 0);
    }

    v20 = *(v0 + 272);
    (*(v0 + 264))(*(v0 + 216), *(v0 + 168));
  }

  else
  {
    v19 = *(v0 + 176) + 8;
    (*(v0 + 264))(*(v0 + 216), *(v0 + 168));
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v22 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v26 = *(v0 + 184);
  v28 = *(v0 + 152);
  v27 = *(v0 + 160);
  v29 = *(v0 + 144);
  v30 = *(v0 + 128);
  v34 = *(v0 + 120);
  (*(*(v21 - 8) + 56))(*(v0 + 56), 1, 1);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D1AEF2B0(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 304) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEF3E4, 0, 0);
}

uint64_t sub_1D1AEF3E4()
{
  v77 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 184);
  v3 = [*(v0 + 280) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 184));
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 152);
    if (v10)
    {
      v11 = *(*(v0 + 304) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AFB124(v11 + *(v13 + 72) * v4, v9, type metadata accessor for StateSnapshot);
      v6(v7, v8);

      (*(v13 + 56))(v9, 0, 1, v12);
    }

    else
    {

      v6(v7, v8);
      v21 = type metadata accessor for StateSnapshot(0);
      (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    }
  }

  else
  {
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 184);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v0 + 304);

    v15(v16, v17);
    v20 = type metadata accessor for StateSnapshot(0);
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  v22 = *(v0 + 280);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v27 = *(v0 + 88);
  v70 = *(v0 + 96);
  v28 = *(v0 + 64);
  v68 = *(v0 + 312);
  v29 = sub_1D1E67E7C();
  v73 = *(v0 + 72);
  (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
  (*(v25 + 16))(v24, v28, v73);
  v30 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v31 = (v26 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v73;
  *(v32 + 48) = v68;
  *(v32 + 56) = v27;
  (*(v25 + 32))(v32 + v30, v24, v73);
  *(v32 + v31) = v22;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;

  v33 = v22;
  v34 = sub_1D1B02614(0, 0, v23, &unk_1D1E974F0, v32);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 288);
  v36 = sub_1D1E6709C();
  __swift_project_value_buffer(v36, qword_1EC64A290);

  v37 = sub_1D1E6707C();
  v38 = sub_1D1E6835C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 280);
  v41 = *(v0 + 288);
  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v44 = *(v0 + 216);
  v45 = *(v0 + 168);
  if (v39)
  {
    v74 = v34;
    v46 = swift_slowAlloc();
    v71 = v43;
    v47 = swift_slowAlloc();
    v76 = v47;
    *v46 = 136446210;
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v69 = v44;
    v48 = sub_1D1E6760C();
    v50 = v49;

    v51 = sub_1D1B1312C(v48, v50, &v76);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1D16EC000, v37, v38, "start override profile write %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1D3893640](v47, -1, -1);
    v52 = v46;
    v34 = v74;
    MEMORY[0x1D3893640](v52, -1, -1);

    v71(v69, v45);
  }

  else
  {
    v53 = *(v0 + 288);

    v43(v44, v45);
  }

  v54 = *(v0 + 152);
  v55 = *(v0 + 56);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v57 = *(v56 + 48);
  sub_1D1741A90(v54, v55, &unk_1EC649E30, &unk_1D1E91250);
  *(v55 + v57) = v34;
  v58 = *(v0 + 208);
  v59 = *(v0 + 216);
  v61 = *(v0 + 192);
  v60 = *(v0 + 200);
  v62 = *(v0 + 184);
  v64 = *(v0 + 152);
  v63 = *(v0 + 160);
  v65 = *(v0 + 144);
  v72 = *(v0 + 128);
  v75 = *(v0 + 120);
  (*(*(v56 - 8) + 56))(*(v0 + 56), 0, 1, v56);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D1AEFA08(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 136) = a4;
  *(v5 + 144) = v4;
  *(v5 + 368) = a2;
  *(v5 + 120) = a1;
  *(v5 + 128) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v5 + 160) = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  *(v5 + 176) = v9;
  *(v5 + 184) = *(v9 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  *(v5 + 208) = v10;
  v11 = *(v10 - 8);
  *(v5 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFBE0, 0, 0);
}

uint64_t sub_1D1AEFBE0()
{
  v1 = type metadata accessor for StateSnapshot(0);
  *(v0 + 264) = v1;
  *(v0 + 360) = *(v1 + 20);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFC88, v2, 0);
}

uint64_t sub_1D1AEFC88()
{
  v10 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v4);
    sub_1D1747DDC(&v9);

    v5 = v9;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 136) + *(v0 + 360);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v0 + 272) = sub_1D174A6C4(sub_1D1749C64, v7, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFE10, 0, 0);
}

uint64_t sub_1D1AEFE10()
{
  v112 = v0;
  if (v0[34])
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_55:
      if (sub_1D1E6873C())
      {
        sub_1D179D370(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v96 = MEMORY[0x1E69E7CD0];
      }

      v0[11] = v96;
      if (sub_1D1E6873C())
      {
        sub_1D179D394(MEMORY[0x1E69E7CC0]);
        v1 = v97;
      }

      else
      {
        v1 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
      v0[11] = MEMORY[0x1E69E7CD0];
    }

    v2 = v0[16];
    v0[12] = v1;
    v3 = *(v2 + 16);
    v0[35] = v3;
    if (v3)
    {
      v4 = v0[26];
      v5 = v0[27];
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = *(v5 + 64);
      *(v0 + 91) = v7;
      v0[36] = *(v5 + 56);
      v0[37] = v6;
      v8 = v0[32];
      v0[38] = 0;
      v0[39] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v2 + ((v7 + 32) & ~v7), v4);
      v9 = swift_task_alloc();
      v0[40] = v9;
      *v9 = v0;
      v9[1] = sub_1D1AF0858;
      v10 = v0[17];
      v11 = v0[18];
      v12 = v0[32];

      return sub_1D1AF8584(v12, v10);
    }

    v37 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    if ((v1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1E681BC();
      v1 = v0[2];
      v38 = v0[3];
      v39 = v0[4];
      v40 = v0[5];
      v41 = v0[6];
    }

    else
    {
      v58 = -1 << *(v1 + 32);
      v38 = v1 + 56;
      v39 = ~v58;
      v59 = -v58;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      else
      {
        v60 = -1;
      }

      v41 = v60 & *(v1 + 56);

      v40 = 0;
    }

    v98 = v39;
    v61 = (v39 + 64) >> 6;
    v104 = *(v0 + 368) | 0x80;
    v101 = v0[27];
    v106 = v38;
    for (i = v1; ; v1 = i)
    {
      v0[42] = v37;
      if (v1 < 0)
      {
        v67 = sub_1D1E6877C();
        if (!v67 || (v0[14] = v67, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v66 = v0[13], v64 = v40, v65 = v41, !v66))
        {
LABEL_47:
          v85 = v0[34];
          v86 = v0[20];
          v87 = v0[21];
          v88 = v0;
          v89 = v0[18];
          sub_1D1716918();

          v90 = *(v89 + 144);
          v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
          v92 = [v85 uniqueIdentifier];
          sub_1D1E66A5C();

          *(v87 + v91) = v37;
          swift_storeEnumTagMultiPayload();

          v93 = swift_task_alloc();
          v88[43] = v93;
          *v93 = v88;
          v93[1] = sub_1D1AF11C0;
          v94 = v88[21];

          return sub_1D1AB6894(v94, 0, 0, 0, 0);
        }
      }

      else
      {
        v62 = v40;
        v63 = v41;
        v64 = v40;
        if (!v41)
        {
          while (1)
          {
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              break;
            }

            if (v64 >= v61)
            {
              goto LABEL_47;
            }

            v63 = *(v38 + 8 * v64);
            ++v62;
            if (v63)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_34:
        v65 = (v63 - 1) & v63;
        v66 = *(*(v1 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
        if (!v66)
        {
          goto LABEL_47;
        }
      }

      v68 = v0[30];
      v69 = [v66 uniqueIdentifier];
      sub_1D1E66A5C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v37;
      v71 = sub_1D1742188(v68);
      v73 = v37[2];
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
        goto LABEL_54;
      }

      v77 = v72;
      if (v37[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = v71;
          sub_1D173BFC4();
          v71 = v84;
          v0 = v109;
          v37 = v111;
        }
      }

      else
      {
        v78 = v0[30];
        sub_1D172DCA8(v76, isUniquelyReferenced_nonNull_native);
        v37 = v111;
        v71 = sub_1D1742188(v78);
        if ((v77 & 1) != (v79 & 1))
        {
          v95 = v0[26];

          return sub_1D1E690FC();
        }
      }

      v80 = v0[30];
      v81 = v0[26];
      if (v77)
      {
        *(v37[7] + v71) = v104;

        (*(v101 + 8))(v80, v81);
        v40 = v64;
        v41 = v65;
      }

      else
      {
        v37[(v71 >> 6) + 8] |= 1 << v71;
        v0 = v71;
        (*(v101 + 16))(v37[6] + *(v101 + 72) * v71, v80, v81);
        *(v0 + v37[7]) = v104;

        (*(v101 + 8))(v80, v81);
        v82 = v37[2];
        v75 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v75)
        {
          __break(1u);
          goto LABEL_58;
        }

        v37[2] = v83;
        v40 = v64;
        v41 = v65;
        v0 = v109;
      }

      v38 = v106;
    }
  }

  if (qword_1EC642328 != -1)
  {
LABEL_58:
    swift_once();
  }

  v14 = v0[16];
  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EC64A290);

  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[16];
    v19 = v0;
    v20 = *(v0 + 368);
    v21 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v110 = v103;
    *v21 = 136315650;
    *(v21 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC4760, &v110);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v20;
    *(v21 + 18) = 2080;
    v22 = *(v18 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v99 = v17;
      v100 = v21;
      v102 = v16;
      v24 = v19[27];
      v25 = v19[16];
      v111 = MEMORY[0x1E69E7CC0];
      sub_1D178CD24(0, v22, 0);
      v23 = v111;
      v26 = *(v24 + 16);
      v24 += 16;
      v27 = v25 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v105 = *(v24 + 56);
      v107 = v26;
      v28 = (v24 - 8);
      do
      {
        v29 = v109[28];
        v30 = v109[26];
        v107(v29, v27, v30);
        v31 = sub_1D1E66A1C();
        v33 = v32;
        (*v28)(v29, v30);
        v111 = v23;
        v35 = v23[2];
        v34 = v23[3];
        if (v35 >= v34 >> 1)
        {
          sub_1D178CD24((v34 > 1), v35 + 1, 1);
          v23 = v111;
        }

        v23[2] = v35 + 1;
        v36 = &v23[2 * v35];
        v36[4] = v31;
        v36[5] = v33;
        v27 += v105;
        --v22;
      }

      while (v22);
      v21 = v100;
      v16 = v102;
      v17 = v99;
    }

    v0 = v109;
    v109[10] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
    v42 = sub_1D1E6770C();
    v44 = v43;

    v45 = sub_1D1B1312C(v42, v44, &v110);

    *(v21 + 20) = v45;
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s Home not found to set power state to %{BOOL}d for device idss %s.", v21, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v103, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v46 = v0[15];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  v49 = v0[31];
  v48 = v0[32];
  v51 = v0[29];
  v50 = v0[30];
  v52 = v0[28];
  v54 = v0[24];
  v53 = v0[25];
  v55 = v0[21];
  v56 = v0[19];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1D1AF0858(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF0958, 0, 0);
}

uint64_t sub_1D1AF0958()
{
  v92 = v0;
  v1 = *(v0 + 328);
  if (v1)
  {
    if (*(v0 + 368))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E696CAF8]) initWithAccessory:v1 targetSleepWakeState:v2];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 mediaProfile];
      if (v5)
      {
        sub_1D1763114(&v91, v5);
      }

      v6 = *(v0 + 256);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      sub_1D1768DB8(&v91, v4);

      (*(v8 + 8))(v6, v7);
      goto LABEL_14;
    }
  }

  if (qword_1EC642328 != -1)
  {
LABEL_54:
    swift_once();
  }

  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v13 = *(v0 + 208);
  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EC64A290);
  v10(v11, v12, v13);
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6833C();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  if (v17)
  {
    v89 = *(v0 + 256);
    v22 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v22 = 136315138;
    sub_1D1AFA21C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v23 = sub_1D1E68FAC();
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v18, v21);
    v27 = sub_1D1B1312C(v23, v25, &v91);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1D16EC000, v15, v16, "Could not create media profile power action using deviceID: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    MEMORY[0x1D3893640](v87, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);

    v26(v89, v21);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v18, v21);
    v28(v19, v21);
  }

LABEL_14:
  v29 = *(v0 + 304) + 1;
  if (v29 == *(v0 + 280))
  {
    v30 = *(v0 + 96);
    v31 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1E681BC();
      v30 = *(v0 + 16);
      v32 = *(v0 + 24);
      v33 = *(v0 + 32);
      v34 = *(v0 + 40);
      v35 = *(v0 + 48);
    }

    else
    {
      v46 = -1 << *(v30 + 32);
      v32 = v30 + 56;
      v33 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v35 = v48 & *(v30 + 56);

      v34 = 0;
    }

    v84 = v33;
    v49 = (v33 + 64) >> 6;
    v86 = *(v0 + 368) | 0x80;
    v85 = *(v0 + 216);
    v88 = v32;
    for (i = v30; ; v30 = i)
    {
      *(v0 + 336) = v31;
      if (v30 < 0)
      {
        v55 = sub_1D1E6877C();
        if (!v55 || (*(v0 + 112) = v55, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v54 = *(v0 + 104), v52 = v34, v53 = v35, !v54))
        {
LABEL_45:
          v74 = *(v0 + 272);
          v75 = *(v0 + 160);
          v76 = *(v0 + 168);
          v77 = *(v0 + 144);
          sub_1D1716918();

          v78 = *(v77 + 144);
          v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
          v80 = [v74 uniqueIdentifier];
          sub_1D1E66A5C();

          *(v76 + v79) = v31;
          swift_storeEnumTagMultiPayload();

          v81 = swift_task_alloc();
          *(v0 + 344) = v81;
          *v81 = v0;
          v81[1] = sub_1D1AF11C0;
          v82 = *(v0 + 168);

          return sub_1D1AB6894(v82, 0, 0, 0, 0);
        }
      }

      else
      {
        v50 = v34;
        v51 = v35;
        v52 = v34;
        if (!v35)
        {
          while (1)
          {
            v52 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            if (v52 >= v49)
            {
              goto LABEL_45;
            }

            v51 = *(v32 + 8 * v52);
            ++v50;
            if (v51)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_32:
        v53 = (v51 - 1) & v51;
        v54 = *(*(v30 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));
        if (!v54)
        {
          goto LABEL_45;
        }
      }

      v56 = *(v0 + 240);
      v57 = [v54 uniqueIdentifier];
      sub_1D1E66A5C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v31;
      v59 = sub_1D1742188(v56);
      v61 = v31[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_52;
      }

      v65 = v60;
      if (v31[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = v59;
          sub_1D173BFC4();
          v59 = v73;
          v31 = v91;
        }
      }

      else
      {
        v66 = *(v0 + 240);
        sub_1D172DCA8(v64, isUniquelyReferenced_nonNull_native);
        v31 = v91;
        v59 = sub_1D1742188(v66);
        if ((v65 & 1) != (v67 & 1))
        {
          v83 = *(v0 + 208);

          return sub_1D1E690FC();
        }
      }

      v68 = *(v0 + 240);
      v69 = *(v0 + 208);
      if (v65)
      {
        *(v31[7] + v59) = v86;

        (*(v85 + 8))(v68, v69);
      }

      else
      {
        v31[(v59 >> 6) + 8] |= 1 << v59;
        v70 = v59;
        (*(v85 + 16))(v31[6] + *(v85 + 72) * v59, v68, v69);
        *(v31[7] + v70) = v86;

        (*(v85 + 8))(v68, v69);
        v71 = v31[2];
        v63 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v63)
        {
          goto LABEL_53;
        }

        v31[2] = v72;
      }

      v34 = v52;
      v35 = v53;
      v32 = v88;
    }
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 256);
  v38 = *(v0 + 208);
  v39 = *(v0 + 128) + ((*(v0 + 364) + 32) & ~*(v0 + 364)) + *(v0 + 288) * v29;
  v40 = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 304) = v29;
  *(v0 + 312) = v40;
  v36(v37, v39, v38);
  v41 = swift_task_alloc();
  *(v0 + 320) = v41;
  *v41 = v0;
  v41[1] = sub_1D1AF0858;
  v42 = *(v0 + 256);
  v43 = *(v0 + 136);
  v44 = *(v0 + 144);

  return sub_1D1AF8584(v42, v43);
}

uint64_t sub_1D1AF11C0(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 352) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF12F4, 0, 0);
}

uint64_t sub_1D1AF12F4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 232);
  v3 = [*(v0 + 272) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v4 = sub_1D1742188(*(v0 + 232));
    v5 = *(v0 + 264);
    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    if (v9)
    {
      v10 = *(v5 - 8);
      sub_1D1AFB124(*(*(v0 + 352) + 56) + *(v10 + 72) * v4, *(v0 + 200), type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);

      v11 = 0;
      goto LABEL_7;
    }

    (*(v8 + 8))(v6, v7);
    v17 = *(v5 - 8);
  }

  else
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    v16 = *(v0 + 352);

    (*(v15 + 8))(v13, v14);
    v17 = *(v12 - 8);
  }

  v10 = v17;
  v11 = 1;
LABEL_7:
  v44 = *(v0 + 272);
  v45 = *(v0 + 336);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v24 = *(v0 + 120);
  (*(v10 + 56))(v18, v11, 1, *(v0 + 264));
  v25 = sub_1D1E67E7C();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  sub_1D1741C08(v18, v19, &unk_1EC649E30, &unk_1D1E91250);
  v26 = *(v0 + 88);
  v27 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v44;
  v29[5] = v26;
  sub_1D1741A90(v19, v29 + v27, &unk_1EC649E30, &unk_1D1E91250);
  *(v29 + v28) = v23;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;

  v30 = sub_1D1B02614(0, 0, v22, &unk_1D1E975E0, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v32 = *(v31 + 48);
  sub_1D1741A90(v18, v24, &unk_1EC649E30, &unk_1D1E91250);
  *(v24 + v32) = v30;
  (*(*(v31 - 8) + 56))(v24, 0, 1, v31);
  v34 = *(v0 + 248);
  v33 = *(v0 + 256);
  v36 = *(v0 + 232);
  v35 = *(v0 + 240);
  v37 = *(v0 + 224);
  v39 = *(v0 + 192);
  v38 = *(v0 + 200);
  v40 = *(v0 + 168);
  v41 = *(v0 + 152);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1D1AF16E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 200) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  v9 = *(type metadata accessor for StaticLightProfile() - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v7 + 64) = v11;
  v12 = *(v11 - 8);
  *(v7 + 72) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v7 + 104) = updated;
  v15 = *(*(updated - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v7 + 120) = v16;
  *v16 = v7;
  v16[1] = sub_1D1AF1890;

  return sub_1D1AF2CD0(a6);
}

uint64_t sub_1D1AF1890(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF1990, 0, 0);
}

uint64_t sub_1D1AF1990()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 200);
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v0 + 144) = v4;
  *(v4 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v5 = swift_allocObject();
  *(v0 + 152) = v5;
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *(v6 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v6 + 24) = 34;
  *(v6 + 32) = 2;
  *(v6 + 40) = v1;
  *(v6 + 48) = &unk_1D1E975C0;
  *(v6 + 56) = v3;
  *(v6 + 64) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1D1AF1B34;
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v8, v9, v10, 0, 0, &unk_1D1E975C8, v6, v11);
}

uint64_t sub_1D1AF1B34()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1D1AF1F38;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 128);

    v4 = sub_1D1AF1C5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AF1C5C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  v11 = *(v10 + 144);
  v12 = [v8 uniqueIdentifier];
  sub_1D1E66A5C();

  v34 = *(v7 + 32);
  v34(v4, v5, v6);
  v13 = *(v9 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v0[9];
    v16 = v0[6];
    v17 = v0[4];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v13, 0);
    v14 = v35;
    v18 = v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v33 = *(v16 + 72);
    do
    {
      v19 = v0[10];
      v21 = v0[7];
      v20 = v0[8];
      sub_1D1AFB124(v18, v21, type metadata accessor for StaticLightProfile);
      (*(v15 + 16))(v19, v21, v20);
      sub_1D1AFB0C4(v21, type metadata accessor for StaticLightProfile);
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D178CEFC(v22 > 1, v23 + 1, 1);
      }

      v24 = v0[10];
      v25 = v0[8];
      *(v35 + 16) = v23 + 1;
      v34(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v24, v25);
      v18 += v33;
      --v13;
    }

    while (v13);
  }

  v27 = v0[13];
  v26 = v0[14];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v29 = sub_1D17841EC(v14);

  *(v26 + v28) = v29;
  swift_storeEnumTagMultiPayload();
  v30 = swift_task_alloc();
  v0[23] = v30;
  *v30 = v0;
  v30[1] = sub_1D1AF201C;
  v31 = v0[14];

  return sub_1D1AB6894(v31, 0, 0, 0, 0);
}

uint64_t sub_1D1AF1F38()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];
  v12 = v0[22];

  return v11();
}

uint64_t sub_1D1AF201C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 192) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2150, 0, 0);
}

uint64_t sub_1D1AF2150()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);
  v3 = [*(v0 + 40) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 88);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 88));
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 16);
      v12 = *(*(v0 + 192) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1AFB124(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 192);

    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 192);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);
  (*(v14 + 56))(*(v0 + 16), v15, 1, v13);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D1AF239C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = v17;
  *(v7 + 56) = v18;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 152) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  v9 = sub_1D1E66A7C();
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  *(v7 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v7 + 88) = updated;
  v13 = *(*(updated - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v7 + 104) = v14;
  *v14 = v7;
  v14[1] = sub_1D1AF24E8;

  return sub_1D1AF44DC(a6, v17, v18);
}

uint64_t sub_1D1AF24E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(v3 + 112) = a1;

  v5 = swift_task_alloc();
  *(v3 + 120) = v5;
  *v5 = v8;
  v5[1] = sub_1D1AF2644;
  v6 = *(v3 + 152);

  return (sub_1D1AFA9E8)(v6, a1, 0, 1);
}

uint64_t sub_1D1AF2644()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1D1AF2C54;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1D1AF2760;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AF2760()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  v17 = *(v0[3] + 144);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v10 = [v7 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = sub_1D18CE91C(sub_1D18CFDFC, 0, v6, v5, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v11);
  v13 = sub_1D17841EC(v12);

  *(v2 + v9) = v13;
  swift_storeEnumTagMultiPayload();
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1D1AF28F4;
  v15 = v0[12];

  return sub_1D1AB6894(v15, 0, 0, 0, 0);
}

uint64_t sub_1D1AF28F4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 144) = a1;

  sub_1D1AFB0C4(v3, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2A28, 0, 0);
}

uint64_t sub_1D1AF2A28()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = [*(v0 + 40) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v0 + 80);
  if (*(v1 + 16))
  {
    v5 = sub_1D1742188(*(v0 + 80));
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    if (v9)
    {
      v10 = v5;
      v11 = *(v0 + 16);
      v12 = *(*(v0 + 144) + 56);
      v13 = type metadata accessor for StateSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D1AFB124(v12 + *(v14 + 72) * v10, v11, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v6, v8);

      v15 = 0;
      goto LABEL_7;
    }

    v19 = *(v0 + 144);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 144);

    (*(v17 + 8))(v4, v16);
  }

  v13 = type metadata accessor for StateSnapshot(0);
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_7:
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);
  (*(v14 + 56))(*(v0 + 16), v15, 1, v13);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1AF2C54()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1D1AF2CD0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for StaticLightProfile();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2EB0, 0, 0);
}

uint64_t sub_1D1AF2EB0()
{
  v1 = v0[12];
  v2 = MEMORY[0x1E69E7CC8];
  v110 = MEMORY[0x1E69E7CC8];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0 + 2;
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[17];
    v8 = *(v0[26] + 28);
    v9 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v100 = *(v5 + 72);
    v10 = (v7 + 16);
    v96 = v7;
    v105 = (v7 + 8);
    v101 = v0 + 2;
    v97 = v6;
    v99 = v8;
    v104 = (v7 + 16);
    while (1)
    {
      v108 = v9;
      sub_1D1AFB124(v9, v0[28], type metadata accessor for StaticLightProfile);
      if (v110[2])
      {
        sub_1D1742188(v6 + v8);
        v13 = *v10;
        if (v14)
        {
          v13(v0[24], v6 + v8, v0[16]);
          v15 = sub_1D1C77360(v4);
          v17 = v0[28];
          v19 = v0[24];
          v18 = v0[25];
          if (*v16)
          {
            v102 = v0[24];
            v20 = v0[25];
            v21 = v0[22];
            v22 = v0[16];
            v98 = v15;
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
            v24 = *(v23 + 48);
            v13(v21, v17, v22);
            v25 = sub_1D1762CB8(&v20[v24], v21);
            (v98)(v101, 0);
            v26 = v22;
            v4 = v101;
            (*v105)(v102, v26);
            sub_1D1AFB0C4(v17, type metadata accessor for StaticLightProfile);
            *v20 = v25 & 1;
            v27 = *(*(v23 - 8) + 56);
            v28 = v23;
            v6 = v97;
            v0 = v106;
            v27(v20, 0, 1, v28);
          }

          else
          {
            v53 = v0[16];
            (v15)(v4, 0);
            (*v105)(v19, v53);
            sub_1D1AFB0C4(v17, type metadata accessor for StaticLightProfile);
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
            (*(*(v54 - 8) + 56))(v18, 1, 1, v54);
          }

          sub_1D1741A30(v0[25], &qword_1EC64AA00, &qword_1D1E97570);
          goto LABEL_5;
        }

        v103 = v3;
      }

      else
      {
        v103 = v3;
        v13 = *v10;
      }

      v29 = v0[28];
      v30 = v0[23];
      v31 = v0[16];
      v13(v30, v6 + v8, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v32 = *(v96 + 72);
      v33 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D1E739C0;
      v13((v34 + v33), v29, v31);
      v35 = sub_1D179BE14(v34);
      swift_setDeallocating();
      v36 = *(v96 + 8);
      v36(v34 + v33, v31);
      swift_deallocClassInstance();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = sub_1D1742188(v30);
      v40 = v110[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v43 = v38;
      if (v110[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D173C234();
        }
      }

      else
      {
        v44 = v106[23];
        sub_1D172E068(v42, isUniquelyReferenced_nonNull_native);
        v45 = sub_1D1742188(v44);
        if ((v43 & 1) != (v46 & 1))
        {
          v93 = v106[16];

          return sub_1D1E690FC();
        }

        v39 = v45;
      }

      v47 = v106[28];
      v48 = v106[23];
      v49 = v106[16];
      if (v43)
      {
        v11 = v110[7];
        v12 = *(v11 + 8 * v39);
        *(v11 + 8 * v39) = v35;

        v36(v48, v49);
        sub_1D1AFB0C4(v47, type metadata accessor for StaticLightProfile);
      }

      else
      {
        v110[(v39 >> 6) + 8] |= 1 << v39;
        v13((v110[6] + v39 * v32), v48, v49);
        *(v110[7] + 8 * v39) = v35;
        v36(v48, v49);
        sub_1D1AFB0C4(v47, type metadata accessor for StaticLightProfile);
        v50 = v110[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_46;
        }

        v110[2] = v52;
      }

      v0 = v106;
      v4 = v101;
      v3 = v103;
      v6 = v97;
LABEL_5:
      v8 = v99;
      v10 = v104;
      v9 = v108 + v100;
      if (!--v3)
      {
        v2 = v110;
        break;
      }
    }
  }

  v0[29] = v2;
  v55 = v0[13];
  v0[9] = MEMORY[0x1E69E7CC0];
  v56 = *(v2 + 32);
  *(v0 + 336) = v56;
  v57 = 1 << v56;
  v58 = v2[8];
  if (v57 < 64)
  {
    v59 = ~(-1 << v57);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & v58;
  swift_beginAccess();
  v0[30] = 0;
  if (v60)
  {
    v61 = 0;
    v62 = v0[29];
LABEL_32:
    v65 = v0[22];
    v66 = v0[16];
    v67 = v0[17];
    v68 = v0[14];
    v69 = (v60 - 1) & v60;
    v70 = __clz(__rbit64(v60)) | (v61 << 6);
    (*(v67 + 16))(v65, *(v62 + 48) + *(v67 + 72) * v70, v66);
    v71 = *(*(v62 + 56) + 8 * v70);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v73 = *(v72 + 48);
    (*(v67 + 32))(v68, v65, v66);
    *(v68 + v73) = v71;
    (*(*(v72 - 8) + 56))(v68, 0, 1, v72);

    v64 = v61;
  }

  else
  {
    v63 = 0;
    v64 = (((1 << *(v0 + 336)) + 63) >> 6) - 1;
    while (v64 != v63)
    {
      v61 = v63 + 1;
      v62 = v0[29];
      v60 = *(v62 + 8 * v63++ + 72);
      if (v60)
      {
        goto LABEL_32;
      }
    }

    v94 = v0[14];
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
    v69 = 0;
  }

  v0[31] = v69;
  v0[32] = v64;
  v74 = v0[15];
  sub_1D1741A90(v0[14], v74, &qword_1EC64A9E8, &qword_1D1E97560);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
  {
    v76 = v0[29];

    v77 = v0[28];
    v79 = v0[24];
    v78 = v0[25];
    v81 = v0[22];
    v80 = v0[23];
    v83 = v0[20];
    v82 = v0[21];
    v85 = v0[18];
    v84 = v0[19];
    v86 = v0[15];
    v107 = v0[14];
    v109 = v0[9];

    v87 = v0[1];

    return v87(v109);
  }

  else
  {
    v89 = v0[21];
    v90 = v0[16];
    v91 = v0[17];
    v0[33] = *(v0[15] + *(v75 + 48));
    (*(v91 + 32))(v89);
    if (qword_1EC642358 != -1)
    {
LABEL_47:
      swift_once();
    }

    v92 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF37D8, v92, 0);
  }
}

uint64_t sub_1D1AF37D8()
{
  v1 = v0;
  v2 = *(v0[13] + 64);
  v3 = v0[30];
  if (!v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[19];
    v13 = v0[16];
    v12 = v0[17];
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v0[34] = v15;
    v0[35] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v9, v10, v13);
    v15(v11, v10, v13);
    v47 = v8 >> 62;
    if (v8 >> 62)
    {
LABEL_35:
      v48 = v8 & 0xFFFFFFFFFFFFFF8;
      v16 = sub_1D1E6873C();
    }

    else
    {
      v48 = v8 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = v8 & 0xC000000000000001;
    v46 = v8 + 32;
    while (v16 != v17)
    {
      if (v18)
      {
        v19 = v8;
        v20 = MEMORY[0x1D3891EF0](v17, v8);
      }

      else
      {
        if (v17 >= *(v48 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v19 = v8;
        v20 = *(v8 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v1;
      v23 = v1[19];
      v24 = [v20 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v25 = sub_1D1E67C1C();

      v26 = swift_task_alloc();
      *(v26 + 16) = v23;
      v14 = sub_1D174A6C4(sub_1D1778988, v26, v25);

      if (v14)
      {
        v16 = v17;
        v8 = v19;
        v1 = v22;
        break;
      }

      v27 = __OFADD__(v17++, 1);
      v8 = v19;
      v1 = v22;
      if (v27)
      {
        goto LABEL_34;
      }
    }

    if (v47)
    {
      if (v16 != sub_1D1E6873C())
      {
LABEL_23:
        if (v18)
        {
          v28 = MEMORY[0x1D3891EF0](v16, v8);
        }

        else
        {
          if (v16 >= *(v48 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v28 = *(v46 + 8 * v16);
        }

        v29 = v28;
        v30 = v1[20];
        v31 = v1;
        v32 = v1[17];
        v33 = v31[16];
        v34 = [v28 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v35 = sub_1D1E67C1C();

        v36 = swift_task_alloc();
        *(v36 + 16) = v30;
        v37 = sub_1D174A6C4(sub_1D1778988, v36, v35);
        v31[36] = v37;
        v31[37] = v3;

        v14 = *(v32 + 8);
        v31[38] = v14;
        v31[39] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v14)(v30, v33);

        v16 = v31[19];
        v3 = v31[16];
        if (v37)
        {

          (v14)(v16, v3);
          v38 = sub_1D1AF3C80;
          goto LABEL_30;
        }

LABEL_38:
        v38 = (v14)(v16, v3);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v38, v44, v45);
      }
    }

    else if (v16 != *(v48 + 16))
    {
      goto LABEL_23;
    }

    v40 = v1[19];
    v39 = v1[20];
    v41 = v1[16];
    v42 = v1[17];
    v43 = *(v42 + 8);
    v1[40] = v43;
    v1[41] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v39, v41);

    v43(v40, v41);
    v38 = sub_1D1AF43B4;
LABEL_30:
    v44 = 0;
    v45 = 0;

    return MEMORY[0x1EEE6DFA0](v38, v44, v45);
  }

  v4 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  sub_1D1E67C1C();

  v0[10] = sub_1D1749970(v5);
  sub_1D1747DDC(v0 + 10);
  if (!v3)
  {

    v8 = v0[10];
    goto LABEL_8;
  }

  v6 = v0[10];
}

uint64_t sub_1D1AF3C80()
{
  v1 = [*(v0 + 288) profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v2 = sub_1D1E67C1C();

  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + 88);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v75 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = (v0 + 88);
  for (i = v2; v4; i = v2)
  {
    v5 = 0;
    v77 = *(v0 + 264) + 56;
    v79 = *(v0 + 264);
    v71 = MEMORY[0x1E69E7CC0];
    v74 = v4;
    while ((i & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v5, i);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = *(v0 + 144);
      v76 = v9;
      v12 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v79 + 16) && (v13 = *(v0 + 144), v14 = *(v0 + 128), v15 = *(v79 + 40), sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]), v16 = sub_1D1E676DC(), v17 = -1 << *(v79 + 32), v18 = v16 & ~v17, ((*(v77 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        v20 = *(*(v0 + 136) + 72);
        while (1)
        {
          v21 = *(v0 + 304);
          v2 = *(v0 + 312);
          v22 = *(v0 + 280);
          v23 = *(v0 + 176);
          v24 = *(v0 + 144);
          v25 = *(v0 + 128);
          (*(v0 + 272))(v23, *(v79 + 48) + v18 * v20, v25);
          sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          LOBYTE(v24) = sub_1D1E6775C();
          v21(v23, v25);
          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v77 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v26 = *(v0 + 312);
        (*(v0 + 304))(*(v0 + 144), *(v0 + 128));
        objc_opt_self();
        v3 = v76;
        v8 = v74;
        if (swift_dynamicCastObjCClass())
        {
          v3 = v72;
          MEMORY[0x1D3891220]();
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v71 = *v72;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
        v6 = *(v0 + 304);
        v2 = *(v0 + 312);
        v3 = *(v0 + 144);
        v7 = *(v0 + 128);

        v6(v3, v7);
        v8 = v74;
      }

      if (v5 == v8)
      {
        goto LABEL_26;
      }
    }

    if (v5 >= *(v75 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(i + 32 + 8 * v5);
    v10 = __OFADD__(v5++, 1);
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v75 = v2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D1E6873C();
    v72 = v3;
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v30 = *(v0 + 288);
  v31 = *(v0 + 264);
  v32 = *(v0 + 168);
  v33 = *(v0 + 128);

  sub_1D17A4BE0(v71);

  v29(v32, v33);
  v34 = *(v0 + 248);
  v35 = *(v0 + 256);
  *(v0 + 240) = *(v0 + 296);
  if (!v34)
  {
    v37 = ((1 << *(v0 + 336)) + 63) >> 6;
    if (v37 <= (v35 + 1))
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 336)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v69 = *(v0 + 112);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
        v45 = 0;
        goto LABEL_37;
      }

      v36 = *(v0 + 232);
      v34 = *(v36 + 8 * v40 + 64);
      ++v35;
      if (v34)
      {
        v35 = v40;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v36 = *(v0 + 232);
LABEL_36:
  v41 = *(v0 + 176);
  v42 = *(v0 + 128);
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);
  v45 = (v34 - 1) & v34;
  v46 = __clz(__rbit64(v34)) | (v35 << 6);
  (*(v43 + 16))(v41, *(v36 + 48) + *(v43 + 72) * v46, v42);
  v47 = *(*(v36 + 56) + 8 * v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  v49 = *(v48 + 48);
  (*(v43 + 32))(v44, v41, v42);
  *(v44 + v49) = v47;
  (*(*(v48 - 8) + 56))(v44, 0, 1, v48);

  v39 = v35;
LABEL_37:
  *(v0 + 248) = v45;
  *(v0 + 256) = v39;
  v50 = *(v0 + 120);
  sub_1D1741A90(*(v0 + 112), v50, &qword_1EC64A9E8, &qword_1D1E97560);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    v52 = *(v0 + 232);

    v53 = *(v0 + 224);
    v55 = *(v0 + 192);
    v54 = *(v0 + 200);
    v57 = *(v0 + 176);
    v56 = *(v0 + 184);
    v59 = *(v0 + 160);
    v58 = *(v0 + 168);
    v61 = *(v0 + 144);
    v60 = *(v0 + 152);
    v62 = *(v0 + 120);
    v78 = *(v0 + 112);
    v80 = *(v0 + 72);

    v63 = *(v0 + 8);

    return v63(v80);
  }

  v65 = *(v0 + 168);
  v66 = *(v0 + 128);
  v67 = *(v0 + 136);
  *(v0 + 264) = *(*(v0 + 120) + *(v51 + 48));
  (*(v67 + 32))(v65);
  if (qword_1EC642358 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v68 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF37D8, v68, 0);
}

uint64_t sub_1D1AF43B4()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[21];
  v6 = v0[16];
  v7 = v0[9];

  v2(v5, v6);
  v8 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[15];
  v21 = v0[14];

  v18 = v0[1];
  v19 = MEMORY[0x1E69E7CC0];

  return v18(v19);
}

uint64_t sub_1D1AF44DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1D1E66A7C();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF4614, 0, 0);
}

uint64_t sub_1D1AF4614()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F0, &unk_1D1E9CB80);
  v5 = *(v2 + 8);
  sub_1D1E67A9C();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  v6 = *(v0 + 40);
  *(v0 + 184) = v6;
  v7 = *(v6 + 32);
  *(v0 + 288) = v7;
  v8 = 1 << v7;
  v9 = *(v6 + 64);
  if (v8 < 64)
  {
    v10 = ~(-1 << v8);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v9;
  swift_beginAccess();
  *(v0 + 192) = 0;
  if (v11)
  {
    v12 = 0;
    v13 = *(v0 + 184);
LABEL_9:
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v20 = (v11 - 1) & v11;
    v21 = __clz(__rbit64(v11)) | (v12 << 6);
    (*(v19 + 16))(v16, *(v13 + 48) + *(v19 + 72) * v21, v18);
    v22 = *(*(v13 + 56) + 8 * v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v24 = *(v23 + 48);
    (*(v19 + 32))(v17, v16, v18);
    *(v17 + v24) = v22;
    (*(*(v23 - 8) + 56))(v17, 0, 1, v23);

    v15 = v12;
  }

  else
  {
    v14 = 0;
    v15 = (((1 << *(v0 + 288)) + 63) >> 6) - 1;
    while (v15 != v14)
    {
      v12 = v14 + 1;
      v13 = *(v0 + 184);
      v11 = *(v13 + 8 * v14++ + 72);
      if (v11)
      {
        goto LABEL_9;
      }
    }

    v42 = *(v0 + 168);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    v20 = 0;
  }

  *(v0 + 200) = v20;
  *(v0 + 208) = v15;
  v25 = *(v0 + 176);
  sub_1D1741A90(*(v0 + 168), v25, &qword_1EC64A9E8, &qword_1D1E97560);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    v27 = *(v0 + 184);

    v28 = *(v0 + 56);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);

    v36 = *(v0 + 8);

    return v36(v28);
  }

  else
  {
    v38 = *(v0 + 152);
    v39 = *(v0 + 112);
    v40 = *(v0 + 120);
    *(v0 + 216) = *(*(v0 + 176) + *(v26 + 48));
    (*(v40 + 32))(v38);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v41 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF4A20, v41, 0);
  }
}

uint64_t sub_1D1AF4A20()
{
  v1 = v0;
  v2 = *(v0[13] + 64);
  v3 = v0[24];
  if (!v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v0[28] = v15;
    v0[29] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v9, v10, v13);
    v15(v11, v10, v13);
    v47 = v8 >> 62;
    if (v8 >> 62)
    {
LABEL_35:
      v48 = v8 & 0xFFFFFFFFFFFFFF8;
      v16 = sub_1D1E6873C();
    }

    else
    {
      v48 = v8 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = v8 & 0xC000000000000001;
    v46 = v8 + 32;
    while (v16 != v17)
    {
      if (v18)
      {
        v19 = v8;
        v20 = MEMORY[0x1D3891EF0](v17, v8);
      }

      else
      {
        if (v17 >= *(v48 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v19 = v8;
        v20 = *(v8 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v1;
      v23 = v1[17];
      v24 = [v20 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v25 = sub_1D1E67C1C();

      v26 = swift_task_alloc();
      *(v26 + 16) = v23;
      v14 = sub_1D174A6C4(sub_1D1778988, v26, v25);

      if (v14)
      {
        v16 = v17;
        v8 = v19;
        v1 = v22;
        break;
      }

      v27 = __OFADD__(v17++, 1);
      v8 = v19;
      v1 = v22;
      if (v27)
      {
        goto LABEL_34;
      }
    }

    if (v47)
    {
      if (v16 != sub_1D1E6873C())
      {
LABEL_23:
        if (v18)
        {
          v28 = MEMORY[0x1D3891EF0](v16, v8);
        }

        else
        {
          if (v16 >= *(v48 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v28 = *(v46 + 8 * v16);
        }

        v29 = v28;
        v30 = v1[18];
        v31 = v1;
        v32 = v1[15];
        v33 = v31[14];
        v34 = [v28 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v35 = sub_1D1E67C1C();

        v36 = swift_task_alloc();
        *(v36 + 16) = v30;
        v37 = sub_1D174A6C4(sub_1D1778988, v36, v35);
        v31[30] = v37;
        v31[31] = v3;

        v14 = *(v32 + 8);
        v31[32] = v14;
        v31[33] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v14)(v30, v33);

        v16 = v31[17];
        v3 = v31[14];
        if (v37)
        {

          (v14)(v16, v3);
          v38 = sub_1D1AF4EC8;
          goto LABEL_30;
        }

LABEL_38:
        v38 = (v14)(v16, v3);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v38, v44, v45);
      }
    }

    else if (v16 != *(v48 + 16))
    {
      goto LABEL_23;
    }

    v40 = v1[17];
    v39 = v1[18];
    v41 = v1[14];
    v42 = v1[15];
    v43 = *(v42 + 8);
    v1[34] = v43;
    v1[35] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v39, v41);

    v43(v40, v41);
    v38 = sub_1D1AF55CC;
LABEL_30:
    v44 = 0;
    v45 = 0;

    return MEMORY[0x1EEE6DFA0](v38, v44, v45);
  }

  v4 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  sub_1D1E67C1C();

  v0[8] = sub_1D1749970(v5);
  sub_1D1747DDC(v0 + 8);
  if (!v3)
  {

    v8 = v0[8];
    goto LABEL_8;
  }

  v6 = v0[8];
}

uint64_t sub_1D1AF4EC8()
{
  v1 = [*(v0 + 240) profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v2 = sub_1D1E67C1C();

  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + 72);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v73 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v70 = (v0 + 72);
  for (i = v2; v4; i = v2)
  {
    v5 = 0;
    v75 = *(v0 + 216) + 56;
    v76 = *(v0 + 216);
    v69 = MEMORY[0x1E69E7CC0];
    v72 = v4;
    while ((i & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v5, i);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = *(v0 + 128);
      v74 = v9;
      v12 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v76 + 16) && (v13 = *(v0 + 128), v14 = *(v0 + 112), v15 = *(v76 + 40), sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]), v16 = sub_1D1E676DC(), v17 = -1 << *(v76 + 32), v18 = v16 & ~v17, ((*(v75 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        v20 = *(*(v0 + 120) + 72);
        while (1)
        {
          v21 = *(v0 + 256);
          v2 = *(v0 + 264);
          v22 = *(v0 + 232);
          v23 = *(v0 + 160);
          v24 = *(v0 + 128);
          v25 = *(v0 + 112);
          (*(v0 + 224))(v23, *(v76 + 48) + v18 * v20, v25);
          sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          LOBYTE(v24) = sub_1D1E6775C();
          v21(v23, v25);
          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v75 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v26 = *(v0 + 264);
        (*(v0 + 256))(*(v0 + 128), *(v0 + 112));
        objc_opt_self();
        v3 = v74;
        v8 = v72;
        if (swift_dynamicCastObjCClass())
        {
          v3 = v70;
          MEMORY[0x1D3891220]();
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v69 = *v70;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
        v6 = *(v0 + 256);
        v2 = *(v0 + 264);
        v3 = *(v0 + 128);
        v7 = *(v0 + 112);

        v6(v3, v7);
        v8 = v72;
      }

      if (v5 == v8)
      {
        goto LABEL_26;
      }
    }

    if (v5 >= *(v73 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(i + 32 + 8 * v5);
    v10 = __OFADD__(v5++, 1);
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v73 = v2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D1E6873C();
    v70 = v3;
  }

  v69 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = *(v0 + 216);
  v32 = *(v0 + 152);
  v33 = *(v0 + 112);

  sub_1D17A4BE0(v69);

  v29(v32, v33);
  v34 = *(v0 + 200);
  v35 = *(v0 + 208);
  *(v0 + 192) = *(v0 + 248);
  if (!v34)
  {
    v37 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v37 <= (v35 + 1))
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v67 = *(v0 + 168);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
        v45 = 0;
        goto LABEL_37;
      }

      v36 = *(v0 + 184);
      v34 = *(v36 + 8 * v40 + 64);
      ++v35;
      if (v34)
      {
        v35 = v40;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v36 = *(v0 + 184);
LABEL_36:
  v41 = *(v0 + 160);
  v42 = *(v0 + 168);
  v43 = *(v0 + 112);
  v44 = *(v0 + 120);
  v45 = (v34 - 1) & v34;
  v46 = __clz(__rbit64(v34)) | (v35 << 6);
  (*(v44 + 16))(v41, *(v36 + 48) + *(v44 + 72) * v46, v43);
  v47 = *(*(v36 + 56) + 8 * v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  v49 = *(v48 + 48);
  (*(v44 + 32))(v42, v41, v43);
  *(v42 + v49) = v47;
  (*(*(v48 - 8) + 56))(v42, 0, 1, v48);

  v39 = v35;
LABEL_37:
  *(v0 + 200) = v45;
  *(v0 + 208) = v39;
  v50 = *(v0 + 176);
  sub_1D1741A90(*(v0 + 168), v50, &qword_1EC64A9E8, &qword_1D1E97560);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    v52 = *(v0 + 184);

    v53 = *(v0 + 56);
    v55 = *(v0 + 168);
    v54 = *(v0 + 176);
    v57 = *(v0 + 152);
    v56 = *(v0 + 160);
    v59 = *(v0 + 136);
    v58 = *(v0 + 144);
    v60 = *(v0 + 128);

    v61 = *(v0 + 8);

    return v61(v53);
  }

  v63 = *(v0 + 152);
  v64 = *(v0 + 112);
  v65 = *(v0 + 120);
  *(v0 + 216) = *(*(v0 + 176) + *(v51 + 48));
  (*(v65 + 32))(v63);
  if (qword_1EC642358 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v66 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF4A20, v66, 0);
}

uint64_t sub_1D1AF55CC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[14];
  v7 = v0[7];

  v2(v5, v6);
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];

  v15 = v0[1];
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t sub_1D1AF56B8(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AF56DC, 0, 0);
}

uint64_t sub_1D1AF56DC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_67_0;
  *(v0 + 112) = v3;
  [v2 setNaturalLightingEnabled:v1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t HomeState.Stream.fetchSettings<A>(for:lightProfiles:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 128) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10 = *(a5 - 8);
  *(v6 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v6 + 72) = v12;
  *v12 = v6;
  v12[1] = sub_1D1AF5920;

  return sub_1D1AF44DC(a2, a5, a6);
}

uint64_t sub_1D1AF5920(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF5A20, 0, 0);
}

uint64_t sub_1D1AF5A20()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64A290);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 64);
  if (v9)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    v32 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v14 = 136446210;
    v6(v12, v10, v13);
    type metadata accessor for StaticLightProfile();
    sub_1D1AFA21C(&qword_1EC64A9D0, type metadata accessor for StaticLightProfile);
    v15 = *(v32 + 8);
    sub_1D1E6820C();
    (*(v11 + 8))(v10, v13);
    v16 = sub_1D1E6817C();
    v18 = v17;

    v19 = sub_1D1B1312C(v16, v18, &v35);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D16EC000, v7, v8, "start light profile read %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 32));
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 128);
  v22 = *(v0 + 24);
  v23 = swift_allocObject();
  *(v0 + 88) = v23;
  *(v23 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v24 = swift_allocObject();
  *(v0 + 96) = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  v25 = swift_task_alloc();
  *(v0 + 104) = v25;
  *(v25 + 16) = "LightProfileFetch";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  *(v25 + 40) = v20;
  *(v25 + 48) = &unk_1D1E97508;
  *(v25 + 56) = 0;
  *(v25 + 64) = v24;
  *(v25 + 72) = v23;
  *(v25 + 80) = v22;
  *(v25 + 88) = v21 & 1;
  v26 = *(MEMORY[0x1E69E88A0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 112) = v27;
  *v27 = v0;
  v27[1] = sub_1D1AF5DD8;
  v28 = MEMORY[0x1E69E7CA8] + 8;
  v29 = MEMORY[0x1E69E7CA8] + 8;
  v30 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v27, v28, v29, 0, 0, &unk_1D1E97518, v25, v30);
}

uint64_t sub_1D1AF5DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D1AF5F88;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 80);

    v4 = sub_1D1AF5F00;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AF5F00()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1AF5F88()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];
  v8 = v0[15];

  return v7();
}

uint64_t sub_1D1AF604C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1AF6168;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E0, &unk_1D1E9CBB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 fetchSettingsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1AF6168()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1D1AF62DC;
  }

  else
  {
    v3 = sub_1D1AF6278;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AF6278()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF62DC()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1D1AF6348(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v16 = *(type metadata accessor for StaticLightProfile() + 28);
  if (*(*a1 + 16) && (sub_1D1742188(a2 + v16), (v17 & 1) != 0))
  {
    v34 = *(v5 + 16);
    v35 = a2;
    v34(v11, a2 + v16, v4);
    v18 = sub_1D1C77360(v36);
    if (*v19)
    {
      v33 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      v21 = *(v20 + 48);
      v34(v9, v35, v4);
      v22 = sub_1D1762CB8(&v15[v21], v9);
      (v33)(v36, 0);
      (*(v5 + 8))(v11, v4);
      *v15 = v22 & 1;
      (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
    }

    else
    {
      (v18)(v36, 0);
      (*(v5 + 8))(v11, v4);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    }

    return sub_1D1741A30(v15, &qword_1EC64AA00, &qword_1D1E97570);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v23 = *(v5 + 72);
    v24 = a2;
    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D1E739C0;
    (*(v5 + 16))(v26 + v25, v24, v4);
    v27 = sub_1D179BE14(v26);
    swift_setDeallocating();
    (*(v5 + 8))(v26 + v25, v4);
    swift_deallocClassInstance();
    v28 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *a1;
    result = sub_1D1756288(v27, v24 + v16, isUniquelyReferenced_nonNull_native);
    *a1 = v36[0];
  }

  return result;
}

uint64_t sub_1D1AF6704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 162) = v14;
  *(v8 + 128) = v13;
  *(v8 + 112) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 161) = a5;
  *(v8 + 80) = a4;
  *(v8 + 88) = a6;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF67C8, 0, 0);
}

uint64_t sub_1D1AF67C8()
{
  v1 = *(v0 + 136);
  v31 = *(v0 + 162);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 161);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = sub_1D1E67E7C();
  v30 = *(v0 + 88);
  v28 = *(*(v9 - 8) + 56);
  v29 = v9;
  v28(v1, 1, 1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v30;
  *(v10 + 72) = v4;
  *(v10 + 80) = v3;
  *(v10 + 88) = v2;

  sub_1D1A01DDC(v1, &unk_1D1E97528, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v31 & 1) == 0)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64A290);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 128);
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_1D16EC000, v12, v13, "performing natural lighting requests with timeout: %f", v15, 0xCu);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 88);
    v21 = *(v0 + 64);

    (v28)(v16, 1, 1, v29);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v17;
    v22[5] = v20;
    v22[6] = v18;
    v22[7] = v19;

    sub_1D1A01DDC(v16, &unk_1D1E97538, v22);
    sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v23 = *(MEMORY[0x1E69E8708] + 4);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v24 = v0;
  v24[1] = sub_1D1AF6B10;
  v26 = *(v0 + 64);

  return MEMORY[0x1EEE6DAC8](v0 + 160, 0, 0, v25);
}

uint64_t sub_1D1AF6B10()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D1AF6F00;
  }

  else
  {
    v3 = sub_1D1AF6C24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AF6C24()
{
  v22 = v0;
  v1 = **(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64A290);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = *(v6 + 16);
    sub_1D1E66A7C();
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8]);

    v10 = sub_1D1E6760C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v21);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v4, v5, "natural lighting requests has completed with result: %s, cancelling timeout", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v14 = *(v0 + 120);
  swift_beginAccess();
  v15 = *(v14 + 16);
  if (*(v15 + 16))
  {
    sub_1D1AFA694();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    v17 = *(v0 + 136);
  }

  else
  {
    v19 = *(v0 + 136);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1AF6F00()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1AF6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 64) = v17;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a6;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = sub_1D1E6702C();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = sub_1D1E66FDC();
  *(v8 + 112) = v12;
  v13 = *(v12 - 8);
  *(v8 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF70B4, 0, 0);
}

uint64_t sub_1D1AF70B4()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D1E6701C();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  v5 = sub_1D1E6855C();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = *(v0 + 32);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v13 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v13 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
      }

      if (v13 >> 16 <= 0x10)
      {
        v13 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v14 = *(v0 + 144);
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v16, v13, "", v15, 2u);
  MEMORY[0x1D3893640](v15, -1, -1);
LABEL_12:

  v17 = *(v0 + 144);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v20 = *(v0 + 80);
  v21 = *(v0 + 200);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  (*(v19 + 16))(*(v0 + 136), v17, v18);
  v24 = sub_1D1E6705C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v27 = *(v19 + 8);
  *(v0 + 168) = v27;
  *(v0 + 176) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v17, v18);
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *(v28 + 16) = v32;
  *(v28 + 32) = v31;
  *(v28 + 48) = v23;
  *(v28 + 56) = v22;
  *(v28 + 64) = v21;
  *(v28 + 72) = v20;
  v29 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  *(v5 + 8) = sub_1D1AF736C;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v10 = &unk_1D1E97548;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = 0;
  v9 = 0;
  v11 = v28;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D1AF736C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF7484, 0, 0);
}

uint64_t sub_1D1AF7484()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v5 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if (result)
  {
    v7 = *(v0 + 32);
    if ((*(v0 + 200) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 160);
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v11 = *(v0 + 88);

        sub_1D1E6706C();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
          v12 = "";
        }

        v13 = *(v0 + 128);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1D3893640](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v18 = *(v0 + 160);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  v23 = *(v0 + 104);
  v22 = *(v0 + 112);

  v17(v21, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1AF7688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v12;
  *(v8 + 120) = a8;
  *(v8 + 128) = v13;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF774C, 0, 0);
}

uint64_t sub_1D1AF774C()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = *(v0 + 80);
    }

    result = sub_1D1E6873C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);

    v25 = *(v0 + 8);

    return v25();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v28 = **(v0 + 72);
    v29 = result;
    v27 = v1 & 0xC000000000000001;
    v26 = *(v0 + 80) + 32;
    while (1)
    {
      v36 = v3;
      if (v27)
      {
        v6 = MEMORY[0x1D3891EF0](v3, *(v0 + 80));
      }

      else
      {
        v6 = *(v26 + 8 * v3);
      }

      v7 = *(v0 + 144);
      v33 = *(v0 + 136);
      v34 = v6;
      v32 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v30 = *(v0 + 112);
      v31 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_1D1E67E7C();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v7, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v34;
      *(v14 + 56) = v9;
      *(v14 + 64) = v30;
      *(v14 + 72) = v31;
      *(v14 + 80) = v32;
      *(v14 + 88) = v8;
      sub_1D1741C08(v7, v33, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v9) = (*(v13 + 48))(v33, 1, v12);

      v35 = v34;

      v16 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_1D1741A30(*(v0 + 136), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      v17 = *(v14 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D1E67D4C();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_15:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1D1E97558;
      *(v21 + 24) = v14;

      if (v20 | v18)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v4 = 0;
      }

      v3 = v36 + 1;
      v5 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      if (v29 == v36 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1AF7B04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v15;
  *(v8 + 48) = v17;
  *(v8 + 72) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v8 + 56) = v11;
  *v11 = v8;
  v11[1] = sub_1D1AF7C1C;

  return v13(a6);
}

uint64_t sub_1D1AF7C1C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D1AF7DF8;
  }

  else
  {
    v3 = sub_1D1AF7D30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AF7D30()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v4 = sub_1D1E67C1C();

  sub_1D1AE8EA0(v4, v2 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1AF7DF8()
{
  v26 = v0;
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64A290);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315394;
    v13 = sub_1D1E6888C();
    v15 = sub_1D1B1312C(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error performing natural light block with name: %s error: %@", v10, 0x16u);
    sub_1D1741A30(v11, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  v18 = *(v0 + 64);
  v19 = *(v0 + 48);
  v20 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v21 = sub_1D1E67C1C();

  v22 = v18;
  sub_1D1AF9EB0(v21, (v19 + 16), v18);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1AF8080(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = sub_1D1E68A4C();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF8148, 0, 0);
}

uint64_t sub_1D1AF8148()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D1AF8224;
  v7 = v0[11];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1AF8224()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_1D1AF8520;
  }

  else
  {
    v5 = sub_1D1AF838C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1AF838C()
{
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EC64A290);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = v0[13];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  sub_1D1AE9640(v8, (v7 + 16), (v6 + 16));
  swift_beginAccess();
  v9 = *(v7 + 16);
  sub_1D1AFA694();
  swift_allocError();
  *v10 = v9;
  swift_willThrow();
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1AF8520()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1AF8584(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1D1E66A7C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for StaticMediaProfile();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF86C8, 0, 0);
}

uint64_t sub_1D1AF86C8()
{
  v34 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + *(type metadata accessor for StateSnapshot(0) + 48));
  if (*(v2 + 16) && (v3 = sub_1D1742188(*(v0 + 40)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    sub_1D1AFB124(*(v2 + 56) + *(*(v0 + 112) + 72) * v3, v6, type metadata accessor for StaticMediaProfile);
    sub_1D1AFB18C(v6, v5, type metadata accessor for StaticMediaProfile);
    *(v0 + 144) = *(v7 + 56);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v8 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF8A2C, v8, 0);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EC64A290);
    (*(v10 + 16))(v9, v12, v11);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      sub_1D1AFA21C(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v22 = sub_1D1E68FAC();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_1D1B1312C(v22, v24, &v33);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Failed to get static accessory from deviceID %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);

    v31 = *(v0 + 8);

    return v31(0);
  }
}

uint64_t sub_1D1AF8A2C()
{
  v44 = v0;
  v1 = v0;
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v43 = sub_1D1749970(v5);
    sub_1D1747DDC(&v43);

    v6 = v43;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(*(v0 + 72) + 16);
  v11(*(v0 + 96), v8 + v7, v10);
  v11(v9, v8 + v7, v10);
  v41 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v42 = v6 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = (v6 & 0xC000000000000001);
  v40 = v6 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v15 = v6;
      v16 = MEMORY[0x1D3891EF0](v13, v6);
    }

    else
    {
      if (v13 >= *(v42 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v15 = v6;
      v16 = *(v6 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v1;
    v19 = v1[11];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1778988, v22, v21);

    if (v23)
    {
      v12 = v13;
      v6 = v15;
      v1 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v6 = v15;
    v1 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (!v41)
  {
    if (v12 != *(v42 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v14 = *(v1[9] + 8);
    v14(v1[12], v1[8]);
    v33 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v25 = MEMORY[0x1D3891EF0](v12, v6);
  }

  else
  {
    if (v12 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v25 = *(v40 + 8 * v12);
  }

  v26 = v25;
  v27 = v1[12];
  v29 = v1[8];
  v28 = v1[9];
  v30 = [v25 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v31 = sub_1D1E67C1C();

  v32 = swift_task_alloc();
  *(v32 + 16) = v27;
  v33 = sub_1D174A6C4(sub_1D1778988, v32, v31);

  v14 = *(v28 + 8);
  v14(v27, v29);

  if (!v33)
  {
LABEL_34:
    v36 = (v14)(v1[11], v1[8]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v36, v37, v38);
  }

LABEL_26:
  v1[17] = v33;
  v34 = v1[11];
  v35 = v1[8];

  v14(v34, v35);
  v36 = sub_1D1AF8E9C;
  v37 = 0;
  v38 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1D1AF8E9C()
{
  sub_1D1AFB0C4(v0[16], type metadata accessor for StaticMediaProfile);
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_1D1AF8F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  v9 = sub_1D1E66A7C();
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v11 = *(v10 + 64) + 15;
  v8[26] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[27] = updated;
  v13 = *(*(updated - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v14 = sub_1D1E6702C();
  v8[29] = v14;
  v15 = *(v14 - 8);
  v8[30] = v15;
  v16 = *(v15 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v17 = sub_1D1E66FDC();
  v8[33] = v17;
  v18 = *(v17 - 8);
  v8[34] = v18;
  v19 = *(v18 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF9138, 0, 0);
}

uint64_t sub_1D1AF9138()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_1D1E6701C();
  v0[39] = __swift_project_value_buffer(v2, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v3 = sub_1D1E66FFC();
  v4 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v3, v4, v7, "MediaSetPowerState", "", v6, 2u);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[33];
  v11 = v0[34];
  v12 = v0[19];
  v13 = v0[20];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_1D1E6705C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[40] = sub_1D1E6704C();
  v17 = *(v11 + 8);
  v0[41] = v17;
  v0[42] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  sub_1D1BFAABC(v13);
  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  sub_1D1771944(&qword_1EE079BE0, &qword_1EE079BF0, 0x1E696CAE8);
  v18 = sub_1D1E6815C();
  v0[43] = v18;

  v0[2] = v0;
  v0[3] = sub_1D1AF9418;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_101;
  v0[14] = v19;
  [v12 executeActions:v18 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1AF9418()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_1D1AF9740;
  }

  else
  {
    v3 = sub_1D1AF9528;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1AF9528()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);

  v4 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v5 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);

    sub_1D1E6706C();

    if ((*(v9 + 88))(v7, v8) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
      v10 = "";
    }

    v11 = *(v0 + 288);
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v4, v5, v13, "MediaSetPowerState", v10, v12, 2u);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  v15 = *(v0 + 328);
  v14 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 288);
  v18 = *(v0 + 264);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);

  v15(v17, v18);
  sub_1D1741C08(v19, v20, &unk_1EC649E30, &unk_1D1E91250);
  v22 = *(v0 + 296);
  v21 = *(v0 + 304);
  v24 = *(v0 + 280);
  v23 = *(v0 + 288);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 224);
  v28 = *(v0 + 208);

  v29 = *(v0 + 8);

  return v29();
}