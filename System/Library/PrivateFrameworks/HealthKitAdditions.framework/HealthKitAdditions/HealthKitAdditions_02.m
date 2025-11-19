uint64_t sub_1DF6CAE78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v3 + 84))
  {
    ++v4;
  }

  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
LABEL_28:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_28;
  }

LABEL_17:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1DF6CAFD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
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

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
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
LABEL_41:
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
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v6] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1DF6CB1C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1DF6CB348(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1DF6CB614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for FeatureStatusPublisher.Inner();

  return DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(a1, v9, a3, a4);
}

uint64_t sub_1DF6CB674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for FeatureStatusPublisher.Inner();

  return DownstreamHandlerSubscription.sendCompletionToDownstreamIfNeeded(_:)(a1, v9, a3, a4);
}

uint64_t sub_1DF6CB704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  v8 = _s23SharingEntriesPublisherV5InnerCMa();

  return a4(a1, v8, a3);
}

uint64_t sub_1DF6CB778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatusPublisher.Inner();
  swift_unknownObjectRetain();
  v5 = sub_1DF6CD3EC(a1, a2);
  v7[3] = v4;
  v7[4] = swift_getWitnessTable();
  v7[0] = v5;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_1DF6CB840(void *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  sub_1DF6CD438(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  a1[3] = v4;
  a1[4] = &protocol witness table for <A> UnsafeMutablePointer<A>;
  *a1 = v3;
}

uint64_t sub_1DF6CB8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = type metadata accessor for DownstreamHandlerSubscriptionState();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

uint64_t sub_1DF6CB9A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = type metadata accessor for DownstreamHandlerSubscriptionState();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

uint64_t (*sub_1DF6CBA80())()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1DF6CBAFC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  MEMORY[0x1E12DCBA0](*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)), -1, -1);
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeatureStatusPublisher.Inner();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1DF6CBBC8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = type metadata accessor for DownstreamHandlerSubscriptionState();
  (*(*(v6 - 8) + 8))(&a1[v3], v6);
  v7 = *&a1[*((*v2 & *a1) + 0x70)];

  return swift_unknownObjectRelease();
}

void sub_1DF6CBCF4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = a1;
  sub_1DF6CD49C(v6);
  swift_unknownObjectRelease();
}

void sub_1DF6CBD74(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1DF6CD690();
}

void (*sub_1DF6CBDC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DF6CBA80();
  return sub_1DF6CBE30;
}

void sub_1DF6CBE30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1DF6CBE80(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return DownstreamHandlerSubscription.request(_:)(a1, a2, WitnessTable);
}

void sub_1DF6CBED8()
{
  v1 = *v0;
  swift_getWitnessTable();
  DownstreamHandlerSubscription.cancel()();
}

uint64_t FeatureStatusProviding.makePublisherWithCurrentValue(observingChanges:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  LODWORD(v35) = a1;
  sub_1DF6CC354();
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6CC474();
  v36 = v15;
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v12 + 16);
  v32(v14, v4, a2);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v30 = *(v12 + 32);
  v30(v19 + v18, v14, a2);
  *(v19 + v18 + v13) = v35;
  sub_1DF6CC508(0);
  v35 = MEMORY[0x1E695BED8];
  sub_1DF6CC5E4(&unk_1EDC04078, sub_1DF6CC508);
  sub_1DF6F5FCC();
  v32(v14, v33, a2);
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  *(v20 + 16) = a2;
  *(v20 + 24) = v22;
  v21(v20 + v18, v14, a2);
  sub_1DF6F5F0C();
  sub_1DF6CC440(0);
  sub_1DF6CC5E4(&qword_1EDC03FB8, sub_1DF6CC474);
  sub_1DF6CC5E4(&qword_1EDC04060, sub_1DF6CC440);
  v24 = v36;
  v23 = v37;
  v25 = v34;
  sub_1DF6F607C();

  sub_1DF6CC5E4(&qword_1EDC040B0, sub_1DF6CC354);
  v26 = v39;
  v27 = sub_1DF6F5FEC();
  (*(v40 + 8))(v23, v26);
  (*(v38 + 8))(v25, v24);
  return v27;
}

void sub_1DF6CC354()
{
  if (!qword_1EDC040A0)
  {
    sub_1DF6CC440(255);
    sub_1DF6CC474();
    sub_1DF6CC5E4(&qword_1EDC04060, sub_1DF6CC440);
    sub_1DF6CC5E4(&qword_1EDC03FB8, sub_1DF6CC474);
    v0 = sub_1DF6F5E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC040A0);
    }
  }
}

void sub_1DF6CC474()
{
  if (!qword_1EDC03FB0)
  {
    sub_1DF6CC508(255);
    sub_1DF6CC5E4(&unk_1EDC04078, sub_1DF6CC508);
    v0 = sub_1DF6F5FDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03FB0);
    }
  }
}

void sub_1DF6CC53C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DF6CC5E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF6CC62C@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v33 = a4;
  v34 = a2;
  v32 = a1;
  sub_1DF6CD9BC(0);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29[6] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeatureStatus(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6CC5B0(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v29[4] = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - v17;
  sub_1DF6CD9F0(0);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v29[5] = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v29 - v25;
  (*(a3 + 16))(v34, a3);
  sub_1DF6CD8F0(v12, v18);
  (*(v9 + 56))(v18, 0, 1, v8);
  sub_1DF6F5F8C();
  sub_1DF6CC5E4(&unk_1EDC04030, sub_1DF6CD9F0);
  v27 = sub_1DF6F5FEC();
  result = (*(v21 + 8))(v26, v20);
  *v33 = v27;
  return result;
}

uint64_t sub_1DF6CCCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v28 = a4;
  sub_1DF6CD6C0();
  v8 = v7;
  v27 = *(v7 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6CC5B0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeatureStatus(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6CD954(a1, v15, sub_1DF6CC5B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1DF6CD890(v15, sub_1DF6CC5B0);
    result = (*(a3 + 24))(a2, a3);
    v22 = result;
  }

  else
  {
    sub_1DF6CD8F0(v15, v20);
    v29 = (*(a3 + 24))(a2, a3);
    sub_1DF6CD438(0, &qword_1EDC034D8, type metadata accessor for FeatureStatus, MEMORY[0x1E69E6F90]);
    v23 = *(v17 + 72);
    v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DF6FA080;
    sub_1DF6CD954(v20, v25 + v24, type metadata accessor for FeatureStatus);
    sub_1DF6CC440(0);
    sub_1DF6CC5E4(&qword_1EDC04060, sub_1DF6CC440);
    sub_1DF6F605C();

    sub_1DF6CC5E4(&qword_1EDC040E0, sub_1DF6CD6C0);
    v22 = sub_1DF6F5FEC();
    (*(v27 + 8))(v11, v8);
    result = sub_1DF6CD890(v20, type metadata accessor for FeatureStatus);
  }

  *v28 = v22;
  return result;
}

uint64_t sub_1DF6CD0E8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for DownstreamHandlerSubscriptionState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6CD1F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1DF6CD230(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v9 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *((v6 & v5) + 0x60);
  v15 = swift_slowAlloc();
  *v15 = 0;
  *&v2[v14] = v15;
  static DownstreamHandlerSubscriptionState.ready(_:)(a1, v7, v13);
  (*(v10 + 32))(&v2[*((*v4 & *v2) + 0x68)], v13, v9);
  *&v2[*((*v4 & *v2) + 0x70)] = v19;
  v16 = type metadata accessor for FeatureStatusPublisher.Inner();
  v20.receiver = v2;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_1DF6CD3EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = objc_allocWithZone(type metadata accessor for FeatureStatusPublisher.Inner());
  return sub_1DF6CD230(a1, a2);
}

void sub_1DF6CD438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF6CD49C(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for FeatureStatus(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x50);
  v10 = *((v4 & v3) + 0x58);
  type metadata accessor for DownstreamHandlerSendFailureReason();
  swift_getWitnessTable();
  v11 = sub_1DF6F6F6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  FeatureStatus.init(_:)(a1, v8);
  v16 = type metadata accessor for FeatureStatusPublisher.Inner();
  WitnessTable = swift_getWitnessTable();
  DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(v8, v16, WitnessTable, v15);
  sub_1DF6CD890(v8, type metadata accessor for FeatureStatus);
  return (*(v12 + 8))(v15, v11);
}

void sub_1DF6CD6C0()
{
  if (!qword_1EDC040D0)
  {
    sub_1DF6CD7AC();
    sub_1DF6CC440(255);
    sub_1DF6CC5E4(&unk_1EDC04090, sub_1DF6CD7AC);
    sub_1DF6CC5E4(&qword_1EDC04060, sub_1DF6CC440);
    v0 = sub_1DF6F5E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC040D0);
    }
  }
}

void sub_1DF6CD7AC()
{
  if (!qword_1EDC04088)
  {
    sub_1DF6CD85C(255);
    sub_1DF6CC5E4(&qword_1EDC03F48, sub_1DF6CD85C);
    v0 = sub_1DF6F5E6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04088);
    }
  }
}

uint64_t sub_1DF6CD890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF6CD8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF6CD954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DF6CDA24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)(char a1, uint64_t *a2)
{
  *(v3 + 144) = v2;
  *(v3 + 217) = a1;
  sub_1DF6CDF6C();
  *(v3 + 152) = v5;
  v6 = *(v5 - 8);
  *(v3 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v3 + 168) = v8;
  *(v3 + 176) = v9;
  *(v3 + 184) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DF6CDB6C, 0, 0);
}

uint64_t sub_1DF6CDB6C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 27;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v13 = v1[18];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v1[24] = v9;
  v10 = sub_1DF6F63BC();
  v1[25] = v10;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DF6CDD5C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1DF69F1E4();
  sub_1DF6F666C();
  (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DF6CE038;
  v1[13] = &block_descriptor_10;
  [v13 setFeatureSettingNumber:v9 forKey:v10 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DF6CDD5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1DF6CDEE0;
  }

  else
  {
    v3 = sub_1DF6CDE6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6CDE6C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF6CDEE0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

void sub_1DF6CDF6C()
{
  if (!qword_1ECE4DBE0)
  {
    sub_1DF69F1E4();
    v0 = sub_1DF6F669C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DBE0);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1DF6CE038(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DF6CECD0();
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_1DF6CDF6C();
  if (a3)
  {
    v5 = a3;
    sub_1DF6F667C();
  }

  else
  {
    sub_1DF6F668C();
  }
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

void HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:completion:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v10 = sub_1DF6F63BC();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6CDA24;
  v12[3] = &block_descriptor_4;
  v11 = _Block_copy(v12);

  [v4 setFeatureSettingNumber:v9 forKey:v10 completion:v11];
  _Block_release(v11);
}

uint64_t HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)(uint64_t a1, uint64_t *a2)
{
  v3[18] = a1;
  v3[19] = v2;
  sub_1DF6CDF6C();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  v3[22] = v8;
  v3[23] = v9;
  v3[24] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DF6CE2C0, 0, 0);
}

{
  v3[18] = a1;
  v3[19] = v2;
  sub_1DF6CDF6C();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  v3[22] = v8;
  v3[23] = v9;
  v3[24] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DF6CE798, 0, 0);
}

uint64_t sub_1DF6CE2C0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 28;
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v13 = v1[19];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v1[25] = v9;
  v10 = sub_1DF6F63BC();
  v1[26] = v10;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DF6CE4AC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1DF69F1E4();
  sub_1DF6F666C();
  (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DF6CE038;
  v1[13] = &block_descriptor_7;
  [v13 setFeatureSettingNumber:v9 forKey:v10 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DF6CE4AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DF6CED50;
  }

  else
  {
    v3 = sub_1DF6CED3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10 = sub_1DF6F63BC();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6CDA24;
  v12[3] = &block_descriptor_11;
  v11 = _Block_copy(v12);

  [v4 setFeatureSettingNumber:v9 forKey:v10 completion:v11];
  _Block_release(v11);
}

{
  v5 = v4;
  v8 = *a2;
  v9 = a2[1];
  sub_1DF6F5A2C();
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v12 = sub_1DF6F63BC();
  v14[4] = a3;
  v14[5] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DF6CDA24;
  v14[3] = &block_descriptor_18;
  v13 = _Block_copy(v14);

  [v5 setFeatureSettingNumber:v11 forKey:v12 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1DF6CE798()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v12 = v0[19];
  v6 = v0[18];
  sub_1DF6F5A2C();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v0[25] = v8;
  v9 = sub_1DF6F63BC();
  v0[26] = v9;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1DF6CE994;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_1DF69F1E4();
  sub_1DF6F666C();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF6CE038;
  v0[13] = &block_descriptor_14;
  [v12 setFeatureSettingNumber:v8 forKey:v9 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6CE994()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DF6CEB18;
  }

  else
  {
    v3 = sub_1DF6CEAA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6CEAA4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF6CEB18()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6CECD0()
{
  result = qword_1ECE4DBE8;
  if (!qword_1ECE4DBE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECE4DBE8);
  }

  return result;
}

uint64_t HKSummarySharingEntryStore.SharingEntriesPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = *v1;
  v4 = _s23SharingEntriesPublisherV5InnerCMa();
  v5 = sub_1DF6D0308(a1, v3);
  v7[3] = v4;
  v7[4] = swift_getWitnessTable();
  v7[0] = v5;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_1DF6CEE2C(void *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  sub_1DF6D0634(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  a1[3] = v4;
  a1[4] = &protocol witness table for <A> UnsafeMutablePointer<A>;
  *a1 = v3;
}

id sub_1DF6CEEBC()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70)) removeObserver_];
  MEMORY[0x1E12DCBA0](*(v0 + *((*v2 & *v0) + 0x60)), -1, -1);
  v4 = *((v3 & v1) + 0x50);
  v5 = *((v3 & v1) + 0x58);
  v7.receiver = v0;
  v7.super_class = _s23SharingEntriesPublisherV5InnerCMa();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1DF6CEFB8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = type metadata accessor for DownstreamHandlerSubscriptionState();
  (*(*(v6 - 8) + 8))(&a1[v3], v6);
  v7 = *&a1[*((*v2 & *a1) + 0x70)];
}

void sub_1DF6CF094()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  [v1 addObserver_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1DF6D0614;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1DF6CDA24;
  v5[3] = &block_descriptor_11;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 fetchSharingEntriesWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1DF6CF1A4(char a1, void *a2, void *a3)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x58);
  type metadata accessor for DownstreamHandlerSendFailureReason();
  swift_getWitnessTable();
  v7 = sub_1DF6F6F6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v17 = a2;
      v13 = a2;
      v14 = _s23SharingEntriesPublisherV5InnerCMa();
      WitnessTable = swift_getWitnessTable();
      DownstreamHandlerSubscription.sendCompletionToDownstreamIfNeeded(_:)(&v17, v14, WitnessTable, v12);

      return (*(v8 + 8))(v12, v7);
    }
  }

  return result;
}

