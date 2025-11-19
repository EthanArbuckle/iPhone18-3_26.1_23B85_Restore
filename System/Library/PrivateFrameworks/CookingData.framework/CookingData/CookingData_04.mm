uint64_t sub_24430805C@<X0>(Swift::Int32 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  result = Table.offset(_:)(a1);
  if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    *a2 = *(*(v5 + 24) + result + v7);
    *(a2 + 4) = 0;
  }

  return result;
}

char IARFFB_MeasurementWeightUnit.type.getter@<W0>(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  v7 = Table.offset(_:)(4);
  if (v7)
  {
    if (__OFADD__(v7, v6))
    {
      __break(1u);
      return v7;
    }

    LOBYTE(v7) = IARFFB_MeasurementWeightUnitType.init(rawValue:)(*(*(v4 + 24) + v7 + v6));
    v8 = v10;
    if (v10 == 16)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return v7;
}

CookingData::IARFFB_Duration_optional __swiftcall IARFFB_Duration.init(value:)(CookingData::IARFFB_Duration_optional value)
{
  v2 = value.value;
  if (value.value >= CookingData_IARFFB_Duration_unknownDefault)
  {
    v2 = CookingData_IARFFB_Duration_unknownDefault;
  }

  *v1 = v2;
  return value;
}

uint64_t sub_24430829C()
{
  sub_2443131A8();
  sub_2443131C8();
  return sub_2443131D8();
}

uint64_t sub_2443082E0()
{
  sub_2443131A8();
  sub_2443131C8();
  return sub_2443131D8();
}

CookingData::IARFFB_MeasurementVolumeUnitType_optional __swiftcall IARFFB_MeasurementVolumeUnitType.init(rawValue:)(CookingData::IARFFB_MeasurementVolumeUnitType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= CookingData_IARFFB_MeasurementVolumeUnitType_unknownDefault)
  {
    value = CookingData_IARFFB_MeasurementVolumeUnitType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

CookingData::IARFFB_MeasurementWeightUnitType_optional __swiftcall IARFFB_MeasurementWeightUnitType.init(rawValue:)(CookingData::IARFFB_MeasurementWeightUnitType_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xF0) != 0)
  {
    value = CookingData_IARFFB_MeasurementWeightUnitType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

CookingData::IARFFB_MeasurementUnit_optional __swiftcall IARFFB_MeasurementUnit.init(value:)(CookingData::IARFFB_MeasurementUnit_optional value)
{
  v2 = value.value;
  if (value.value >= CookingData_IARFFB_MeasurementUnit_unknownDefault)
  {
    v2 = CookingData_IARFFB_MeasurementUnit_unknownDefault;
  }

  *v1 = v2;
  return value;
}

uint64_t sub_2443083F8()
{
  v1 = *v0;
  sub_2443131A8();
  sub_2443131C8();
  return sub_2443131D8();
}

uint64_t sub_244308440()
{
  v1 = *v0;
  sub_2443131A8();
  sub_2443131C8();
  return sub_2443131D8();
}

uint64_t IARFFB_TextRange.init(_:o:)@<X0>(uint64_t result@<X0>, int a2@<W3>, _WORD *a3@<X8>)
{
  if (__OFADD__(a2, 2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 24);
    v5 = *(v4 + a2);
    v6 = *(v4 + a2 + 2);

    *a3 = v5;
    a3[1] = v6;
  }

  return result;
}

uint64_t IARFFB_TextRange.init(start:length:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, _WORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static IARFFB_TextRange.verify<A>(_:at:of:)(uint64_t a1, uint64_t a2)
{
  sub_2442E0ECC(a2);
  if (!v2)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
  }
}

uint64_t IARFFB_TextRange_Mutable.length.getter()
{
  v1 = v0[6];
  v2 = __OFADD__(v1, 2);
  v3 = v1 + 2;
  if (!v2)
  {
    return *(*(*v0 + 24) + v3);
  }

  __break(1u);
  return result;
}

void sub_244308590(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v30);
  if (!v2)
  {
    v3 = v31;
    if (v31 < 5)
    {
      goto LABEL_26;
    }

    v4 = *(&v30 + 1) + 4;
    v5 = BYTE8(v31);
    if (BYTE8(v31) != 1 || ((*(v34 + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(*(&v30 + 1) + 4, 2);
      if (v6)
      {
        goto LABEL_30;
      }

      v7 = v34;
      v8 = *(v34 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v30 + v9;
        if (((v8 + v30 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          *&v24 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
LABEL_29:
          sub_2442C6564(v11, v12);
          v18 = sub_244312CD8();
          v20 = v19;
          sub_2442DDB84();
          swift_allocError();
          *v21 = v4;
          *(v21 + 8) = v18;
          *(v21 + 16) = v20;
          v22 = v26;
          v23 = v25;
          *(v21 + 24) = v24;
          *(v21 + 40) = v23;
          *(v21 + 56) = v22;
          *(v21 + 64) = 0;
          swift_willThrow();
LABEL_30:
          v28 = v34;
          *v29 = *v35;
          *&v29[13] = *&v35[13];
          v24 = v30;
          v25 = v31;
          v26 = v32;
          v27 = v33;
LABEL_31:
          sub_2442F8C70(&v24);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v30 + v9, 4);
        if (v13)
        {
          goto LABEL_30;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244306A30(&v31 + 8, v15);
      }

      if (v3 <= 6)
      {
LABEL_26:
        if (__OFSUB__(*(&v33 + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&v33 + 1);
        v28 = v34;
        *v29 = *v35;
        *&v29[13] = *&v35[13];
        v24 = v30;
        v25 = v31;
        v26 = v32;
        v27 = v33;
        goto LABEL_31;
      }

      v4 = *(&v30 + 1) + 6;
      if (BYTE8(v31) != 1 || ((*(v34 + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(*(&v30 + 1) + 6, 2);
        if (v16)
        {
          goto LABEL_30;
        }

        if (*(*(v34 + 24) + v4))
        {
          Verifier.rangeInBuffer(position:size:)(v30 + *(*(v34 + 24) + v4), 0);
          if (v17)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_26;
      }
    }

    *&v24 = MEMORY[0x277D84C58];
    v11 = &qword_27EDDF260;
    v12 = &unk_24431B160;
    goto LABEL_29;
  }
}

uint64_t sub_244308844@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static IARFFB_DurationSpan.createDurationSpan(_:minOffset:maxOffset:type:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_24431011C(a1);
  v12 = v6;
  sub_244310A18(&v12, a1);
  v11 = v7;
  sub_244310BC4(&v11, a1);
  _s11CookingData19IARFFB_DurationSpanV3add4type_yAA0c1_dE4TypeO_AA17FlatBufferBuilderVztFZ_0(v9, a1);
  result = FlatBufferBuilder.endTable(at:)(v8);
  *a4 = result;
  return result;
}

void sub_2443088F4(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v18);
  if (!v2)
  {
    sub_244306DC0(4u, 7235949, 0xE300000000000000, 1);
    sub_244306DC0(6u, 7889261, 0xE300000000000000, 1);
    if (v19 < 9)
    {
      goto LABEL_13;
    }

    v3 = *(&v18 + 1) + 8;
    if (BYTE8(v19) == 1 && ((*(v22 + 24) + v3) & 1) != 0)
    {
      *&v12 = MEMORY[0x277D84C58];
      sub_2442C6564(&qword_27EDDF260, &unk_24431B160);
      v6 = sub_244312CD8();
      v8 = v7;
      sub_2442DDB84();
      swift_allocError();
      *v9 = v3;
      *(v9 + 8) = v6;
      *(v9 + 16) = v8;
      v10 = v14;
      v11 = v13;
      *(v9 + 24) = v12;
      *(v9 + 40) = v11;
      *(v9 + 56) = v10;
      *(v9 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(*(&v18 + 1) + 8, 2);
      if (!v4)
      {
        if (!*(*(v22 + 24) + v3) || (Verifier.rangeInBuffer(position:size:)(v18 + *(*(v22 + 24) + v3), 0), !v5))
        {
LABEL_13:
          if (__OFSUB__(*(&v21 + 1), 1))
          {
            __break(1u);
            return;
          }

          --*(&v21 + 1);
          v16 = v22;
          *v17 = *v23;
          *&v17[13] = *&v23[13];
          v12 = v18;
          v13 = v19;
          v14 = v20;
          v15 = v21;
          goto LABEL_4;
        }
      }
    }

    v16 = v22;
    *v17 = *v23;
    *&v17[13] = *&v23[13];
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
LABEL_4:
    sub_2442F8C70(&v12);
  }
}

void static IARFFB_DurationSpan.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v18);
  if (!v2)
  {
    sub_244306DC0(4u, 7235949, 0xE300000000000000, 1);
    sub_244306DC0(6u, 7889261, 0xE300000000000000, 1);
    if (v19 < 9)
    {
      goto LABEL_13;
    }

    v3 = *(&v18 + 1) + 8;
    if (BYTE8(v19) == 1 && ((*(v22 + 24) + v3) & 1) != 0)
    {
      *&v12 = MEMORY[0x277D84C58];
      sub_2442C6564(&qword_27EDDF260, &unk_24431B160);
      v6 = sub_244312CD8();
      v8 = v7;
      sub_2442DDB84();
      swift_allocError();
      *v9 = v3;
      *(v9 + 8) = v6;
      *(v9 + 16) = v8;
      v10 = v14;
      v11 = v13;
      *(v9 + 24) = v12;
      *(v9 + 40) = v11;
      *(v9 + 56) = v10;
      *(v9 + 64) = 0;
      swift_willThrow();
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(*(&v18 + 1) + 8, 2);
      if (!v4)
      {
        if (!*(*(v22 + 24) + v3) || (Verifier.rangeInBuffer(position:size:)(v18 + *(*(v22 + 24) + v3), 0), !v5))
        {
LABEL_13:
          if (__OFSUB__(*(&v21 + 1), 1))
          {
            __break(1u);
            return;
          }

          --*(&v21 + 1);
          v16 = v22;
          *v17 = *v23;
          *&v17[13] = *&v23[13];
          v12 = v18;
          v13 = v19;
          v14 = v20;
          v15 = v21;
          goto LABEL_4;
        }
      }
    }

    v16 = v22;
    *v17 = *v23;
    *&v17[13] = *&v23[13];
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
LABEL_4:
    sub_2442F8C70(&v12);
  }
}

uint64_t _s11CookingData20IARFFB_DurationExactV06createdE0_11valueOffset4typeAA0H0VAA17FlatBufferBuilderVz_AhA0c1_dE4TypeOtFZ_0@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_2443101BC(a1);
  v9 = v5;
  sub_244310A18(&v9, a1);
  sub_24430FAE4(v7, a1);
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

uint64_t _s11CookingData28IARFFB_MeasurementVolumeUnitV06createdeF0_4typeAA6OffsetVAA17FlatBufferBuilderVz_AA0c1_deF4TypeOtFZ_0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_24430FC3C(a1);
  v8 = v5;
  sub_24431045C(&v8, a1);
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void sub_244308E54(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v18);
  if (!v2)
  {
    if (v19 >= 5)
    {
      v3 = *(&v18 + 1) + 4;
      if (BYTE8(v19) == 1 && ((*(v22 + 24) + v3) & 1) != 0)
      {
        *&v12 = MEMORY[0x277D84C58];
        sub_2442C6564(&qword_27EDDF260, &unk_24431B160);
        v6 = sub_244312CD8();
        v8 = v7;
        sub_2442DDB84();
        swift_allocError();
        *v9 = v3;
        *(v9 + 8) = v6;
        *(v9 + 16) = v8;
        v10 = v14;
        v11 = v13;
        *(v9 + 24) = v12;
        *(v9 + 40) = v11;
        *(v9 + 56) = v10;
        *(v9 + 64) = 0;
        swift_willThrow();
      }

      else
      {
        Verifier.rangeInBuffer(position:size:)(*(&v18 + 1) + 4, 2);
        if (!v4)
        {
          if (!*(*(v22 + 24) + v3))
          {
            goto LABEL_9;
          }

          Verifier.rangeInBuffer(position:size:)(v18 + *(*(v22 + 24) + v3), 1);
          if (!v5)
          {
            goto LABEL_9;
          }
        }
      }

      v16 = v22;
      *v17 = *v23;
      *&v17[13] = *&v23[13];
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v21;
LABEL_13:
      sub_2442F8C70(&v12);
      return;
    }

LABEL_9:
    if (__OFSUB__(*(&v21 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v21 + 1);
    v16 = v22;
    *v17 = *v23;
    *&v17[13] = *&v23[13];
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    goto LABEL_13;
  }
}

uint64_t static IARFFB_Measurement.createMeasurement(_:quantity:unitType:unitOffset:maxQuantity:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, int *a3@<X2>, _DWORD *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v10 = *a2;
  v11 = *a3;
  v12 = sub_2443103BC(a1);
  _s11CookingData18IARFFB_MeasurementV3add8quantity_ySf_AA17FlatBufferBuilderVztFZ_0(a1, a5);
  v15 = v10;
  sub_244310664(&v15, a1);
  v14 = v11;
  sub_244310D70(&v14, a1);
  _s11CookingData18IARFFB_MeasurementV3add11maxQuantity_ySf_AA17FlatBufferBuilderVztFZ_0(a1, a6);
  result = FlatBufferBuilder.endTable(at:)(v12);
  *a4 = result;
  return result;
}

void sub_2443090BC(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v69);
  if (!v2)
  {
    v3 = v70;
    if (v70 >= 5)
    {
      v4 = *(&v69 + 1) + 4;
      v5 = BYTE8(v70);
      if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
      {
        goto LABEL_24;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 4, 2);
      if (v6)
      {
        goto LABEL_52;
      }

      v7 = *(v73 + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = v69 + v8;
        if (((v7 + v69 + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v61 = MEMORY[0x277D83A90];
          v10 = &unk_27EDDFEC0;
          v11 = &unk_24431B170;
LABEL_25:
          sub_2442C6564(v10, v11);
          v18 = sub_244312CD8();
          v20 = v19;
          sub_2442DDB84();
          swift_allocError();
          *v21 = v4;
          *(v21 + 8) = v18;
          *(v21 + 16) = v20;
LABEL_26:
          v22 = v63;
          v23 = v62;
          *(v21 + 24) = v61;
          *(v21 + 40) = v23;
          *(v21 + 56) = v22;
          *(v21 + 64) = 0;
LABEL_51:
          swift_willThrow();
          goto LABEL_52;
        }

        Verifier.rangeInBuffer(position:size:)(v69 + v8, 4);
        if (v12)
        {
          goto LABEL_52;
        }
      }

      if (v3 > 6)
      {
        v4 = *(&v69 + 1) + 6;
        if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
        {
          goto LABEL_24;
        }

        Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 6, 2);
        if (v13)
        {
          goto LABEL_52;
        }

        v14 = *(v73 + 24);
        v15 = *(v14 + v4);
        v16 = v69 + v15;
        if (*(v14 + v4))
        {
          v17 = v69 + v15;
        }

        else
        {
          v17 = 0;
        }

        if (v3 > 8)
        {
          v4 = *(&v69 + 1) + 8;
          if (BYTE8(v70) == 1 && ((v14 + v4) & 1) != 0)
          {
LABEL_24:
            *&v61 = MEMORY[0x277D84C58];
            v10 = &qword_27EDDF260;
            v11 = &unk_24431B160;
            goto LABEL_25;
          }

          Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 8, 2);
          if (v24)
          {
            goto LABEL_52;
          }

          if (*(*(v73 + 24) + v4))
          {
            v25 = *(*(v73 + 24) + v4);
            v26 = v69 + v25;
            if (v15)
            {
              v75 = v69 + v25;
              v27 = BYTE8(v70);
              v28 = v16;
              Verifier.rangeInBuffer(position:size:)(v16, 1);
              if (v29)
              {
                goto LABEL_52;
              }

              v30 = v73;
              v31 = *(v73 + 24);
              v32 = *(v31 + v28);
              if (v32 <= 1)
              {
                if (!*(v31 + v28))
                {
                  goto LABEL_72;
                }

                if (v32 == 1)
                {
                  if (((v31 + v75) & 3) != 0)
                  {
                    v44 = v27;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  if (v44 != 1)
                  {
                    Verifier.rangeInBuffer(position:size:)(v75, 4);
                    if (v48)
                    {
                      goto LABEL_52;
                    }

                    v49 = v75 + *(*(v30 + 24) + v75);
                    if (v49 < 0)
                    {
                      v49 = -v49;
                    }

                    if (v49 >= 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v50 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v50 = v49;
                    }

                    sub_244308590(&v70 + 8, v50);
LABEL_72:
                    if (v3 > 0xA)
                    {
                      v51 = *(&v69 + 1) + 10;
                      v52 = BYTE8(v70);
                      if (BYTE8(v70) == 1 && ((*(v73 + 24) + v51) & 1) != 0)
                      {
                        *&v61 = MEMORY[0x277D84C58];
                        v57 = &qword_27EDDF260;
                        v58 = &unk_24431B160;
                        goto LABEL_83;
                      }

                      Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 10, 2);
                      if (v53)
                      {
                        goto LABEL_52;
                      }

                      v54 = *(v73 + 24);
                      v55 = *(v54 + v51);
                      if (*(v54 + v51))
                      {
                        v51 = v69 + v55;
                        if (((v54 + v69 + v55) & 3) != 0)
                        {
                          v56 = v52;
                        }

                        else
                        {
                          v56 = 0;
                        }

                        if (v56 == 1)
                        {
                          *&v61 = MEMORY[0x277D83A90];
                          v57 = &unk_27EDDFEC0;
                          v58 = &unk_24431B170;
LABEL_83:
                          sub_2442C6564(v57, v58);
                          v45 = sub_244312CD8();
                          v47 = v59;
                          sub_2442DDB84();
                          swift_allocError();
                          *v21 = v51;
                          goto LABEL_63;
                        }

                        Verifier.rangeInBuffer(position:size:)(v69 + v55, 4);
                        if (v60)
                        {
                          goto LABEL_52;
                        }
                      }
                    }

                    if (__OFSUB__(*(&v72 + 1), 1))
                    {
                      __break(1u);
                      return;
                    }

                    --*(&v72 + 1);
                    v65 = v73;
                    v66[0] = *v74;
                    v61 = v69;
                    v62 = v70;
                    *(v66 + 13) = *&v74[13];
                    v63 = v71;
                    v64 = v72;
                    goto LABEL_53;
                  }

                  goto LABEL_62;
                }
              }

              else if (v32 == 2 || v32 == 3 || v32 == 4)
              {
                if (((v31 + v75) & 3) != 0)
                {
                  v33 = v27;
                }

                else
                {
                  v33 = 0;
                }

                if (v33 != 1)
                {
                  Verifier.rangeInBuffer(position:size:)(v75, 4);
                  if (!v34)
                  {
                    v35 = v75 + *(*(v30 + 24) + v75);
                    if (v35 < 0)
                    {
                      v35 = -v35;
                    }

                    if (v35 >= 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v36 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v36 = v35;
                    }

                    sub_244308E54(&v70 + 8, v36);
                    goto LABEL_72;
                  }

LABEL_52:
                  v65 = v73;
                  v66[0] = *v74;
                  *(v66 + 13) = *&v74[13];
                  v61 = v69;
                  v62 = v70;
                  v63 = v71;
                  v64 = v72;
LABEL_53:
                  sub_2442F8C70(&v61);
                  return;
                }

LABEL_62:
                *&v61 = MEMORY[0x277D84CC0];
                sub_2442C6564(&qword_27EDDF268, qword_244316998);
                v45 = sub_244312CD8();
                v47 = v46;
                sub_2442DDB84();
                swift_allocError();
                *v21 = v75;
LABEL_63:
                *(v21 + 8) = v45;
                *(v21 + 16) = v47;
                goto LABEL_26;
              }

              sub_2442DDB84();
              swift_allocError();
              *v39 = 5;
              *(v39 + 8) = 0u;
              *(v39 + 24) = 0u;
              *(v39 + 40) = 0u;
              *(v39 + 56) = 0;
              v40 = 7;
LABEL_50:
              *(v39 + 64) = v40;
              goto LABEL_51;
            }

            v38 = 0;
            v37 = 1;
LABEL_48:
            LOBYTE(v61) = v37;
            LOBYTE(v67) = v38;
            sub_2442DDB84();
            swift_allocError();
            *v39 = v17;
            *(v39 + 8) = v37;
            *(v39 + 16) = 0x6570795474696E75;
            *(v39 + 24) = 0xE800000000000000;
            *(v39 + 32) = v26;
            *(v39 + 40) = v38;
            *(v39 + 48) = 1953066613;
            *(v39 + 56) = 0xE400000000000000;
            v40 = 5;
            goto LABEL_50;
          }
        }

        if (v15)
        {
          v26 = 0;
          v37 = 0;
          v38 = 1;
          goto LABEL_48;
        }
      }
    }

    sub_2442DDB84();
    swift_allocError();
    *v39 = 6;
    v41 = v67;
    *(v39 + 6) = v68;
    *(v39 + 2) = v41;
    *(v39 + 8) = 0x6570795474696E75;
    *(v39 + 16) = 0xE800000000000000;
    v42 = v63;
    v43 = v62;
    *(v39 + 24) = v61;
    *(v39 + 40) = v43;
    *(v39 + 56) = v42;
    v40 = 3;
    goto LABEL_50;
  }
}

void static IARFFB_Measurement.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v69);
  if (!v2)
  {
    v3 = v70;
    if (v70 >= 5)
    {
      v4 = *(&v69 + 1) + 4;
      v5 = BYTE8(v70);
      if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
      {
        goto LABEL_24;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 4, 2);
      if (v6)
      {
        goto LABEL_52;
      }

      v7 = *(v73 + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        v4 = v69 + v8;
        if (((v7 + v69 + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v61 = MEMORY[0x277D83A90];
          v10 = &unk_27EDDFEC0;
          v11 = &unk_24431B170;
LABEL_25:
          sub_2442C6564(v10, v11);
          v18 = sub_244312CD8();
          v20 = v19;
          sub_2442DDB84();
          swift_allocError();
          *v21 = v4;
          *(v21 + 8) = v18;
          *(v21 + 16) = v20;
LABEL_26:
          v22 = v63;
          v23 = v62;
          *(v21 + 24) = v61;
          *(v21 + 40) = v23;
          *(v21 + 56) = v22;
          *(v21 + 64) = 0;
LABEL_51:
          swift_willThrow();
          goto LABEL_52;
        }

        Verifier.rangeInBuffer(position:size:)(v69 + v8, 4);
        if (v12)
        {
          goto LABEL_52;
        }
      }

      if (v3 > 6)
      {
        v4 = *(&v69 + 1) + 6;
        if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
        {
          goto LABEL_24;
        }

        Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 6, 2);
        if (v13)
        {
          goto LABEL_52;
        }

        v14 = *(v73 + 24);
        v15 = *(v14 + v4);
        v16 = v69 + v15;
        if (*(v14 + v4))
        {
          v17 = v69 + v15;
        }

        else
        {
          v17 = 0;
        }

        if (v3 > 8)
        {
          v4 = *(&v69 + 1) + 8;
          if (BYTE8(v70) == 1 && ((v14 + v4) & 1) != 0)
          {
LABEL_24:
            *&v61 = MEMORY[0x277D84C58];
            v10 = &qword_27EDDF260;
            v11 = &unk_24431B160;
            goto LABEL_25;
          }

          Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 8, 2);
          if (v24)
          {
            goto LABEL_52;
          }

          if (*(*(v73 + 24) + v4))
          {
            v25 = *(*(v73 + 24) + v4);
            v26 = v69 + v25;
            if (v15)
            {
              v75 = v69 + v25;
              v27 = BYTE8(v70);
              v28 = v16;
              Verifier.rangeInBuffer(position:size:)(v16, 1);
              if (v29)
              {
                goto LABEL_52;
              }

              v30 = v73;
              v31 = *(v73 + 24);
              v32 = *(v31 + v28);
              if (v32 <= 1)
              {
                if (!*(v31 + v28))
                {
                  goto LABEL_72;
                }

                if (v32 == 1)
                {
                  if (((v31 + v75) & 3) != 0)
                  {
                    v44 = v27;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  if (v44 != 1)
                  {
                    Verifier.rangeInBuffer(position:size:)(v75, 4);
                    if (v48)
                    {
                      goto LABEL_52;
                    }

                    v49 = v75 + *(*(v30 + 24) + v75);
                    if (v49 < 0)
                    {
                      v49 = -v49;
                    }

                    if (v49 >= 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v50 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v50 = v49;
                    }

                    sub_244308590(&v70 + 8, v50);
LABEL_72:
                    if (v3 > 0xA)
                    {
                      v51 = *(&v69 + 1) + 10;
                      v52 = BYTE8(v70);
                      if (BYTE8(v70) == 1 && ((*(v73 + 24) + v51) & 1) != 0)
                      {
                        *&v61 = MEMORY[0x277D84C58];
                        v57 = &qword_27EDDF260;
                        v58 = &unk_24431B160;
                        goto LABEL_83;
                      }

                      Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 10, 2);
                      if (v53)
                      {
                        goto LABEL_52;
                      }

                      v54 = *(v73 + 24);
                      v55 = *(v54 + v51);
                      if (*(v54 + v51))
                      {
                        v51 = v69 + v55;
                        if (((v54 + v69 + v55) & 3) != 0)
                        {
                          v56 = v52;
                        }

                        else
                        {
                          v56 = 0;
                        }

                        if (v56 == 1)
                        {
                          *&v61 = MEMORY[0x277D83A90];
                          v57 = &unk_27EDDFEC0;
                          v58 = &unk_24431B170;
LABEL_83:
                          sub_2442C6564(v57, v58);
                          v45 = sub_244312CD8();
                          v47 = v59;
                          sub_2442DDB84();
                          swift_allocError();
                          *v21 = v51;
                          goto LABEL_63;
                        }

                        Verifier.rangeInBuffer(position:size:)(v69 + v55, 4);
                        if (v60)
                        {
                          goto LABEL_52;
                        }
                      }
                    }

                    if (__OFSUB__(*(&v72 + 1), 1))
                    {
                      __break(1u);
                      return;
                    }

                    --*(&v72 + 1);
                    v65 = v73;
                    v66[0] = *v74;
                    v61 = v69;
                    v62 = v70;
                    *(v66 + 13) = *&v74[13];
                    v63 = v71;
                    v64 = v72;
                    goto LABEL_53;
                  }

                  goto LABEL_62;
                }
              }

              else if (v32 == 2 || v32 == 3 || v32 == 4)
              {
                if (((v31 + v75) & 3) != 0)
                {
                  v33 = v27;
                }

                else
                {
                  v33 = 0;
                }

                if (v33 != 1)
                {
                  Verifier.rangeInBuffer(position:size:)(v75, 4);
                  if (!v34)
                  {
                    v35 = v75 + *(*(v30 + 24) + v75);
                    if (v35 < 0)
                    {
                      v35 = -v35;
                    }

                    if (v35 >= 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v36 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v36 = v35;
                    }

                    sub_244308E54(&v70 + 8, v36);
                    goto LABEL_72;
                  }

LABEL_52:
                  v65 = v73;
                  v66[0] = *v74;
                  *(v66 + 13) = *&v74[13];
                  v61 = v69;
                  v62 = v70;
                  v63 = v71;
                  v64 = v72;
LABEL_53:
                  sub_2442F8C70(&v61);
                  return;
                }

LABEL_62:
                *&v61 = MEMORY[0x277D84CC0];
                sub_2442C6564(&qword_27EDDF268, qword_244316998);
                v45 = sub_244312CD8();
                v47 = v46;
                sub_2442DDB84();
                swift_allocError();
                *v21 = v75;
LABEL_63:
                *(v21 + 8) = v45;
                *(v21 + 16) = v47;
                goto LABEL_26;
              }

              sub_2442DDB84();
              swift_allocError();
              *v39 = 5;
              *(v39 + 8) = 0u;
              *(v39 + 24) = 0u;
              *(v39 + 40) = 0u;
              *(v39 + 56) = 0;
              v40 = 7;
LABEL_50:
              *(v39 + 64) = v40;
              goto LABEL_51;
            }

            v38 = 0;
            v37 = 1;
LABEL_48:
            LOBYTE(v61) = v37;
            LOBYTE(v67) = v38;
            sub_2442DDB84();
            swift_allocError();
            *v39 = v17;
            *(v39 + 8) = v37;
            *(v39 + 16) = 0x6570795474696E75;
            *(v39 + 24) = 0xE800000000000000;
            *(v39 + 32) = v26;
            *(v39 + 40) = v38;
            *(v39 + 48) = 1953066613;
            *(v39 + 56) = 0xE400000000000000;
            v40 = 5;
            goto LABEL_50;
          }
        }

        if (v15)
        {
          v26 = 0;
          v37 = 0;
          v38 = 1;
          goto LABEL_48;
        }
      }
    }

    sub_2442DDB84();
    swift_allocError();
    *v39 = 6;
    v41 = v67;
    *(v39 + 6) = v68;
    *(v39 + 2) = v41;
    *(v39 + 8) = 0x6570795474696E75;
    *(v39 + 16) = 0xE800000000000000;
    v42 = v63;
    v43 = v62;
    *(v39 + 24) = v61;
    *(v39 + 40) = v43;
    *(v39 + 56) = v42;
    v40 = 3;
    goto LABEL_50;
  }
}

uint64_t static IARFFB_Yield.createYield(_:textOffset:textMeasurementOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_2443101BC(a1);
  v11 = v6;
  sub_244310A18(&v11, a1);
  v10 = v7;
  sub_244310BC4(&v10, a1);
  result = FlatBufferBuilder.endTable(at:)(v8);
  *a4 = result;
  return result;
}

void sub_244309EB8(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v27);
  if (!v2)
  {
    sub_244306DC0(4u, 1954047348, 0xE400000000000000, 1);
    if (v28 >= 7)
    {
      v3 = *(&v27 + 1) + 6;
      v4 = BYTE8(v28);
      if (BYTE8(v28) == 1 && ((*(v31 + 24) + v3) & 1) != 0)
      {
        *&v21 = MEMORY[0x277D84C58];
        v10 = &qword_27EDDF260;
        v11 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v27 + 1) + 6, 2);
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = v31;
      v7 = *(v31 + 24);
      v8 = *(v7 + v3);
      if (*(v7 + v3))
      {
        v3 = v27 + v8;
        if (((v7 + v27 + v8) & 3) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v21 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
LABEL_14:
          sub_2442C6564(v10, v11);
          v12 = sub_244312CD8();
          v14 = v13;
          sub_2442DDB84();
          swift_allocError();
          *v15 = v3;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v23;
          v17 = v22;
          *(v15 + 24) = v21;
          *(v15 + 40) = v17;
          *(v15 + 56) = v16;
          *(v15 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v25 = v31;
          *v26 = *v32;
          *&v26[13] = *&v32[13];
          v21 = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
LABEL_25:
          sub_2442F8C70(&v21);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v27 + v8, 4);
        if (v18)
        {
          goto LABEL_15;
        }

        v19 = v3 + *(*(v6 + 24) + v3);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        sub_24430BCB4(&v28 + 8, v20, sub_2443090BC);
      }
    }

    if (__OFSUB__(*(&v30 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v30 + 1);
    v25 = v31;
    *v26 = *v32;
    *&v26[13] = *&v32[13];
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    goto LABEL_25;
  }
}

void static IARFFB_Yield.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v27);
  if (!v2)
  {
    sub_244306DC0(4u, 1954047348, 0xE400000000000000, 1);
    if (v28 >= 7)
    {
      v3 = *(&v27 + 1) + 6;
      v4 = BYTE8(v28);
      if (BYTE8(v28) == 1 && ((*(v31 + 24) + v3) & 1) != 0)
      {
        *&v21 = MEMORY[0x277D84C58];
        v10 = &qword_27EDDF260;
        v11 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v27 + 1) + 6, 2);
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = v31;
      v7 = *(v31 + 24);
      v8 = *(v7 + v3);
      if (*(v7 + v3))
      {
        v3 = v27 + v8;
        if (((v7 + v27 + v8) & 3) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v21 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
LABEL_14:
          sub_2442C6564(v10, v11);
          v12 = sub_244312CD8();
          v14 = v13;
          sub_2442DDB84();
          swift_allocError();
          *v15 = v3;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v23;
          v17 = v22;
          *(v15 + 24) = v21;
          *(v15 + 40) = v17;
          *(v15 + 56) = v16;
          *(v15 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v25 = v31;
          *v26 = *v32;
          *&v26[13] = *&v32[13];
          v21 = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
LABEL_25:
          sub_2442F8C70(&v21);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v27 + v8, 4);
        if (v18)
        {
          goto LABEL_15;
        }

        v19 = v3 + *(*(v6 + 24) + v3);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        sub_24430BCB4(&v28 + 8, v20, sub_2443090BC);
      }
    }

    if (__OFSUB__(*(&v30 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v30 + 1);
    v25 = v31;
    *v26 = *v32;
    *&v26[13] = *&v32[13];
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    goto LABEL_25;
  }
}

uint64_t static IARFFB_InTextIngredient.createInTextIngredient(_:recipeIngredientsIdOffset:textRange:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_2443101BC(a1);
  v12 = v6;
  sub_244310A18(&v12, a1);
  v10 = v7;
  v11 = 0;
  _s11CookingData23IARFFB_InTextIngredientV3add9textRange_yAA0c1_eI0VSg_AA17FlatBufferBuilderVztFZ_0(&v10, a1);
  result = FlatBufferBuilder.endTable(at:)(v8);
  *a4 = result;
  return result;
}

void sub_24430A450(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v27);
  if (!v2)
  {
    if (v28 >= 5)
    {
      v3 = *(&v27 + 1) + 4;
      v4 = BYTE8(v28);
      if (BYTE8(v28) == 1 && ((*(v31 + 24) + v3) & 1) != 0)
      {
        *&v21 = MEMORY[0x277D84C58];
        v10 = &qword_27EDDF260;
        v11 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v27 + 1) + 4, 2);
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = v31;
      v7 = *(v31 + 24);
      v8 = *(v7 + v3);
      if (*(v7 + v3))
      {
        v3 = v27 + v8;
        if (((v7 + v27 + v8) & 3) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v21 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
LABEL_14:
          sub_2442C6564(v10, v11);
          v12 = sub_244312CD8();
          v14 = v13;
          sub_2442DDB84();
          swift_allocError();
          *v15 = v3;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v23;
          v17 = v22;
          *(v15 + 24) = v21;
          *(v15 + 40) = v17;
          *(v15 + 56) = v16;
          *(v15 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v25 = v31;
          *v26 = *v32;
          *&v26[13] = *&v32[13];
          v21 = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
LABEL_25:
          sub_2442F8C70(&v21);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v27 + v8, 4);
        if (v18)
        {
          goto LABEL_15;
        }

        v19 = v3 + *(*(v6 + 24) + v3);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        sub_244306A30(&v28 + 8, v20);
      }
    }

    sub_244306F20(6u, 0x676E615274786574, 0xE900000000000065, 1);
    if (__OFSUB__(*(&v30 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v30 + 1);
    v25 = v31;
    *v26 = *v32;
    *&v26[13] = *&v32[13];
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    goto LABEL_25;
  }
}

void static IARFFB_InTextIngredient.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v27);
  if (!v2)
  {
    if (v28 >= 5)
    {
      v3 = *(&v27 + 1) + 4;
      v4 = BYTE8(v28);
      if (BYTE8(v28) == 1 && ((*(v31 + 24) + v3) & 1) != 0)
      {
        *&v21 = MEMORY[0x277D84C58];
        v10 = &qword_27EDDF260;
        v11 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v27 + 1) + 4, 2);
      if (v5)
      {
        goto LABEL_15;
      }

      v6 = v31;
      v7 = *(v31 + 24);
      v8 = *(v7 + v3);
      if (*(v7 + v3))
      {
        v3 = v27 + v8;
        if (((v7 + v27 + v8) & 3) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *&v21 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
LABEL_14:
          sub_2442C6564(v10, v11);
          v12 = sub_244312CD8();
          v14 = v13;
          sub_2442DDB84();
          swift_allocError();
          *v15 = v3;
          *(v15 + 8) = v12;
          *(v15 + 16) = v14;
          v16 = v23;
          v17 = v22;
          *(v15 + 24) = v21;
          *(v15 + 40) = v17;
          *(v15 + 56) = v16;
          *(v15 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v25 = v31;
          *v26 = *v32;
          *&v26[13] = *&v32[13];
          v21 = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
LABEL_25:
          sub_2442F8C70(&v21);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v27 + v8, 4);
        if (v18)
        {
          goto LABEL_15;
        }

        v19 = v3 + *(*(v6 + 24) + v3);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        sub_244306A30(&v28 + 8, v20);
      }
    }

    sub_244306F20(6u, 0x676E615274786574, 0xE900000000000065, 1);
    if (__OFSUB__(*(&v30 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v30 + 1);
    v25 = v31;
    *v26 = *v32;
    *&v26[13] = *&v32[13];
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    goto LABEL_25;
  }
}

void sub_24430A950(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v38);
  if (!v2)
  {
    sub_244306DC0(4u, 25705, 0xE200000000000000, 1);
    sub_244306DC0(6u, 1954047348, 0xE400000000000000, 1);
    v3 = v39;
    if (v39 < 9)
    {
      goto LABEL_39;
    }

    v4 = *(&v38 + 1) + 8;
    v5 = BYTE8(v39);
    if (BYTE8(v39) != 1 || ((*(v42 + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(*(&v38 + 1) + 8, 2);
      if (v6)
      {
        goto LABEL_43;
      }

      v7 = v42;
      v8 = *(v42 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v38 + v9;
        if (((v8 + v38 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_15;
        }

        Verifier.rangeInBuffer(position:size:)(v38 + v9, 4);
        if (v13)
        {
          goto LABEL_43;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244307494(&v39 + 8, v15, sub_2443090BC);
      }

      if (v3 <= 0xA)
      {
LABEL_39:
        if (__OFSUB__(*(&v41 + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&v41 + 1);
        v36 = v42;
        *v37 = *v43;
        *&v37[13] = *&v43[13];
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        goto LABEL_3;
      }

      v4 = *(&v38 + 1) + 10;
      v16 = BYTE8(v39);
      if (BYTE8(v39) != 1 || ((*(v42 + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(*(&v38 + 1) + 10, 2);
        if (v17)
        {
          goto LABEL_43;
        }

        v18 = v42;
        v19 = *(v42 + 24);
        v20 = *(v19 + v4);
        if (*(v19 + v4))
        {
          v4 = v38 + v20;
          if (((v19 + v38 + v20) & 3) != 0)
          {
            v21 = v16;
          }

          else
          {
            v21 = 0;
          }

          if (v21 == 1)
          {
LABEL_15:
            *&v32 = MEMORY[0x277D84CC0];
            v11 = &qword_27EDDF268;
            v12 = qword_244316998;
LABEL_42:
            sub_2442C6564(v11, v12);
            v26 = sub_244312CD8();
            v28 = v27;
            sub_2442DDB84();
            swift_allocError();
            *v29 = v4;
            *(v29 + 8) = v26;
            *(v29 + 16) = v28;
            v30 = v34;
            v31 = v33;
            *(v29 + 24) = v32;
            *(v29 + 40) = v31;
            *(v29 + 56) = v30;
            *(v29 + 64) = 0;
            swift_willThrow();
            goto LABEL_43;
          }

          v22 = v38 + v20;
          Verifier.rangeInBuffer(position:size:)(v38 + v20, 4);
          if (v23)
          {
LABEL_43:
            v36 = v42;
            *v37 = *v43;
            *&v37[13] = *&v43[13];
            v32 = v38;
            v33 = v39;
            v34 = v40;
            v35 = v41;
LABEL_3:
            sub_2442F8C70(&v32);
            return;
          }

          v24 = v22 + *(*(v18 + 24) + v22);
          if (v24 < 0)
          {
            v24 = -v24;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          sub_244307224(&v39 + 8, v25, sub_24430A450);
        }

        goto LABEL_39;
      }
    }

    *&v32 = MEMORY[0x277D84C58];
    v11 = &qword_27EDDF260;
    v12 = &unk_24431B160;
    goto LABEL_42;
  }
}

void static IARFFB_Ingredient.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v38);
  if (!v2)
  {
    sub_244306DC0(4u, 25705, 0xE200000000000000, 1);
    sub_244306DC0(6u, 1954047348, 0xE400000000000000, 1);
    v3 = v39;
    if (v39 < 9)
    {
      goto LABEL_39;
    }

    v4 = *(&v38 + 1) + 8;
    v5 = BYTE8(v39);
    if (BYTE8(v39) != 1 || ((*(v42 + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(*(&v38 + 1) + 8, 2);
      if (v6)
      {
        goto LABEL_43;
      }

      v7 = v42;
      v8 = *(v42 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v38 + v9;
        if (((v8 + v38 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_15;
        }

        Verifier.rangeInBuffer(position:size:)(v38 + v9, 4);
        if (v13)
        {
          goto LABEL_43;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244307494(&v39 + 8, v15, sub_2443090BC);
      }

      if (v3 <= 0xA)
      {
LABEL_39:
        if (__OFSUB__(*(&v41 + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&v41 + 1);
        v36 = v42;
        *v37 = *v43;
        *&v37[13] = *&v43[13];
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        goto LABEL_3;
      }

      v4 = *(&v38 + 1) + 10;
      v16 = BYTE8(v39);
      if (BYTE8(v39) != 1 || ((*(v42 + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(*(&v38 + 1) + 10, 2);
        if (v17)
        {
          goto LABEL_43;
        }

        v18 = v42;
        v19 = *(v42 + 24);
        v20 = *(v19 + v4);
        if (*(v19 + v4))
        {
          v4 = v38 + v20;
          if (((v19 + v38 + v20) & 3) != 0)
          {
            v21 = v16;
          }

          else
          {
            v21 = 0;
          }

          if (v21 == 1)
          {
LABEL_15:
            *&v32 = MEMORY[0x277D84CC0];
            v11 = &qword_27EDDF268;
            v12 = qword_244316998;
LABEL_42:
            sub_2442C6564(v11, v12);
            v26 = sub_244312CD8();
            v28 = v27;
            sub_2442DDB84();
            swift_allocError();
            *v29 = v4;
            *(v29 + 8) = v26;
            *(v29 + 16) = v28;
            v30 = v34;
            v31 = v33;
            *(v29 + 24) = v32;
            *(v29 + 40) = v31;
            *(v29 + 56) = v30;
            *(v29 + 64) = 0;
            swift_willThrow();
            goto LABEL_43;
          }

          v22 = v38 + v20;
          Verifier.rangeInBuffer(position:size:)(v38 + v20, 4);
          if (v23)
          {
LABEL_43:
            v36 = v42;
            *v37 = *v43;
            *&v37[13] = *&v43[13];
            v32 = v38;
            v33 = v39;
            v34 = v40;
            v35 = v41;
LABEL_3:
            sub_2442F8C70(&v32);
            return;
          }

          v24 = v22 + *(*(v18 + 24) + v22);
          if (v24 < 0)
          {
            v24 = -v24;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          sub_244307224(&v39 + 8, v25, sub_24430A450);
        }

        goto LABEL_39;
      }
    }

    *&v32 = MEMORY[0x277D84C58];
    v11 = &qword_27EDDF260;
    v12 = &unk_24431B160;
    goto LABEL_42;
  }
}

uint64_t static IARFFB_CountdownTimer.createCountdownTimer(_:labelOffset:durationType:durationOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, char *a3@<X2>, int *a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = sub_24431011C(a1);
  v14 = v7;
  sub_244310A18(&v14, a1);
  v13 = v8;
  sub_244310664(&v13, a1);
  v12 = v9;
  sub_244310D70(&v12, a1);
  result = FlatBufferBuilder.endTable(at:)(v10);
  *a5 = result;
  return result;
}

void sub_24430B0C4(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v62);
  if (!v2)
  {
    v3 = v63;
    if (v63 >= 5)
    {
      v4 = *(&v62 + 1) + 4;
      v5 = BYTE8(v63);
      if (BYTE8(v63) == 1 && ((*(v66 + 24) + v4) & 1) != 0)
      {
        goto LABEL_30;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 4, 2);
      if (v6)
      {
        goto LABEL_57;
      }

      v7 = v66;
      v8 = *(v66 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v62 + v9;
        if (((v8 + v62 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          *&v54 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
LABEL_31:
          sub_2442C6564(v11, v12);
          v21 = sub_244312CD8();
          v23 = v22;
          sub_2442DDB84();
          swift_allocError();
          *v24 = v4;
          *(v24 + 8) = v21;
          *(v24 + 16) = v23;
LABEL_32:
          v25 = v56;
          v26 = v55;
          *(v24 + 24) = v54;
          *(v24 + 40) = v26;
          *(v24 + 56) = v25;
          *(v24 + 64) = 0;
LABEL_56:
          swift_willThrow();
          goto LABEL_57;
        }

        Verifier.rangeInBuffer(position:size:)(v62 + v9, 4);
        if (v13)
        {
          goto LABEL_57;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244306A30(&v63 + 8, v15);
      }

      if (v3 > 6)
      {
        v4 = *(&v62 + 1) + 6;
        if (BYTE8(v63) == 1 && ((*(v66 + 24) + v4) & 1) != 0)
        {
          goto LABEL_30;
        }

        Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 6, 2);
        if (v16)
        {
          goto LABEL_57;
        }

        v17 = *(v66 + 24);
        v18 = *(v17 + v4);
        v19 = v62 + v18;
        if (*(v17 + v4))
        {
          v20 = v62 + v18;
        }

        else
        {
          v20 = 0;
        }

        if (v3 > 8)
        {
          v4 = *(&v62 + 1) + 8;
          if (BYTE8(v63) == 1 && ((v17 + v4) & 1) != 0)
          {
LABEL_30:
            *&v54 = MEMORY[0x277D84C58];
            v11 = &qword_27EDDF260;
            v12 = &unk_24431B160;
            goto LABEL_31;
          }

          Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 8, 2);
          if (v27)
          {
            goto LABEL_57;
          }

          if (*(*(v66 + 24) + v4))
          {
            v28 = *(*(v66 + 24) + v4);
            v29 = v62 + v28;
            if (v18)
            {
              v68 = v62 + v28;
              v30 = BYTE8(v63);
              v31 = v19;
              Verifier.rangeInBuffer(position:size:)(v19, 1);
              if (v32)
              {
                goto LABEL_57;
              }

              v33 = v66;
              v34 = *(v66 + 24);
              v35 = *(v34 + v31);
              if (*(v34 + v31))
              {
                if (v35 != 1)
                {
                  if (v35 == 2)
                  {
                    if (((v34 + v68) & 3) != 0)
                    {
                      v36 = v30;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    if (v36 != 1)
                    {
                      Verifier.rangeInBuffer(position:size:)(v68, 4);
                      if (!v37)
                      {
                        v38 = v68 + *(*(v33 + 24) + v68);
                        if (v38 < 0)
                        {
                          v38 = -v38;
                        }

                        if (v38 >= 0x7FFFFFFFFFFFFFFFLL)
                        {
                          v39 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v39 = v38;
                        }

                        sub_2443088F4(&v63 + 8, v39);
                        goto LABEL_74;
                      }

LABEL_57:
                      v58 = v66;
                      v59[0] = *v67;
                      *(v59 + 13) = *&v67[13];
                      v54 = v62;
                      v55 = v63;
                      v56 = v64;
                      v57 = v65;
LABEL_58:
                      sub_2442F8C70(&v54);
                      return;
                    }

LABEL_65:
                    *&v54 = MEMORY[0x277D84CC0];
                    sub_2442C6564(&qword_27EDDF268, qword_244316998);
                    v48 = sub_244312CD8();
                    v50 = v49;
                    sub_2442DDB84();
                    swift_allocError();
                    *v24 = v68;
                    *(v24 + 8) = v48;
                    *(v24 + 16) = v50;
                    goto LABEL_32;
                  }

                  sub_2442DDB84();
                  swift_allocError();
                  *v42 = 5;
                  *(v42 + 8) = 0u;
                  *(v42 + 24) = 0u;
                  *(v42 + 40) = 0u;
                  *(v42 + 56) = 0;
                  v43 = 7;
LABEL_55:
                  *(v42 + 64) = v43;
                  goto LABEL_56;
                }

                if (((v34 + v68) & 3) != 0)
                {
                  v47 = v30;
                }

                else
                {
                  v47 = 0;
                }

                if (v47 == 1)
                {
                  goto LABEL_65;
                }

                Verifier.rangeInBuffer(position:size:)(v68, 4);
                if (v51)
                {
                  goto LABEL_57;
                }

                v52 = v68 + *(*(v33 + 24) + v68);
                if (v52 < 0)
                {
                  v52 = -v52;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v53 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v52;
                }

                sub_244308590(&v63 + 8, v53);
              }

LABEL_74:
              if (__OFSUB__(*(&v65 + 1), 1))
              {
                __break(1u);
                return;
              }

              --*(&v65 + 1);
              v58 = v66;
              v59[0] = *v67;
              v54 = v62;
              v55 = v63;
              *(v59 + 13) = *&v67[13];
              v56 = v64;
              v57 = v65;
              goto LABEL_58;
            }

            v41 = 0;
            v40 = 1;
LABEL_53:
            LOBYTE(v54) = v40;
            LOBYTE(v60) = v41;
            sub_2442DDB84();
            swift_allocError();
            *v42 = v20;
            *(v42 + 8) = v40;
            strcpy((v42 + 16), "durationType");
            *(v42 + 29) = 0;
            *(v42 + 30) = -5120;
            *(v42 + 32) = v29;
            *(v42 + 40) = v41;
            *(v42 + 48) = 0x6E6F697461727564;
            *(v42 + 56) = 0xE800000000000000;
            v43 = 5;
            goto LABEL_55;
          }
        }

        if (v18)
        {
          v29 = 0;
          v40 = 0;
          v41 = 1;
          goto LABEL_53;
        }
      }
    }

    sub_2442DDB84();
    swift_allocError();
    *v42 = 6;
    v44 = v60;
    *(v42 + 6) = v61;
    *(v42 + 2) = v44;
    strcpy((v42 + 8), "durationType");
    *(v42 + 21) = 0;
    *(v42 + 22) = -5120;
    v45 = v56;
    v46 = v55;
    *(v42 + 24) = v54;
    *(v42 + 40) = v46;
    *(v42 + 56) = v45;
    v43 = 3;
    goto LABEL_55;
  }
}

void static IARFFB_CountdownTimer.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v62);
  if (!v2)
  {
    v3 = v63;
    if (v63 >= 5)
    {
      v4 = *(&v62 + 1) + 4;
      v5 = BYTE8(v63);
      if (BYTE8(v63) == 1 && ((*(v66 + 24) + v4) & 1) != 0)
      {
        goto LABEL_30;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 4, 2);
      if (v6)
      {
        goto LABEL_57;
      }

      v7 = v66;
      v8 = *(v66 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v62 + v9;
        if (((v8 + v62 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          *&v54 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
LABEL_31:
          sub_2442C6564(v11, v12);
          v21 = sub_244312CD8();
          v23 = v22;
          sub_2442DDB84();
          swift_allocError();
          *v24 = v4;
          *(v24 + 8) = v21;
          *(v24 + 16) = v23;
LABEL_32:
          v25 = v56;
          v26 = v55;
          *(v24 + 24) = v54;
          *(v24 + 40) = v26;
          *(v24 + 56) = v25;
          *(v24 + 64) = 0;
LABEL_56:
          swift_willThrow();
          goto LABEL_57;
        }

        Verifier.rangeInBuffer(position:size:)(v62 + v9, 4);
        if (v13)
        {
          goto LABEL_57;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244306A30(&v63 + 8, v15);
      }

      if (v3 > 6)
      {
        v4 = *(&v62 + 1) + 6;
        if (BYTE8(v63) == 1 && ((*(v66 + 24) + v4) & 1) != 0)
        {
          goto LABEL_30;
        }

        Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 6, 2);
        if (v16)
        {
          goto LABEL_57;
        }

        v17 = *(v66 + 24);
        v18 = *(v17 + v4);
        v19 = v62 + v18;
        if (*(v17 + v4))
        {
          v20 = v62 + v18;
        }

        else
        {
          v20 = 0;
        }

        if (v3 > 8)
        {
          v4 = *(&v62 + 1) + 8;
          if (BYTE8(v63) == 1 && ((v17 + v4) & 1) != 0)
          {
LABEL_30:
            *&v54 = MEMORY[0x277D84C58];
            v11 = &qword_27EDDF260;
            v12 = &unk_24431B160;
            goto LABEL_31;
          }

          Verifier.rangeInBuffer(position:size:)(*(&v62 + 1) + 8, 2);
          if (v27)
          {
            goto LABEL_57;
          }

          if (*(*(v66 + 24) + v4))
          {
            v28 = *(*(v66 + 24) + v4);
            v29 = v62 + v28;
            if (v18)
            {
              v68 = v62 + v28;
              v30 = BYTE8(v63);
              v31 = v19;
              Verifier.rangeInBuffer(position:size:)(v19, 1);
              if (v32)
              {
                goto LABEL_57;
              }

              v33 = v66;
              v34 = *(v66 + 24);
              v35 = *(v34 + v31);
              if (*(v34 + v31))
              {
                if (v35 != 1)
                {
                  if (v35 == 2)
                  {
                    if (((v34 + v68) & 3) != 0)
                    {
                      v36 = v30;
                    }

                    else
                    {
                      v36 = 0;
                    }

                    if (v36 != 1)
                    {
                      Verifier.rangeInBuffer(position:size:)(v68, 4);
                      if (!v37)
                      {
                        v38 = v68 + *(*(v33 + 24) + v68);
                        if (v38 < 0)
                        {
                          v38 = -v38;
                        }

                        if (v38 >= 0x7FFFFFFFFFFFFFFFLL)
                        {
                          v39 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v39 = v38;
                        }

                        sub_2443088F4(&v63 + 8, v39);
                        goto LABEL_74;
                      }

LABEL_57:
                      v58 = v66;
                      v59[0] = *v67;
                      *(v59 + 13) = *&v67[13];
                      v54 = v62;
                      v55 = v63;
                      v56 = v64;
                      v57 = v65;
LABEL_58:
                      sub_2442F8C70(&v54);
                      return;
                    }

LABEL_65:
                    *&v54 = MEMORY[0x277D84CC0];
                    sub_2442C6564(&qword_27EDDF268, qword_244316998);
                    v48 = sub_244312CD8();
                    v50 = v49;
                    sub_2442DDB84();
                    swift_allocError();
                    *v24 = v68;
                    *(v24 + 8) = v48;
                    *(v24 + 16) = v50;
                    goto LABEL_32;
                  }

                  sub_2442DDB84();
                  swift_allocError();
                  *v42 = 5;
                  *(v42 + 8) = 0u;
                  *(v42 + 24) = 0u;
                  *(v42 + 40) = 0u;
                  *(v42 + 56) = 0;
                  v43 = 7;
LABEL_55:
                  *(v42 + 64) = v43;
                  goto LABEL_56;
                }

                if (((v34 + v68) & 3) != 0)
                {
                  v47 = v30;
                }

                else
                {
                  v47 = 0;
                }

                if (v47 == 1)
                {
                  goto LABEL_65;
                }

                Verifier.rangeInBuffer(position:size:)(v68, 4);
                if (v51)
                {
                  goto LABEL_57;
                }

                v52 = v68 + *(*(v33 + 24) + v68);
                if (v52 < 0)
                {
                  v52 = -v52;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v53 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v52;
                }

                sub_244308590(&v63 + 8, v53);
              }

LABEL_74:
              if (__OFSUB__(*(&v65 + 1), 1))
              {
                __break(1u);
                return;
              }

              --*(&v65 + 1);
              v58 = v66;
              v59[0] = *v67;
              v54 = v62;
              v55 = v63;
              *(v59 + 13) = *&v67[13];
              v56 = v64;
              v57 = v65;
              goto LABEL_58;
            }

            v41 = 0;
            v40 = 1;
LABEL_53:
            LOBYTE(v54) = v40;
            LOBYTE(v60) = v41;
            sub_2442DDB84();
            swift_allocError();
            *v42 = v20;
            *(v42 + 8) = v40;
            strcpy((v42 + 16), "durationType");
            *(v42 + 29) = 0;
            *(v42 + 30) = -5120;
            *(v42 + 32) = v29;
            *(v42 + 40) = v41;
            *(v42 + 48) = 0x6E6F697461727564;
            *(v42 + 56) = 0xE800000000000000;
            v43 = 5;
            goto LABEL_55;
          }
        }

        if (v18)
        {
          v29 = 0;
          v40 = 0;
          v41 = 1;
          goto LABEL_53;
        }
      }
    }

    sub_2442DDB84();
    swift_allocError();
    *v42 = 6;
    v44 = v60;
    *(v42 + 6) = v61;
    *(v42 + 2) = v44;
    strcpy((v42 + 8), "durationType");
    *(v42 + 21) = 0;
    *(v42 + 22) = -5120;
    v45 = v56;
    v46 = v55;
    *(v42 + 24) = v54;
    *(v42 + 40) = v46;
    *(v42 + 56) = v45;
    v43 = 3;
    goto LABEL_55;
  }
}

uint64_t sub_24430BBBC@<X0>(Swift::Int32 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  result = Table.offset(_:)(a1);
  if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = result + v7;
  }

  return result;
}

uint64_t _s11CookingData24IARFFB_InTextMeasurementV06createdeF0_9textRange17measurementOffsetAA0K0VAA17FlatBufferBuilderVz_AA0c1_eI0VAHtFZ_0@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, _DWORD *a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_2443101BC(a1);
  v11 = v6;
  v12 = 0;
  sub_24431025C(&v11, a1);
  v10 = v7;
  sub_244310BC4(&v10, a1);
  result = FlatBufferBuilder.endTable(at:)(v8);
  *a4 = result;
  return result;
}

void sub_24430BCB4(uint64_t a1, unint64_t a2, void (*a3)(char *, uint64_t))
{
  Verifier.visitTable(at:)(a2, &v29);
  if (!v3)
  {
    sub_244306F20(4u, 0x676E615274786574, 0xE900000000000065, 1);
    if (v30 > 6)
    {
      v5 = *(&v29 + 1) + 6;
      v6 = BYTE8(v30);
      if (BYTE8(v30) == 1 && ((*(v33 + 24) + v5) & 1) != 0)
      {
        *&v23 = MEMORY[0x277D84C58];
        v12 = &qword_27EDDF260;
        v13 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v29 + 1) + 6, 2);
      if (v7)
      {
        goto LABEL_15;
      }

      v8 = v33;
      v9 = *(v33 + 24);
      v10 = *(v9 + v5);
      if (*(v9 + v5))
      {
        v5 = v29 + v10;
        if (((v9 + v29 + v10) & 3) != 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        if (v11 == 1)
        {
          *&v23 = MEMORY[0x277D84CC0];
          v12 = &qword_27EDDF268;
          v13 = qword_244316998;
LABEL_14:
          sub_2442C6564(v12, v13);
          v14 = sub_244312CD8();
          v16 = v15;
          sub_2442DDB84();
          swift_allocError();
          *v17 = v5;
          *(v17 + 8) = v14;
          *(v17 + 16) = v16;
          v18 = v25;
          v19 = v24;
          *(v17 + 24) = v23;
          *(v17 + 40) = v19;
          *(v17 + 56) = v18;
          *(v17 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v27 = v33;
          *v28 = *v34;
          *&v28[13] = *&v34[13];
          v23 = v29;
          v24 = v30;
          v25 = v31;
          v26 = v32;
LABEL_25:
          sub_2442F8C70(&v23);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v29 + v10, 4);
        if (v20)
        {
          goto LABEL_15;
        }

        v21 = v5 + *(*(v8 + 24) + v5);
        if (v21 < 0)
        {
          v21 = -v21;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        a3(&v30 + 8, v22);
      }
    }

    if (__OFSUB__(*(&v32 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v32 + 1);
    v27 = v33;
    *v28 = *v34;
    *&v28[13] = *&v34[13];
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    goto LABEL_25;
  }
}

void sub_24430BF5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  Verifier.visitTable(at:)(a2, &v32);
  if (!v6)
  {
    sub_244306F20(4u, 0x676E615274786574, 0xE900000000000065, 1);
    if (v33 >= 7)
    {
      v8 = *(&v32 + 1) + 6;
      v9 = BYTE8(v33);
      if (BYTE8(v33) == 1 && ((*(v36 + 24) + v8) & 1) != 0)
      {
        *&v26 = MEMORY[0x277D84C58];
        v15 = &qword_27EDDF260;
        v16 = &unk_24431B160;
        goto LABEL_14;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v32 + 1) + 6, 2);
      if (v10)
      {
        goto LABEL_15;
      }

      v11 = v36;
      v12 = *(v36 + 24);
      v13 = *(v12 + v8);
      if (*(v12 + v8))
      {
        v8 = v32 + v13;
        if (((v12 + v32 + v13) & 3) != 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          *&v26 = MEMORY[0x277D84CC0];
          v15 = &qword_27EDDF268;
          v16 = qword_244316998;
LABEL_14:
          sub_2442C6564(v15, v16);
          v17 = sub_244312CD8();
          v19 = v18;
          sub_2442DDB84();
          swift_allocError();
          *v20 = v8;
          *(v20 + 8) = v17;
          *(v20 + 16) = v19;
          v21 = v28;
          v22 = v27;
          *(v20 + 24) = v26;
          *(v20 + 40) = v22;
          *(v20 + 56) = v21;
          *(v20 + 64) = 0;
          swift_willThrow();
LABEL_15:
          v30 = v36;
          *v31 = *v37;
          *&v31[13] = *&v37[13];
          v26 = v32;
          v27 = v33;
          v28 = v34;
          v29 = v35;
LABEL_25:
          sub_2442F8C70(&v26);
          return;
        }

        Verifier.rangeInBuffer(position:size:)(v32 + v13, 4);
        if (v23)
        {
          goto LABEL_15;
        }

        v24 = v8 + *(*(v11 + 24) + v8);
        if (v24 < 0)
        {
          v24 = -v24;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        a6(&v33 + 8, v25);
      }
    }

    if (__OFSUB__(*(&v35 + 1), 1))
    {
      __break(1u);
      return;
    }

    --*(&v35 + 1);
    v30 = v36;
    *v31 = *v37;
    *&v31[13] = *&v37[13];
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    goto LABEL_25;
  }
}

BOOL IARFFB_SubStep.hasTextTimers.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24430C240@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, _DWORD *a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = sub_2443103BC(a1);
  v14 = v8;
  sub_244310A18(&v14, a1);
  v14 = v9;
  sub_244310BC4(&v14, a1);
  v14 = v10;
  sub_244310D70(&v14, a1);
  v14 = v11;
  sub_244310F1C(&v14, a1);
  result = FlatBufferBuilder.endTable(at:)(v12);
  *a6 = result;
  return result;
}

void sub_24430C2E8(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v50);
  if (!v2)
  {
    sub_244306DC0(4u, 1954047348, 0xE400000000000000, 1);
    v3 = v51;
    if (v51 < 7)
    {
      goto LABEL_57;
    }

    v4 = *(&v50 + 1) + 6;
    v5 = BYTE8(v51);
    if (BYTE8(v51) != 1 || ((*(v54 + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 6, 2);
      if (v6)
      {
        goto LABEL_49;
      }

      v7 = v54;
      v8 = *(v54 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v50 + v9;
        if (((v8 + v50 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_12;
        }

        Verifier.rangeInBuffer(position:size:)(v50 + v9, 4);
        if (v13)
        {
          goto LABEL_49;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244307494(&v51 + 8, v15, sub_24430B0C4);
      }

      if (v3 <= 8)
      {
        goto LABEL_57;
      }

      v4 = *(&v50 + 1) + 8;
      v16 = BYTE8(v51);
      if (BYTE8(v51) == 1 && ((*(v54 + 24) + v4) & 1) != 0)
      {
        goto LABEL_46;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 8, 2);
      if (v17)
      {
        goto LABEL_49;
      }

      v18 = v54;
      v19 = *(v54 + 24);
      v20 = *(v19 + v4);
      if (*(v19 + v4))
      {
        v4 = v50 + v20;
        if (((v19 + v50 + v20) & 3) != 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v21 == 1)
        {
LABEL_12:
          *&v44 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
LABEL_47:
          sub_2442C6564(v11, v12);
          v36 = sub_244312CD8();
          v38 = v37;
          sub_2442DDB84();
          swift_allocError();
          *v35 = v4;
          *(v35 + 8) = v36;
          *(v35 + 16) = v38;
          goto LABEL_48;
        }

        Verifier.rangeInBuffer(position:size:)(v50 + v20, 4);
        if (v22)
        {
          goto LABEL_49;
        }

        v23 = v4 + *(*(v18 + 24) + v4);
        if (v23 < 0)
        {
          v23 = -v23;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        sub_244307494(&v51 + 8, v24, sub_2443090BC);
      }

      if (v3 <= 0xA)
      {
LABEL_57:
        if (__OFSUB__(*(&v53 + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&v53 + 1);
        v48 = v54;
        *v49 = *v55;
        *&v49[13] = *&v55[13];
        v44 = v50;
        v45 = v51;
        v46 = v52;
        v47 = v53;
        goto LABEL_59;
      }

      v4 = *(&v50 + 1) + 10;
      v25 = BYTE8(v51);
      if (BYTE8(v51) != 1 || ((*(v54 + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 10, 2);
        if (v26)
        {
          goto LABEL_49;
        }

        v27 = v54;
        v28 = *(v54 + 24);
        v29 = *(v28 + v4);
        if (*(v28 + v4))
        {
          v30 = v50 + v29;
          if (((v28 + v50 + v29) & 3) != 0)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          if (v31 == 1)
          {
            *&v44 = MEMORY[0x277D84CC0];
            sub_2442C6564(&qword_27EDDF268, qword_244316998);
            v32 = sub_244312CD8();
            v34 = v33;
            sub_2442DDB84();
            swift_allocError();
            *v35 = v30;
            *(v35 + 8) = v32;
            *(v35 + 16) = v34;
LABEL_48:
            v39 = v46;
            v40 = v45;
            *(v35 + 24) = v44;
            *(v35 + 40) = v40;
            *(v35 + 56) = v39;
            *(v35 + 64) = 0;
            swift_willThrow();
LABEL_49:
            v48 = v54;
            *v49 = *v55;
            *&v49[13] = *&v55[13];
            v44 = v50;
            v45 = v51;
            v46 = v52;
            v47 = v53;
LABEL_59:
            sub_2442F8C70(&v44);
            return;
          }

          Verifier.rangeInBuffer(position:size:)(v50 + v29, 4);
          if (v41)
          {
            goto LABEL_49;
          }

          v42 = v30 + *(*(v27 + 24) + v30);
          if (v42 < 0)
          {
            v42 = -v42;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          sub_244307224(&v51 + 8, v43, sub_24430A450);
        }

        goto LABEL_57;
      }
    }

LABEL_46:
    *&v44 = MEMORY[0x277D84C58];
    v11 = &qword_27EDDF260;
    v12 = &unk_24431B160;
    goto LABEL_47;
  }
}

void static IARFFB_SubStep.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v50);
  if (!v2)
  {
    sub_244306DC0(4u, 1954047348, 0xE400000000000000, 1);
    v3 = v51;
    if (v51 < 7)
    {
      goto LABEL_57;
    }

    v4 = *(&v50 + 1) + 6;
    v5 = BYTE8(v51);
    if (BYTE8(v51) != 1 || ((*(v54 + 24) + v4) & 1) == 0)
    {
      Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 6, 2);
      if (v6)
      {
        goto LABEL_49;
      }

      v7 = v54;
      v8 = *(v54 + 24);
      v9 = *(v8 + v4);
      if (*(v8 + v4))
      {
        v4 = v50 + v9;
        if (((v8 + v50 + v9) & 3) != 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10 == 1)
        {
          goto LABEL_12;
        }

        Verifier.rangeInBuffer(position:size:)(v50 + v9, 4);
        if (v13)
        {
          goto LABEL_49;
        }

        v14 = v4 + *(*(v7 + 24) + v4);
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        sub_244307494(&v51 + 8, v15, sub_24430B0C4);
      }

      if (v3 <= 8)
      {
        goto LABEL_57;
      }

      v4 = *(&v50 + 1) + 8;
      v16 = BYTE8(v51);
      if (BYTE8(v51) == 1 && ((*(v54 + 24) + v4) & 1) != 0)
      {
        goto LABEL_46;
      }

      Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 8, 2);
      if (v17)
      {
        goto LABEL_49;
      }

      v18 = v54;
      v19 = *(v54 + 24);
      v20 = *(v19 + v4);
      if (*(v19 + v4))
      {
        v4 = v50 + v20;
        if (((v19 + v50 + v20) & 3) != 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v21 == 1)
        {
LABEL_12:
          *&v44 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
LABEL_47:
          sub_2442C6564(v11, v12);
          v36 = sub_244312CD8();
          v38 = v37;
          sub_2442DDB84();
          swift_allocError();
          *v35 = v4;
          *(v35 + 8) = v36;
          *(v35 + 16) = v38;
          goto LABEL_48;
        }

        Verifier.rangeInBuffer(position:size:)(v50 + v20, 4);
        if (v22)
        {
          goto LABEL_49;
        }

        v23 = v4 + *(*(v18 + 24) + v4);
        if (v23 < 0)
        {
          v23 = -v23;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        sub_244307494(&v51 + 8, v24, sub_2443090BC);
      }

      if (v3 <= 0xA)
      {
LABEL_57:
        if (__OFSUB__(*(&v53 + 1), 1))
        {
          __break(1u);
          return;
        }

        --*(&v53 + 1);
        v48 = v54;
        *v49 = *v55;
        *&v49[13] = *&v55[13];
        v44 = v50;
        v45 = v51;
        v46 = v52;
        v47 = v53;
        goto LABEL_59;
      }

      v4 = *(&v50 + 1) + 10;
      v25 = BYTE8(v51);
      if (BYTE8(v51) != 1 || ((*(v54 + 24) + v4) & 1) == 0)
      {
        Verifier.rangeInBuffer(position:size:)(*(&v50 + 1) + 10, 2);
        if (v26)
        {
          goto LABEL_49;
        }

        v27 = v54;
        v28 = *(v54 + 24);
        v29 = *(v28 + v4);
        if (*(v28 + v4))
        {
          v30 = v50 + v29;
          if (((v28 + v50 + v29) & 3) != 0)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          if (v31 == 1)
          {
            *&v44 = MEMORY[0x277D84CC0];
            sub_2442C6564(&qword_27EDDF268, qword_244316998);
            v32 = sub_244312CD8();
            v34 = v33;
            sub_2442DDB84();
            swift_allocError();
            *v35 = v30;
            *(v35 + 8) = v32;
            *(v35 + 16) = v34;
LABEL_48:
            v39 = v46;
            v40 = v45;
            *(v35 + 24) = v44;
            *(v35 + 40) = v40;
            *(v35 + 56) = v39;
            *(v35 + 64) = 0;
            swift_willThrow();
LABEL_49:
            v48 = v54;
            *v49 = *v55;
            *&v49[13] = *&v55[13];
            v44 = v50;
            v45 = v51;
            v46 = v52;
            v47 = v53;
LABEL_59:
            sub_2442F8C70(&v44);
            return;
          }

          Verifier.rangeInBuffer(position:size:)(v50 + v29, 4);
          if (v41)
          {
            goto LABEL_49;
          }

          v42 = v30 + *(*(v27 + 24) + v30);
          if (v42 < 0)
          {
            v42 = -v42;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v43 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          sub_244307224(&v51 + 8, v43, sub_24430A450);
        }

        goto LABEL_57;
      }
    }

LABEL_46:
    *&v44 = MEMORY[0x277D84C58];
    v11 = &qword_27EDDF260;
    v12 = &unk_24431B160;
    goto LABEL_47;
  }
}

uint64_t IARFFB_Step.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

BOOL sub_24430CBF0()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t static IARFFB_Step.endStep(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static IARFFB_Step.createStep(_:totalTimeType:totalTimeOffset:ingredientsVectorOffset:substepsVectorOffset:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, _DWORD *a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = sub_2443103BC(a1);
  v17 = v8;
  sub_24431045C(&v17, a1);
  v16 = v9;
  sub_244310BC4(&v16, a1);
  v15 = v10;
  sub_244310D70(&v15, a1);
  v14 = v11;
  sub_244310F1C(&v14, a1);
  result = FlatBufferBuilder.endTable(at:)(v12);
  *a6 = result;
  return result;
}

void sub_24430CD90(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v60);
  if (!v2)
  {
    v3 = v61;
    if (v61 < 5)
    {
      goto LABEL_74;
    }

    v4 = *(&v60 + 1) + 4;
    if (BYTE8(v61) == 1 && ((*(v64 + 24) + v4) & 1) != 0)
    {
      goto LABEL_13;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 4, 2);
    if (v5)
    {
      goto LABEL_38;
    }

    v6 = *(v64 + 24);
    v7 = *(v6 + v4);
    v8 = v60 + v7;
    if (*(v6 + v4))
    {
      v9 = v60 + v7;
    }

    else
    {
      v9 = 0;
    }

    if (v3 <= 6)
    {
      goto LABEL_33;
    }

    v4 = *(&v60 + 1) + 6;
    if (BYTE8(v61) == 1 && ((v6 + v4) & 1) != 0)
    {
LABEL_13:
      *&v54 = MEMORY[0x277D84C58];
      v10 = &qword_27EDDF260;
      v11 = &unk_24431B160;
LABEL_14:
      sub_2442C6564(v10, v11);
      v12 = sub_244312CD8();
      v14 = v13;
      sub_2442DDB84();
      swift_allocError();
      *v15 = v4;
      *(v15 + 8) = v12;
      *(v15 + 16) = v14;
      v16 = v56;
      v17 = v55;
      *(v15 + 24) = v54;
      *(v15 + 40) = v17;
      *(v15 + 56) = v16;
      *(v15 + 64) = 0;
LABEL_37:
      swift_willThrow();
      goto LABEL_38;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 6, 2);
    if (v18)
    {
      goto LABEL_38;
    }

    if (*(*(v64 + 24) + v4))
    {
      v4 = v60 + *(*(v64 + 24) + v4);
      if (v7)
      {
        v19 = BYTE8(v61);
        Verifier.rangeInBuffer(position:size:)(v8, 1);
        if (v20)
        {
          goto LABEL_38;
        }

        v21 = v64;
        v22 = *(v64 + 24);
        v23 = *(v22 + v8);
        if (!*(v22 + v8))
        {
          goto LABEL_53;
        }

        if (v23 == 1)
        {
          if (((v22 + v4) & 3) != 0)
          {
            v32 = v19;
          }

          else
          {
            v32 = 0;
          }

          if (v32 != 1)
          {
            Verifier.rangeInBuffer(position:size:)(v4, 4);
            if (v33)
            {
              goto LABEL_38;
            }

            v34 = v4 + *(*(v21 + 24) + v4);
            if (v34 < 0)
            {
              v34 = -v34;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v35 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            sub_244308590(&v61 + 8, v35);
            goto LABEL_53;
          }

LABEL_44:
          *&v54 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
          goto LABEL_14;
        }

        if (v23 == 2)
        {
          if (((v22 + v4) & 3) != 0)
          {
            v24 = v19;
          }

          else
          {
            v24 = 0;
          }

          if (v24 != 1)
          {
            Verifier.rangeInBuffer(position:size:)(v4, 4);
            if (v25)
            {
LABEL_38:
              v58 = v64;
              *v59 = *v65;
              *&v59[13] = *&v65[13];
              v54 = v60;
              v55 = v61;
              v56 = v62;
              v57 = v63;
              sub_2442F8C70(&v54);
              return;
            }

            v26 = v4 + *(*(v21 + 24) + v4);
            if (v26 < 0)
            {
              v26 = -v26;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            sub_2443088F4(&v61 + 8, v27);
LABEL_53:
            if (v3 > 8)
            {
              v36 = *(&v60 + 1) + 8;
              v37 = BYTE8(v61);
              if (BYTE8(v61) == 1 && ((*(v64 + 24) + v36) & 1) != 0)
              {
                *&v54 = MEMORY[0x277D84C58];
                v43 = &qword_27EDDF260;
                v44 = &unk_24431B160;
                goto LABEL_65;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 8, 2);
              if (v38)
              {
                goto LABEL_66;
              }

              v39 = v64;
              v40 = *(v64 + 24);
              v41 = *(v40 + v36);
              if (*(v40 + v36))
              {
                v36 = v60 + v41;
                if (((v40 + v60 + v41) & 3) != 0)
                {
                  v42 = v37;
                }

                else
                {
                  v42 = 0;
                }

                if (v42 == 1)
                {
                  *&v54 = MEMORY[0x277D84CC0];
                  v43 = &qword_27EDDF268;
                  v44 = qword_244316998;
LABEL_65:
                  sub_2442C6564(v43, v44);
                  v45 = sub_244312CD8();
                  v47 = v46;
                  sub_2442DDB84();
                  swift_allocError();
                  *v48 = v36;
                  *(v48 + 8) = v45;
                  *(v48 + 16) = v47;
                  v49 = v56;
                  v50 = v55;
                  *(v48 + 24) = v54;
                  *(v48 + 40) = v50;
                  *(v48 + 56) = v49;
                  *(v48 + 64) = 0;
                  swift_willThrow();
LABEL_66:
                  v58 = v64;
                  *v59 = *v65;
                  *&v59[13] = *&v65[13];
                  v54 = v60;
                  v55 = v61;
                  v56 = v62;
                  v57 = v63;
LABEL_76:
                  sub_2442F8C70(&v54);
                  return;
                }

                Verifier.rangeInBuffer(position:size:)(v60 + v41, 4);
                if (v51)
                {
                  goto LABEL_66;
                }

                v52 = v36 + *(*(v39 + 24) + v36);
                if (v52 < 0)
                {
                  v52 = -v52;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v53 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v52;
                }

                sub_244307224(&v61 + 8, v53, sub_24430A950);
              }
            }

LABEL_74:
            sub_2443070B0(0xAu, 0x7370657473627573, 0xE800000000000000, 1, sub_24430C2E8);
            if (__OFSUB__(*(&v63 + 1), 1))
            {
              __break(1u);
              return;
            }

            --*(&v63 + 1);
            v58 = v64;
            *v59 = *v65;
            *&v59[13] = *&v65[13];
            v54 = v60;
            v55 = v61;
            v56 = v62;
            v57 = v63;
            goto LABEL_76;
          }

          goto LABEL_44;
        }

        sub_2442DDB84();
        swift_allocError();
        *v30 = 5;
        *(v30 + 8) = 0u;
        *(v30 + 24) = 0u;
        *(v30 + 40) = 0u;
        *(v30 + 56) = 0;
        v31 = 7;
LABEL_36:
        *(v30 + 64) = v31;
        goto LABEL_37;
      }

      v29 = 0;
      v28 = 1;
    }

    else
    {
LABEL_33:
      if (!v7)
      {
        goto LABEL_53;
      }

      v4 = 0;
      v28 = 0;
      v29 = 1;
    }

    LOBYTE(v54) = v28;
    sub_2442DDB84();
    swift_allocError();
    *v30 = v9;
    *(v30 + 8) = v28;
    strcpy((v30 + 16), "totalTimeType");
    *(v30 + 30) = -4864;
    *(v30 + 32) = v4;
    *(v30 + 40) = v29;
    *(v30 + 48) = 0x6D69546C61746F74;
    *(v30 + 56) = 0xE900000000000065;
    v31 = 5;
    goto LABEL_36;
  }
}

void static IARFFB_Step.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v60);
  if (!v2)
  {
    v3 = v61;
    if (v61 < 5)
    {
      goto LABEL_74;
    }

    v4 = *(&v60 + 1) + 4;
    if (BYTE8(v61) == 1 && ((*(v64 + 24) + v4) & 1) != 0)
    {
      goto LABEL_13;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 4, 2);
    if (v5)
    {
      goto LABEL_38;
    }

    v6 = *(v64 + 24);
    v7 = *(v6 + v4);
    v8 = v60 + v7;
    if (*(v6 + v4))
    {
      v9 = v60 + v7;
    }

    else
    {
      v9 = 0;
    }

    if (v3 <= 6)
    {
      goto LABEL_33;
    }

    v4 = *(&v60 + 1) + 6;
    if (BYTE8(v61) == 1 && ((v6 + v4) & 1) != 0)
    {
LABEL_13:
      *&v54 = MEMORY[0x277D84C58];
      v10 = &qword_27EDDF260;
      v11 = &unk_24431B160;
LABEL_14:
      sub_2442C6564(v10, v11);
      v12 = sub_244312CD8();
      v14 = v13;
      sub_2442DDB84();
      swift_allocError();
      *v15 = v4;
      *(v15 + 8) = v12;
      *(v15 + 16) = v14;
      v16 = v56;
      v17 = v55;
      *(v15 + 24) = v54;
      *(v15 + 40) = v17;
      *(v15 + 56) = v16;
      *(v15 + 64) = 0;
LABEL_37:
      swift_willThrow();
      goto LABEL_38;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 6, 2);
    if (v18)
    {
      goto LABEL_38;
    }

    if (*(*(v64 + 24) + v4))
    {
      v4 = v60 + *(*(v64 + 24) + v4);
      if (v7)
      {
        v19 = BYTE8(v61);
        Verifier.rangeInBuffer(position:size:)(v8, 1);
        if (v20)
        {
          goto LABEL_38;
        }

        v21 = v64;
        v22 = *(v64 + 24);
        v23 = *(v22 + v8);
        if (!*(v22 + v8))
        {
          goto LABEL_53;
        }

        if (v23 == 1)
        {
          if (((v22 + v4) & 3) != 0)
          {
            v32 = v19;
          }

          else
          {
            v32 = 0;
          }

          if (v32 != 1)
          {
            Verifier.rangeInBuffer(position:size:)(v4, 4);
            if (v33)
            {
              goto LABEL_38;
            }

            v34 = v4 + *(*(v21 + 24) + v4);
            if (v34 < 0)
            {
              v34 = -v34;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v35 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            sub_244308590(&v61 + 8, v35);
            goto LABEL_53;
          }

LABEL_44:
          *&v54 = MEMORY[0x277D84CC0];
          v10 = &qword_27EDDF268;
          v11 = qword_244316998;
          goto LABEL_14;
        }

        if (v23 == 2)
        {
          if (((v22 + v4) & 3) != 0)
          {
            v24 = v19;
          }

          else
          {
            v24 = 0;
          }

          if (v24 != 1)
          {
            Verifier.rangeInBuffer(position:size:)(v4, 4);
            if (v25)
            {
LABEL_38:
              v58 = v64;
              *v59 = *v65;
              *&v59[13] = *&v65[13];
              v54 = v60;
              v55 = v61;
              v56 = v62;
              v57 = v63;
              sub_2442F8C70(&v54);
              return;
            }

            v26 = v4 + *(*(v21 + 24) + v4);
            if (v26 < 0)
            {
              v26 = -v26;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v27 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            sub_2443088F4(&v61 + 8, v27);
LABEL_53:
            if (v3 > 8)
            {
              v36 = *(&v60 + 1) + 8;
              v37 = BYTE8(v61);
              if (BYTE8(v61) == 1 && ((*(v64 + 24) + v36) & 1) != 0)
              {
                *&v54 = MEMORY[0x277D84C58];
                v43 = &qword_27EDDF260;
                v44 = &unk_24431B160;
                goto LABEL_65;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v60 + 1) + 8, 2);
              if (v38)
              {
                goto LABEL_66;
              }

              v39 = v64;
              v40 = *(v64 + 24);
              v41 = *(v40 + v36);
              if (*(v40 + v36))
              {
                v36 = v60 + v41;
                if (((v40 + v60 + v41) & 3) != 0)
                {
                  v42 = v37;
                }

                else
                {
                  v42 = 0;
                }

                if (v42 == 1)
                {
                  *&v54 = MEMORY[0x277D84CC0];
                  v43 = &qword_27EDDF268;
                  v44 = qword_244316998;
LABEL_65:
                  sub_2442C6564(v43, v44);
                  v45 = sub_244312CD8();
                  v47 = v46;
                  sub_2442DDB84();
                  swift_allocError();
                  *v48 = v36;
                  *(v48 + 8) = v45;
                  *(v48 + 16) = v47;
                  v49 = v56;
                  v50 = v55;
                  *(v48 + 24) = v54;
                  *(v48 + 40) = v50;
                  *(v48 + 56) = v49;
                  *(v48 + 64) = 0;
                  swift_willThrow();
LABEL_66:
                  v58 = v64;
                  *v59 = *v65;
                  *&v59[13] = *&v65[13];
                  v54 = v60;
                  v55 = v61;
                  v56 = v62;
                  v57 = v63;
LABEL_76:
                  sub_2442F8C70(&v54);
                  return;
                }

                Verifier.rangeInBuffer(position:size:)(v60 + v41, 4);
                if (v51)
                {
                  goto LABEL_66;
                }

                v52 = v36 + *(*(v39 + 24) + v36);
                if (v52 < 0)
                {
                  v52 = -v52;
                }

                if (v52 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v53 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v52;
                }

                sub_244307224(&v61 + 8, v53, sub_24430A950);
              }
            }

LABEL_74:
            sub_2443070B0(0xAu, 0x7370657473627573, 0xE800000000000000, 1, sub_24430C2E8);
            if (__OFSUB__(*(&v63 + 1), 1))
            {
              __break(1u);
              return;
            }

            --*(&v63 + 1);
            v58 = v64;
            *v59 = *v65;
            *&v59[13] = *&v65[13];
            v54 = v60;
            v55 = v61;
            v56 = v62;
            v57 = v63;
            goto LABEL_76;
          }

          goto LABEL_44;
        }

        sub_2442DDB84();
        swift_allocError();
        *v30 = 5;
        *(v30 + 8) = 0u;
        *(v30 + 24) = 0u;
        *(v30 + 40) = 0u;
        *(v30 + 56) = 0;
        v31 = 7;
LABEL_36:
        *(v30 + 64) = v31;
        goto LABEL_37;
      }

      v29 = 0;
      v28 = 1;
    }

    else
    {
LABEL_33:
      if (!v7)
      {
        goto LABEL_53;
      }

      v4 = 0;
      v28 = 0;
      v29 = 1;
    }

    LOBYTE(v54) = v28;
    sub_2442DDB84();
    swift_allocError();
    *v30 = v9;
    *(v30 + 8) = v28;
    strcpy((v30 + 16), "totalTimeType");
    *(v30 + 30) = -4864;
    *(v30 + 32) = v4;
    *(v30 + 40) = v29;
    *(v30 + 48) = 0x6D69546C61746F74;
    *(v30 + 56) = 0xE900000000000065;
    v31 = 5;
    goto LABEL_36;
  }
}

BOOL _s11CookingData11IARFFB_StepV11hasSubstepsSbvg_0()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0xBu)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 10);
    v6 = v5 + 10;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

BOOL IARFFB_StepSection.hasIngredients.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0xDu)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 12);
    v6 = v5 + 12;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t static IARFFB_StepSection.createStepSection(_:titleOffset:totalTimeType:totalTimeOffset:stepsVectorOffset:ingredientsVectorOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, char *a3@<X2>, int *a4@<X3>, int *a5@<X4>, int *a6@<X5>, _DWORD *a7@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = _s11CookingData18IARFFB_StepSectionV05startdE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(a1);
  v16 = v9;
  sub_244310A18(&v16, a1);
  LOBYTE(v16) = v10;
  sub_244310664(&v16, a1);
  v16 = v11;
  sub_244310D70(&v16, a1);
  v16 = v12;
  sub_244310F1C(&v16, a1);
  v16 = v13;
  _s11CookingData18IARFFB_StepSectionV11addVectorOf11ingredients_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v16, a1);
  result = FlatBufferBuilder.endTable(at:)(v14);
  *a7 = result;
  return result;
}

void sub_24430DB0C(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v69);
  if (!v2)
  {
    v3 = v70;
    if (v70 <= 4)
    {
      goto LABEL_71;
    }

    v4 = *(&v69 + 1) + 4;
    v5 = BYTE8(v70);
    if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
    {
      goto LABEL_89;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 4, 2);
    if (v6)
    {
      goto LABEL_91;
    }

    v7 = v73;
    v8 = *(v73 + 24);
    v9 = *(v8 + v4);
    if (*(v8 + v4))
    {
      v4 = v69 + v9;
      if (((v8 + v69 + v9) & 3) != 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      if (v10 == 1)
      {
        goto LABEL_12;
      }

      Verifier.rangeInBuffer(position:size:)(v69 + v9, 4);
      if (v13)
      {
        goto LABEL_91;
      }

      v14 = v4 + *(*(v7 + 24) + v4);
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      sub_244306A30(&v70 + 8, v15);
    }

    if (v3 < 7)
    {
      goto LABEL_71;
    }

    v16 = *(&v69 + 1) + 6;
    if (BYTE8(v70) == 1 && ((*(v73 + 24) + v16) & 1) != 0)
    {
      goto LABEL_31;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 6, 2);
    if (v17)
    {
      goto LABEL_56;
    }

    v18 = *(v73 + 24);
    v19 = *(v18 + v16);
    v20 = v69 + v19;
    if (*(v18 + v16))
    {
      v21 = v69 + v19;
    }

    else
    {
      v21 = 0;
    }

    if (v3 <= 8)
    {
      goto LABEL_51;
    }

    v16 = *(&v69 + 1) + 8;
    if (BYTE8(v70) == 1 && ((v18 + v16) & 1) != 0)
    {
LABEL_31:
      *&v63 = MEMORY[0x277D84C58];
      v22 = &qword_27EDDF260;
      v23 = &unk_24431B160;
LABEL_32:
      sub_2442C6564(v22, v23);
      v24 = sub_244312CD8();
      v26 = v25;
      sub_2442DDB84();
      swift_allocError();
      *v27 = v16;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      v28 = v65;
      v29 = v64;
      *(v27 + 24) = v63;
      *(v27 + 40) = v29;
      *(v27 + 56) = v28;
      *(v27 + 64) = 0;
LABEL_55:
      swift_willThrow();
      goto LABEL_56;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 8, 2);
    if (v30)
    {
      goto LABEL_56;
    }

    if (*(*(v73 + 24) + v16))
    {
      v16 = v69 + *(*(v73 + 24) + v16);
      if (v19)
      {
        v31 = BYTE8(v70);
        Verifier.rangeInBuffer(position:size:)(v20, 1);
        if (v32)
        {
          goto LABEL_56;
        }

        v33 = v73;
        v34 = *(v73 + 24);
        v35 = *(v34 + v20);
        if (*(v34 + v20))
        {
          if (v35 == 1)
          {
            if (((v34 + v16) & 3) != 0)
            {
              v44 = v31;
            }

            else
            {
              v44 = 0;
            }

            if (v44 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(v16, 4);
              if (v45)
              {
                goto LABEL_56;
              }

              v46 = v16 + *(*(v33 + 24) + v16);
              if (v46 < 0)
              {
                v46 = -v46;
              }

              if (v46 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              sub_244308590(&v70 + 8, v47);
              goto LABEL_71;
            }

            goto LABEL_62;
          }

          if (v35 == 2)
          {
            if (((v34 + v16) & 3) != 0)
            {
              v36 = v31;
            }

            else
            {
              v36 = 0;
            }

            if (v36 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(v16, 4);
              if (!v37)
              {
                v38 = v16 + *(*(v33 + 24) + v16);
                if (v38 < 0)
                {
                  v38 = -v38;
                }

                if (v38 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v39 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v38;
                }

                sub_2443088F4(&v70 + 8, v39);
                goto LABEL_71;
              }

LABEL_56:
              v67 = v73;
              *v68 = v74[0];
              *&v68[13] = *(v74 + 13);
              v63 = v69;
              v64 = v70;
              v65 = v71;
              v66 = v72;
              sub_2442F8C70(&v63);
              return;
            }

LABEL_62:
            *&v63 = MEMORY[0x277D84CC0];
            v22 = &qword_27EDDF268;
            v23 = qword_244316998;
            goto LABEL_32;
          }

          sub_2442DDB84();
          swift_allocError();
          *v42 = 5;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          *(v42 + 40) = 0u;
          *(v42 + 56) = 0;
          v43 = 7;
LABEL_54:
          *(v42 + 64) = v43;
          goto LABEL_55;
        }

LABEL_71:
        sub_2443070B0(0xAu, 0x7370657473, 0xE500000000000000, 1, sub_24430CD90);
        if (v3 <= 12)
        {
          goto LABEL_87;
        }

        v4 = *(&v69 + 1) + 12;
        v48 = BYTE8(v70);
        if (BYTE8(v70) != 1 || ((*(v73 + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 12, 2);
          if (v49)
          {
            goto LABEL_91;
          }

          v50 = v73;
          v51 = *(v73 + 24);
          v52 = *(v51 + v4);
          if (*(v51 + v4))
          {
            v4 = v69 + v52;
            if (((v51 + v69 + v52) & 3) != 0)
            {
              v53 = v48;
            }

            else
            {
              v53 = 0;
            }

            if (v53 == 1)
            {
LABEL_12:
              *&v63 = MEMORY[0x277D84CC0];
              v11 = &qword_27EDDF268;
              v12 = qword_244316998;
LABEL_90:
              sub_2442C6564(v11, v12);
              v57 = sub_244312CD8();
              v59 = v58;
              sub_2442DDB84();
              swift_allocError();
              *v60 = v4;
              *(v60 + 8) = v57;
              *(v60 + 16) = v59;
              v61 = v65;
              v62 = v64;
              *(v60 + 24) = v63;
              *(v60 + 40) = v62;
              *(v60 + 56) = v61;
              *(v60 + 64) = 0;
              swift_willThrow();
LABEL_91:
              v67 = v73;
              *v68 = v74[0];
              *&v68[13] = *(v74 + 13);
              v63 = v69;
              v64 = v70;
              v65 = v71;
              v66 = v72;
LABEL_92:
              sub_2442F8C70(&v63);
              return;
            }

            Verifier.rangeInBuffer(position:size:)(v69 + v52, 4);
            if (v54)
            {
              goto LABEL_91;
            }

            v55 = v4 + *(*(v50 + 24) + v4);
            if (v55 < 0)
            {
              v55 = -v55;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v56 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v55;
            }

            sub_244307224(&v70 + 8, v56, sub_24430A950);
          }

LABEL_87:
          if (__OFSUB__(*(&v72 + 1), 1))
          {
            __break(1u);
            return;
          }

          --*(&v72 + 1);
          v67 = v73;
          *v68 = v74[0];
          *&v68[13] = *(v74 + 13);
          v63 = v69;
          v64 = v70;
          v65 = v71;
          v66 = v72;
          goto LABEL_92;
        }

LABEL_89:
        *&v63 = MEMORY[0x277D84C58];
        v11 = &qword_27EDDF260;
        v12 = &unk_24431B160;
        goto LABEL_90;
      }

      v41 = 0;
      v40 = 1;
    }

    else
    {
LABEL_51:
      if (!v19)
      {
        goto LABEL_71;
      }

      v16 = 0;
      v40 = 0;
      v41 = 1;
    }

    LOBYTE(v63) = v40;
    sub_2442DDB84();
    swift_allocError();
    *v42 = v21;
    *(v42 + 8) = v40;
    strcpy((v42 + 16), "totalTimeType");
    *(v42 + 30) = -4864;
    *(v42 + 32) = v16;
    *(v42 + 40) = v41;
    *(v42 + 48) = 0x6D69546C61746F74;
    *(v42 + 56) = 0xE900000000000065;
    v43 = 5;
    goto LABEL_54;
  }
}

void static IARFFB_StepSection.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v69);
  if (!v2)
  {
    v3 = v70;
    if (v70 < 5)
    {
      goto LABEL_71;
    }

    v4 = *(&v69 + 1) + 4;
    v5 = BYTE8(v70);
    if (BYTE8(v70) == 1 && ((*(v73 + 24) + v4) & 1) != 0)
    {
      goto LABEL_89;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 4, 2);
    if (v6)
    {
      goto LABEL_91;
    }

    v7 = v73;
    v8 = *(v73 + 24);
    v9 = *(v8 + v4);
    if (*(v8 + v4))
    {
      v4 = v69 + v9;
      if (((v8 + v69 + v9) & 3) != 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      if (v10 == 1)
      {
        goto LABEL_12;
      }

      Verifier.rangeInBuffer(position:size:)(v69 + v9, 4);
      if (v13)
      {
        goto LABEL_91;
      }

      v14 = v4 + *(*(v7 + 24) + v4);
      if (v14 < 0)
      {
        v14 = -v14;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      sub_244306A30(&v70 + 8, v15);
    }

    if (v3 <= 6)
    {
      goto LABEL_71;
    }

    v16 = *(&v69 + 1) + 6;
    if (BYTE8(v70) == 1 && ((*(v73 + 24) + v16) & 1) != 0)
    {
      goto LABEL_31;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 6, 2);
    if (v17)
    {
      goto LABEL_56;
    }

    v18 = *(v73 + 24);
    v19 = *(v18 + v16);
    v20 = v69 + v19;
    if (*(v18 + v16))
    {
      v21 = v69 + v19;
    }

    else
    {
      v21 = 0;
    }

    if (v3 <= 8)
    {
      goto LABEL_51;
    }

    v16 = *(&v69 + 1) + 8;
    if (BYTE8(v70) == 1 && ((v18 + v16) & 1) != 0)
    {
LABEL_31:
      *&v63 = MEMORY[0x277D84C58];
      v22 = &qword_27EDDF260;
      v23 = &unk_24431B160;
LABEL_32:
      sub_2442C6564(v22, v23);
      v24 = sub_244312CD8();
      v26 = v25;
      sub_2442DDB84();
      swift_allocError();
      *v27 = v16;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      v28 = v65;
      v29 = v64;
      *(v27 + 24) = v63;
      *(v27 + 40) = v29;
      *(v27 + 56) = v28;
      *(v27 + 64) = 0;
LABEL_55:
      swift_willThrow();
      goto LABEL_56;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 8, 2);
    if (v30)
    {
      goto LABEL_56;
    }

    if (*(*(v73 + 24) + v16))
    {
      v16 = v69 + *(*(v73 + 24) + v16);
      if (v19)
      {
        v31 = BYTE8(v70);
        Verifier.rangeInBuffer(position:size:)(v20, 1);
        if (v32)
        {
          goto LABEL_56;
        }

        v33 = v73;
        v34 = *(v73 + 24);
        v35 = *(v34 + v20);
        if (*(v34 + v20))
        {
          if (v35 == 1)
          {
            if (((v34 + v16) & 3) != 0)
            {
              v44 = v31;
            }

            else
            {
              v44 = 0;
            }

            if (v44 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(v16, 4);
              if (v45)
              {
                goto LABEL_56;
              }

              v46 = v16 + *(*(v33 + 24) + v16);
              if (v46 < 0)
              {
                v46 = -v46;
              }

              if (v46 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              sub_244308590(&v70 + 8, v47);
              goto LABEL_71;
            }

            goto LABEL_62;
          }

          if (v35 == 2)
          {
            if (((v34 + v16) & 3) != 0)
            {
              v36 = v31;
            }

            else
            {
              v36 = 0;
            }

            if (v36 != 1)
            {
              Verifier.rangeInBuffer(position:size:)(v16, 4);
              if (!v37)
              {
                v38 = v16 + *(*(v33 + 24) + v16);
                if (v38 < 0)
                {
                  v38 = -v38;
                }

                if (v38 >= 0x7FFFFFFFFFFFFFFFLL)
                {
                  v39 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v38;
                }

                sub_2443088F4(&v70 + 8, v39);
                goto LABEL_71;
              }

LABEL_56:
              v67 = v73;
              *v68 = v74[0];
              *&v68[13] = *(v74 + 13);
              v63 = v69;
              v64 = v70;
              v65 = v71;
              v66 = v72;
              sub_2442F8C70(&v63);
              return;
            }

LABEL_62:
            *&v63 = MEMORY[0x277D84CC0];
            v22 = &qword_27EDDF268;
            v23 = qword_244316998;
            goto LABEL_32;
          }

          sub_2442DDB84();
          swift_allocError();
          *v42 = 5;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          *(v42 + 40) = 0u;
          *(v42 + 56) = 0;
          v43 = 7;
LABEL_54:
          *(v42 + 64) = v43;
          goto LABEL_55;
        }

LABEL_71:
        sub_2443070B0(0xAu, 0x7370657473, 0xE500000000000000, 1, sub_24430CD90);
        if (v3 < 13)
        {
          goto LABEL_87;
        }

        v4 = *(&v69 + 1) + 12;
        v48 = BYTE8(v70);
        if (BYTE8(v70) != 1 || ((*(v73 + 24) + v4) & 1) == 0)
        {
          Verifier.rangeInBuffer(position:size:)(*(&v69 + 1) + 12, 2);
          if (v49)
          {
            goto LABEL_91;
          }

          v50 = v73;
          v51 = *(v73 + 24);
          v52 = *(v51 + v4);
          if (*(v51 + v4))
          {
            v4 = v69 + v52;
            if (((v51 + v69 + v52) & 3) != 0)
            {
              v53 = v48;
            }

            else
            {
              v53 = 0;
            }

            if (v53 == 1)
            {
LABEL_12:
              *&v63 = MEMORY[0x277D84CC0];
              v11 = &qword_27EDDF268;
              v12 = qword_244316998;
LABEL_90:
              sub_2442C6564(v11, v12);
              v57 = sub_244312CD8();
              v59 = v58;
              sub_2442DDB84();
              swift_allocError();
              *v60 = v4;
              *(v60 + 8) = v57;
              *(v60 + 16) = v59;
              v61 = v65;
              v62 = v64;
              *(v60 + 24) = v63;
              *(v60 + 40) = v62;
              *(v60 + 56) = v61;
              *(v60 + 64) = 0;
              swift_willThrow();
LABEL_91:
              v67 = v73;
              *v68 = v74[0];
              *&v68[13] = *(v74 + 13);
              v63 = v69;
              v64 = v70;
              v65 = v71;
              v66 = v72;
LABEL_92:
              sub_2442F8C70(&v63);
              return;
            }

            Verifier.rangeInBuffer(position:size:)(v69 + v52, 4);
            if (v54)
            {
              goto LABEL_91;
            }

            v55 = v4 + *(*(v50 + 24) + v4);
            if (v55 < 0)
            {
              v55 = -v55;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v56 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v55;
            }

            sub_244307224(&v70 + 8, v56, sub_24430A950);
          }

LABEL_87:
          if (__OFSUB__(*(&v72 + 1), 1))
          {
            __break(1u);
            return;
          }

          --*(&v72 + 1);
          v67 = v73;
          *v68 = v74[0];
          *&v68[13] = *(v74 + 13);
          v63 = v69;
          v64 = v70;
          v65 = v71;
          v66 = v72;
          goto LABEL_92;
        }

LABEL_89:
        *&v63 = MEMORY[0x277D84C58];
        v11 = &qword_27EDDF260;
        v12 = &unk_24431B160;
        goto LABEL_90;
      }

      v41 = 0;
      v40 = 1;
    }

    else
    {
LABEL_51:
      if (!v19)
      {
        goto LABEL_71;
      }

      v16 = 0;
      v40 = 0;
      v41 = 1;
    }

    LOBYTE(v63) = v40;
    sub_2442DDB84();
    swift_allocError();
    *v42 = v21;
    *(v42 + 8) = v40;
    strcpy((v42 + 16), "totalTimeType");
    *(v42 + 30) = -4864;
    *(v42 + 32) = v16;
    *(v42 + 40) = v41;
    *(v42 + 48) = 0x6D69546C61746F74;
    *(v42 + 56) = 0xE900000000000065;
    v43 = 5;
    goto LABEL_54;
  }
}

BOOL IARFFB_Recipe.hasRecipeYield.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x19u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 24);
    v6 = v5 + 24;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

BOOL IARFFB_Recipe.hasIngredients.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x1Bu)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 26);
    v6 = v5 + 26;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

BOOL IARFFB_Recipe.hasStepSections.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x1Du)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 28);
    v6 = v5 + 28;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

BOOL IARFFB_Recipe.hasStructuredComponents.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x1Fu)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 30);
    v6 = v5 + 30;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t static IARFFB_Recipe.createRecipe(_:idOffset:schemaVersionOffset:titleOffset:descriptionOffset:prepTimeType:prepTimeOffset:cookTimeType:cookTimeOffset:totalTimeType:totalTimeOffset:recipeYieldVectorOffset:ingredientsVectorOffset:stepSectionsVectorOffset:structuredComponentsVectorOffset:languageOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, char *a6@<X5>, int *a7@<X6>, char *a8@<X7>, _DWORD *a9@<X8>, int *a10, char *a11, int *a12, int *a13, int *a14, int *a15, int *a16, int *a17)
{
  v18 = *a2;
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  v25 = *a10;
  v26 = *a11;
  v28 = *a12;
  v29 = *a13;
  v30 = *a14;
  v31 = *a15;
  v32 = *a16;
  v33 = *a17;
  at = _s11CookingData13IARFFB_RecipeV05startD0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(a1);
  v36 = v18;
  sub_244310A18(&v36, a1);
  v36 = v19;
  sub_244310BC4(&v36, a1);
  v36 = v20;
  sub_244310D70(&v36, a1);
  v36 = v21;
  sub_244310F1C(&v36, a1);
  LOBYTE(v36) = v22;
  _s11CookingData13IARFFB_RecipeV3add12prepTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v23;
  _s11CookingData13IARFFB_RecipeV3add8prepTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  LOBYTE(v36) = v24;
  _s11CookingData13IARFFB_RecipeV3add12cookTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v25;
  _s11CookingData13IARFFB_RecipeV3add8cookTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  LOBYTE(v36) = v26;
  _s11CookingData13IARFFB_RecipeV3add13totalTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v28;
  _s11CookingData13IARFFB_RecipeV3add9totalTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v29;
  _s11CookingData13IARFFB_RecipeV11addVectorOf11recipeYield_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v30;
  _s11CookingData13IARFFB_RecipeV11addVectorOf11ingredients_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v31;
  _s11CookingData13IARFFB_RecipeV11addVectorOf12stepSections_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v32;
  _s11CookingData13IARFFB_RecipeV11addVectorOf20structuredComponents_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  v36 = v33;
  _s11CookingData13IARFFB_RecipeV3add8language_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(&v36, a1);
  result = FlatBufferBuilder.endTable(at:)(at);
  *a9 = result;
  return result;
}

void static IARFFB_Recipe.verify<A>(_:at:of:)(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v108);
  if (!v2)
  {
    sub_244306DC0(4u, 25705, 0xE200000000000000, 1);
    sub_244306DC0(6u, 0x6556616D65686373, 0xED00006E6F697372, 1);
    sub_244306DC0(8u, 0x656C746974, 0xE500000000000000, 1);
    sub_244306DC0(0xAu, 0x7470697263736564, 0xEB000000006E6F69, 1);
    v4 = v109;
    if (v109 < 13)
    {
      goto LABEL_151;
    }

    v5 = *(&v108 + 1) + 12;
    if (BYTE8(v109) == 1 && ((*(v112 + 24) + v5) & 1) != 0)
    {
      goto LABEL_16;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 12, 2);
    if (v6)
    {
      goto LABEL_39;
    }

    v7 = *(v112 + 24);
    v8 = *(v7 + v5);
    v9 = v108 + v8;
    if (*(v7 + v5))
    {
      v10 = v108 + v8;
    }

    else
    {
      v10 = 0;
    }

    if (v4 <= 0xE)
    {
      goto LABEL_34;
    }

    v5 = *(&v108 + 1) + 14;
    if (BYTE8(v109) == 1 && ((v7 + v5) & 1) != 0)
    {
LABEL_16:
      *&v102 = MEMORY[0x277D84C58];
      v11 = &qword_27EDDF260;
      v12 = &unk_24431B160;
LABEL_17:
      sub_2442C6564(v11, v12);
      v13 = sub_244312CD8();
      v15 = v14;
      sub_2442DDB84();
      swift_allocError();
      *v16 = v5;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15;
      v17 = v104;
      v18 = v103;
      *(v16 + 24) = v102;
      *(v16 + 40) = v18;
      *(v16 + 56) = v17;
      *(v16 + 64) = 0;
LABEL_38:
      swift_willThrow();
      goto LABEL_39;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 14, 2);
    v3 = v19;
    if (v19)
    {
      goto LABEL_39;
    }

    v114 = v9;
    if (*(*(v112 + 24) + v5))
    {
      v5 = v108 + *(*(v112 + 24) + v5);
      if (v8)
      {
        Verifier.rangeInBuffer(position:size:)(v114, 1);
        v3 = v20;
        if (v20)
        {
          goto LABEL_39;
        }

        v21 = v112;
        v22 = *(v112 + 24);
        v23 = *(v22 + v114);
        if (!*(v22 + v114))
        {
          goto LABEL_53;
        }

        if (v23 == 1)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (v31)
            {
              goto LABEL_39;
            }

            v32 = v5 + *(*(v21 + 24) + v5);
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            sub_244308590(&v109 + 8, v33);
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        if (v23 == 2)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (!v24)
            {
              v25 = v5 + *(*(v21 + 24) + v5);
              if (v25 < 0)
              {
                v25 = -v25;
              }

              if (v25 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v25;
              }

              sub_2443088F4(&v109 + 8, v26);
LABEL_52:
              v3 = 0;
LABEL_53:
              if (v4 <= 0x10)
              {
                goto LABEL_151;
              }

              v34 = *(&v108 + 1) + 16;
              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 16, 2);
              v114 = v35;
              if (v35)
              {
                goto LABEL_39;
              }

              v36 = *(v112 + 24);
              v37 = *(v36 + v34);
              v3 = v108 + v37;
              if (*(v36 + v34))
              {
                v38 = v108 + v37;
              }

              else
              {
                v38 = 0;
              }

              if (v4 <= 0x12)
              {
                goto LABEL_81;
              }

              v34 = *(&v108 + 1) + 18;
              if (BYTE8(v109) == 1 && ((v36 + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 18, 2);
              v114 = v48;
              if (v48)
              {
                goto LABEL_39;
              }

              if (*(*(v112 + 24) + v34))
              {
                v34 = v108 + *(*(v112 + 24) + v34);
                if (v37)
                {
                  Verifier.rangeInBuffer(position:size:)(v3, 1);
                  v114 = v49;
                  if (v49)
                  {
                    goto LABEL_39;
                  }

                  v50 = v112;
                  v51 = *(v112 + 24);
                  v52 = *(v51 + v3);
                  if (*(v51 + v3))
                  {
                    if (v52 == 1)
                    {
                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v63;
                      if (v63)
                      {
                        goto LABEL_39;
                      }

                      v64 = v34 + *(*(v50 + 24) + v34);
                      if (v64 < 0)
                      {
                        v64 = -v64;
                      }

                      if (v64 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v65 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v65 = v64;
                      }

                      v56 = v114;
                      sub_244308590(&v109 + 8, v65);
                    }

                    else
                    {
                      if (v52 != 2)
                      {
LABEL_129:
                        sub_2442DDB84();
                        v44 = swift_allocError();
                        *v59 = 5;
                        *(v59 + 8) = 0u;
                        *(v59 + 24) = 0u;
                        *(v59 + 40) = 0u;
                        *(v59 + 56) = 0;
                        v62 = 7;
                        goto LABEL_85;
                      }

                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v53;
                      if (v53)
                      {
                        goto LABEL_39;
                      }

                      v54 = v34 + *(*(v50 + 24) + v34);
                      if (v54 < 0)
                      {
                        v54 = -v54;
                      }

                      if (v54 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v55 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v55 = v54;
                      }

                      v56 = v114;
                      sub_2443088F4(&v109 + 8, v55);
                    }

                    v114 = v56;
                  }

LABEL_100:
                  if (v4 <= 0x14)
                  {
                    goto LABEL_151;
                  }

                  v34 = *(&v108 + 1) + 20;
                  if (BYTE8(v109) != 1 || ((*(v112 + 24) + v34) & 1) == 0)
                  {
                    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 20, 2);
                    v114 = v66;
                    if (v66)
                    {
                      goto LABEL_39;
                    }

                    v67 = *(v112 + 24);
                    v68 = *(v67 + v34);
                    v3 = v108 + v68;
                    if (*(v67 + v34))
                    {
                      v69 = v108 + v68;
                    }

                    else
                    {
                      v69 = 0;
                    }

                    if (v4 <= 0x16)
                    {
                      goto LABEL_126;
                    }

                    v34 = *(&v108 + 1) + 22;
                    if (BYTE8(v109) != 1 || ((v67 + v34) & 1) == 0)
                    {
                      Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 22, 2);
                      v114 = v70;
                      if (v70)
                      {
                        goto LABEL_39;
                      }

                      if (*(*(v112 + 24) + v34))
                      {
                        v34 = v108 + *(*(v112 + 24) + v34);
                        if (v68)
                        {
                          Verifier.rangeInBuffer(position:size:)(v3, 1);
                          v114 = v71;
                          if (v71)
                          {
                            goto LABEL_39;
                          }

                          v72 = v112;
                          v73 = *(v112 + 24);
                          v74 = *(v73 + v3);
                          if (!*(v73 + v3))
                          {
LABEL_141:
                            if (v4 > 0x18)
                            {
                              v3 = *(&v108 + 1) + 24;
                              v84 = BYTE8(v109);
                              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v3) & 1) != 0)
                              {
LABEL_160:
                                *&v102 = MEMORY[0x277D84C58];
                                v90 = &qword_27EDDF260;
                                v91 = &unk_24431B160;
                                goto LABEL_161;
                              }

                              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 24, 2);
                              if (v85)
                              {
                                goto LABEL_3;
                              }

                              v86 = v112;
                              v87 = *(v112 + 24);
                              v88 = *(v87 + v3);
                              if (*(v87 + v3))
                              {
                                v3 = v108 + v88;
                                if (((v87 + v108 + v88) & 3) != 0)
                                {
                                  v89 = v84;
                                }

                                else
                                {
                                  v89 = 0;
                                }

                                if (v89 == 1)
                                {
                                  *&v102 = MEMORY[0x277D84CC0];
                                  v90 = &qword_27EDDF268;
                                  v91 = qword_244316998;
LABEL_161:
                                  sub_2442C6564(v90, v91);
                                  v93 = sub_244312CD8();
                                  v95 = v94;
                                  sub_2442DDB84();
                                  swift_allocError();
                                  *v96 = v3;
                                  *(v96 + 8) = v93;
                                  *(v96 + 16) = v95;
                                  v97 = v104;
                                  v98 = v103;
                                  *(v96 + 24) = v102;
                                  *(v96 + 40) = v98;
                                  *(v96 + 56) = v97;
                                  *(v96 + 64) = 0;
                                  swift_willThrow();
LABEL_3:
                                  v106 = v112;
                                  *v107 = v113[0];
                                  *&v107[13] = *(v113 + 13);
                                  v102 = v108;
                                  v103 = v109;
                                  v104 = v110;
                                  v105 = v111;
LABEL_4:
                                  sub_2442F8C70(&v102);
                                  return;
                                }

                                Verifier.rangeInBuffer(position:size:)(v108 + v88, 4);
                                if (v99)
                                {
                                  goto LABEL_3;
                                }

                                v100 = v3 + *(*(v86 + 24) + v3);
                                if (v100 < 0)
                                {
                                  v100 = -v100;
                                }

                                if (v100 >= 0x7FFFFFFFFFFFFFFFLL)
                                {
                                  v101 = 0x7FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v101 = v100;
                                }

                                sub_244307224(&v109 + 8, v101, sub_244309EB8);
                              }
                            }

LABEL_151:
                            sub_2443070B0(0x1Au, 0x6569646572676E69, 0xEB0000000073746ELL, 1, sub_24430A950);
                            sub_2443070B0(0x1Cu, 0x7463655370657473, 0xEC000000736E6F69, 1, sub_24430DB0C);
                            if (v4 >= 31)
                            {
                              v3 = *(&v108 + 1) + 30;
                              sub_2442E0E9C(*(&v108 + 1) + 30);
                              Verifier.rangeInBuffer(position:size:)(v3, 2);
                              if (v92)
                              {
                                goto LABEL_3;
                              }

                              if (*(*(v112 + 24) + v3))
                              {
                                sub_244306980(&v109 + 8, v108 + *(*(v112 + 24) + v3));
                              }
                            }

                            sub_244306DC0(0x20u, 0x65676175676E616CLL, 0xE800000000000000, 1);
                            if (!__OFSUB__(*(&v111 + 1), 1))
                            {
                              --*(&v111 + 1);
                              v106 = v112;
                              *v107 = v113[0];
                              *&v107[13] = *(v113 + 13);
                              v102 = v108;
                              v103 = v109;
                              v104 = v110;
                              v105 = v111;
                              goto LABEL_4;
                            }

                            __break(1u);
                            goto LABEL_160;
                          }

                          if (v74 == 1)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v81;
                              if (v81)
                              {
                                goto LABEL_39;
                              }

                              v82 = v34 + *(*(v72 + 24) + v34);
                              if (v82 < 0)
                              {
                                v82 = -v82;
                              }

                              if (v82 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v83 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v83 = v82;
                              }

                              v78 = v114;
                              sub_244308590(&v109 + 8, v83);
LABEL_140:
                              v114 = v78;
                              goto LABEL_141;
                            }

LABEL_91:
                            *&v102 = MEMORY[0x277D84CC0];
                            v39 = &qword_27EDDF268;
                            v40 = qword_244316998;
                            goto LABEL_64;
                          }

                          if (v74 == 2)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v75;
                              if (v75)
                              {
                                goto LABEL_39;
                              }

                              v76 = v34 + *(*(v72 + 24) + v34);
                              if (v76 < 0)
                              {
                                v76 = -v76;
                              }

                              if (v76 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v77 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v77 = v76;
                              }

                              v78 = v114;
                              sub_2443088F4(&v109 + 8, v77);
                              goto LABEL_140;
                            }

                            goto LABEL_91;
                          }

                          goto LABEL_129;
                        }

                        v80 = 0;
                        v79 = 1;
                        goto LABEL_128;
                      }

LABEL_126:
                      if (!v68)
                      {
                        goto LABEL_141;
                      }

                      v34 = 0;
                      v79 = 0;
                      v80 = 1;
LABEL_128:
                      LOBYTE(v102) = v79;
                      sub_2442DDB84();
                      v44 = swift_allocError();
                      *v59 = v69;
                      *(v59 + 8) = v79;
                      v60 = 0x6D69546C61746F74;
                      strcpy((v59 + 16), "totalTimeType");
                      *(v59 + 30) = -4864;
                      *(v59 + 32) = v34;
                      *(v59 + 40) = v80;
                      v61 = 0xE900000000000065;
                      goto LABEL_84;
                    }
                  }

LABEL_63:
                  *&v102 = MEMORY[0x277D84C58];
                  v39 = &qword_27EDDF260;
                  v40 = &unk_24431B160;
LABEL_64:
                  sub_2442C6564(v39, v40);
                  v41 = sub_244312CD8();
                  v43 = v42;
                  sub_2442DDB84();
                  v44 = swift_allocError();
                  *v45 = v34;
                  *(v45 + 8) = v41;
                  *(v45 + 16) = v43;
                  v46 = v104;
                  v47 = v103;
                  *(v45 + 24) = v102;
                  *(v45 + 40) = v47;
                  *(v45 + 56) = v46;
                  *(v45 + 64) = 0;
LABEL_86:
                  v114 = v44;
                  swift_willThrow();
                  goto LABEL_39;
                }

                v58 = 0;
                v57 = 1;
              }

              else
              {
LABEL_81:
                if (!v37)
                {
                  goto LABEL_100;
                }

                v34 = 0;
                v57 = 0;
                v58 = 1;
              }

              LOBYTE(v102) = v57;
              sub_2442DDB84();
              v44 = swift_allocError();
              *v59 = v38;
              *(v59 + 8) = v57;
              v60 = 0x656D69546B6F6F63;
              strcpy((v59 + 16), "cookTimeType");
              *(v59 + 29) = 0;
              *(v59 + 30) = -5120;
              *(v59 + 32) = v34;
              *(v59 + 40) = v58;
              v61 = 0xE800000000000000;
LABEL_84:
              *(v59 + 48) = v60;
              *(v59 + 56) = v61;
              v62 = 5;
LABEL_85:
              *(v59 + 64) = v62;
              goto LABEL_86;
            }

LABEL_39:
            v106 = v112;
            *v107 = v113[0];
            *&v107[13] = *(v113 + 13);
            v102 = v108;
            v103 = v109;
            v104 = v110;
            v105 = v111;
            sub_2442F8C70(&v102);
            return;
          }

LABEL_43:
          *&v102 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
          goto LABEL_17;
        }

        sub_2442DDB84();
        swift_allocError();
        *v29 = 5;
        *(v29 + 8) = 0u;
        *(v29 + 24) = 0u;
        *(v29 + 40) = 0u;
        *(v29 + 56) = 0;
        v30 = 7;
LABEL_37:
        *(v29 + 64) = v30;
        goto LABEL_38;
      }

      v28 = 0;
      v27 = 1;
    }

    else
    {
LABEL_34:
      if (!v8)
      {
        goto LABEL_53;
      }

      v5 = 0;
      v27 = 0;
      v28 = 1;
    }

    LOBYTE(v102) = v27;
    sub_2442DDB84();
    swift_allocError();
    *v29 = v10;
    *(v29 + 8) = v27;
    strcpy((v29 + 16), "prepTimeType");
    *(v29 + 29) = 0;
    *(v29 + 30) = -5120;
    *(v29 + 32) = v5;
    *(v29 + 40) = v28;
    *(v29 + 48) = 0x656D695470657270;
    *(v29 + 56) = 0xE800000000000000;
    v30 = 5;
    goto LABEL_37;
  }
}

void _s11CookingData19IARFFB_DurationSpanV3add4type_yAA0c1_dE4TypeO_AA17FlatBufferBuilderVztFZ_0(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 57) != 1)
  {
LABEL_17:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v3 = a2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a2[1];
  if (*(v4 + 32) < v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v3;
  v5 = v3 + 1;
  v6 = *(v4 + 32);
  if (v6 <= v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v3, a2[3]);
    v6 = *(v4 + 32);
  }

  *(*(v4 + 24) + v6 + ~v3) = 0;
  a2[2] = v5;
  if (v3 == 0xFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
  }

  v7 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = v8 + *(v7 + 80);
      *v9 = v5;
      *(v9 + 4) = 8;
    }

    *(v7 + 72) = vaddq_s64(*(v7 + 72), xmmword_244316360);
    v10 = *(v7 + 64);
    if (v10 <= 8)
    {
      LOWORD(v10) = 8;
    }

    *(v7 + 64) = v10;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_24430FAE4(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 57) != 1)
  {
LABEL_17:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v3 = a2[2];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a2[1];
  if (*(v4 + 32) < v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v3;
  v5 = v3 + 1;
  v6 = *(v4 + 32);
  if (v6 <= v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v3, a2[3]);
    v6 = *(v4 + 32);
  }

  *(*(v4 + 24) + v6 + ~v3) = 0;
  a2[2] = v5;
  if (v3 == 0xFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
  }

  v7 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v8 = *(v7 + 32);
    if (v8)
    {
      v9 = v8 + *(v7 + 80);
      *v9 = v5;
      *(v9 + 4) = 6;
    }

    *(v7 + 72) = vaddq_s64(*(v7 + 72), xmmword_244316360);
    v10 = *(v7 + 64);
    if (v10 <= 6)
    {
      LOWORD(v10) = 6;
    }

    *(v7 + 64) = v10;
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_24430FC3C(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 8)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 8;
    *(v2 + 48) = 0;
    *(v2 + 56) = 8;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void _s11CookingData18IARFFB_MeasurementV3add8quantity_ySf_AA17FlatBufferBuilderVztFZ_0(uint64_t *a1, float a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == 0.0 && *(a1 + 57) != 1)
  {
LABEL_18:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a1[8] <= 3)
  {
    a1[8] = 4;
    a1[3] = 4;
  }

  v4 = a1[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = -*(a1 + 16) & 3;
  v6 = v5 + v4;
  v7 = a1[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a1[3]);
  }

  a1[2] = v6;
  v8 = v6 + 4;
  v9 = *(v7 + 32);
  if (v9 < (v6 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v6, a1[3]);
    v9 = *(v7 + 32);
  }

  *(*(v7 + 24) + v9 - v6 - 4) = a2;
  a1[2] = v8;
  if (v6 > 0xFFFFFFFB)
  {
LABEL_21:
    __break(1u);
  }

  v10 = *a1;
  if ((*(*a1 + 48) & 1) == 0)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = v11 + *(v10 + 80);
      *v12 = v8;
      *(v12 + 4) = 4;
    }

    *(v10 + 72) = vaddq_s64(*(v10 + 72), xmmword_244316360);
    v13 = *(v10 + 64);
    if (v13 <= 4)
    {
      LOWORD(v13) = 4;
    }

    *(v10 + 64) = v13;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData18IARFFB_MeasurementV3add11maxQuantity_ySf_AA17FlatBufferBuilderVztFZ_0(uint64_t *a1, float a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == 0.0 && *(a1 + 57) != 1)
  {
LABEL_18:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a1[8] <= 3)
  {
    a1[8] = 4;
    a1[3] = 4;
  }

  v4 = a1[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = -*(a1 + 16) & 3;
  v6 = v5 + v4;
  v7 = a1[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a1[3]);
  }

  a1[2] = v6;
  v8 = v6 + 4;
  v9 = *(v7 + 32);
  if (v9 < (v6 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v6, a1[3]);
    v9 = *(v7 + 32);
  }

  *(*(v7 + 24) + v9 - v6 - 4) = a2;
  a1[2] = v8;
  if (v6 > 0xFFFFFFFB)
  {
LABEL_21:
    __break(1u);
  }

  v10 = *a1;
  if ((*(*a1 + 48) & 1) == 0)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = v11 + *(v10 + 80);
      *v12 = v8;
      *(v12 + 4) = 10;
    }

    *(v10 + 72) = vaddq_s64(*(v10 + 72), xmmword_244316360);
    v13 = *(v10 + 64);
    if (v13 <= 0xA)
    {
      LOWORD(v13) = 10;
    }

    *(v10 + 64) = v13;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData23IARFFB_InTextIngredientV3add9textRange_yAA0c1_eI0VSg_AA17FlatBufferBuilderVztFZ_0(int *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
LABEL_17:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 1)
  {
    a2[8] = 2;
    a2[3] = 2;
  }

  v3 = a2[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = *a1;
  v5 = (v3 & 1) + v3;
  v6 = a2[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v3 & 1, v3, a2[3]);
  }

  a2[2] = v5;
  v7 = v5 + 4;
  v8 = *(v6 + 32);
  if (v8 < v5 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v5, a2[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 - v5 - 4) = v4;
  a2[2] = v7;
  if (v5 > 0xFFFFFFFB)
  {
LABEL_20:
    __break(1u);
  }

  v9 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = v10 + *(v9 + 80);
      *v11 = v7;
      *(v11 + 4) = 6;
    }

    *(v9 + 72) = vaddq_s64(*(v9 + 72), xmmword_244316360);
    v12 = *(v9 + 64);
    if (v12 <= 6)
    {
      LOWORD(v12) = 6;
    }

    *(v9 + 64) = v12;
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_24431011C(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_2443101BC(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_24431025C(int *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
LABEL_17:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 1)
  {
    a2[8] = 2;
    a2[3] = 2;
  }

  v3 = a2[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = *a1;
  v5 = (v3 & 1) + v3;
  v6 = a2[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v3 & 1, v3, a2[3]);
  }

  a2[2] = v5;
  v7 = v5 + 4;
  v8 = *(v6 + 32);
  if (v8 < v5 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v5, a2[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 - v5 - 4) = v4;
  a2[2] = v7;
  if (v5 > 0xFFFFFFFB)
  {
LABEL_20:
    __break(1u);
  }

  v9 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = v10 + *(v9 + 80);
      *v11 = v7;
      *(v11 + 4) = 4;
    }

    *(v9 + 72) = vaddq_s64(*(v9 + 72), xmmword_244316360);
    v12 = *(v9 + 64);
    if (v12 <= 4)
    {
      LOWORD(v12) = 4;
    }

    *(v9 + 64) = v12;
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_2443103BC(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 32)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 32;
    *(v2 + 48) = 0;
    *(v2 + 56) = 32;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_24431045C(char *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1 && *(a2 + 57) != 1)
  {
LABEL_18:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v4 = a2[2];
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2[1];
  if (*(v5 + 32) < v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v4;
  v6 = v4 + 1;
  v7 = *(v5 + 32);
  if (v7 <= v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v4, a2[3]);
    v7 = *(v5 + 32);
  }

  *(*(v5 + 24) + v7 + ~v4) = v3;
  a2[2] = v6;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  v8 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 + *(v8 + 80);
      *v10 = v6;
      *(v10 + 4) = 4;
    }

    *(v8 + 72) = vaddq_s64(*(v8 + 72), xmmword_244316360);
    v11 = *(v8 + 64);
    if (v11 <= 4)
    {
      LOWORD(v11) = 4;
    }

    *(v8 + 64) = v11;
    goto LABEL_18;
  }

  __break(1u);
}

unint64_t _s11CookingData18IARFFB_StepSectionV05startdE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 40)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 40;
    *(v2 + 48) = 0;
    *(v2 + 56) = 40;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_244310664(char *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1 && *(a2 + 57) != 1)
  {
LABEL_18:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v4 = a2[2];
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2[1];
  if (*(v5 + 32) < v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v4;
  v6 = v4 + 1;
  v7 = *(v5 + 32);
  if (v7 <= v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v4, a2[3]);
    v7 = *(v5 + 32);
  }

  *(*(v5 + 24) + v7 + ~v4) = v3;
  a2[2] = v6;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  v8 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 + *(v8 + 80);
      *v10 = v6;
      *(v10 + 4) = 6;
    }

    *(v8 + 72) = vaddq_s64(*(v8 + 72), xmmword_244316360);
    v11 = *(v8 + 64);
    if (v11 <= 6)
    {
      LOWORD(v11) = 6;
    }

    *(v8 + 64) = v11;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData18IARFFB_StepSectionV11addVectorOf11ingredients_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 12;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0xC)
    {
      LOWORD(v16) = 12;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t _s11CookingData13IARFFB_RecipeV05startD0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 120)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x245D5F2C0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 120;
    *(v2 + 48) = 0;
    *(v2 + 56) = 120;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_244310A18(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 4;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_244310BC4(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 6;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 6)
    {
      LOWORD(v16) = 6;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_244310D70(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 8;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 8)
    {
      LOWORD(v16) = 8;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_244310F1C(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 10;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0xA)
    {
      LOWORD(v16) = 10;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add12prepTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(char *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1 && *(a2 + 57) != 1)
  {
LABEL_18:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v4 = a2[2];
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2[1];
  if (*(v5 + 32) < v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v4;
  v6 = v4 + 1;
  v7 = *(v5 + 32);
  if (v7 <= v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v4, a2[3]);
    v7 = *(v5 + 32);
  }

  *(*(v5 + 24) + v7 + ~v4) = v3;
  a2[2] = v6;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  v8 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 + *(v8 + 80);
      *v10 = v6;
      *(v10 + 4) = 12;
    }

    *(v8 + 72) = vaddq_s64(*(v8 + 72), xmmword_244316360);
    v11 = *(v8 + 64);
    if (v11 <= 0xC)
    {
      LOWORD(v11) = 12;
    }

    *(v8 + 64) = v11;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add8prepTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 14;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0xE)
    {
      LOWORD(v16) = 14;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add12cookTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(char *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1 && *(a2 + 57) != 1)
  {
LABEL_18:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v4 = a2[2];
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2[1];
  if (*(v5 + 32) < v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v4;
  v6 = v4 + 1;
  v7 = *(v5 + 32);
  if (v7 <= v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v4, a2[3]);
    v7 = *(v5 + 32);
  }

  *(*(v5 + 24) + v7 + ~v4) = v3;
  a2[2] = v6;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  v8 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 + *(v8 + 80);
      *v10 = v6;
      *(v10 + 4) = 16;
    }

    *(v8 + 72) = vaddq_s64(*(v8 + 72), xmmword_244316360);
    v11 = *(v8 + 64);
    if (v11 <= 0x10)
    {
      LOWORD(v11) = 16;
    }

    *(v8 + 64) = v11;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add8cookTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 18;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x12)
    {
      LOWORD(v16) = 18;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add13totalTimeType_yAA0C9_DurationO_AA17FlatBufferBuilderVztFZ_0(char *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!*a1 && *(a2 + 57) != 1)
  {
LABEL_18:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2[8] <= 0)
  {
    a2[8] = 1;
    a2[3] = 1;
  }

  v4 = a2[2];
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2[1];
  if (*(v5 + 32) < v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, a2[2], a2[3]);
  }

  a2[2] = v4;
  v6 = v4 + 1;
  v7 = *(v5 + 32);
  if (v7 <= v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v4, a2[3]);
    v7 = *(v5 + 32);
  }

  *(*(v5 + 24) + v7 + ~v4) = v3;
  a2[2] = v6;
  if (v4 == 0xFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
  }

  v8 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = v9 + *(v8 + 80);
      *v10 = v6;
      *(v10 + 4) = 20;
    }

    *(v8 + 72) = vaddq_s64(*(v8 + 72), xmmword_244316360);
    v11 = *(v8 + 64);
    if (v11 <= 0x14)
    {
      LOWORD(v11) = 20;
    }

    *(v8 + 64) = v11;
    goto LABEL_18;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add9totalTime_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 22;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x16)
    {
      LOWORD(v16) = 22;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV11addVectorOf11recipeYield_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 24;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x18)
    {
      LOWORD(v16) = 24;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV11addVectorOf11ingredients_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 26;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x1A)
    {
      LOWORD(v16) = 26;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV11addVectorOf12stepSections_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 28;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x1C)
    {
      LOWORD(v16) = 28;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV11addVectorOf20structuredComponents_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 30;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x1E)
    {
      LOWORD(v16) = 30;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void _s11CookingData13IARFFB_RecipeV3add8language_yAA6OffsetV_AA17FlatBufferBuilderVztFZ_0(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 32;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_244316360);
    v16 = *(v13 + 64);
    if (v16 <= 0x20)
    {
      LOWORD(v16) = 32;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t sub_244312264()
{
  result = qword_27EDDFEC8;
  if (!qword_27EDDFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEC8);
  }

  return result;
}

unint64_t sub_2443122D4()
{
  result = qword_27EDDFED0;
  if (!qword_27EDDFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFED0);
  }

  return result;
}

unint64_t sub_24431232C()
{
  result = qword_27EDDFED8;
  if (!qword_27EDDFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFED8);
  }

  return result;
}

unint64_t sub_244312384()
{
  result = qword_27EDDFEE0;
  if (!qword_27EDDFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEE0);
  }

  return result;
}

unint64_t sub_2443123DC()
{
  result = qword_27EDDFEE8;
  if (!qword_27EDDFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEE8);
  }

  return result;
}

unint64_t sub_244312434()
{
  result = qword_27EDDFEF0;
  if (!qword_27EDDFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEF0);
  }

  return result;
}

unint64_t sub_24431248C()
{
  result = qword_27EDDFEF8;
  if (!qword_27EDDFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFEF8);
  }

  return result;
}

unint64_t sub_2443124E4()
{
  result = qword_27EDDFF00;
  if (!qword_27EDDFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFF00);
  }

  return result;
}

unint64_t sub_24431253C()
{
  result = qword_27EDDFF08;
  if (!qword_27EDDFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDFF08);
  }

  return result;
}

uint64_t sub_244312AC4()
{
  v0 = sub_244312C38();
  sub_2442D4100(v0, qword_27EDED120);
  sub_2442D40C8(v0, qword_27EDED120);
  return sub_244312C28();
}