uint64_t sub_1DF6CF38C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  type metadata accessor for DownstreamHandlerSendFailureReason();
  swift_getWitnessTable();
  v5 = sub_1DF6F6F6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = [*(v0 + *((v2 & v1) + 0x70)) sharingEntries];
  sub_1DF6D0408();
  v11 = sub_1DF6F65AC();

  v16 = v11;
  v12 = _s23SharingEntriesPublisherV5InnerCMa();
  WitnessTable = swift_getWitnessTable();
  DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(&v16, v12, WitnessTable, v9);

  return (*(v6 + 8))(v9, v5);
}

void sub_1DF6CF56C(void *a1)
{
  v1 = a1;
  sub_1DF6CF38C();
}

id sub_1DF6CF5B4(void *a1)
{
  v1 = a1;
  sub_1DF6CF61C();

  v2 = sub_1DF6F63BC();

  return v2;
}

uint64_t sub_1DF6CF61C()
{
  swift_getObjectType();
  MEMORY[0x1E12DB8A0](60, 0xE100000000000000);
  v0 = sub_1DF6CF6D8();
  MEMORY[0x1E12DB8A0](v0);

  MEMORY[0x1E12DB8A0](32, 0xE100000000000000);
  sub_1DF6F6C7C();
  MEMORY[0x1E12DB8A0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DF6CF6D8()
{
  sub_1DF6D0408();
  sub_1DF6D0698();
  v2 = sub_1DF6F63FC();
  MEMORY[0x1E12DB8A0](46, 0xE100000000000000);
  sub_1DF6D0820(0, &qword_1EDC04048, MEMORY[0x1E695BED0]);
  sub_1DF6D06E0();
  v0 = sub_1DF6F63FC();
  MEMORY[0x1E12DB8A0](v0);

  return v2;
}

void sub_1DF6CF784(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1DF6CD690();
}

void (*sub_1DF6CF7C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DF6CBA80();
  return sub_1DF6CBE30;
}

uint64_t sub_1DF6CF840(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return DownstreamHandlerSubscription.request(_:)(a1, a2, WitnessTable);
}

void sub_1DF6CF898()
{
  v1 = *v0;
  swift_getWitnessTable();
  DownstreamHandlerSubscription.cancel()();
}

uint64_t HKSummarySharingEntryStore.createSummarySharingEntryPublisher()()
{
  sub_1DF6D0354();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x1E695BED0];
  sub_1DF6D0820(0, &qword_1EDC04048, MEMORY[0x1E695BED0]);
  sub_1DF6D091C(&qword_1EDC04050, &qword_1EDC04048, v6);
  sub_1DF6F5FCC();
  sub_1DF6D09A0(&unk_1EDC03FA0, sub_1DF6D0354);
  v7 = sub_1DF6F5FEC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1DF6CFAA0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF6D0744();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6D0820(0, &qword_1EDC04040, MEMORY[0x1E695BFF0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1DF6B0160();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v27 = sub_1DF6F5FBC();
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1DF6D0968;
    *(v20 + 24) = v19;
    sub_1DF6D0634(0, &qword_1EDC03F18, sub_1DF6D0408, MEMORY[0x1E69E62F8]);
    v26 = v3;
    sub_1DF6D09A0(&qword_1EDC03FC8, sub_1DF6B0160);
    v21 = v15;
    sub_1DF6F600C();

    sub_1DF6D09A0(&unk_1EDC040C0, sub_1DF6D0744);
    v22 = v26;
    v23 = sub_1DF6F5FEC();

    result = (*(v4 + 8))(v7, v22);
  }

  else
  {
    sub_1DF6D0634(0, &qword_1EDC03F18, sub_1DF6D0408, MEMORY[0x1E69E62F8]);
    sub_1DF6D08C8();
    v27 = swift_allocError();
    sub_1DF69F1E4();
    sub_1DF6F5F6C();
    sub_1DF6D091C(&qword_1ECE4DC68, &qword_1EDC04040, MEMORY[0x1E695BFF0]);
    v23 = sub_1DF6F5FEC();
    result = (*(v10 + 8))(v13, v9);
  }

  *a1 = v23;
  return result;
}

uint64_t sub_1DF6CFEE4(void *a1)
{
  v1 = [a1 sharingEntries];
  sub_1DF6D0408();
  v2 = sub_1DF6F65AC();

  return v2;
}

void sub_1DF6CFF38(void (*a1)(void **), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1DF6B1D68;
    *(v7 + 24) = v4;
    v13 = sub_1DF6D09E8;
    v14 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_1DF6CDA24;
    v12 = &block_descriptor_21;
    v8 = _Block_copy(&aBlock);

    [v6 fetchSharingEntriesWithCompletion_];
    _Block_release(v8);
  }

  else
  {

    sub_1DF6D08C8();
    v6 = swift_allocError();
    aBlock = v6;
    LOBYTE(v10) = 1;
    a1(&aBlock);
  }
}

void sub_1DF6D00C4(int a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(0);
  }
}

id sub_1DF6D014C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v9 = type metadata accessor for DownstreamHandlerSubscriptionState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *((v6 & v5) + 0x60);
  v15 = swift_slowAlloc();
  *v15 = 0;
  *&v2[v14] = v15;
  static DownstreamHandlerSubscriptionState.ready(_:)(a1, v7, v13);
  (*(v10 + 32))(&v2[*((*v4 & *v2) + 0x68)], v13, v9);
  *&v2[*((*v4 & *v2) + 0x70)] = v19;
  v16 = _s23SharingEntriesPublisherV5InnerCMa();
  v20.receiver = v2;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_1DF6D0308(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  v7 = objc_allocWithZone(_s23SharingEntriesPublisherV5InnerCMa());
  return sub_1DF6D014C(a1, a2);
}

void sub_1DF6D0354()
{
  if (!qword_1EDC03F98)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1DF6D0820(255, &qword_1EDC04048, MEMORY[0x1E695BED0]);
    sub_1DF6D091C(&qword_1EDC04050, &qword_1EDC04048, v0);
    v1 = sub_1DF6F5FDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03F98);
    }
  }
}

unint64_t sub_1DF6D0408()
{
  result = qword_1EDC03618;
  if (!qword_1EDC03618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03618);
  }

  return result;
}

uint64_t sub_1DF6D045C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1DF6D04A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF6D04F0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for DownstreamHandlerSubscriptionState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6D05A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6D0634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DF6D0698()
{
  result = qword_1ECE4DC50;
  if (!qword_1ECE4DC50)
  {
    sub_1DF6D0408();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ECE4DC50);
  }

  return result;
}

unint64_t sub_1DF6D06E0()
{
  result = qword_1ECE4DC58;
  if (!qword_1ECE4DC58)
  {
    sub_1DF6D0820(255, &qword_1EDC04048, MEMORY[0x1E695BED0]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1ECE4DC58);
  }

  return result;
}

void sub_1DF6D0744()
{
  if (!qword_1EDC040B8)
  {
    sub_1DF6B0160();
    sub_1DF6D0634(255, &qword_1EDC03F18, sub_1DF6D0408, MEMORY[0x1E69E62F8]);
    sub_1DF6D09A0(&qword_1EDC03FC8, sub_1DF6B0160);
    v0 = sub_1DF6F5E2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC040B8);
    }
  }
}

void sub_1DF6D0820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1DF6D0634(255, &qword_1EDC03F18, sub_1DF6D0408, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1DF69F1E4();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1DF6D08C8()
{
  result = qword_1ECE4DC60;
  if (!qword_1ECE4DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DC60);
  }

  return result;
}

uint64_t sub_1DF6D091C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6D0820(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF6D0970@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DF6D09A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF6D0A04()
{
  result = qword_1ECE4DC70;
  if (!qword_1ECE4DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DC70);
  }

  return result;
}

void sub_1DF6D0A60()
{
  if (!qword_1EDC047A8)
  {
    sub_1DF6F5F4C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC047A8);
    }
  }
}

uint64_t Publisher.retainingSink(receiveValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = Publisher.retainingSink(receiveCompletion:receiveValue:)(nullsub_1, v8, a1, a2, a3, a4);

  return v9;
}

uint64_t QueryPublisherBase.unwrap()()
{
  v1 = *v0;
  v2 = swift_allocObject();
  v2[2] = v1[52];
  v2[3] = v1[53];
  v2[4] = v1[54];
  type metadata accessor for QueryPublisherBase();
  swift_getWitnessTable();
  sub_1DF6F5FFC();
}

uint64_t QueryPublisherBase.init(store:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  PublisherResult = type metadata accessor for QueryPublisherResult();
  v6 = *(*(PublisherResult - 8) + 64);
  MEMORY[0x1EEE9AC00](PublisherResult - 8);
  v8 = &v10 - v7;
  *(v1 + *(v3 + 448)) = 0;
  *(v1 + *(*v1 + 456)) = 0;
  *(v1 + *(*v1 + 440)) = a1;
  (*(*(v4 - 8) + 56))(&v10 - v7, 1, 1, v4);
  return _s18HealthKitAdditions15StreamPublisherC_12onDisconnectACyxq_Gx_AC010DownstreamG9BehaviourOyxq__Gtcfc_0(v8);
}

char *QueryPublisherBase.deinit()
{
  if (*(v0 + *(*v0 + 448)))
  {
    [*(v0 + *(*v0 + 440)) stopQuery_];
  }

  v1 = StreamPublisher.deinit();

  return v1;
}

void sub_1DF6D0E84()
{
  v1 = *(*v0 + 456);
  if ((*(v0 + v1) & 1) == 0)
  {
    *(v0 + v1) = 1;
    v2 = (*(*v0 + 520))();
    v3 = *(*v0 + 448);
    v4 = *(v0 + v3);
    *(v0 + v3) = v2;

    if (*(v0 + *(*v0 + 448)))
    {
      v5 = *(v0 + *(*v0 + 440));

      [v5 executeQuery_];
    }
  }
}

void sub_1DF6D0F78()
{
  v1 = *(v0 + *(*v0 + 448));
  if (v1)
  {
    v2 = *(v0 + *(*v0 + 440));
    v3 = v1;
    [v2 stopQuery_];
    v4 = *(*v0 + 448);
    v5 = *(v0 + v4);
    *(v0 + v4) = 0;
  }
}

void sub_1DF6D105C(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_1DF6D10B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  PublisherResult = type metadata accessor for QueryPublisherResult();
  v7 = *(*(PublisherResult - 8) + 64);
  MEMORY[0x1EEE9AC00](PublisherResult);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1);
  v11 = *(a2 - 8);
  v12 = 1;
  if ((*(v11 + 48))(v9, 1, a2) != 1)
  {
    (*(v11 + 32))(a3, v9, a2);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, a2);
}

uint64_t sub_1DF6D1214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1DF6D10B4(a1, v2[2], a2);
}

uint64_t QueryPublisherBase.__allocating_init(store:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return QueryPublisherBase.init(store:)(a1);
}

void sub_1DF6D128C()
{
  v1 = *(v0 + *(*v0 + 448));
}

uint64_t QueryPublisherBase.__deallocating_deinit()
{
  v0 = *QueryPublisherBase.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void QueryPublisherBase.init(_:)()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 432);
  sub_1DF6D13C8();
}

void QueryPublisherBase.init(_:onDisconnect:)()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 432);
  sub_1DF6D13F8();
}

uint64_t sub_1DF6D14F4()
{
  v0 = sub_1DF6F5B8C();
  sub_1DF6D5078();
  v1 = sub_1DF6F6A2C();

  v2 = *(v1 + 16);

  if (v0 != v2)
  {
    v4 = sub_1DF6F6A2C();

    v5 = *(v4 + 16);

    sub_1DF6F5B8C();
    sub_1DF6D4EF4();
    swift_allocError();
    static SampleDataDecodingError.invalidColumnCountForRow(expected:actual:)(v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF6D167C(uint64_t a1, uint64_t a2)
{
  sub_1DF6F5BAC();
  if (!v15)
  {
    sub_1DF6D4CCC(&v13, sub_1DF6D4C78);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v4 = sub_1DF6DA9E8(0);
    v6 = v5;
    sub_1DF6D4EF4();
    swift_allocError();
    v8 = v7;
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1DF6F6B2C();

    v13 = 0xD000000000000017;
    v14 = 0x80000001DF6FD480;
    MEMORY[0x1E12DB8A0](a1, a2);
    MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
    MEMORY[0x1E12DB8A0](v4, v6);

    v9 = v13;
    v10 = v14;
    *v8 = 0xD000000000000014;
    v8[1] = 0x80000001DF6FD460;
    v8[2] = v9;
    v8[3] = v10;
    swift_willThrow();
    return v4;
  }

  v4 = v12;
  if ((sub_1DF6F64FC() & 1) == 0)
  {

    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1DF6D184C()
{
  sub_1DF6F5BAC();
  sub_1DF6D4C78();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v1 = sub_1DF6DA9E8(1);
    v3 = v2;
    sub_1DF6D4EF4();
    swift_allocError();
    v5 = v4;
    sub_1DF6F6B2C();

    MEMORY[0x1E12DB8A0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
    MEMORY[0x1E12DB8A0](v1, v3);

    *v5 = 0xD000000000000015;
    v5[1] = 0x80000001DF6FD4A0;
    v5[2] = 0xD000000000000017;
    v5[3] = 0x80000001DF6FD4C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF6D19DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v54 = a2;
  v5 = v3;
  sub_1DF6D4FC8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v50 - v9;
  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v50 - v12;
  v14 = sub_1DF6F590C();
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v52 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DF6F5ACC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DF6F5A7C();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v62 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6F5BAC();
  if (!v61)
  {
    sub_1DF6D4CCC(&v59, sub_1DF6D4C78);
LABEL_7:
    v36 = sub_1DF6DA9E8(a1);
    v38 = v37;
    sub_1DF6D4EF4();
    swift_allocError();
    static SampleDataDecodingError.invalidSampleStartDate(actualValue:)(v36, v38, v39);

    return swift_willThrow();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v50[0] = v14;
  v50[1] = v4;
  v50[2] = v58;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DF6F5AAC();
  v26 = sub_1DF6F5ABC();
  (*(v18 + 8))(v21, v17);
  [v25 setLocale_];

  v27 = sub_1DF6F63BC();
  [v25 setDateFormat_];

  v28 = sub_1DF6F63BC();

  v29 = [v25 dateFromString_];

  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v62;
  sub_1DF6F5A6C();

  v31 = v54(0);
  sub_1DF6D4F48(v5 + *(v31 + 24), v13);
  v32 = v57;
  v33 = v50[0];
  if ((*(v57 + 48))(v13, 1, v50[0]) == 1)
  {
    sub_1DF6D501C(v13, &qword_1ECE4D940, MEMORY[0x1E6968278]);
    v35 = v55;
    v34 = v56;
  }

  else
  {
    v41 = v52;
    (*(v32 + 32))(v52, v13, v33);
    v42 = v5 + *(v31 + 20);
    v43 = v51;
    sub_1DF6F5B0C();
    v35 = v55;
    v34 = v56;
    if ((*(v55 + 48))(v43, 1, v56) == 1)
    {
      sub_1DF6D501C(v43, &qword_1EDC05240, MEMORY[0x1E6969530]);
      sub_1DF6D4EF4();
      swift_allocError();
      v45 = v44;
      v54 = 0x80000001DF6FD5B0;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1DF6F6B2C();

      v59 = 0xD00000000000001ALL;
      v60 = 0x80000001DF6FD5E0;
      sub_1DF6D4C30(&qword_1ECE4DC78, MEMORY[0x1E6968278]);
      v46 = sub_1DF6F6DEC();
      MEMORY[0x1E12DB8A0](v46);

      v47 = v59;
      v48 = v60;
      v49 = v54;
      *v45 = 0xD000000000000023;
      v45[1] = v49;
      v45[2] = v47;
      v45[3] = v48;
      swift_willThrow();
      (*(v32 + 8))(v41, v33);
      return (*(v35 + 8))(v62, v34);
    }

    (*(v32 + 8))(v41, v33);
    (*(v35 + 8))(v30, v34);
    v30 = v43;
  }

  return (*(v35 + 32))(v53, v30, v34);
}

uint64_t SampleDataDecodingError.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SampleDataDecodingError.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

HealthKitAdditions::SampleDataDecodingError __swiftcall SampleDataDecodingError.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

unint64_t SampleDataDecodingError.localizedDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E12DB8A0](*v0, v0[1]);
  MEMORY[0x1E12DB8A0](2108704, 0xE300000000000000);
  MEMORY[0x1E12DB8A0](v1, v2);
  return 0xD00000000000001ALL;
}

uint64_t static SampleDataDecodingError.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF6F6E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF6F6E2C();
    }
  }

  return result;
}

uint64_t sub_1DF6D2248(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF6F6E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF6F6E2C();
    }
  }

  return result;
}

uint64_t static SampleDataDecodingError.unsupportedSampleType(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  MEMORY[0x1E12DB8A0](a1, a2);
  result = MEMORY[0x1E12DB8A0](0xD00000000000001ELL, 0x80000001DF6FD420);
  *a3 = 0xD000000000000018;
  a3[1] = 0x80000001DF6FD3E0;
  a3[2] = 0xD000000000000010;
  a3[3] = 0x80000001DF6FD400;
  return result;
}

uint64_t static SampleDataDecodingError.invalidColumnCountForRow(expected:actual:)@<X0>(void *a1@<X8>)
{
  sub_1DF6F6B2C();

  v2 = sub_1DF6F6DEC();
  MEMORY[0x1E12DB8A0](v2);

  MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
  v3 = sub_1DF6F6DEC();
  MEMORY[0x1E12DB8A0](v3);

  *a1 = 0xD00000000000001DLL;
  a1[1] = 0x80000001DF6FD440;
  a1[2] = 0x6465746365707845;
  a1[3] = 0xE900000000000020;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleType(expectedPrefix:actualIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1DF6F6B2C();

  MEMORY[0x1E12DB8A0](a1, a2);
  MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
  result = MEMORY[0x1E12DB8A0](a3, a4);
  *a5 = 0xD000000000000014;
  a5[1] = 0x80000001DF6FD460;
  a5[2] = 0xD000000000000017;
  a5[3] = 0x80000001DF6FD480;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleValue(expectedType:actualValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1DF6F6B2C();

  MEMORY[0x1E12DB8A0](a1, a2);
  MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
  result = MEMORY[0x1E12DB8A0](a3, a4);
  *a5 = 0xD000000000000015;
  a5[1] = 0x80000001DF6FD4A0;
  a5[2] = 0xD000000000000017;
  a5[3] = 0x80000001DF6FD4C0;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleUnit(expectedUnit:actualUnitString:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1DF6F6B2C();

  strcpy(v15, "Expected unit ");
  HIBYTE(v15[1]) = -18;
  v8 = [a1 unitString];
  v9 = sub_1DF6F63EC();
  v11 = v10;

  MEMORY[0x1E12DB8A0](v9, v11);

  MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xEE002074696E7520);
  result = MEMORY[0x1E12DB8A0](a2, a3);
  v13 = v15[0];
  v14 = v15[1];
  *a4 = 0xD000000000000017;
  a4[1] = 0x80000001DF6FD4E0;
  a4[2] = v13;
  a4[3] = v14;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleDuration(actualDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD000000000000018;
  a3[1] = 0x80000001DF6FD500;
  a3[2] = 0xD000000000000026;
  a3[3] = 0x80000001DF6FD520;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleStartDate(actualValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000001DLL;
  a3[1] = 0x80000001DF6FD550;
  a3[2] = 0xD000000000000031;
  a3[3] = 0x80000001DF6FD570;
  return result;
}

uint64_t static SampleDataDecodingError.invalidSampleStartDateShift(actualShift:)@<X0>(void *a1@<X8>)
{
  sub_1DF6F6B2C();

  sub_1DF6F590C();
  sub_1DF6D4C30(&qword_1ECE4DC78, MEMORY[0x1E6968278]);
  v2 = sub_1DF6F6DEC();
  MEMORY[0x1E12DB8A0](v2);

  *a1 = 0xD000000000000023;
  a1[1] = 0x80000001DF6FD5B0;
  a1[2] = 0xD00000000000001ALL;
  a1[3] = 0x80000001DF6FD5E0;
  return result;
}

uint64_t SampleDataDecoder.init(fileData:logger:calendar:dateShift:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for SampleDataDecoder(0);
  v11 = v10[5];
  v12 = sub_1DF6F5DDC();
  (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v13 = v10[6];
  v14 = sub_1DF6F5B5C();
  (*(*(v14 - 8) + 32))(&a6[v13], a4, v14);
  v15 = &a6[v10[7]];

  return sub_1DF6D2B14(a5, v15);
}

uint64_t sub_1DF6D2B14(uint64_t a1, uint64_t a2)
{
  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SampleDataDecoder.decodeSamples()()
{
  v1 = sub_1DF6F5B9C();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v44 - v6;
  v61 = sub_1DF6F5BBC();
  v48 = *(v61 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6D34BC();
  v46 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DF6F5C0C();
  v13 = *(v59 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DF6F5BFC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DF6F5BDC();
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v0;
  v53 = v0[1];
  *&v54 = v23;
  v56 = v0;
  sub_1DF6B047C(v23, v53);
  v52 = sub_1DF6D48FC(MEMORY[0x1E69E7CC0]);
  v51 = sub_1DF6D4AC4(&unk_1F5AA8678);
  swift_arrayDestroy();
  sub_1DF6D4AC4(&unk_1F5AA8738);
  swift_arrayDestroy();
  sub_1DF6D4AC4(&unk_1F5AA8798);
  swift_arrayDestroy();
  (*(v13 + 104))(v58, *MEMORY[0x1E69829D8], v59);
  sub_1DF6F5BEC();
  v24 = v60;
  result = sub_1DF6F5B7C();
  if (!v24)
  {
    v53 = 0;
    v65 = MEMORY[0x1E69E7CC0];
    v26 = v47;
    v51 = v22;
    sub_1DF6F5BCC();
    v27 = v48;
    v28 = v61;
    (*(v48 + 16))(v12, v26, v61);
    v29 = *(v46 + 36);
    sub_1DF6D4C30(&qword_1ECE4DC88, MEMORY[0x1E69829C0]);
    sub_1DF6F67AC();
    (*(v27 + 8))(v26, v28);
    sub_1DF6F67CC();
    if (*&v12[v29] != v64[0])
    {
      v58 = (v45 + 32);
      v59 = (v45 + 16);
      v60 = (v45 + 8);
      v55 = &unk_1DF6FB500;
      v52 = MEMORY[0x1E69E7CC0];
      *&v30 = 136446210;
      v54 = v30;
      v32 = v56;
      v31 = v57;
      while (1)
      {
        v33 = sub_1DF6F680C();
        (*v59)(v31);
        v33(v64, 0);
        sub_1DF6F67DC();
        (*v58)(v5, v31, v1);
        sub_1DF6D4C30(&qword_1ECE4DC90, MEMORY[0x1E69829B0]);
        sub_1DF6F67AC();
        sub_1DF6F67CC();
        if (v64[0] == v62)
        {
          goto LABEL_17;
        }

        sub_1DF6F5BAC();
        if (!v64[3])
        {
          sub_1DF6D4CCC(v64, sub_1DF6D4C78);
          goto LABEL_17;
        }

        if (!swift_dynamicCast())
        {
LABEL_17:
          v36 = v32 + *(type metadata accessor for SampleDataDecoder(0) + 20);
          v37 = sub_1DF6F5DBC();
          v38 = sub_1DF6F685C();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v64[0] = v40;
            *v39 = v54;
            *(v39 + 4) = sub_1DF6A9D50(0xD000000000000011, v55 | 0x8000000000000000, v64);
            _os_log_impl(&dword_1DF69D000, v37, v38, "[%{public}s] Skipping empty row.", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            v41 = v40;
            v32 = v56;
            MEMORY[0x1E12DCBA0](v41, -1, -1);
            v42 = v39;
            v31 = v57;
            MEMORY[0x1E12DCBA0](v42, -1, -1);
          }

          (*v60)(v5, v1);
          sub_1DF6F67CC();
          if (*&v12[v29] == v64[0])
          {
            goto LABEL_5;
          }
        }

        else
        {
          v34 = v53;
          sub_1DF6D3550(v62, v63, v5);
          v53 = v34;
          if (v34)
          {

            (*v60)(v5, v1);
            sub_1DF6D4CCC(v12, sub_1DF6D34BC);
            (*(v49 + 8))(v51, v50);
          }

          MEMORY[0x1E12DB9A0](v35);
          if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v43 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DF6F65CC();
          }

          sub_1DF6F660C();
          (*v60)(v5, v1);
          v52 = v65;
          sub_1DF6F67CC();
          v31 = v57;
          if (*&v12[v29] == v64[0])
          {
            goto LABEL_5;
          }
        }
      }
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_5:
    sub_1DF6D4CCC(v12, sub_1DF6D34BC);
    (*(v49 + 8))(v51, v50);
    return v52;
  }

  return result;
}

void sub_1DF6D34BC()
{
  if (!qword_1ECE4DC80)
  {
    sub_1DF6F5BBC();
    sub_1DF6D4C30(&qword_1ECE4DC88, MEMORY[0x1E69829C0]);
    v0 = sub_1DF6F6C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DC80);
    }
  }
}

uint64_t sub_1DF6D3550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v51 = type metadata accessor for StateOfMindDecoder();
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CategorySampleDecoder(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for QuantitySampleDecoder(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DF6F64FC())
  {
    v19 = sub_1DF6F5B9C();
    (*(*(v19 - 8) + 16))(v18, a3, v19);
    v20 = type metadata accessor for SampleDataDecoder(0);
    v21 = *(v20 + 24);
    v22 = *(v15 + 20);
    v23 = sub_1DF6F5B5C();
    (*(*(v23 - 8) + 16))(&v18[v22], v5 + v21, v23);
    sub_1DF6D4F48(v5 + *(v20 + 28), &v18[*(v15 + 24)]);
    sub_1DF6D3AAC();
    v25 = v24;
    sub_1DF6D4CCC(v18, type metadata accessor for QuantitySampleDecoder);
  }

  else
  {
    v49[1] = v4;
    v50 = a3;
    if (sub_1DF6F64FC())
    {
      v26 = sub_1DF6F5B9C();
      (*(*(v26 - 8) + 16))(v14, v50, v26);
      v27 = type metadata accessor for SampleDataDecoder(0);
      v28 = *(v27 + 24);
      v29 = *(v11 + 20);
      v30 = sub_1DF6F5B5C();
      (*(*(v30 - 8) + 16))(&v14[v29], v5 + v28, v30);
      sub_1DF6D4F48(v5 + *(v27 + 28), &v14[*(v11 + 24)]);
      sub_1DF6D3F68();
      v25 = v31;
      v32 = type metadata accessor for CategorySampleDecoder;
      v33 = v14;
    }

    else
    {
      sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
      v34 = [swift_getObjCClassFromMetadata() stateOfMindType];
      v35 = [v34 identifier];

      sub_1DF6F63EC();
      LOBYTE(v34) = sub_1DF6F64FC();

      v36 = v50;
      if ((v34 & 1) == 0)
      {
        sub_1DF6D4EF4();
        v25 = swift_allocError();
        v45 = v44;
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1DF6F6B2C();

        v52 = 0xD000000000000010;
        v53 = 0x80000001DF6FD400;
        MEMORY[0x1E12DB8A0](a1, a2);
        MEMORY[0x1E12DB8A0](0xD00000000000001ELL, 0x80000001DF6FD420);
        v46 = v52;
        v47 = v53;
        *v45 = 0xD000000000000018;
        v45[1] = 0x80000001DF6FD3E0;
        v45[2] = v46;
        v45[3] = v47;
        swift_willThrow();
        return v25;
      }

      v37 = sub_1DF6F5B9C();
      v38 = v54;
      (*(*(v37 - 8) + 16))(v54, v36, v37);
      v39 = type metadata accessor for SampleDataDecoder(0);
      v40 = *(v39 + 24);
      v41 = v51;
      v42 = *(v51 + 20);
      v43 = sub_1DF6F5B5C();
      (*(*(v43 - 8) + 16))(&v38[v42], v5 + v40, v43);
      sub_1DF6D4F48(v5 + *(v39 + 28), &v38[*(v41 + 24)]);
      v25 = sub_1DF6B85E4();
      v32 = type metadata accessor for StateOfMindDecoder;
      v33 = v38;
    }

    sub_1DF6D4CCC(v33, v32);
  }

  return v25;
}

void sub_1DF6D3AAC()
{
  v1 = sub_1DF6F5A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v9 = sub_1DF6F584C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6D14F4();
  if (!v0)
  {
    v43 = v13;
    v44 = v8;
    v39 = v6;
    v40 = v10;
    v41 = v2;
    v42 = v9;
    sub_1DF6D167C(0xD000000000000018, 0x80000001DF6FD600);
    v38 = v1;
    sub_1DF69EF80(0, &qword_1ECE4DCB0, 0x1E696C370);
    v14 = sub_1DF6F63BC();
    v15 = MEMORY[0x1E12DBCD0](v14);
    sub_1DF6D184C();
    v17 = v16;
    v18 = [v15 canonicalUnit];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;

    v20 = sub_1DF6D45CC(v19);
    v21 = v44;
    v22 = v20;

    v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v17];
    sub_1DF6D4720(type metadata accessor for QuantitySampleDecoder);
    sub_1DF6F5BAC();
    if (v48)
    {
      v24 = swift_dynamicCast();
      v26 = v40;
      v25 = v41;
      if (v24)
      {
        v27 = v45;
        v28 = v46;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1DF6D4CCC(v47, sub_1DF6D4C78);
      v26 = v40;
      v25 = v41;
    }

    v27 = 0;
    v28 = 0xE000000000000000;
LABEL_8:
    v29 = sub_1DF6E56B0(v27, v28);
    v41 = 0;
    v30 = v29;

    sub_1DF6F583C();
    sub_1DF6F581C();
    v40 = sub_1DF6F5A4C();
    v31 = sub_1DF6F5A4C();
    if (v30)
    {
      v32 = sub_1DF6F629C();
    }

    else
    {
      v32 = 0;
    }

    v33 = objc_opt_self();
    v34 = v40;
    v37 = [v33 quantitySampleWithType:v15 quantity:v23 startDate:v40 endDate:v31 metadata:v32];

    v35 = *(v25 + 8);
    v36 = v38;
    v35(v39, v38);
    v35(v21, v36);
    (*(v26 + 8))(v43, v42);
  }
}

void sub_1DF6D3F68()
{
  v1 = sub_1DF6F5A7C();
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = sub_1DF6F584C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6D14F4();
  if (v0)
  {
    return;
  }

  v36 = v9;
  v37 = v12;
  v34 = v7;
  v35 = v5;
  sub_1DF6D167C(0xD000000000000018, 0x80000001DF6FD620);
  v33 = v1;
  sub_1DF69EF80(0, &qword_1ECE4DCC0, 0x1E696BF90);
  v13 = sub_1DF6F63BC();

  v14 = MEMORY[0x1E12DBCB0](v13);
  v15 = sub_1DF6D4398();
  v16 = v37;
  sub_1DF6D4720(type metadata accessor for CategorySampleDecoder);
  sub_1DF6F5BAC();
  if (!v41)
  {
    sub_1DF6D4CCC(v40, sub_1DF6D4C78);
    v18 = v8;
    v19 = v34;
    v22 = v35;
LABEL_9:
    v20 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_10;
  }

  v17 = swift_dynamicCast();
  v18 = v8;
  v19 = v34;
  if ((v17 & 1) == 0)
  {
    v22 = v35;
    goto LABEL_9;
  }

  v20 = v38;
  v21 = v39;
  v22 = v35;
LABEL_10:
  v23 = sub_1DF6E56B0(v20, v21);
  v35 = 0;
  v24 = v23;
  v34 = v18;

  sub_1DF6F583C();
  sub_1DF6F581C();
  v25 = sub_1DF6F5A4C();
  v26 = sub_1DF6F5A4C();
  if (v24)
  {
    v27 = sub_1DF6F629C();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_opt_self() categorySampleWithType:v14 value:v15 startDate:v25 endDate:v26 metadata:v27];

  v29 = *(v42 + 8);
  v30 = v22;
  v31 = v33;
  v29(v30, v33);
  v29(v19, v31);
  (*(v36 + 8))(v16, v34);
}

uint64_t sub_1DF6D4398()
{
  sub_1DF6F5BAC();
  if (v10)
  {
    if (swift_dynamicCast())
    {
      return *&v11;
    }
  }

  else
  {
    sub_1DF6D4CCC(&v8, sub_1DF6D4C78);
  }

  sub_1DF6F5BAC();
  if (!v10)
  {
    sub_1DF6D4CCC(&v8, sub_1DF6D4C78);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v1 = sub_1DF6DA9E8(1);
    v3 = v2;
    sub_1DF6D4EF4();
    swift_allocError();
    v5 = v4;
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_1DF6F6B2C();

    v8 = 0xD000000000000017;
    v9 = 0x80000001DF6FD4C0;
    MEMORY[0x1E12DB8A0](7630409, 0xE300000000000000);
    MEMORY[0x1E12DB8A0](0x6C6175746361203BLL, 0xE900000000000020);
    MEMORY[0x1E12DB8A0](v1, v3);

    v6 = v8;
    v7 = v9;
    *v5 = 0xD000000000000015;
    v5[1] = 0x80000001DF6FD4A0;
    v5[2] = v6;
    v5[3] = v7;
    return swift_willThrow();
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 < 9.22337204e18)
  {
    if (v11 == v11)
    {
      return v11;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DF6D45CC(void *a1)
{
  sub_1DF6F5BAC();
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v2 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v2 = *v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v2)
      {
        v3 = sub_1DF6F63BC();

        v4 = [objc_opt_self() unitFromString_];

        return v4;
      }
    }
  }

  else
  {
    sub_1DF6D4CCC(v12, sub_1DF6D4C78);
  }

  v6 = sub_1DF6DA9E8(2);
  v8 = v7;
  sub_1DF6D4EF4();
  swift_allocError();
  static SampleDataDecodingError.invalidSampleUnit(expectedUnit:actualUnitString:)(a1, v6, v8, v9);

  return swift_willThrow();
}

uint64_t sub_1DF6D4720(uint64_t (*a1)(void))
{
  v3 = sub_1DF6F5A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  result = sub_1DF6D19DC(3, a1, v17 - v9);
  if (!v1)
  {
    sub_1DF6F5BAC();
    sub_1DF6DAD08(v17);
    if (v12)
    {
      v13 = sub_1DF6DA9E8(4);
      v15 = v14;
      sub_1DF6D4EF4();
      swift_allocError();
      static SampleDataDecodingError.invalidSampleDuration(actualDuration:)(v13, v15, v16);

      swift_willThrow();
    }

    else
    {
      (*(v4 + 16))(v8, v10, v3);
      sub_1DF6F582C();
    }

    return (*(v4 + 8))(v10, v3);
  }

  return result;
}

unint64_t sub_1DF6D48FC(uint64_t a1)
{
  sub_1DF6D5124();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DF6D518C();
    v9 = sub_1DF6F6D3C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1DF6D51F4(v11, v7);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1DF6C3550(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1DF6F5C0C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF6D4AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6D50CC();
    v3 = sub_1DF6F6AEC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1DF6F6F0C();

      sub_1DF6F645C();
      result = sub_1DF6F6F2C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          v18 = (*(v3 + 48) + 16 * v13);
          if (*v18 == v9 && v18[1] == v8)
          {
            break;
          }

          result = sub_1DF6F6E2C();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v14) = v16 | v15;
        v20 = (*(v3 + 48) + 16 * v13);
        *v20 = v9;
        v20[1] = v8;
        v21 = *(v3 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v23;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DF6D4C30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF6D4C78()
{
  if (!qword_1EDC034A0)
  {
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC034A0);
    }
  }
}

uint64_t sub_1DF6D4CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF6D4D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF6D4D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF6D4DEC()
{
  sub_1DF6F5DDC();
  if (v0 <= 0x3F)
  {
    sub_1DF6F5B5C();
    if (v1 <= 0x3F)
    {
      sub_1DF6D4FC8(319, &qword_1ECE4D940, MEMORY[0x1E6968278]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DF6D4EF4()
{
  result = qword_1ECE4DCA8;
  if (!qword_1ECE4DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DCA8);
  }

  return result;
}

uint64_t sub_1DF6D4F48(uint64_t a1, uint64_t a2)
{
  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF6D4FC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DF6D501C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DF6D4FC8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DF6D5078()
{
  result = qword_1ECE4DCB8;
  if (!qword_1ECE4DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DCB8);
  }

  return result;
}

void sub_1DF6D50CC()
{
  if (!qword_1ECE4DCC8)
  {
    v0 = sub_1DF6F6AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DCC8);
    }
  }
}

void sub_1DF6D5124()
{
  if (!qword_1ECE4DCD0)
  {
    sub_1DF6F5C0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DCD0);
    }
  }
}

void sub_1DF6D518C()
{
  if (!qword_1ECE4DCD8)
  {
    sub_1DF6F5C0C();
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DCD8);
    }
  }
}

uint64_t sub_1DF6D51F4(uint64_t a1, uint64_t a2)
{
  sub_1DF6D5124();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F5B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DF6F5B5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DF6F5B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1DF6F5B5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

void sub_1DF6D556C()
{
  sub_1DF6F5B9C();
  if (v0 <= 0x3F)
  {
    sub_1DF6F5B5C();
    if (v1 <= 0x3F)
    {
      sub_1DF6D4FC8(319, &qword_1ECE4D940, MEMORY[0x1E6968278]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t HKHealthStore.makeSharedSummaryTransactionPublisher()()
{
  sub_1DF6C6E4C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s38SharedSummaryTransactionQueryPublisherCMa();
  v7 = swift_allocObject();
  *(v7 + 96) = 0;
  *(v7 + 80) = v0;
  *(v7 + 88) = 0;
  v11[1] = sub_1DF6ABB00(0);
  sub_1DF6D5AE4(0, &qword_1EDC04448, &qword_1EDC03F10, &qword_1EDC03610, 0x1E696C418);
  sub_1DF6D5B60(0, &qword_1EDC03F10, &qword_1EDC03610, 0x1E696C418);
  sub_1DF6D57FC();
  v8 = v0;
  sub_1DF6F5FFC();

  sub_1DF6D5A90(&qword_1EDC040F0, sub_1DF6C6E4C);
  v9 = sub_1DF6F5FEC();
  (*(v3 + 8))(v6, v2);
  return v9;
}

unint64_t sub_1DF6D57FC()
{
  result = qword_1EDC04450;
  if (!qword_1EDC04450)
  {
    sub_1DF6D5AE4(255, &qword_1EDC04448, &qword_1EDC03F10, &qword_1EDC03610, 0x1E696C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04450);
  }

  return result;
}

uint64_t HKHealthStore.makeSharedSummaryPublisher(from:packageName:identifiers:objectTypes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  sub_1DF6AB334();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s27SharedSummaryQueryPublisherCMa();
  v15 = swift_allocObject();
  *(v15 + 104) = a1;
  *(v15 + 112) = a2;
  *(v15 + 120) = a3;
  *(v15 + 128) = a4;
  *(v15 + 136) = a5;
  *(v15 + 96) = 0;
  *(v15 + 80) = v5;
  *(v15 + 88) = 0;
  v24 = sub_1DF6ABB00(0);
  sub_1DF6D5AE4(0, &qword_1EDC04458, &qword_1EDC03F30, &qword_1EDC03800, 0x1E696C400);
  sub_1DF6D5B60(0, &qword_1EDC03F30, &qword_1EDC03800, 0x1E696C400);
  sub_1DF6D5BB8();
  v16 = a1;

  v17 = v5;
  sub_1DF6F5FFC();

  sub_1DF6D5A90(&qword_1EDC04100, sub_1DF6AB334);
  v18 = v23;
  v19 = sub_1DF6F5FEC();
  (*(v22 + 8))(v14, v18);
  return v19;
}

uint64_t sub_1DF6D5A90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF6D5AE4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1DF6D5B60(255, a3, a4, a5);
    sub_1DF69F1E4();
    PublisherBase = type metadata accessor for QueryPublisherBase();
    if (!v7)
    {
      atomic_store(PublisherBase, a2);
    }
  }
}

void sub_1DF6D5B60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DF69EF80(255, a3, a4);
    v5 = sub_1DF6F663C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DF6D5BB8()
{
  result = qword_1EDC04460[0];
  if (!qword_1EDC04460[0])
  {
    sub_1DF6D5AE4(255, &qword_1EDC04458, &qword_1EDC03F30, &qword_1EDC03800, 0x1E696C400);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC04460);
  }

  return result;
}

uint64_t HKHealthStore.makeSleepDaySummaryPublisher(morningIndexRange:ascending:limit:options:debugIdentifier:cacheSettings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v9;
  v10 = a8;
  v11 = v9;
}

uint64_t HKHealthStore.SleepDaySummaryPublisher.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1DF6D5CC0(v7, &v6);
}

uint64_t sub_1DF6D5D04@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1DF6D5CC0(v7, &v6);
}

uint64_t sub_1DF6D5D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6D621C();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6D5DB4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF6D6288();
    v5 = sub_1DF6F65AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE24SleepDaySummaryPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0oI6ResultOySaySo07HKSleepgH0CGGctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[6];
  v18 = a1[5];
  v19 = a1[7];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = objc_allocWithZone(MEMORY[0x1E696C470]);
  aBlock[4] = sub_1DF6B6554;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6D5DB4;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);

  v14 = [v12 initWithMorningIndexRange:v5 ascending:v6 limit:v7 options:v8 resultsHandler:{v9, v13}];
  _Block_release(v13);

  v15 = v14;
  if (v10)
  {
    v16 = sub_1DF6F63BC();
  }

  else
  {
    v16 = 0;
  }

  [v14 setDebugIdentifier_];

  [v14 setCacheSettings_];
  return v14;
}

unint64_t sub_1DF6D5FF0(uint64_t a1)
{
  result = sub_1DF6D6018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6D6018()
{
  result = qword_1EDC03E48;
  if (!qword_1EDC03E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E48);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF6D6090(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF6D60D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1DF6D614C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1DF6D61A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF6D621C()
{
  result = qword_1EDC03E40;
  if (!qword_1EDC03E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E40);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6D6288()
{
  result = qword_1EDC03650;
  if (!qword_1EDC03650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03650);
  }

  return result;
}

HealthKitAdditions::SampleDataEncodingError __swiftcall SampleDataEncodingError.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

uint64_t sub_1DF6D62E4()
{
  v1 = v0;
  v2 = sub_1DF6F5A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF6F5ACC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DF6F5AAC();
  v13 = sub_1DF6F5ABC();
  (*(v8 + 8))(v11, v7);
  [v12 setLocale_];

  v14 = sub_1DF6F63BC();
  [v12 setDateFormat_];

  v15 = [v1 startDate];
  sub_1DF6F5A6C();

  v16 = sub_1DF6F5A4C();
  (*(v3 + 8))(v6, v2);
  v17 = [v12 stringFromDate_];

  v18 = sub_1DF6F63EC();
  return v18;
}

uint64_t SampleDataEncodingError.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SampleDataEncodingError.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t SampleDataEncodingError.localizedDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E12DB8A0](*v0, v0[1]);
  MEMORY[0x1E12DB8A0](2108704, 0xE300000000000000);
  MEMORY[0x1E12DB8A0](v1, v2);
  return 0xD00000000000001ALL;
}

uint64_t static SampleDataEncodingError.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF6F6E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF6F6E2C();
    }
  }

  return result;
}

uint64_t static SampleDataEncodingError.sampleTypeDoesNotSupportEncoding(sampleType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DF6F6B2C();
  v4 = [a1 identifier];
  v5 = sub_1DF6F63EC();
  v7 = v6;

  MEMORY[0x1E12DB8A0](v5, v7);

  result = MEMORY[0x1E12DB8A0](0xD00000000000003DLL, 0x80000001DF6FD780);
  *a2 = 0xD00000000000002ELL;
  a2[1] = 0x80000001DF6FD750;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t static SampleDataEncodingError.invalidCodingFormat(sampleType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DF6F6B2C();
  v4 = [a1 identifier];
  v5 = sub_1DF6F63EC();
  v7 = v6;

  MEMORY[0x1E12DB8A0](v5, v7);

  result = MEMORY[0x1E12DB8A0](0xD000000000000031, 0x80000001DF6FD7F0);
  *a2 = 0xD00000000000002BLL;
  a2[1] = 0x80000001DF6FD7C0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t static SampleDataEncodingError.nonconformanceToEncodingProtocol(sampleType:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DF6F6B2C();
  v4 = [a1 identifier];
  v5 = sub_1DF6F63EC();
  v7 = v6;

  MEMORY[0x1E12DB8A0](0xD000000000000015, 0x80000001DF6FD870);
  MEMORY[0x1E12DB8A0](0x6E45656C706D6153, 0xEE00676E69646F63);
  result = MEMORY[0x1E12DB8A0](46, 0xE100000000000000);
  *a2 = 0xD000000000000032;
  a2[1] = 0x80000001DF6FD830;
  a2[2] = v5;
  a2[3] = v7;
  return result;
}

uint64_t static SampleDataEncodingError.incompatibleRowFormat(rowFormat:sampleType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1DF6F6B2C();
  v8 = [a3 identifier];
  v9 = sub_1DF6F63EC();
  v11 = v10;

  MEMORY[0x1E12DB8A0](0xD00000000000001BLL, 0x80000001DF6FD8C0);
  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a4 = 0xD000000000000028;
  a4[1] = 0x80000001DF6FD890;
  a4[2] = v9;
  a4[3] = v11;
  return result;
}

uint64_t static SampleDataEncodingError.attemptedToDecodeMultipleSampleTypes(expectedSampleType:otherSampleType:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();
  v6 = [a2 description];
  v7 = sub_1DF6F63EC();
  v9 = v8;

  MEMORY[0x1E12DB8A0](v7, v9);

  MEMORY[0x1E12DB8A0](0x20746F6E20736920, 0xEA00000000002061);
  v10 = [a1 description];
  v11 = sub_1DF6F63EC();
  v13 = v12;

  MEMORY[0x1E12DB8A0](v11, v13);

  result = MEMORY[0x1E12DB8A0](0xD000000000000037, 0x80000001DF6FD910);
  *a3 = 0xD00000000000002ALL;
  a3[1] = 0x80000001DF6FD8E0;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  return result;
}

uint64_t SampleDataEncoder.init(samples:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SampleDataEncoder() + 20);
  v6 = sub_1DF6F5DDC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for SampleDataEncoder()
{
  result = qword_1ECE4DD10;
  if (!qword_1ECE4DD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SampleDataEncoder.encodeSamples()()
{
  v2 = v1;
  v3 = *v0;
  v4 = *v0 >> 62;
  if (v4)
  {
LABEL_49:
    if (!sub_1DF6F6A8C())
    {
      return;
    }
  }

  else if (!*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v70 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v3 + 32); ; i = MEMORY[0x1E12DBF80](0, v3))
    {
      v6 = i;
      v7 = &off_1E86C1000;
      v8 = [i sampleType];
      v9 = [v8 identifier];

      v10 = sub_1DF6F63EC();
      v12 = v11;

      v13 = sub_1DF6DADDC(v10, v12);
      if (v13 == 2)
      {
        v14 = [v6 sampleType];
        sub_1DF6B90E0();
        swift_allocError();
        v16 = v15;
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1DF6F6B2C();
        v17 = [v14 identifier];
        v18 = sub_1DF6F63EC();
        v20 = v19;

        MEMORY[0x1E12DB8A0](v18, v20);

        MEMORY[0x1E12DB8A0](0xD000000000000031, 0x80000001DF6FD7F0);
        v21 = v76;
        v22 = v77;
        *v16 = 0xD00000000000002BLL;
        v16[1] = 0x80000001DF6FD7C0;
        v16[2] = v21;
        v16[3] = v22;

        swift_willThrow();
        return;
      }

      v23 = v13;
      v66 = v6;
      sub_1DF6D89A8(0, &qword_1ECE4D860, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      v25 = v24;
      *(v24 + 16) = xmmword_1DF6FA080;
      if (v23)
      {
        v26 = 0xD000000000000044;
      }

      else
      {
        v26 = 0xD000000000000031;
      }

      if (v23)
      {
        v27 = "yyyy-MM-dd HH:mm:ss";
      }

      else
      {
        v27 = "ontext,Date,Metadata";
      }

      v28 = v27 | 0x8000000000000000;
      v71 = v26;
      *(v24 + 32) = v26;
      *(v24 + 40) = v27 | 0x8000000000000000;
      if (v4)
      {
        v4 = sub_1DF6F6A8C();
        if (!v4)
        {
LABEL_43:
          v76 = v25;
          sub_1DF6D89A8(0, &qword_1ECE4D910, MEMORY[0x1E69E62F8]);
          sub_1DF6B8EA0();
          v58 = sub_1DF6F632C();
          v60 = v59;

          sub_1DF6D74A4(v58, v60);

          return;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_43;
        }
      }

      v29 = 0;
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v68 = v4;
      v69 = v3;
      while (1)
      {
        if (v70)
        {
          v30 = MEMORY[0x1E12DBF80](v29, v3);
          goto LABEL_23;
        }

        if (v29 >= *(v67 + 16))
        {
          break;
        }

        v30 = *(v3 + 8 * v29 + 32);
LABEL_23:
        v31 = v30;
        v3 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        v32 = v25;
        v33 = v2;
        v80 = v30;
        sub_1DF69EF80(0, &qword_1EDC03568, 0x1E696C3A8);
        sub_1DF6D8B20(0, &qword_1ECE4DD00);
        v34 = v31;
        if (!swift_dynamicCast())
        {
          v75 = 0;
          memset(v74, 0, sizeof(v74));

          sub_1DF6D8B7C(v74, &qword_1ECE4DD08, &qword_1ECE4DD00);
          v61 = [v34 v7[228]];
          sub_1DF6B90E0();
          swift_allocError();
          static SampleDataEncodingError.nonconformanceToEncodingProtocol(sampleType:)(v61, v62);

          swift_willThrow();
          return;
        }

        v72 = v29 + 1;
        sub_1DF6A3698(v74, &v76);
        v73 = v34;
        v35 = [v34 v7[228]];
        v36 = [v35 identifier];

        v37 = sub_1DF6F63EC();
        v39 = v38;

        if (sub_1DF6F64FC() & 1) != 0 || (sub_1DF6F64FC())
        {
          v40 = 0xD000000000000031;
          v41 = "ontext,Date,Metadata";
LABEL_28:
          v2 = v33;

          v25 = v32;
          goto LABEL_29;
        }

        sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
        v52 = [swift_getObjCClassFromMetadata() stateOfMindType];
        v53 = [v52 identifier];

        v54 = sub_1DF6F63EC();
        v56 = v55;

        if (v54 == v37 && v56 == v39)
        {

          v40 = 0xD000000000000044;
          v41 = "yyyy-MM-dd HH:mm:ss";
          goto LABEL_28;
        }

        v57 = sub_1DF6F6E2C();

        v2 = v33;
        v25 = v32;
        if ((v57 & 1) == 0)
        {
LABEL_46:

          v63 = [v66 sampleType];
          v64 = [v73 sampleType];
          sub_1DF6B90E0();
          swift_allocError();
          static SampleDataEncodingError.attemptedToDecodeMultipleSampleTypes(expectedSampleType:otherSampleType:)(v63, v64, v65);

          swift_willThrow();
          goto LABEL_47;
        }

        v40 = 0xD000000000000044;
        v41 = "yyyy-MM-dd HH:mm:ss";
LABEL_29:
        if (v40 == v71 && (v41 | 0x8000000000000000) == v28)
        {
        }

        else
        {
          v42 = sub_1DF6F6E2C();

          if ((v42 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v43 = v78;
        v44 = v79;
        __swift_project_boxed_opaque_existential_0(&v76, v78);
        v45 = (*(v44 + 8))(v43, v44);
        if (v2)
        {

LABEL_47:
          __swift_destroy_boxed_opaque_existential_1(&v76);
          return;
        }

        v47 = v45;
        v48 = v46;
        v50 = *(v25 + 2);
        v49 = *(v25 + 3);
        if (v50 >= v49 >> 1)
        {
          v25 = sub_1DF6B52F0((v49 > 1), v50 + 1, 1, v25);
        }

        *(v25 + 2) = v50 + 1;
        v51 = &v25[16 * v50];
        *(v51 + 4) = v47;
        *(v51 + 5) = v48;
        __swift_destroy_boxed_opaque_existential_1(&v76);
        ++v29;
        v4 = v68;
        v3 = v69;
        v7 = &off_1E86C1000;
        if (v72 == v68)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_52:
      ;
    }
  }

  __break(1u);
}

uint64_t sub_1DF6D74A4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_1DF6D8B20(0, &qword_1ECE4DD28);

  if (swift_dynamicCast())
  {
    sub_1DF6A3698(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_1DF6F592C();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DF6D8B7C(__src, &qword_1ECE4DD30, &qword_1ECE4DD28);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DF6F6BDC();
  }

  sub_1DF6D82BC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DF6D8CE8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1DF6D8384(sub_1DF6D8D88);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DF6F59DC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DF6D88DC(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DF6F649C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DF6F64CC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DF6F6BDC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DF6D88DC(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DF6F64AC();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1DF6F59EC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1DF6F59EC();
    sub_1DF6B20E8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DF6B20E8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DF6B047C(*&__src[0], *(&__src[0] + 1));

  sub_1DF6B03FC(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1DF6D79D4()
{
  v1 = v0;
  v2 = sub_1DF6F5A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  sub_1DF6D89A8(0, &qword_1ECE4D860, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DF6FB780;
  v11 = [v0 categoryType];
  v12 = [v11 identifier];

  v13 = sub_1DF6F63EC();
  v15 = v14;

  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v37 = [v1 value];
  *(v10 + 48) = sub_1DF6F6DEC();
  *(v10 + 56) = v16;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0xE000000000000000;
  *(v10 + 80) = sub_1DF6D62E4();
  *(v10 + 88) = v17;
  v18 = [v1 endDate];
  sub_1DF6F5A6C();

  v19 = [v1 startDate];
  sub_1DF6F5A6C();

  sub_1DF6F5A3C();
  v20 = *(v3 + 8);
  v20(v7, v2);
  v20(v9, v2);
  *(v10 + 96) = sub_1DF6F66FC();
  *(v10 + 104) = v21;
  v22 = [v1 metadata];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1DF6F62AC();
  }

  else
  {
    v24 = 0;
  }

  v25 = v36;
  v26 = sub_1DF6E5B5C(v24);
  if (v25)
  {

    v28 = *(v10 + 104);

    v29 = *(v10 + 88);

    v30 = *(v10 + 72);

    v31 = *(v10 + 56);

    v32 = *(v10 + 40);

    *(v10 + 16) = 0;
  }

  else
  {
    v33 = v26;
    v34 = v27;

    *(v10 + 112) = v33;
    *(v10 + 120) = v34;
    v37 = v10;
    sub_1DF6D89A8(0, &qword_1ECE4D910, MEMORY[0x1E69E62F8]);
    sub_1DF6B8EA0();
    v24 = sub_1DF6F632C();
  }

  return v24;
}

uint64_t sub_1DF6D7D6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DF6F6B2C();
  v4 = [a1 identifier];
  v5 = sub_1DF6F63EC();
  v7 = v6;

  result = MEMORY[0x1E12DB8A0](0xD000000000000027, 0x80000001DF6FD980);
  *a2 = 0xD000000000000028;
  a2[1] = 0x80000001DF6FD950;
  a2[2] = v5;
  a2[3] = v7;
  return result;
}

id sub_1DF6D7E40()
{
  v2 = v0;
  v3 = sub_1DF6F5A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = [v0 quantityType];
  v12 = [v11 canonicalUnit];

  if (v12)
  {
    v48 = v1;
    sub_1DF6D89A8(0, &qword_1ECE4D860, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DF6FB780;
    v14 = [v2 quantityType];
    v15 = [v14 identifier];
    v47 = v3;
    v16 = v15;

    v17 = sub_1DF6F63EC();
    v19 = v18;

    *(v13 + 32) = v17;
    *(v13 + 40) = v19;
    v20 = [v2 quantity];
    [v20 doubleValueForUnit_];

    *(v13 + 48) = sub_1DF6F66FC();
    *(v13 + 56) = v21;
    v49 = v12;
    v22 = [v12 unitString];
    v23 = sub_1DF6F63EC();
    v25 = v24;

    *(v13 + 64) = v23;
    *(v13 + 72) = v25;
    *(v13 + 80) = sub_1DF6D62E4();
    *(v13 + 88) = v26;
    v27 = [v2 endDate];
    sub_1DF6F5A6C();

    v28 = [v2 startDate];
    sub_1DF6F5A6C();

    sub_1DF6F5A3C();
    v29 = *(v4 + 8);
    v30 = v47;
    v29(v8, v47);
    v29(v10, v30);
    *(v13 + 96) = sub_1DF6F66FC();
    *(v13 + 104) = v31;
    v32 = [v2 metadata];
    if (v32)
    {
      v33 = v32;
      v11 = sub_1DF6F62AC();
    }

    else
    {
      v11 = 0;
    }

    v36 = v48;
    v37 = sub_1DF6E5B5C(v11);
    if (v36)
    {

      v39 = *(v13 + 104);

      v40 = *(v13 + 88);

      v41 = *(v13 + 72);

      v42 = *(v13 + 56);

      v43 = *(v13 + 40);

      *(v13 + 16) = 0;
    }

    else
    {
      v44 = v37;
      v45 = v38;

      *(v13 + 112) = v44;
      *(v13 + 120) = v45;
      v50 = v13;
      sub_1DF6D89A8(0, &qword_1ECE4D910, MEMORY[0x1E69E62F8]);
      sub_1DF6B8EA0();
      v11 = sub_1DF6F632C();
    }
  }

  else
  {
    v34 = [v2 quantityType];
    sub_1DF6B90E0();
    swift_allocError();
    sub_1DF6D7D6C(v34, v35);

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1DF6D82BC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DF6D8C30(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DF6F58BC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DF6F586C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DF6F59CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DF6D8384(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1DF6B03FC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DF6B03FC(v6, v5);
    *v3 = xmmword_1DF6FB790;
    sub_1DF6B03FC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DF6F587C() && __OFSUB__(v6, sub_1DF6F58AC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1DF6F58BC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DF6F585C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1DF6D8828(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1DF6B03FC(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DF6FB790;
    sub_1DF6B03FC(0, 0xC000000000000000);
    sub_1DF6F59BC();
    result = sub_1DF6D8828(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1DF6D8728@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DF6D8C30(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DF6D8DF0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DF6D8E6C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DF6D87BC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DF6D8828(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DF6F587C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DF6F58AC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DF6F589C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DF6D88DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DF6F64EC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12DB8D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DF6D8958@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1DF6F6B3C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DF6D89A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF6D8A34()
{
  sub_1DF6D8AB8();
  if (v0 <= 0x3F)
  {
    sub_1DF6F5DDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF6D8AB8()
{
  if (!qword_1ECE4DD20)
  {
    sub_1DF69EF80(255, &qword_1EDC03568, 0x1E696C3A8);
    v0 = sub_1DF6F663C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DD20);
    }
  }
}

uint64_t sub_1DF6D8B20(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DF6D8B7C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1DF6D8BD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DF6D8BD8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1DF6D8B20(255, a3);
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DF6D8C30(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF6D8CE8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1DF6F58BC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DF6F588C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DF6F59CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DF6D8D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DF6D87BC(sub_1DF6D8EF0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DF6D8DF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DF6F58BC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DF6F586C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF6F59CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DF6D8E6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DF6F58BC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DF6F586C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1DF6D8F50()
{
  result = qword_1EDC042C0[0];
  if (!qword_1EDC042C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC042C0);
  }

  return result;
}

uint64_t FeatureStatusProviding<>.featureStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v4 = [v2 featureStatusWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v10[0];
    result = FeatureStatus.init(_:)(v5, a1);
  }

  else
  {
    v8 = v10[0];
    sub_1DF6F59AC();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DF6D9068()
{
  v1 = [*v0 featureIdentifier];

  return v1;
}

id sub_1DF6D90E8()
{
  v1 = [*v0 featureAvailabilityProviding];

  return v1;
}

Swift::Bool __swiftcall HKCloudSyncObserverStatus.isFirstRestoreComplete(orSyncDisabled:orHasErrorRequiringUserAction:)(Swift::Bool orSyncDisabled, Swift::Bool orHasErrorRequiringUserAction)
{
  v3 = v2;
  v6 = sub_1DF6F5A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69FB7C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 syncEnabled];
  v16 = [v3 errorRequiringUserAction];
  v17 = v16;
  if (v16)
  {
  }

  v18 = [v3 restoreCompletionDate];
  if (v18)
  {
    v19 = v18;
    sub_1DF6F5A6C();

    (*(v7 + 32))(v14, v10, v6);
    v20 = 1;
    (*(v7 + 56))(v14, 0, 1, v6);
    sub_1DF6C4E78(v14);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
    sub_1DF6C4E78(v14);
    v20 = orSyncDisabled & (v15 ^ 1) | (v17 != 0 && orHasErrorRequiringUserAction);
  }

  return v20 & 1;
}

uint64_t Publisher<>.ignoreFailureResults()()
{
  sub_1DF6D9430();

  return sub_1DF6F5FFC();
}

id *sub_1DF6D93F4@<X0>(id *result@<X0>, void *a2@<X8>)
{
  if (result[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *result;
    result = *result;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1DF6D9430()
{
  result = qword_1EDC046C0;
  if (!qword_1EDC046C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC046C0);
  }

  return result;
}

uint64_t Publisher<>.firstStatusWhereFirstRestoreCompleted(orSyncDisabled:orHasErrorRequiringUserAction:)(char a1, char a2)
{
  v4 = sub_1DF6F5E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 17) = a2;
  sub_1DF6F601C();

  swift_getWitnessTable();
  v10 = sub_1DF6F5FEC();
  (*(v5 + 8))(v8, v4);
  return v10;
}

BOOL sub_1DF6D95E4(uint64_t a1, char a2, char a3)
{
  result = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = *a1;
    v6 = *a1;
    v7 = HKCloudSyncObserverStatus.isFirstRestoreComplete(orSyncDisabled:orHasErrorRequiringUserAction:)(a2 & 1, a3 & 1);
    sub_1DF6B1F38(v5);
    if (v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1DF6D966C(uint64_t a1, uint64_t a2)
{
  sub_1DF6D96D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF6D96D0()
{
  if (!qword_1ECE4DD38)
  {
    sub_1DF6F5A9C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DD38);
    }
  }
}

uint64_t sub_1DF6D9730(uint64_t a1, uint64_t a2)
{
  sub_1DF6D96D0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.workoutUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor() + 20);

  return sub_1DF6D966C(v3, a1);
}

uint64_t type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor()
{
  result = qword_1ECE4DD40;
  if (!qword_1ECE4DD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.workoutUUID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor() + 20);

  return sub_1DF6D9730(a1, v3);
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.workoutSelection.setter(uint64_t a1)
{
  result = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.timestampAnchor.setter(double a1)
{
  result = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.limit.setter(uint64_t a1)
{
  result = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor() + 36);
  v4 = sub_1DF6F613C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.queryAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor() + 36);
  v4 = sub_1DF6F613C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.init(clusterUUID:workoutSelection:timestampAnchor:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1DF6F5A9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a4, 1, 1, v10);
  Descriptor = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  v12(a4 + Descriptor[5], 1, 1, v10);
  v14 = a4 + Descriptor[9];
  sub_1DF6F610C();
  sub_1DF6D9D48(a4);
  (*(v11 + 32))(a4, a1, v10);
  result = (v12)(a4, 0, 1, v10);
  *(a4 + Descriptor[6]) = a2;
  *(a4 + Descriptor[7]) = a5;
  *(a4 + Descriptor[8]) = a3;
  return result;
}

uint64_t sub_1DF6D9D48(uint64_t a1)
{
  sub_1DF6D96D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.init(workoutUUID:timestampAnchor:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1DF6F5A9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(a3, 1, 1, v8);
  Descriptor = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  v12 = Descriptor[5];
  v10(a3 + v12, 1, 1, v8);
  v13 = a3 + Descriptor[9];
  sub_1DF6F610C();
  sub_1DF6D9D48(a3 + v12);
  (*(v9 + 32))(a3 + v12, a1, v8);
  result = (v10)(a3 + v12, 0, 1, v8);
  *(a3 + Descriptor[6]) = 1;
  *(a3 + Descriptor[7]) = a4;
  *(a3 + Descriptor[8]) = a2;
  return result;
}

uint64_t HKRaceRouteLocationSeriesQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6D9F28, 0, 0);
}

uint64_t sub_1DF6D9F28()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DF6B6A14;
  v3 = swift_continuation_init();
  sub_1DF6D9FD4(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6D9FD4(uint64_t a1, char *a2, uint64_t a3)
{
  sub_1DF6D96D0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = sub_1DF6F5A9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - v17;
  v18 = swift_allocObject();
  v19 = a2;
  *(v18 + 16) = a2;
  *(v18 + 24) = a1;
  Descriptor = type metadata accessor for HKRaceRouteLocationSeriesQueryDescriptor();
  v21 = a3;
  sub_1DF6D966C(a3 + Descriptor[5], v11);
  v22 = *(v13 + 48);
  v23 = v12;
  if (v22(v11, 1, v12) != 1)
  {
    v27 = *(v13 + 32);
    v28 = v52;
    v49 = v23;
    v27(v52, v11, v23);
    v29 = *(v21 + Descriptor[7]);
    v51 = *(v21 + Descriptor[8]);
    v30 = objc_allocWithZone(MEMORY[0x1E696C390]);
    v31 = v19;
    v32 = v19;

    v33 = sub_1DF6F5A8C();
    v57 = sub_1DF6DA8CC;
    v58 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1DF6DA8D4;
    v56 = &block_descriptor_7_0;
    v34 = _Block_copy(&aBlock);
    v35 = [v30 initWithWorkoutUUID:v33 timestampAnchor:v51 limit:v34 dataHandler:v29];
    _Block_release(v34);

    (*(v13 + 8))(v28, v49);

    if (!v35)
    {
    }

LABEL_5:
    v36 = Descriptor[9];
    sub_1DF6F699C();
    [v31 executeQuery_];
  }

  v52 = v19;
  v24 = v19;
  sub_1DF6D9D48(v11);
  v25 = v51;
  sub_1DF6D966C(v21, v51);
  if (v22(v25, 1, v12) == 1)
  {

    return sub_1DF6D9D48(v25);
  }

  v37 = v13;
  v38 = v50;
  (*(v13 + 32))(v50, v25, v23);
  v39 = Descriptor;
  v40 = Descriptor[7];
  v51 = *(v21 + Descriptor[6]);
  v41 = *(v21 + v40);
  v48 = *(v21 + Descriptor[8]);
  v42 = objc_allocWithZone(MEMORY[0x1E696C390]);
  v43 = v18;

  v44 = v38;
  v45 = sub_1DF6F5A8C();
  v57 = sub_1DF6DA8CC;
  v58 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1DF6DA8D4;
  v56 = &block_descriptor_13;
  v46 = _Block_copy(&aBlock);
  v35 = [v42 initWithClusterUUID:v45 workoutSelection:v51 timestampAnchor:v48 limit:v46 dataHandler:v41];
  _Block_release(v46);

  (*(v37 + 8))(v44, v23);
  Descriptor = v39;

  v31 = v52;
  if (v35)
  {
    goto LABEL_5;
  }
}

uint64_t sub_1DF6DA490(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v9 = v12;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1DF6DA5B0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6DA5D4, 0, 0);
}

uint64_t sub_1DF6DA5D4()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DF6DA680;
  v3 = swift_continuation_init();
  sub_1DF6D9FD4(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6DA680()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    *(*v0 + 112) = *(*v0 + 80);

    return MEMORY[0x1EEE6DFA0](sub_1DF6DA7CC, 0, 0);
  }
}

void sub_1DF6DA818()
{
  sub_1DF6D96D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKRaceRouteClusterWorkoutSelection(319);
    if (v1 <= 0x3F)
    {
      sub_1DF6F613C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DF6DA8D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF6DA994();
    v5 = sub_1DF6F65AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6DA994()
{
  result = qword_1ECE4DD50;
  if (!qword_1ECE4DD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE4DD50);
  }

  return result;
}

uint64_t sub_1DF6DA9E8(uint64_t a1)
{
  sub_1DF6F5B9C();
  sub_1DF6DAF20();
  sub_1DF6F67AC();
  result = sub_1DF6F67CC();
  if (v10 < v12[0])
  {
    __break(1u);
  }

  else
  {
    if (v12[0] <= a1 && v10 > a1)
    {
      sub_1DF6F5BAC();
      if (v11)
      {
        sub_1DF6B1E38(&v10, v12);
        v4 = v13;
        v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
        v6 = *(*(v4 - 8) + 64);
        MEMORY[0x1EEE9AC00](v5);
        (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        v9 = sub_1DF6F63FC();
        __swift_destroy_boxed_opaque_existential_1(v12);
        return v9;
      }

      sub_1DF6B8F1C(&v10);
    }

    return 45;
  }

  return result;
}

id static NSDateFormatter.sampleDataCodingFormatter.getter()
{
  v0 = sub_1DF6F5ACC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DF6F5AAC();
  v6 = sub_1DF6F5ABC();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_1DF6F63BC();
  [v5 setDateFormat_];

  return v5;
}

uint64_t sub_1DF6DAD08(__int128 *a1)
{
  sub_1DF6DAF78(a1, &v6);
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1DF6B8F1C(a1);
      v2 = v5;
      return *&v2;
    }
  }

  else
  {
    sub_1DF6B8F1C(&v6);
  }

  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = *&v5;
      return *&v2;
    }
  }

  else
  {
    sub_1DF6B8F1C(&v6);
  }

  return 0;
}

uint64_t sub_1DF6DADDC(uint64_t a1, uint64_t a2)
{
  if (sub_1DF6F64FC() & 1) != 0 || (sub_1DF6F64FC())
  {

    return 0;
  }

  else
  {
    sub_1DF6C8AE4();
    v5 = [swift_getObjCClassFromMetadata() stateOfMindType];
    v6 = [v5 identifier];

    v7 = sub_1DF6F63EC();
    v9 = v8;

    if (v7 == a1 && v9 == a2)
    {

      return 1;
    }

    else
    {
      v11 = sub_1DF6F6E2C();

      if (v11)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

unint64_t sub_1DF6DAF20()
{
  result = qword_1ECE4DC90;
  if (!qword_1ECE4DC90)
  {
    sub_1DF6F5B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DC90);
  }

  return result;
}

uint64_t sub_1DF6DAF78(uint64_t a1, uint64_t a2)
{
  sub_1DF6D4C78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HKRegionAvailability.Category.hash(into:)()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x1E12DC330](v1);
  }

  if (*v0 == 1)
  {
    v1 = 1;
    return MEMORY[0x1E12DC330](v1);
  }

  MEMORY[0x1E12DC330](2);
  return sub_1DF6F69EC();
}

uint64_t HKRegionAvailability.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1E12DC330](2);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DB0BC()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1E12DC330](2);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DB130()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x1E12DC330](v1);
  }

  if (*v0 == 1)
  {
    v1 = 1;
    return MEMORY[0x1E12DC330](v1);
  }

  MEMORY[0x1E12DC330](2);
  return sub_1DF6F69EC();
}

uint64_t sub_1DF6DB198()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1E12DC330](2);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

void HKRegionAvailability.category.getter(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 category];
  if (v3 == 1)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (v3 == 3)
  {
    v5 = [v1 allowedCountries];
    if (v5)
    {
      v4 = v5;
      goto LABEL_18;
    }

    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v18, qword_1EDC07CE0);
    v8 = sub_1DF6F5DBC();
    v19 = sub_1DF6F687C();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      v22 = sub_1DF6F6FBC();
      v24 = sub_1DF6A9D50(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DF69D000, v8, v19, "[%{public}s] Missing restriction", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12DCBA0](v21, -1, -1);
      MEMORY[0x1E12DCBA0](v20, -1, -1);
    }

LABEL_17:

    v25 = [objc_opt_self() emptyCountrySet];
    v4 = [objc_opt_self() allowedCountriesInLocalSet_];

    goto LABEL_18;
  }

  if (v3 != 2)
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v6, qword_1EDC07CE0);
    v7 = v1;
    v8 = sub_1DF6F5DBC();
    v9 = sub_1DF6F687C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136446466;
      v12 = sub_1DF6F6FBC();
      v14 = sub_1DF6A9D50(v12, v13, &v26);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      [v7 category];
      type metadata accessor for HKRegionAvailabilityCategory(0);
      v15 = sub_1DF6F63FC();
      v17 = sub_1DF6A9D50(v15, v16, &v26);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1DF69D000, v8, v9, "[%{public}s] Unrecognized category value: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12DCBA0](v11, -1, -1);
      MEMORY[0x1E12DCBA0](v10, -1, -1);
    }

    goto LABEL_17;
  }

  v4 = 1;
LABEL_18:
  *a1 = v4;
}

uint64_t _sSo20HKRegionAvailabilityC18HealthKitAdditionsE8CategoryO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_1DF6BCFB8();
      sub_1DF6DB7CC(v3);
      sub_1DF6DB7CC(v2);
      v4 = sub_1DF6F69DC();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_1DF6DB7CC(*a2);
    sub_1DF6DB7CC(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_1DF6DB7DC(v2);
  sub_1DF6DB7DC(v3);
  return v4 & 1;
}

unint64_t sub_1DF6DB6A0()
{
  result = qword_1ECE4DD58;
  if (!qword_1ECE4DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DD58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So20HKRegionAvailabilityC18HealthKitAdditionsE8CategoryO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DF6DB70C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6DB760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_1DF6DB7CC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1DF6DB7DC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t HKCloudSyncControl.requestSync(with:reason:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1DF6DB9DC();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = ObjectType;
  sub_1DF6DBE94(0, &qword_1ECE4DD68, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
  sub_1DF6DBA68();
  v17 = a1;

  sub_1DF6F5FCC();
  sub_1DF6DC020(&qword_1ECE4DD78, sub_1DF6DB9DC);
  v18 = sub_1DF6F5FEC();
  result = (*(v11 + 8))(v14, v10);
  *a4 = v18;
  return result;
}

void sub_1DF6DB9DC()
{
  if (!qword_1ECE4DD60)
  {
    sub_1DF6DBE94(255, &qword_1ECE4DD68, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    sub_1DF6DBA68();
    v0 = sub_1DF6F5FDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DD60);
    }
  }
}

unint64_t sub_1DF6DBA68()
{
  result = qword_1ECE4DD70;
  if (!qword_1ECE4DD70)
  {
    sub_1DF6DBE94(255, &qword_1ECE4DD68, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DD70);
  }

  return result;
}

uint64_t sub_1DF6DBAE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v32 = a6;
  sub_1DF6DBE0C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6DBF80();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a5;
  sub_1DF6DBE94(0, &qword_1ECE4DD88, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = a2;

  v33 = sub_1DF6F5FBC();
  sub_1DF6DBF04();
  sub_1DF6F602C();

  sub_1DF6DC020(&qword_1ECE4DDA0, sub_1DF6DBE0C);
  sub_1DF6F600C();
  (*(v13 + 8))(v16, v12);
  sub_1DF6DC020(&qword_1ECE4DDA8, sub_1DF6DBF80);
  v27 = v30;
  v28 = sub_1DF6F5FEC();
  result = (*(v31 + 8))(v21, v27);
  *v32 = v28;
  return result;
}

void sub_1DF6DBE0C()
{
  if (!qword_1ECE4DD80)
  {
    sub_1DF6DBE94(255, &qword_1ECE4DD88, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
    sub_1DF6DBF04();
    v0 = sub_1DF6F5E3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DD80);
    }
  }
}

void sub_1DF6DBE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1DF69F1E4();
    v9 = a4(a1, a3, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1DF6DBF04()
{
  result = qword_1ECE4DD90;
  if (!qword_1ECE4DD90)
  {
    sub_1DF6DBE94(255, &qword_1ECE4DD88, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DD90);
  }

  return result;
}

void sub_1DF6DBF80()
{
  if (!qword_1ECE4DD98)
  {
    sub_1DF6DBE0C();
    sub_1DF6DC020(&qword_1ECE4DDA0, sub_1DF6DBE0C);
    v0 = sub_1DF6F5E2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DD98);
    }
  }
}

uint64_t sub_1DF6DC020(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF6DC068(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = qword_1EDC04110;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v16, qword_1EDC07CE0);
    v17 = a4;

    v18 = sub_1DF6F5DBC();
    v19 = sub_1DF6F688C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v20 = 136446722;
      v21 = sub_1DF6F6FBC();
      v35 = a5;
      v23 = sub_1DF6A9D50(v21, v22, &aBlock);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      v24 = [v17 description];
      v25 = sub_1DF6F63EC();
      v26 = v17;
      v28 = v27;

      v29 = sub_1DF6A9D50(v25, v28, &aBlock);
      v17 = v26;

      *(v20 + 14) = v29;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_1DF6A9D50(v35, a6, &aBlock);
      _os_log_impl(&dword_1DF69D000, v18, v19, "%{public}s Requesting cloud sync with request: %{public}s reason: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12DCBA0](v34, -1, -1);
      MEMORY[0x1E12DCBA0](v20, -1, -1);
    }

    v30 = sub_1DF6F63BC();
    v31 = swift_allocObject();
    v31[2] = sub_1DF6A4EC8;
    v31[3] = v12;
    v31[4] = a7;
    v41 = sub_1DF6DC690;
    v42 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1DF6CDA24;
    v40 = &block_descriptor_14;
    v32 = _Block_copy(&aBlock);

    [v14 syncWithRequest:v17 reason:v30 completion:v32];
    _Block_release(v32);
  }

  else
  {

    sub_1DF6DC63C();
    v33 = swift_allocError();
    aBlock = v33;
    LOBYTE(v38) = 1;
    a1(&aBlock);
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DF6DC45C(char a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v7, qword_1EDC07CE0);
    v8 = sub_1DF6F5DBC();
    v9 = sub_1DF6F688C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446466;
      v12 = sub_1DF6F6FBC();
      v14 = sub_1DF6A9D50(v12, v13, &v15);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = a1 & 1;
      _os_log_impl(&dword_1DF69D000, v8, v9, "%{public}s Cloud sync requested successfully: %{BOOL}d", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12DCBA0](v11, -1, -1);
      MEMORY[0x1E12DCBA0](v10, -1, -1);
    }

    a3((a1 & 1), 0);
  }
}

unint64_t sub_1DF6DC63C()
{
  result = qword_1ECE4DDB0;
  if (!qword_1ECE4DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DDB0);
  }

  return result;
}

void sub_1DF6DC690(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6DC45C(a1, a2, *(v2 + 16));
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6DC6C8()
{
  result = qword_1ECE4DDB8;
  if (!qword_1ECE4DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DDB8);
  }

  return result;
}

void HKSharingAuthorizationIdentifier.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 authorizationIdentifier];
  v5 = sub_1DF6F63EC();
  v7 = v6;

  sub_1DF6DDEA8(v5, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (!v9)
  {
    goto LABEL_18;
  }

  v14 = sub_1DF6DE028();
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {

        v15 = [a1 displayName];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1DF6F63EC();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v33 = [a1 displaySubtitle];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1DF6F63EC();
          v37 = v36;
        }

        else
        {

          v35 = 0;
          v37 = 0;
        }

        *a2 = v11;
        *(a2 + 8) = v13;
        *(a2 + 16) = v17;
        *(a2 + 24) = v19;
        *(a2 + 32) = v35;
        *(a2 + 40) = v37;
        v20 = 1;
        goto LABEL_20;
      }

      v27 = sub_1DF6F6D6C();

      if (!v27)
      {
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
        v20 = 2;
        goto LABEL_20;
      }

      if (v27 == 1)
      {
        *a2 = 1;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0;
        v20 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      v21 = sub_1DF6DE074(v11, v13);

      if (v21)
      {
        *a2 = v21;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 33) = 0u;
        return;
      }
    }

LABEL_19:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v20 = -1;
    goto LABEL_20;
  }

  if (v14 == 3)
  {

    v22 = [a1 displayName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1DF6F63EC();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v28 = [a1 displaySubtitle];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1DF6F63EC();
      v32 = v31;
    }

    else
    {

      v30 = 0;
      v32 = 0;
    }

    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v24;
    *(a2 + 24) = v26;
    *(a2 + 32) = v30;
    *(a2 + 40) = v32;
    v20 = 3;
    goto LABEL_20;
  }

  if (v14 != 4)
  {

LABEL_18:

    goto LABEL_19;
  }

  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v20 = 4;
LABEL_20:
  *(a2 + 48) = v20;
}

uint64_t sub_1DF6DCA18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7065636E6F636B68;
    }

    else
    {
      v3 = 0x657079746B68;
    }

    if (v2)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x617274656C637963;
    v4 = 0xED0000676E696B63;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001DF6FC7E0;
    }

    else
    {
      v4 = 0x80000001DF6FC800;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7065636E6F636B68;
    }

    else
    {
      v7 = 0x657079746B68;
    }

    if (a2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xED0000676E696B63;
    if (v3 != 0x617274656C637963)
    {
LABEL_37:
      v8 = sub_1DF6F6E2C();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a2 == 3)
    {
      v6 = 0x80000001DF6FC7E0;
    }

    else
    {
      v6 = 0x80000001DF6FC800;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

HealthKitAdditions::HKSharingAuthorizationIdentifier::CycleTrackingConcept_optional __swiftcall HKSharingAuthorizationIdentifier.CycleTrackingConcept.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF6F6D6C();

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

unint64_t HKSharingAuthorizationIdentifier.CycleTrackingConcept.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1DF6DCC70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3)
  {
    v5 = "medicationtrackingcategory";
  }

  else
  {
    v5 = "fertileWindowPrediction";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (*a2)
  {
    v8 = "fertileWindowPrediction";
  }

  else
  {
    v8 = "medicationtrackingcategory";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DF6F6E2C();
  }

  return v10 & 1;
}

uint64_t sub_1DF6DCD1C()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DCD9C()
{
  *v0;
  sub_1DF6F645C();
}

uint64_t sub_1DF6DCE08()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DCE84@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF6F6D6C();

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

void sub_1DF6DCEE4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "fertileWindowPrediction";
  }

  else
  {
    v3 = "medicationtrackingcategory";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t static HKSharingAuthorizationIdentifier.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 5);
  v5 = *(a2 + 48);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *(a1 + 48);
  v6 = sub_1DF6DCFFC();
  v8 = v7;
  v13 = a2[1];
  v12 = *a2;
  if (v6 == sub_1DF6DCFFC() && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DF6F6E2C();
  }

  return v10 & 1;
}

uint64_t sub_1DF6DCFFC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1DF6F6C7C();
  sub_1DF6F630C();
  v7 = v0[1];
  v6 = *v0;
  v4 = sub_1DF6DD7A8();
  MEMORY[0x1E12DB8A0](v4);

  return 0;
}

uint64_t HKSharingAuthorizationIdentifier.hash(into:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1DF6DCFFC();
  sub_1DF6F645C();
}

uint64_t HKSharingAuthorizationIdentifier.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1DF6F6F0C();
  v5 = *v0;
  v6 = v0[1];
  sub_1DF6DCFFC();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DD1B0(__int128 *a1, __int128 *a2)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 5);
  v5 = *(a2 + 48);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *(a1 + 48);
  v6 = sub_1DF6DCFFC();
  v8 = v7;
  v13 = a2[1];
  v12 = *a2;
  if (v6 == sub_1DF6DCFFC() && v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DF6F6E2C();
  }

  return v10 & 1;
}

uint64_t sub_1DF6DD288()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1DF6F6F0C();
  v5 = *v0;
  v6 = v0[1];
  sub_1DF6DCFFC();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DD308()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  sub_1DF6DCFFC();
  sub_1DF6F645C();
}

uint64_t sub_1DF6DD37C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_1DF6F6F0C();
  v5 = *v0;
  v6 = v0[1];
  sub_1DF6DCFFC();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DD404()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DD4F8()
{
  *v0;
  *v0;
  *v0;
  sub_1DF6F645C();
}

uint64_t sub_1DF6DD5D8()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6DD6C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF6DE028();
  *a2 = result;
  return result;
}

void sub_1DF6DD6F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x657079746B68;
  v5 = 0xED0000676E696B63;
  v6 = 0x617274656C637963;
  v7 = 0xD000000000000012;
  v8 = 0x80000001DF6FC7E0;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x80000001DF6FC800;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7065636E6F636B68;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DF6DD7A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 48);
  if (v3 <= 1)
  {
    if (!*(v0 + 48))
    {
      [v1 code];
      return sub_1DF6F6DEC();
    }

    goto LABEL_7;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return 0xD00000000000001ALL;
    }

LABEL_7:
    v5 = *v0;
    v6 = *(v0 + 8);

    return v5;
  }

  if (v1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t HKSharingAuthorizationIdentifier.displayName.getter()
{
  if ((*(v0 + 48) | 2) != 3)
  {
    return 0;
  }

  v3 = v0 + 16;
  v2 = *(v0 + 16);
  v1 = *(v3 + 8);

  return v2;
}

uint64_t HKSharingAuthorizationIdentifier.displaySubtitle.getter()
{
  if ((*(v0 + 48) | 2) != 3)
  {
    return 0;
  }

  v3 = v0 + 32;
  v2 = *(v0 + 32);
  v1 = *(v3 + 8);

  return v2;
}

id HKSharingAuthorizationIdentifier.sharingAuthorization.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 48);
  v11 = *v0;
  v6 = sub_1DF6DCFFC();
  v8 = v7;
  if ((v5 | 2) == 3)
  {
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v1 = 0;
    v2 = 0;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E696C428]);
  return sub_1DF6DDDD8(v6, v8, v1, v2, v3, v4);
}

unint64_t sub_1DF6DD9F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_1DF6F651C() != a1 || v9 != a2)
  {
    v10 = sub_1DF6F6E2C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1DF6F646C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1DF6DDAE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1DF6F653C();
  }

  __break(1u);
  return result;
}

double HKSharingAuthorizationIdentifier.init(from:)@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696C428]);
  v3 = sub_1DF6F63BC();

  v4 = [v2 initWithAuthorizationIdentifier_];

  HKSharingAuthorizationIdentifier.init(_:)(v4, v9);
  v5 = v10;
  result = *v9;
  v7 = v9[1];
  v8 = v9[2];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v5;
  return result;
}

uint64_t HKSharingAuthorizationIdentifier.string.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return sub_1DF6DCFFC();
}

void static HKSharingAuthorizationIdentifier.identifiers(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    v19 = a1 + 40;
    do
    {
      v5 = (v3 + 16 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = objc_allocWithZone(MEMORY[0x1E696C428]);

        v10 = sub_1DF6F63BC();

        v11 = [v9 initWithAuthorizationIdentifier_];

        HKSharingAuthorizationIdentifier.init(_:)(v11, v20);
        v12 = v21;
        if (v21 != 255)
        {
          break;
        }

        v5 += 2;
        if (v2 == v1)
        {
          return;
        }
      }

      v17 = v20[1];
      v18 = v20[0];
      v16 = v20[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1DF6B4F68(0, *(v4 + 2) + 1, 1, v4);
      }

      v3 = v19;
      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1DF6B4F68((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[56 * v14];
      *(v15 + 2) = v18;
      *(v15 + 3) = v17;
      *(v15 + 4) = v16;
      v15[80] = v12;
    }

    while (v2 != v1);
  }
}

id HKObjectType.sharingAuthorizationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 33) = 0u;
  return v1;
}

id sub_1DF6DDDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DF6F63BC();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1DF6F63BC();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1DF6F63BC();

LABEL_6:
  v12 = [v6 initWithAuthorizationIdentifier:v9 displayName:v10 displaySubtitle:v11];

  return v12;
}

uint64_t sub_1DF6DDEA8(uint64_t a1, unint64_t a2)
{
  sub_1DF6DD9F8(58, 0xE100000000000000, a1, a2);
  if ((v4 & 1) != 0 || sub_1DF6F64DC() < 1)
  {
    return 0;
  }

  v5 = sub_1DF6F653C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DF6F647C();
  v13 = sub_1DF6DDAE8(v12, a1, a2);
  if ((v5 ^ v7) < 0x4000 || (v13 ^ v14) < 0x4000)
  {

    return 0;
  }

  v18 = v13;
  v19 = v5;
  v20 = v14;
  v21 = v7;
  v22 = v15;
  v23 = v16;
  v24 = MEMORY[0x1E12DB850](v19, v21, v9, v11);

  MEMORY[0x1E12DB850](v18, v20, v22, v23);

  return v24;
}

uint64_t sub_1DF6DE028()
{
  v0 = sub_1DF6F6D6C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DF6DE074(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = sub_1DF6E9808(v25, a2, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
LABEL_63:
      if (_HKValidDataTypeCode())
      {
        return [objc_opt_self() dataTypeWithCode_];
      }
    }

    return 0;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF6F6BDC();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v29 = v3;
      if ((v3 & 1) == 0)
      {
        goto LABEL_63;
      }

      return 0;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        v7 = 0;
        v22 = v28;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        v7 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v3)
  {
    if (--v3)
    {
      v7 = 0;
      v17 = v28 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

unint64_t sub_1DF6DE39C()
{
  result = qword_1ECE4DDC0;
  if (!qword_1ECE4DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DDC0);
  }

  return result;
}

unint64_t sub_1DF6DE3F4()
{
  result = qword_1EDC049C8[0];
  if (!qword_1EDC049C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC049C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthKitAdditions32HKSharingAuthorizationIdentifierO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
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

uint64_t sub_1DF6DE480(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF6DE4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DF6DE51C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HKSharingAuthorizationIdentifier.Schema(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HKSharingAuthorizationIdentifier.Schema(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF6DE6B8()
{
  result = qword_1ECE4DDC8;
  if (!qword_1ECE4DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DDC8);
  }

  return result;
}

uint64_t sub_1DF6DE70C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1DF6F67BC();
  if (!v26)
  {
    return sub_1DF6F65DC();
  }

  v48 = v26;
  v52 = sub_1DF6F6C5C();
  v39 = sub_1DF6F6C6C();
  sub_1DF6F6C0C();
  result = sub_1DF6F67AC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1DF6F680C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1DF6F6C4C();
      result = sub_1DF6F67DC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id HKUserDomainConceptQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HKUserDomainConceptQueryDescriptor.sortDescriptors.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void *HKUserDomainConceptQueryDescriptor.anchor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t HKUserDomainConceptQueryDescriptor.limit.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t HKUserDomainConceptQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t HKUserDomainConceptQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HKUserDomainConceptQueryDescriptor.queryAttributes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*HKUserDomainConceptQueryDescriptor.queryAttributes.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t HKUserDomainConceptQueryDescriptor.init(predicate:sortDescriptors:anchor:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for HKUserDomainConceptQueryDescriptor() + 40);
  result = sub_1DF6F610C();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t HKUserDomainConceptQueryDescriptor.Results.Iterator.resultIterator.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
}

uint64_t HKUserDomainConceptQueryDescriptor.Results.Iterator.resultIterator.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = *v6;

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*HKUserDomainConceptQueryDescriptor.Results.Iterator.resultIterator.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t HKUserDomainConceptQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6DEEF4, 0, 0);
}

id sub_1DF6DEEF4()
{
  v1 = v0[11];
  v3 = HKUserDomainConceptQueryDescriptor.Results.Iterator.resultIterator.modify((v0 + 2), v0[10]);
  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_5;
  }

  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v13 = *v2;
    }

    v14 = v2;
    result = sub_1DF6F6A8C();
    v2 = v14;
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v2[1];
  if (v6 == result)
  {
LABEL_5:
    (v3)(v0 + 2, 0);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1DF6DF0AC;
    v8 = v0[11];

    return HKUserDomainConceptQueryDescriptor.Results.Iterator.nextResultIterator()();
  }

  v9 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v10 = v2;
    result = sub_1DF6E02D4(v2[1], *v2);
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v10 = v2;
    result = *(v9 + 8 * v6 + 32);
  }

  v11 = result;
  if (__OFADD__(v6, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10[1] = v6 + 1;
  (v3)(v0 + 2, 0);
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1DF6DF0AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF6DF208, 0, 0);
  }
}

id sub_1DF6DF208()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = (v0[11] + *(v3 + 28));
  v5 = *v4;

  *v4 = v1;
  v4[1] = v2;
  v7 = HKUserDomainConceptQueryDescriptor.Results.Iterator.resultIterator.modify((v0 + 6), v3);
  v8 = *v6;
  if (*v6)
  {
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v15 = *v6;
      }

      v16 = v6;
      result = sub_1DF6F6A8C();
      v6 = v16;
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v6[1];
    if (v10 != result)
    {
      v12 = *v6;
      if ((*v6 & 0xC000000000000001) != 0)
      {
        v13 = v6;
        result = sub_1DF6E02D4(v6[1], *v6);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v13 = v6;
        result = *(v12 + 8 * v10 + 32);
      }

      v11 = result;
      if (!__OFADD__(v10, 1))
      {
        v13[1] = v10 + 1;
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  v11 = 0;
LABEL_12:
  (v7)(v0 + 6, 0);
  v14 = v0[1];

  return v14(v11);
}

uint64_t HKUserDomainConceptQueryDescriptor.Results.Iterator.nextResultIterator()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  *v2 = v0;
  v2[1] = sub_1DF6DF420;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_1DF6DF420()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1DF6C7D70;
  }

  else
  {
    v3 = sub_1DF6DF534;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF6DF554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HKUserDomainConceptQueryDescriptor.Results.Iterator();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1DF6DF604(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DF6B76D4;

  return HKUserDomainConceptQueryDescriptor.Results.Iterator.next()(a2);
}

uint64_t sub_1DF6DF69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1DF6DF770;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1DF6DF770()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t HKUserDomainConceptQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DF6E04B0();
  sub_1DF6F617C();
  v8 = *(a1 + 16);
  return sub_1DF6DF554(v7, 0, 0, a2);
}

uint64_t sub_1DF6DF934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HKUserDomainConceptQueryDescriptor.Results.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t HKUserDomainConceptQueryDescriptor.results(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v20 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DF6E04B0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a2 + 16);
  (*(v7 + 32))(v16 + v15, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_1DF6E0780(0, &qword_1EDC03F00, &qword_1EDC046B0, 0x1E696C550, MEMORY[0x1E69E62F8]);
  v17 = a1;
  sub_1DF6F618C();
  return (*(v11 + 32))(v20, v14, v10);
}

id sub_1DF6DFBC4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v33 = a1;
  v34 = a3;
  sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  sub_1DF69EF80(0, &qword_1EDC046A8, 0x1E696C378);
  v12 = a2[3];
  v13 = *(a2 + 32);
  v35 = sub_1DF6F69AC();
  v36 = a4;
  v14 = a2[1];
  v38 = a4;
  aBlock[0] = v14;
  sub_1DF6F591C();
  v15 = sub_1DF6F663C();
  v16 = sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);

  WitnessTable = swift_getWitnessTable();
  sub_1DF6DE70C(sub_1DF6E0B30, v37, v15, v16, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

  v32 = *a2;
  v19 = a2[2];
  (*(v8 + 16))(v11, v33, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v20, v11, v7);
  v23 = v34;
  *(v22 + v21) = v34;
  v24 = objc_allocWithZone(MEMORY[0x1E696C548]);
  v25 = v23;
  v26 = sub_1DF6F659C();

  aBlock[4] = sub_1DF6E0B50;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6E0208;
  aBlock[3] = &block_descriptor_15;
  v27 = _Block_copy(aBlock);
  v28 = [v24 initWithPredicate:v32 anchor:v19 limit:v35 sortDescriptors:v26 batchHandler:v27];

  _Block_release(v27);

  LODWORD(v19) = *(type metadata accessor for HKUserDomainConceptQueryDescriptor() + 40);
  v29 = v28;
  sub_1DF6F699C();

  return v29;
}

uint64_t sub_1DF6DFEF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DF6F591C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1DF6F695C();
  *a2 = result;
  return result;
}

uint64_t sub_1DF6E0004(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, void *a6)
{
  sub_1DF6E0C48(0, &qword_1EDC03EF0, MEMORY[0x1E69E8780]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v20 - v15;
  if (a2)
  {
    v21 = a2;
    sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);

    sub_1DF6F66CC();
    result = (*(v13 + 8))(v16, v12);
    if ((a3 & 1) == 0)
    {
      return result;
    }

    [a6 stopQuery_];
    v21 = 0;
  }

  else
  {
    v18 = a4;
    if (!a4)
    {
      type metadata accessor for HKError(0);
      v20 = 0;
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v18 = v21;
    }

    v21 = v18;
    v19 = a4;
    sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);
  }

  return sub_1DF6F66DC();
}

uint64_t sub_1DF6E0208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC046B0, 0x1E696C550);
    v7 = sub_1DF6F65AC();
  }

  v11 = a2;
  v12 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t sub_1DF6E02D4(unint64_t a1, unint64_t a2)
{
  sub_1DF69EF80(0, &qword_1EDC046B0, 0x1E696C550);
  if (a2 >> 62)
  {
    v4 = sub_1DF6F6D0C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_1DF6F6B2C();
    v6 = 0xD000000000000046;
    v5 = 0x80000001DF6FDAC0;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_1DF6F6B2C();
  v5 = 0x80000001DF6FDA70;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1E12DB8A0](v6, v5);
  v8 = sub_1DF6F6FBC();
  MEMORY[0x1E12DB8A0](v8);

  MEMORY[0x1E12DB8A0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_1DF6F6FBC();
  MEMORY[0x1E12DB8A0](v9);

  result = sub_1DF6F6CDC();
  __break(1u);
  return result;
}

void sub_1DF6E04B0()
{
  if (!qword_1EDC03F70)
  {
    sub_1DF6E0780(255, &qword_1EDC03F00, &qword_1EDC046B0, 0x1E696C550, MEMORY[0x1E69E62F8]);
    v0 = sub_1DF6F619C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03F70);
    }
  }
}

id sub_1DF6E0534(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for HKUserDomainConceptQueryDescriptor() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DF6DFBC4(a1, (v1 + v5), v6, v3);
}

void sub_1DF6E0624(uint64_t a1)
{
  sub_1DF6E0780(319, &qword_1EDC04778, &qword_1EDC04780, 0x1E696AE18, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1DF6F591C();
    sub_1DF6F663C();
    if (v4 <= 0x3F)
    {
      sub_1DF6E0780(319, &qword_1EDC03808, &qword_1EDC03810, 0x1E696C380, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        sub_1DF6E07E8();
        if (v6 <= 0x3F)
        {
          sub_1DF6F613C();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DF6E0780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DF69EF80(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DF6E07E8()
{
  if (!qword_1EDC04788)
  {
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04788);
    }
  }
}

void sub_1DF6E0838()
{
  sub_1DF6E04B0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DF6E08E4()
{
  sub_1DF6E0C48(319, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    sub_1DF6E09C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF6E09C4()
{
  if (!qword_1EDC03548)
  {
    sub_1DF6E0A1C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03548);
    }
  }
}

void sub_1DF6E0A1C()
{
  if (!qword_1EDC03550)
  {
    sub_1DF6E0780(255, &qword_1EDC03F00, &qword_1EDC046B0, 0x1E696C550, MEMORY[0x1E69E62F8]);
    sub_1DF6E0AAC();
    v0 = sub_1DF6F6C8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC03550);
    }
  }
}

unint64_t sub_1DF6E0AAC()
{
  result = qword_1EDC04790;
  if (!qword_1EDC04790)
  {
    sub_1DF6E0780(255, &qword_1EDC03F00, &qword_1EDC046B0, 0x1E696C550, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04790);
  }

  return result;
}

uint64_t sub_1DF6E0B50(uint64_t a1, void *a2, char a3, void *a4)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DF6E0004(a1, a2, a3, a4, v4 + v11, v12);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6E0C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1DF6E0780(255, &qword_1EDC03F00, &qword_1EDC046B0, 0x1E696C550, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = sub_1DF69F1E4();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1DF6E0CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C5EE8();
    v3 = sub_1DF6F6D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF6E0DF0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1DF6C3550(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF6B1E38(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}