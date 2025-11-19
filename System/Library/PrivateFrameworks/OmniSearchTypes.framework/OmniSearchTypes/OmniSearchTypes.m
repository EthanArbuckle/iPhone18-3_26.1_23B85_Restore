uint64_t sub_25DC67D18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_1();
  result = (*(v4 + 88))();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_25DC67DEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOs0K3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisExtractionCandidate.AppEntityCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t _s15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOs0J3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25DC67EB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25DC682BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x694C746C75736572;
  }
}

uint64_t sub_25DC6834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TypedValue();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_25DC683D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TypedValue();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DC685D8()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
  OUTLINED_FUNCTION_72(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = v4[5];
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
    OUTLINED_FUNCTION_72(v9);
    if (*(v10 + 84) == v5)
    {
      v8 = v4[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
      OUTLINED_FUNCTION_72(v11);
      if (*(v12 + 84) == v5)
      {
        v8 = v4[7];
      }

      else
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
        OUTLINED_FUNCTION_72(v13);
        if (*(v14 + 84) == v5)
        {
          v8 = v4[8];
        }

        else
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
          OUTLINED_FUNCTION_72(v15);
          if (*(v16 + 84) == v5)
          {
            v8 = v4[9];
          }

          else
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
            OUTLINED_FUNCTION_72(v17);
            if (*(v18 + 84) == v5)
            {
              v8 = v4[10];
            }

            else
            {
              v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
              OUTLINED_FUNCTION_72(v19);
              if (*(v20 + 84) == v5)
              {
                v8 = v4[11];
              }

              else
              {
                v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
                OUTLINED_FUNCTION_72(v21);
                if (*(v22 + 84) == v5)
                {
                  v8 = v4[12];
                }

                else
                {
                  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
                  OUTLINED_FUNCTION_72(v23);
                  if (*(v24 + 84) == v5)
                  {
                    v8 = v4[13];
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
                    v8 = v4[14];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = OUTLINED_FUNCTION_118(v8);

  return __swift_getEnumTagSinglePayload(v25, v26, v27);
}

void sub_25DC688FC()
{
  OUTLINED_FUNCTION_99();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20RentalCarReservationVSgMd, &_s15OmniSearchTypes20RentalCarReservationVSgMR);
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22TicketedTransportationVSgMd, &_s15OmniSearchTypes22TicketedTransportationVSgMR);
      OUTLINED_FUNCTION_72(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[6];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes12TicketedShowVSgMd, &_s15OmniSearchTypes12TicketedShowVSgMR);
        OUTLINED_FUNCTION_72(v12);
        if (*(v13 + 84) == v6)
        {
          v9 = v5[7];
        }

        else
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes11AppointmentVSgMd, &_s15OmniSearchTypes11AppointmentVSgMR);
          OUTLINED_FUNCTION_72(v14);
          if (*(v15 + 84) == v6)
          {
            v9 = v5[8];
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes5PartyVSgMd, &_s15OmniSearchTypes5PartyVSgMR);
            OUTLINED_FUNCTION_72(v16);
            if (*(v17 + 84) == v6)
            {
              v9 = v5[9];
            }

            else
            {
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes4TripVSgMd, &_s15OmniSearchTypes4TripVSgMR);
              OUTLINED_FUNCTION_72(v18);
              if (*(v19 + 84) == v6)
              {
                v9 = v5[10];
              }

              else
              {
                v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes17FlightReservationVSgMd, &_s15OmniSearchTypes17FlightReservationVSgMR);
                OUTLINED_FUNCTION_72(v20);
                if (*(v21 + 84) == v6)
                {
                  v9 = v5[11];
                }

                else
                {
                  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16HotelReservationVSgMd, &_s15OmniSearchTypes16HotelReservationVSgMR);
                  OUTLINED_FUNCTION_72(v22);
                  if (*(v23 + 84) == v6)
                  {
                    v9 = v5[12];
                  }

                  else
                  {
                    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21RestaurantReservationVSgMd, &_s15OmniSearchTypes21RestaurantReservationVSgMR);
                    OUTLINED_FUNCTION_72(v24);
                    if (*(v25 + 84) == v6)
                    {
                      v9 = v5[13];
                    }

                    else
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes13ShippingOrderVSgMd, &_s15OmniSearchTypes13ShippingOrderVSgMR);
                      v9 = v5[14];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v26 = OUTLINED_FUNCTION_118(v9);

    __swift_storeEnumTagSinglePayload(v26, v27, v0, v28);
  }
}

uint64_t sub_25DC68C30()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  v4 = v1;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = *(v4 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = *(v4 + 48);
  }

  v9 = OUTLINED_FUNCTION_118(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_25DC68CF4()
{
  OUTLINED_FUNCTION_99();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v9 = *(v5 + 48);
    }

    v10 = OUTLINED_FUNCTION_118(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_25DC6935C()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 140));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC693D0()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 140));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC69444()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 116));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC694B8()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 116));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6952C()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 120);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v6 = *(v1 + 128);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC695EC()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 120);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v5 = *(v0 + 128);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC696AC()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 112));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC69720()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 112));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC69794()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 100);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 112);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC69854()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 100);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 112);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC69914()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 92);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 108);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC699D4()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 92);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 108);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC69A94()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[14];
  }

  else
  {
    v7 = type metadata accessor for DateComponents();
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[19];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v6 = v1[39];
    }
  }

  v9 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_25DC69B94()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[14];
    }

    else
    {
      v6 = type metadata accessor for DateComponents();
      OUTLINED_FUNCTION_72(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[19];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v5 = v0[39];
      }
    }

    v8 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_25DC69C9C()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 96);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 104);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC69D5C()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 96);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 104);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC6A278()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[12];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[21];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_72(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[22];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
        OUTLINED_FUNCTION_72(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[23];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
          v6 = v1[24];
        }
      }
    }
  }

  v13 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_25DC6A41C()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[12];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[21];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[22];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[23];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v5 = v0[24];
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_25DC6A5C0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[11];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[12];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[20];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[21];
        }

        else
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72(v13);
          if (*(v14 + 84) == v0)
          {
            v6 = v1[22];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v6 = v1[23];
          }
        }
      }
    }
  }

  v15 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v15, v16, v17);
}

void sub_25DC6A7B0()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[11];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      OUTLINED_FUNCTION_72(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[12];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
        OUTLINED_FUNCTION_72(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[20];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
          OUTLINED_FUNCTION_72(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[21];
          }

          else
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
            OUTLINED_FUNCTION_72(v12);
            if (*(v13 + 84) == v1)
            {
              v5 = v0[22];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
              v5 = v0[23];
            }
          }
        }
      }
    }

    v14 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

uint64_t sub_25DC6A9A0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[11];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    OUTLINED_FUNCTION_72(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[17];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
      OUTLINED_FUNCTION_72(v9);
      if (*(v10 + 84) == v0)
      {
        v6 = v1[18];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
        OUTLINED_FUNCTION_72(v11);
        if (*(v12 + 84) == v0)
        {
          v6 = v1[19];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
          v6 = v1[20];
        }
      }
    }
  }

  v13 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_25DC6AB44()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[11];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
      OUTLINED_FUNCTION_72(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[17];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
        OUTLINED_FUNCTION_72(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[18];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
          OUTLINED_FUNCTION_72(v10);
          if (*(v11 + 84) == v1)
          {
            v5 = v0[19];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
            v5 = v0[20];
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_25DC6ACE8()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC6AD5C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6ADD0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 48);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC6AE90()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 48);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC6AF50()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 52);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC6B010()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 52);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC6B0D0()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC6B190()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC6B278()
{
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_72(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_118(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25DC6B338()
{
  OUTLINED_FUNCTION_99();
  if (v2)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_399();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_72(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_187(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_25DC6B3F8()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = OUTLINED_FUNCTION_118(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_25DC6B46C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v3 = OUTLINED_FUNCTION_187(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_25DC6B778(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UTType();
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_25DC6B7F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UTType();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t one-time initialization function for typeDisplayRepresentation()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v5, static MemoryCreationModelType.typeDisplayRepresentation);
  __swift_project_value_buffer(v5, static MemoryCreationModelType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v6, static SearchResultType.typeDisplayRepresentation);
  __swift_project_value_buffer(v6, static SearchResultType.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t static MemoryCreationModelType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static MemoryCreationModelType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static MemoryCreationModelType.caseDisplayRepresentations.getter()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtMd, &_s15OmniSearchTypes23MemoryCreationModelTypeO_10AppIntents21DisplayRepresentationVtMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DCE1C90;
  v8 = v7 + v6;
  v9 = v4[14];
  *(v7 + v6) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  DisplayRepresentation.init(title:subtitle:image:)();
  v17 = v4[14];
  *(v8 + v5) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v13);
  DisplayRepresentation.init(title:subtitle:image:)();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType()
{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType;
  if (!lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationModelType and conformance MemoryCreationModelType);
  }

  return result;
}

uint64_t static MemoryCreationModelType.modelTypeForBool(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = (result & 1) == 0;
  }

  *a2 = v2;
  return result;
}

OmniSearchTypes::MemoryCreationModelType_optional __swiftcall MemoryCreationModelType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MemoryCreationModelType.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

uint64_t MemoryCreationModelType.rawValue.getter()
{
  if (*v0)
  {
    return 1769496941;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MemoryCreationModelType@<X0>(uint64_t *a1@<X8>)
{
  result = MemoryCreationModelType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance MemoryCreationModelType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MemoryCreationModelType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationModelType and conformance MemoryCreationModelType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t default argument 1 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)()
{
  type metadata accessor for JSONEncoder.OutputFormatting();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A](&lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A], &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t default argument 2 of JSONEncoder.init(dateEncodingStrategy:outputFormatting:keyEncodingStrategy:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CC8740];
  v3 = type metadata accessor for JSONEncoder.KeyEncodingStrategy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSDecimal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for NSDecimal(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::Int MemoryCreationQUError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUError()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

uint64_t MemoryCreationQUParse.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MemoryCreationQUParse.__allocating_init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char *a6)
{
  OUTLINED_FUNCTION_11();
  result = swift_allocObject();
  v13 = *a6;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 41) = a5;
  *(result + 42) = v13;
  return result;
}

uint64_t MemoryCreationQUParse.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char *a6)
{
  v7 = *a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 41) = a5;
  *(v6 + 42) = v7;
  return v6;
}

uint64_t MemoryCreationQUParse.encode()()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v3, v4, v5);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

uint64_t static MemoryCreationQUParse.makeFrom(data:)()
{
  v1 = type metadata accessor for JSONDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for MemoryCreationQUParse();
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v4, v5, v6);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t MemoryCreationQUParse.description.getter()
{
  MEMORY[0x25F8A1F10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x25F8A1F10](10, 0xE100000000000000);
  if (*(v0 + 40))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x25F8A1F10](v1, v2);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  _StringGuts.grow(_:)(25);

  if (*(v0 + 41))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 41))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25F8A1F10](v3, v4);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  v5 = 0xE500000000000000;
  v6 = 0x7473726966;
  if (*(v0 + 42) != 1)
  {
    v6 = 1953718636;
    v5 = 0xE400000000000000;
  }

  if (*(v0 + 42))
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701736302;
  }

  if (*(v0 + 42))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x25F8A1F10](v7, v8);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();

  MEMORY[0x25F8A1F10](0x7475626972747441, 0xEC0000000A3A7365);
  v9 = *(v0 + 32);
  result = specialized Array._getCount()(v9);
  if (!result)
  {
    return 0x203A7972657551;
  }

  v11 = result;
  if (result >= 1)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F8A2110](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      v15 = (*(*v13 + 144))();
      v16 = v14;
      OUTLINED_FUNCTION_8();
      MEMORY[0x25F8A1F10](v15, v16);
    }

    while (v11 != v12);
    return 0x203A7972657551;
  }

  __break(1u);
  return result;
}

uint64_t MemoryCreationQUParseSortOrder.rawValue.getter()
{
  v1 = 0x7473726966;
  if (*v0 != 1)
  {
    v1 = 1953718636;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t MemoryCreationQUParse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x706972547369 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000025DCEA7D0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t MemoryCreationQUParse.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x706972547369;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUParse.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUParse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUParse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MemoryCreationQUParse.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MemoryCreationQUParse.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUParse.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MemoryCreationQUParse.__deallocating_deinit()
{
  MemoryCreationQUParse.deinit();
  v0 = OUTLINED_FUNCTION_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MemoryCreationQUParse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20]();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();
  OUTLINED_FUNCTION_18();
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](&lazy protocol witness table cache variable for type [MemoryCreationQUParseAttributes] and conformance <A> [A], &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes and conformance MemoryCreationQUParseAttributes);
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 40);
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 41);
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 42);
    lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v13 = OUTLINED_FUNCTION_10();
  return v14(v13);
}

uint64_t MemoryCreationQUParse.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11();
  v2 = swift_allocObject();
  MemoryCreationQUParse.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUParse.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes21MemoryCreationQUParseC10CodingKeys33_39EBC670B26013877BC578C315098C50LLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20]();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for MemoryCreationQUParse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_15();
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](&lazy protocol witness table cache variable for type [MemoryCreationQUParseAttributes] and conformance <A> [A], &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes and conformance MemoryCreationQUParseAttributes);
    OUTLINED_FUNCTION_15();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 32) = v12;
    *(v1 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    OUTLINED_FUNCTION_15();
    *(v1 + 41) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder();
    OUTLINED_FUNCTION_15();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = OUTLINED_FUNCTION_4();
    v11(v10, v4);
    *(v1 + 42) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUParse@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MemoryCreationQUParseAttributes.range.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MemoryCreationQUParseAttributes.substring.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *MemoryCreationQUParseAttributes.__allocating_init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_12();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

void *MemoryCreationQUParseAttributes.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t MemoryCreationQUParseAttributes.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_12();
  v2 = swift_allocObject();
  MemoryCreationQUParseAttributes.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUParseAttributes.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20]();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    *(v1 + 16) = OUTLINED_FUNCTION_17();
    *(v1 + 24) = v9;
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_2();
    lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v10, 255, v11);
    OUTLINED_FUNCTION_7();
    *(v1 + 32) = v19;
    LOBYTE(v19) = 2;
    *(v1 + 48) = OUTLINED_FUNCTION_17();
    *(v1 + 56) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_7();
    *(v1 + 64) = v19;
    LOBYTE(v21) = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v19;
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25DCE1C90;
    *(v15 + 32) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    *(v15 + 40) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDateCGMd, &_sSaySo6NSDateCGMR);
      if (swift_dynamicCast())
      {
        v16 = v21;
        outlined consume of Data._Representation(v14, *(&v14 + 1));
LABEL_10:
        v17 = OUTLINED_FUNCTION_0_0();
        v18(v17);
        *(v3 + 72) = v16;
        goto LABEL_4;
      }
    }

    else
    {
      outlined destroy of Any?(&v19);
    }

    outlined consume of Data._Representation(v14, *(&v14 + 1));
    v16 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  type metadata accessor for MemoryCreationQUParseAttributes();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t MemoryCreationQUParseAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31MemoryCreationQUParseAttributesC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20]();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();
  OUTLINED_FUNCTION_18();
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v30 = *(v3 + 32);
    type metadata accessor for _NSRange(0);
    OUTLINED_FUNCTION_2();
    lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(v11, 255, v12);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v30 = *(v3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = objc_opt_self();
    v20 = *(v3 + 72);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *&v30 = 0;
    v22 = [v19 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v30];

    v23 = v30;
    if (v22)
    {
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      *&v30 = v24;
      *(&v30 + 1) = v26;
      lazy protocol witness table accessor for type Data and conformance Data();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_5();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = OUTLINED_FUNCTION_10();
      v28(v27);
      result = outlined consume of Data._Representation(v24, v26);
      goto LABEL_6;
    }

    v29 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = OUTLINED_FUNCTION_10();
  result = v16(v15);
LABEL_6:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

OmniSearchTypes::MemoryCreationQUParseAttributes::CodingKeys_optional __swiftcall MemoryCreationQUParseAttributes.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = stringValue._countAndFlagsBits == OUTLINED_FUNCTION_14() && object == v3;
  if (v4 || (OUTLINED_FUNCTION_6() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = countAndFlagsBits == 0x65676E6172 && object == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_6() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = countAndFlagsBits == 0x6E69727473627573 && object == 0xE900000000000067;
      if (v7 || (OUTLINED_FUNCTION_6() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = countAndFlagsBits == 0xD000000000000015 && 0x800000025DCEA700 == object;
        if (v8 || (OUTLINED_FUNCTION_6() & 1) != 0)
        {

          return 3;
        }

        else if (countAndFlagsBits == 0xD000000000000013 && 0x800000025DCEA720 == object)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_6();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int MemoryCreationQUParse.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](a1);
  return Hasher._finalize()();
}

uint64_t MemoryCreationQUParseAttributes.CodingKeys.stringValue.getter()
{
  result = OUTLINED_FUNCTION_14();
  switch(v1)
  {
    case 1:
      result = 0x65676E6172;
      break;
    case 2:
      result = 0x6E69727473627573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MemoryCreationQUParseAttributes.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MemoryCreationQUParseAttributes.CodingKeys.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUParseAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUParseAttributes.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUParseAttributes.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(67);
  MEMORY[0x25F8A1F10](v1[6], v1[7]);
  MEMORY[0x25F8A1F10](0x6E6172203E2D2D20, 0xEC000000203A6567);
  v2 = v0[4];
  v3 = v0[5];
  v4 = _NSRange.description.getter();
  MEMORY[0x25F8A1F10](v4);

  MEMORY[0x25F8A1F10](0x203A79656B202CLL, 0xE700000000000000);
  MEMORY[0x25F8A1F10](v1[2], v1[3]);
  MEMORY[0x25F8A1F10](0xD000000000000014, 0x800000025DCEA740);
  v5 = MEMORY[0x25F8A1FC0](v0[8], MEMORY[0x277D837D0]);
  MEMORY[0x25F8A1F10](v5);

  MEMORY[0x25F8A1F10](0xD000000000000012, 0x800000025DCEA760);
  v6 = v0[9];
  v7 = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  v8 = MEMORY[0x25F8A1FC0](v6, v7);
  MEMORY[0x25F8A1F10](v8);

  return 0;
}

void *MemoryCreationQUParseAttributes.deinit()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t MemoryCreationQUParseAttributes.__deallocating_deinit()
{
  MemoryCreationQUParseAttributes.deinit();
  v0 = OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUParseAttributes@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

OmniSearchTypes::MemoryCreationQUParseSortOrder_optional __swiftcall MemoryCreationQUParseSortOrder.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MemoryCreationQUParseSortOrder.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MemoryCreationQUParseSortOrder@<X0>(uint64_t *a1@<X8>)
{
  result = MemoryCreationQUParseSortOrder.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x25F8A21B0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParse.CodingKeys and conformance MemoryCreationQUParse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseSortOrder and conformance MemoryCreationQUParseSortOrder);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type [MemoryCreationQUParseAttributes] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMd, &_sSay15OmniSearchTypes31MemoryCreationQUParseAttributesCGMR);
    lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(a2, v5, type metadata accessor for MemoryCreationQUParseAttributes);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUParseAttributes.CodingKeys and conformance MemoryCreationQUParseAttributes.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MemoryCreationQUParse and conformance MemoryCreationQUParse(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUError and conformance MemoryCreationQUError()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUError and conformance MemoryCreationQUError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUParseSortOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUParseSortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemoryCreationQUParseAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUParseAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_13()
{

  JUMPOUT(0x25F8A1F10);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t MemoryCreationQUPerformanceMetrics.llmQUModelLatency.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.llmQUModelLatency.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.encode()()
{
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MemoryCreationQUPerformanceMetrics();
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(&lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics);
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v3;
}

uint64_t MemoryCreationQUPerformanceMetrics.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t static MemoryCreationQUPerformanceMetrics.makeFrom(data:)()
{
  v1 = type metadata accessor for JSONDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for MemoryCreationQUPerformanceMetrics();
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(&lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics and conformance MemoryCreationQUPerformanceMetrics(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MemoryCreationQUPerformanceMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.description.getter()
{
  _StringGuts.grow(_:)(21);
  v1 = MEMORY[0x25F8A1F10](0xD000000000000013, 0x800000025DCEA850);
  (*(*v0 + 88))(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t MemoryCreationQUPerformanceMetrics.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000025DCEA8B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int MemoryCreationQUPerformanceMetrics.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MemoryCreationQUPerformanceMetrics.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MemoryCreationQUPerformanceMetrics.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MemoryCreationQUPerformanceMetrics.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance MemoryCreationQUError();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MemoryCreationQUPerformanceMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MemoryCreationQUPerformanceMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemoryCreationQUPerformanceMetrics.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMR);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();
  v13 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 88))(v13);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v11, v4);
}

unint64_t lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys);
  }

  return result;
}

uint64_t MemoryCreationQUPerformanceMetrics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MemoryCreationQUPerformanceMetrics.init(from:)(a1);
  return v2;
}

uint64_t MemoryCreationQUPerformanceMetrics.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34MemoryCreationQUPerformanceMetricsC10CodingKeys33_6DF99F28387DAF0533857C71AB06954DLLOGMR);
  v6 = OUTLINED_FUNCTION_1(v5);
  v19 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MemoryCreationQUPerformanceMetrics.CodingKeys and conformance MemoryCreationQUPerformanceMetrics.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    v13 = v19;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    (*(v13 + 8))(v11, v5);
    swift_beginAccess();
    *(v3 + 16) = v14;
    *(v3 + 24) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MemoryCreationQUPerformanceMetrics@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MemoryCreationQUPerformanceMetrics.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t type metadata completion function for ProtoGenerationIgnored(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoGenerationIgnored(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for ProtoGenerationIgnored(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t ProtoSchemaGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  ProtoSchemaGenerator.init()();
  return v0;
}

void *ProtoSchemaGenerator.init()()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000025DCEA8D0;
  v1 = MEMORY[0x277D84FA0];
  v0[4] = MEMORY[0x277D84FA0];
  v0[5] = Dictionary.init(dictionaryLiteral:)();
  v0[6] = v1;
  v0[7] = v1;
  return v0;
}

Swift::String __swiftcall ProtoSchemaGenerator.generate(messageTypes:enums:externalMessagesContext:)(Swift::OpaquePointer messageTypes, Swift::OpaquePointer enums, Swift::OpaquePointer externalMessagesContext)
{
  v4 = *(messageTypes._rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  rawValue = enums._rawValue;
  if (v4)
  {
    v127 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    v5 = v127;
    v7 = (messageTypes._rawValue + 32);
    do
    {
      v134 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
      v8 = String.init<A>(describing:)();
      v10 = v9;
      v12 = *(v127 + 16);
      v11 = *(v127 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = OUTLINED_FUNCTION_17_0(v11);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v12 + 1, 1);
      }

      *(v127 + 16) = v12 + 1;
      v13 = v127 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v7;
      --v4;
    }

    while (v4);
    v15 = v124;
    enums._rawValue = rawValue;
  }

  else
  {
    v15 = v3;
  }

  v16 = *(enums._rawValue + 2);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = enums._rawValue;
    v128 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_21();
    v17 = v128;
    v19 = (v18 + 32);
    do
    {
      v134 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20ProtoEnumConvertible_pXpMd, &_s15OmniSearchTypes20ProtoEnumConvertible_pXpMR);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      v24 = *(v128 + 16);
      v23 = *(v128 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_17_0(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v24 + 1, 1);
      }

      *(v128 + 16) = v24 + 1;
      v25 = v128 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      ++v19;
      --v16;
    }

    while (v16);
    v15 = v124;
  }

  v27 = externalMessagesContext._rawValue;
  v28 = *(externalMessagesContext._rawValue + 2);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    *&v134 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v134;
    v30 = (externalMessagesContext._rawValue + 32);
    v125 = v28;
    v31 = v28;
    do
    {
      v129 = *v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      *&v134 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        v38 = OUTLINED_FUNCTION_17_0(v35);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v36 + 1, 1);
        v29 = v134;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v30 += 3;
      --v31;
    }

    while (v31);
    v27 = externalMessagesContext._rawValue;
    v15 = v124;
    v28 = v125;
  }

  *&v134 = v5;
  specialized Array.append<A>(contentsOf:)(v17);

  specialized Array.append<A>(contentsOf:)(v39);
  v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v5);
  v41 = v15[4];
  v15[4] = v40;

  v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v29);
  v43 = v15[6];
  v15[6] = v42;

  v44 = Dictionary.init(dictionaryLiteral:)();
  v45 = (v27 + 48);
  if (v28)
  {
    while (1)
    {
      v126 = v28;
      v46 = *(v45 - 1);
      v47 = *v45;
      *&v134 = *(v45 - 2);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
      v48 = String.init<A>(describing:)();
      v50 = v49;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v134 = v44;
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
      v54 = v44[2];
      v55 = (v53 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        break;
      }

      v57 = v52;
      v58 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, _ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
      {
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_61;
        }

        v57 = v59;
      }

      if (v58)
      {

        v44 = v134;
        v61 = (*(v134 + 56) + 16 * v57);
        v62 = v61[1];
        *v61 = v46;
        v61[1] = v47;
      }

      else
      {
        v44 = v134;
        *(v134 + 8 * (v57 >> 6) + 64) |= 1 << v57;
        v63 = (v44[6] + 16 * v57);
        *v63 = v48;
        v63[1] = v50;
        v64 = (v44[7] + 16 * v57);
        *v64 = v46;
        v64[1] = v47;

        v65 = v44[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_60;
        }

        v44[2] = v67;
      }

      v45 += 3;
      v15 = v124;
      v28 = v126 - 1;
      if (v126 == 1)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    v68 = v15[5];
    v15[5] = v44;

    swift_beginAccess();
    v69 = v15[7];
    v15[7] = MEMORY[0x277D84FA0];

    v70 = v15[3];
    v132 = v15[2];
    v133 = v70;

    v71 = ProtoSchemaGenerator.generateEnums(for:)(rawValue);
    v73 = v72;
    v74 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      v75 = v71;
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x25F8A1F10](v75, v73);
    }

    v76 = messageTypes._rawValue;

    while (1)
    {
      v77 = *(v76 + 2);
      if (!v77)
      {
        break;
      }

      v78 = *(v76 + 4);
      v79 = *(v76 + 5);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      if (!v80 || (v77 - 1) > *(v76 + 3) >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80, v77, 1, v76);
      }

      v81 = *(v76 + 2);
      memmove(v76 + 32, v76 + 48, 16 * v81 - 16);
      *(v76 + 2) = v81 - 1;
      v131 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
      v82 = String.init<A>(describing:)();
      v84 = v83;
      v85 = v15[7];

      v86 = specialized Set.contains(_:)(v82, v84, v85);

      if (v86 || (v87 = ProtoSchemaGenerator.generateMessage(for:)(v78, v79), !v88))
      {
      }

      else
      {
        v90 = v87;
        v91 = v88;
        v92 = v89;
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x25F8A1F10](v90, v91);

        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v130, v82, v84);
        swift_endAccess();

        specialized Array.append<A>(contentsOf:)(v92);
      }

      v76 = v131;
    }

    v93 = v15[7];

    v95 = specialized _NativeSet.filter(_:)(v94, v15);
    v96 = v95;
    v97 = 0;
    v98 = v95 + 56;
    v99 = 1 << *(v95 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & *(v95 + 56);
    v102 = (v99 + 63) >> 6;
    if (v101)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v103 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v103 >= v102)
      {

        v118 = v132;
        v119 = v133;
        goto LABEL_62;
      }

      v101 = *(v98 + 8 * v103);
      ++v97;
      if (v101)
      {
        v97 = v103;
        do
        {
LABEL_51:
          v104 = (*(v96 + 48) + ((v97 << 10) | (16 * __clz(__rbit64(v101)))));
          v106 = *v104;
          v105 = v104[1];

          OUTLINED_FUNCTION_15_0();
          v107 = v124[5];
          if (*(v107 + 16) && (v108 = v124[5], , v109 = OUTLINED_FUNCTION_8_0(), v111 = specialized __RawDictionaryStorage.find<A>(_:)(v109, v110), v113 = v112, , (v113 & 1) != 0))
          {
            v114 = (*(v107 + 56) + 16 * v111);
            v116 = *v114;
            v115 = v114[1];
          }

          else
          {
          }

          v101 &= v101 - 1;
          v117 = OUTLINED_FUNCTION_8_0();
          MEMORY[0x25F8A1F10](v117);
        }

        while (v101);
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  v118 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_62:
  result._object = v119;
  result._countAndFlagsBits = v118;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x25F8A1FD0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v6) = MEMORY[0x25F8A2500](v3, v4, v5, v6);
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    dispatch thunk of _AnyCollectionBox.subscript.getter();

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 16 * v7 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ProtoSchemaGenerator.generateMessage(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Mirror();
  OUTLINED_FUNCTION_5_0();
  v79 = v5;
  v80 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v96 = a1;
  v97 = a2;
  __swift_allocate_boxed_opaque_existential_1Tm(v95);
  v11 = OUTLINED_FUNCTION_13_0();
  v10(v11);
  v12 = v96;
  __swift_project_boxed_opaque_existential_1(v95, v96);
  *(&v92 + 1) = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(&v91);
  OUTLINED_FUNCTION_16_0(v12);
  (*(v13 + 16))();
  Mirror.init(reflecting:)();
  *&v91 = a1;
  *(&v91 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16ProtoConvertible_pXpMd, &_s15OmniSearchTypes16ProtoConvertible_pXpMR);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *&v91 = 0x206567617373656DLL;
  *(&v91 + 1) = 0xE800000000000000;
  v83 = v14;
  MEMORY[0x25F8A1F10]();
  MEMORY[0x25F8A1F10](686880, 0xE300000000000000);
  v94 = v91;
  v78 = v9;
  Mirror.children.getter();
  v17 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v81 = MEMORY[0x277D84F90];
  v77 = 1;
  *&v18 = 136315394;
  v82 = v18;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (!v93)
          {

            MEMORY[0x25F8A1F10](125, 0xE100000000000000);
            (*(v79 + 8))(v78, v80);
            __swift_destroy_boxed_opaque_existential_1(v95);
            return OUTLINED_FUNCTION_13_0();
          }

          v89 = v91;
          outlined init with take of Any(&v92, &v90);
          v19 = OUTLINED_FUNCTION_9_0();
          outlined init with copy of Mirror.DisplayStyle?(v19, v20, v21, &_sSSSg5label_yp5valuetMR);
          v22 = v87;
          if (v87)
          {
            break;
          }

          v33 = OUTLINED_FUNCTION_12_0();
          outlined destroy of ProtoGenerationIgnored<Any>?(v33, v34, &_sSSSg5label_yp5valuetMR);
          __swift_destroy_boxed_opaque_existential_1(v88);
        }

        v23 = v86;
        __swift_destroy_boxed_opaque_existential_1(v88);
        v24 = OUTLINED_FUNCTION_9_0();
        outlined init with copy of Mirror.DisplayStyle?(v24, v25, v26, &_sSSSg5label_yp5valuetMR);

        outlined init with take of Any(v88, v85);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_25(&v84);
        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logging.proto);
        OUTLINED_FUNCTION_19();

        v28 = Logger.logObject.getter();
        v29 = v16;
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v28, v30))
        {
          v31 = OUTLINED_FUNCTION_24();
          v86 = OUTLINED_FUNCTION_23();
          *v31 = v82;
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v86);

          *(v31 + 4) = v32;
          *(v31 + 12) = 2080;
          *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v29, &v86);
          _os_log_impl(&dword_25DC66000, v28, v30, "Ignoring property '%s' in '%s'.", v31, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();
        }

        else
        {
        }

        outlined destroy of ProtoGenerationIgnored<Any>?(&v89, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v16 = v29;
      }

      v75 = v16;
      v35 = OUTLINED_FUNCTION_9_0();
      outlined init with copy of Mirror.DisplayStyle?(v35, v36, v37, &_sSSSg5label_yp5valuetMR);
      v38 = v77;
      ProtoSchemaGenerator.protoField(for:fieldNumber:)(v86, v87, v88, &v98);

      __swift_destroy_boxed_opaque_existential_1(v88);
      v39 = v99;
      if (v99)
      {
        break;
      }

      if (one-time initialization token for proto != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logging.proto);
      OUTLINED_FUNCTION_19();

      v16 = v75;

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_24();
        *&v74 = v57;
        v60 = v59;
        v86 = OUTLINED_FUNCTION_23();
        *v60 = v82;
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v86);
        v62 = v58;
        v63 = v61;

        *(v60 + 4) = v63;
        *(v60 + 12) = 2080;
        *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v75, &v86);
        v64 = v62;
        v65 = v74;
        _os_log_impl(&dword_25DC66000, v74, v64, "Cannot determine protobuf type for property '%s' in '%s'. Skipping.", v60, 0x16u);
        swift_arrayDestroy();
        v16 = v75;
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_10_0();
      }

      else
      {
      }

      v68 = OUTLINED_FUNCTION_12_0();
      outlined destroy of ProtoGenerationIgnored<Any>?(v68, v69, &_sSSSg5label_yp5valuetMR);
    }

    v73 = v17;
    v74 = v100;
    v40 = v101;
    v41 = v98;

    v86 = 8224;
    v87 = 0xE200000000000000;
    MEMORY[0x25F8A1F10](v41, v39);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v98, &_sSS5field_15OmniSearchTypes16ProtoConvertible_pXmTSg10nestedTypeypXmTSg013innerConcreteH0tSgMd, &_sSS5field_15OmniSearchTypes16ProtoConvertible_pXmTSg10nestedTypeypXmTSg013innerConcreteH0tSgMR);
    MEMORY[0x25F8A1F10](10, 0xE100000000000000);
    MEMORY[0x25F8A1F10](v86, v87);

    v43 = __OFADD__(v38, 1);
    v44 = v38 + 1;
    if (v43)
    {
      break;
    }

    v77 = v44;
    if (v74)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
      }

      v46 = *(v81 + 2);
      v45 = *(v81 + 3);
      v47 = v74;
      if (v46 >= v45 >> 1)
      {
        v70 = OUTLINED_FUNCTION_17_0(v45);
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70, v46 + 1, 1, v81);
        v47 = v74;
        v81 = v71;
      }

      v48 = v81;
      *(v81 + 2) = v46 + 1;
      *&v48[16 * v46 + 32] = v47;
      if (!v40)
      {
LABEL_27:
        v54 = OUTLINED_FUNCTION_12_0();
        goto LABEL_28;
      }
    }

    else if (!v40)
    {
      goto LABEL_27;
    }

    v86 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    v52 = *(v76 + 48);

    v53 = specialized Set.contains(_:)(v49, v51, v52);

    if (v53)
    {
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v85, v49, v51);
      swift_endAccess();

      v54 = OUTLINED_FUNCTION_12_0();
LABEL_28:
      outlined destroy of ProtoGenerationIgnored<Any>?(v54, v55, &_sSSSg5label_yp5valuetMR);
      goto LABEL_30;
    }

    v66 = OUTLINED_FUNCTION_12_0();
    outlined destroy of ProtoGenerationIgnored<Any>?(v66, v67, &_sSSSg5label_yp5valuetMR);

LABEL_30:
    v17 = v73;
    v16 = v75;
  }

  __break(1u);
  return result;
}

uint64_t ProtoSchemaGenerator.protoField(for:fieldNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v5 = a2;
  v74[0] = a1;
  v74[1] = a2;
  v7 = v74;
  outlined init with copy of Any(a3, v75);
  outlined init with copy of Mirror.DisplayStyle?(v74, &v70, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  v8 = v71;
  if (v71)
  {
    v9 = v70;

    __swift_destroy_boxed_opaque_existential_1(v72);
    v10._countAndFlagsBits = 95;
    v10._object = 0xE100000000000000;
    v67 = a4;
    if (String.hasPrefix(_:)(v10))
    {
      v11 = specialized Collection.dropFirst(_:)(1uLL, v9, v8);
      MEMORY[0x25F8A1E90](v11);
    }

    v12 = OUTLINED_FUNCTION_8_0();
    ProtoSchemaGenerator.toSnakeCase(_:)(v12, v13);
    ProtoSchemaGenerator.getTypeInfo(for:)(v75, &v70);
    v14 = LOBYTE(v72[0]);
    v15 = *(v72 + 1) | ((*(v72 + 5) | (HIBYTE(v72[0]) << 16)) << 32);
    v16 = v72[1];
    v5 = v72[2];
    v7 = v73;
    switch(v73 >> 6)
    {
      case 1:

        v52 = OUTLINED_FUNCTION_7_0();
        ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v52, v53);
        if (!v54)
        {
          goto LABEL_44;
        }

        v5 = v14 | (v15 << 8);
        _StringGuts.grow(_:)(20);

        v68 = 0x6465746165706572;
        v69 = 0xE900000000000020;
        v55 = OUTLINED_FUNCTION_8_0();
        MEMORY[0x25F8A1F10](v55);

        v41 = 32;
        v42 = 0xE100000000000000;
        goto LABEL_34;
      case 2:
        v26 = OUTLINED_FUNCTION_7_0();
        v28 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v26, v27);
        if (!v29)
        {
          goto LABEL_43;
        }

        v30 = v28;
        v31 = v29;
        v32 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v14 | (v15 << 8), v16);
        if (!v33)
        {

LABEL_43:

LABEL_44:

          outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70);
          outlined destroy of ProtoGenerationIgnored<Any>?(v74, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          result = OUTLINED_FUNCTION_11_0();
          goto LABEL_45;
        }

        v34 = v32;
        v35 = v33;
        v68 = v30;
        v69 = v31;
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        if (BidirectionalCollection<>.starts<A>(with:)() & 1) != 0 || (v30 == 0x676E69727473 ? (v36 = v31 == 0xE600000000000000) : (v36 = 0), v36 || (OUTLINED_FUNCTION_7_0(), (_stringCompareWithSmolCheck(_:_:expecting:)())))
        {

          v37 = (v7 & 1) == 0;
          if (v7)
          {
            v38 = 0x6C616E6F6974706FLL;
          }

          else
          {
            v38 = 0;
          }

          if (v37)
          {
            v39 = 0xE000000000000000;
          }

          else
          {
            v39 = 0xE900000000000020;
          }

          _StringGuts.grow(_:)(22);

          v68 = v38;
          v69 = v39;
          MEMORY[0x25F8A1F10](1013997933, 0xE400000000000000);
          v40 = OUTLINED_FUNCTION_7_0();
          MEMORY[0x25F8A1F10](v40);

          MEMORY[0x25F8A1F10](8236, 0xE200000000000000);
          MEMORY[0x25F8A1F10](v34, v35);

          v41 = 8254;
          v42 = 0xE200000000000000;
LABEL_34:
          MEMORY[0x25F8A1F10](v41, v42);
          OUTLINED_FUNCTION_20();

          OUTLINED_FUNCTION_14_0();
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x25F8A1F10](v56);

          MEMORY[0x25F8A1F10](59, 0xE100000000000000);
          outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70);
          v4 = v68;
          v7 = v69;
          outlined destroy of ProtoGenerationIgnored<Any>?(v74, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          result = dynamic_cast_existential_1_conditional(v5);
          if (result)
          {
            v25 = v57;
          }

          else
          {
            v25 = 0;
          }

LABEL_45:
          a4 = v67;
          goto LABEL_46;
        }

        a4 = v67;
        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        __swift_project_value_buffer(v58, static Logging.proto);

        v4 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v4, v7))
        {
          v5 = OUTLINED_FUNCTION_24();
          v68 = OUTLINED_FUNCTION_23();
          *v5 = 136315394;
          v59 = OUTLINED_FUNCTION_7_0();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v61);

          *(v5 + 4) = v62;
          *(v5 + 12) = 2080;
          v63 = OUTLINED_FUNCTION_8_0();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v65);

          *(v5 + 14) = v66;
          v51 = "Invalid map key type '%s' for property '%s'. Skipping.";
LABEL_31:
          _os_log_impl(&dword_25DC66000, v4, v7, v51, v5, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_10_0();
        }

        else
        {

LABEL_39:
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70);
        outlined destroy of ProtoGenerationIgnored<Any>?(v74, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        break;
      case 3:

        if (one-time initialization token for proto != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logging.proto);
        OUTLINED_FUNCTION_19();

        outlined init with copy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70, &v68);
        v4 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70);
        a4 = v67;
        if (os_log_type_enabled(v4, v7))
        {
          v5 = OUTLINED_FUNCTION_24();
          v68 = OUTLINED_FUNCTION_23();
          *v5 = 136315394;
          v44 = OUTLINED_FUNCTION_8_0();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v46);

          *(v5 + 4) = v47;
          *(v5 + 12) = 2080;
          v48 = OUTLINED_FUNCTION_7_0();
          *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v50);
          v51 = "Property '%s' is unsupported: %s. Skipping.";
          goto LABEL_31;
        }

        goto LABEL_39;
      default:

        v17 = OUTLINED_FUNCTION_7_0();
        v19 = ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(v17, v18);
        if (!v20)
        {
          goto LABEL_44;
        }

        v21 = 0x6C616E6F6974706FLL;
        if ((v14 & 1) == 0)
        {
          v21 = 0;
        }

        v22 = 0xE000000000000000;
        if (v14)
        {
          v22 = 0xE900000000000020;
        }

        v68 = v21;
        v69 = v22;
        MEMORY[0x25F8A1F10](v19);

        MEMORY[0x25F8A1F10](32, 0xE100000000000000);
        OUTLINED_FUNCTION_20();

        OUTLINED_FUNCTION_14_0();
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x25F8A1F10](v23);

        MEMORY[0x25F8A1F10](59, 0xE100000000000000);
        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v70);
        v4 = v68;
        v7 = v69;
        outlined destroy of ProtoGenerationIgnored<Any>?(v74, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        result = 0;
        v25 = 0;
        v5 = v16;
        goto LABEL_45;
    }
  }

  else
  {

    outlined destroy of ProtoGenerationIgnored<Any>?(v74, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  result = OUTLINED_FUNCTION_11_0();
LABEL_46:
  *a4 = v4;
  a4[1] = v7;
  a4[2] = result;
  a4[3] = v25;
  a4[4] = v5;
  return result;
}

void ProtoSchemaGenerator.getTypeInfo(for:)(uint64_t a1@<X0>, void (*a2)(void, void)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v11 = type metadata accessor for Mirror();
  OUTLINED_FUNCTION_5_0();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v69 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  outlined init with copy of Any(a1, &v85);
  Mirror.init(reflecting:)();
  outlined init with copy of Any(a1, &v85);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
  if (swift_dynamicCast())
  {
    v70 = a2;
    v82 = v79;
    v83 = v80;
    *(&v86 + 1) = v26;
    *&v85 = swift_allocObject();
    outlined init with copy of Mirror.DisplayStyle?(&v82, v85 + 16, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
    Mirror.init(reflecting:)();
    v27 = Mirror.children.getter();
    specialized Collection.first.getter(v27, &v85);

    if (*(&v87 + 1))
    {

      outlined init with take of Any(&v86, &v79);
      outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sypSgMd, &_sypSgMR);
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v79 = 0xD000000000000023;
      *(&v79 + 1) = 0x800000025DCEAB40;
      outlined init with copy of Any(a1, &v85);
      v28 = String.init<A>(describing:)();
      MEMORY[0x25F8A1F10](v28);

      v29 = *(&v79 + 1);
      v30 = v79;
      v31 = *(v13 + 8);
      (v31)(v23, v11);
      outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
      v32 = v11;
      v11 = v29;
      (v31)(v25, v32);
      OUTLINED_FUNCTION_2_0();
      v33 = -64;
      a2 = v70;
      goto LABEL_34;
    }

    a1 = v11;
    (*(v13 + 8))(v23, v11);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGMR);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    v79 = 0u;
    v80 = 0u;
    outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sypSgMd, &_sypSgMR);
    a2 = v70;
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGSgMd, &_s15OmniSearchTypes22ProtoGenerationIgnoredVyypGSgMR);
    a1 = v11;
  }

  Mirror.displayStyle.getter();
  v34 = type metadata accessor for Mirror.DisplayStyle();
  if (__swift_getEnumTagSinglePayload(v10, 1, v34) == 1)
  {
LABEL_7:
    *&v85 = Mirror.subjectType.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v30 = String.init<A>(describing:)();
    v11 = v35;
    v31 = Mirror.subjectType.getter();
    v36 = OUTLINED_FUNCTION_3_0();
    v37(v36);
    outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    v23 = 0;
    a1 = 0;
    v33 = 0;
    goto LABEL_34;
  }

  outlined init with copy of Mirror.DisplayStyle?(v10, v8, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v38 = *(v34 - 8);
  v39 = (*(v38 + 88))(v8, v34);
  if (v39 != *MEMORY[0x277D84C18])
  {
    if (v39 == *MEMORY[0x277D84BF0])
    {
      v31 = Mirror.children.getter();
      specialized Collection.first.getter(v31, &v82);

      if (*(&v84 + 1))
      {
        OUTLINED_FUNCTION_6_0();
        if (BYTE8(v84) <= 0x3Fu)
        {
          v23 = *(&v83 + 1);
          v11 = *(&v82 + 1);
          v30 = v82;
          outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          v41 = OUTLINED_FUNCTION_3_0();
          v42(v41);
          outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
          v31 = 0;
          a1 = 0;
          v33 = 64;
          goto LABEL_34;
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v82);
        OUTLINED_FUNCTION_18_0();
        outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
        v55 = OUTLINED_FUNCTION_3_0();
        v56(v55);
        outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_1_0();
        v30 = v57 + 3;
      }

      else
      {
        outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
        OUTLINED_FUNCTION_18_0();
        v52 = OUTLINED_FUNCTION_3_0();
        v53(v52);
        outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_1_0();
        v30 = v54 + 10;
      }

LABEL_33:
      v33 = -64;
      goto LABEL_34;
    }

    if (v39 != *MEMORY[0x277D84BF8])
    {
      (*(v38 + 8))(v8, v34);
      goto LABEL_7;
    }

    v31 = Mirror.children.getter();
    specialized Collection.first.getter(v31, &v82);

    if (!*(&v84 + 1))
    {
      outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
      OUTLINED_FUNCTION_18_0();
      v58 = OUTLINED_FUNCTION_3_0();
      v59(v58);
      outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      OUTLINED_FUNCTION_1_0();
      v30 = v60 + 18;
      goto LABEL_33;
    }

    v23 = &v82;
    v85 = v82;
    v86 = v83;
    v87 = v84;
    outlined init with copy of Mirror.DisplayStyle?(&v85, &v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

    v43 = v72;
    Mirror.init(reflecting:)();
    v44 = Mirror.children.getter();
    specialized Collection.first.getter(v44, &v79);

    if (*(&v81 + 1))
    {
      v82 = v79;
      v83 = v80;
      v84 = v81;
      Mirror.children.getter();
      v23 = dispatch thunk of _AnySequenceBox._dropFirst(_:)();

      specialized Collection.first.getter(v23, &v76);

      if (*(&v78 + 1))
      {
        v79 = v76;
        v80 = v77;
        v81 = v78;
        outlined init with copy of Mirror.DisplayStyle?(&v82, &v76, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);

        v45 = v71;
        Mirror.init(reflecting:)();
        v46 = Mirror.subjectType.getter();
        v47 = *(v13 + 8);
        v71 = a1;
        v70 = v47;
        v47(v45, a1);
        *&v76 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
        v30 = String.init<A>(describing:)();
        v11 = v48;
        ProtoSchemaGenerator.getTypeInfo(for:)(&v80);
        if (BYTE8(v78) <= 0x3Fu)
        {
          a1 = *(&v77 + 1);
          v31 = *(&v76 + 1);
          v23 = v76;
          outlined destroy of ProtoGenerationIgnored<Any>?(&v79, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          v49 = v70;
          v70(v72, v71);
          outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
          v49(v25, v71);
          outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
          v33 = 0x80;
          goto LABEL_34;
        }

        outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v76);

        v74 = 0;
        v75 = 0xE000000000000000;
        _StringGuts.grow(_:)(89);
        MEMORY[0x25F8A1F10](0xD00000000000004CLL, 0x800000025DCEAA50);
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        DynamicType = swift_getDynamicType();
        v65 = OUTLINED_FUNCTION_22(DynamicType);
        MEMORY[0x25F8A1F10](v65);

        MEMORY[0x25F8A1F10](0x3A65756C6176202CLL, 0xE900000000000020);
        __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        v66 = swift_getDynamicType();
        v67 = OUTLINED_FUNCTION_22(v66);
        MEMORY[0x25F8A1F10](v67);

        v30 = v74;
        v11 = v75;
        v31 = &_sSSSg5label_yp5valuetMd;
        v23 = &_sSSSg5label_yp5valuetMR;
        OUTLINED_FUNCTION_25(&v79);
        OUTLINED_FUNCTION_25(&v82);
        a1 = v71;
        v68 = v70;
        v70(v72, v71);
        OUTLINED_FUNCTION_25(&v85);
        v68(v25, a1);
        outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
        OUTLINED_FUNCTION_2_0();
        goto LABEL_33;
      }

      outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
      v61 = &v76;
    }

    else
    {
      v61 = &v79;
    }

    outlined destroy of ProtoGenerationIgnored<Any>?(v61, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    v31 = *(v13 + 8);
    v62 = v43;
    v11 = 0x800000025DCEAA20;
    (v31)(v62, a1);
    outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
    (v31)(v25, a1);
    outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    OUTLINED_FUNCTION_1_0();
    v30 = v63 + 11;
    goto LABEL_33;
  }

  v31 = Mirror.children.getter();
  specialized Collection.first.getter(v31, &v82);

  if (!*(&v84 + 1))
  {
    outlined destroy of ProtoGenerationIgnored<Any>?(&v82, &_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
    OUTLINED_FUNCTION_18_0();
    v50 = OUTLINED_FUNCTION_3_0();
    v51(v50);
    outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
    OUTLINED_FUNCTION_2_0();
    v30 = 0xD000000000000037;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_6_0();
  v72 = *(&v82 + 1);
  v73 = v82;
  v71 = *(&v83 + 1);
  v23 = v83;
  v40 = a1;
  a1 = v84;
  v33 = BYTE8(v84);
  outlined destroy of ProtoGenerationIgnored<Any>?(&v85, &_sSSSg5label_yp5valuetMd, &_sSSSg5label_yp5valuetMR);
  (*(v13 + 8))(v25, v40);
  v11 = *(&v82 + 1);
  v30 = v82;
  v31 = *(&v83 + 1);
  switch(BYTE8(v84) >> 6)
  {
    case 1:
    case 3:
      outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      v30 = v73;
      v11 = v72;
      v31 = v71;
      break;
    case 2:
      a1 = v84;
      v23 = v83;

      outlined destroy of ProtoSchemaGenerator.ReflectedTypeInfo(&v82);
      outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      v33 = -127;
      break;
    default:
      outlined destroy of ProtoGenerationIgnored<Any>?(v10, &_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
      a1 = 0;
      v33 = 0;
      v23 = 1;
      break;
  }

LABEL_34:
  *a2 = v30;
  *(a2 + 1) = v11;
  *(a2 + 2) = v23;
  *(a2 + 3) = v31;
  *(a2 + 4) = a1;
  *(a2 + 40) = v33;
}

uint64_t ProtoSchemaGenerator.generateEnums(for:)(uint64_t a1)
{
  v42 = 0;
  v43 = 0xE000000000000000;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return 0;
  }

  v1 = 0;
  v29 = a1 + 32;
  do
  {
    v32 = *(v29 + 16 * v1);
    v31 = v1 + 1;
    *v38 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20ProtoEnumConvertible_pXpMd, &_s15OmniSearchTypes20ProtoEnumConvertible_pXpMR);
    v2 = String.init<A>(describing:)();
    v38[0] = 0x206D756E65;
    v38[1] = 0xE500000000000000;
    MEMORY[0x25F8A1F10](v2);

    MEMORY[0x25F8A1F10](686880, 0xE300000000000000);
    v41 = *v38;
    v3 = *(*(&v32 + 1) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_13_0();
    dispatch thunk of static CaseIterable.allCases.getter();
    v4 = AssociatedConformanceWitness;
    __swift_project_boxed_opaque_existential_1(v35, AssociatedTypeWitness);
    OUTLINED_FUNCTION_5_0();
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v7);
    (*(v9 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = *(v4 + 8);
    v39 = swift_getAssociatedTypeWitness();
    v40 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm(v38);
    dispatch thunk of Sequence.makeIterator()();
    __swift_destroy_boxed_opaque_existential_1(v35);
    v11 = 0;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v12 = swift_getAssociatedTypeWitness();
      v13 = type metadata accessor for Optional();
      OUTLINED_FUNCTION_5_0();
      v15 = v14;
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20](v18);
      v20 = &v28 - v19;
      dispatch thunk of IteratorProtocol.next()();
      if (__swift_getEnumTagSinglePayload(v20, 1, v12) == 1)
      {
        break;
      }

      AssociatedTypeWitness = v12;
      __swift_allocate_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_16_0(v12);
      (*(v21 + 32))();
      outlined init with take of Any(v35, &v34);
      v22 = String.init<A>(describing:)();
      ProtoSchemaGenerator.toSnakeCase(_:)(v22, v23);

      OUTLINED_FUNCTION_13_0();
      v24 = String.uppercased()();

      *&v34 = 8224;
      *(&v34 + 1) = 0xE200000000000000;
      MEMORY[0x25F8A1F10](v24._countAndFlagsBits, v24._object);

      OUTLINED_FUNCTION_14_0();
      v33 = v11;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x25F8A1F10](v25);

      MEMORY[0x25F8A1F10](2619, 0xE200000000000000);
      MEMORY[0x25F8A1F10](v34, *(&v34 + 1));

      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        return result;
      }
    }

    (*(v15 + 8))(v20, v13);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x25F8A1F10](2685, 0xE200000000000000);
    MEMORY[0x25F8A1F10](v41, *(&v41 + 1));

    v1 = v31;
  }

  while (v31 != v30);
  return v42;
}

uint64_t ProtoSchemaGenerator.mapSwiftTypeToProto(_:)(uint64_t a1, unint64_t a2)
{
  v3 = 0x676E69727453;
  if (a1 == 0x676E69727453 && a2 == 0xE600000000000000)
  {
    return v3 | 0x20;
  }

  if (OUTLINED_FUNCTION_4_0())
  {
    return v3 + 32;
  }

  v3 = 0x3233746E49;
  if (a1 == 0x3233746E49 && a2 == 0xE500000000000000)
  {
    return v3 | 0x20;
  }

  if (OUTLINED_FUNCTION_4_0())
  {
    return v3 + 32;
  }

  v7 = 0x3436746E69;
  if (a1 != 7630409 || a2 != 0xE300000000000000)
  {
    v10 = OUTLINED_FUNCTION_4_0();
    v11 = a1 == 0x3436746E49 && a2 == 0xE500000000000000;
    v12 = v11;
    if ((v10 & 1) == 0 && !v12 && (OUTLINED_FUNCTION_4_0() & 1) == 0)
    {
      v3 = 1819242306;
      if (a1 != 1819242306 || a2 != 0xE400000000000000)
      {
        if (OUTLINED_FUNCTION_4_0())
        {
          return v3 + 32;
        }

        v3 = 0x74616F6C46;
        if (a1 != 0x74616F6C46 || a2 != 0xE500000000000000)
        {
          if (OUTLINED_FUNCTION_4_0())
          {
            return v3 + 32;
          }

          v3 = 0x656C62756F44;
          if (a1 != 0x656C62756F44 || a2 != 0xE600000000000000)
          {
            if (OUTLINED_FUNCTION_4_0())
            {
              return v3 + 32;
            }

            v7 = 0x7365747962;
            v16 = a1 == 1635017028 && a2 == 0xE400000000000000;
            if (!v16 && (OUTLINED_FUNCTION_4_0() & 1) == 0)
            {
              v18 = *(v2 + 32);

              v19 = specialized Set.contains(_:)(a1, a2, v18);

              if (v19 || (v20 = *(v2 + 48), , v21 = specialized Set.contains(_:)(a1, a2, v20), , v21))
              {

                return a1;
              }

              else
              {
                if (one-time initialization token for proto != -1)
                {
                  OUTLINED_FUNCTION_0_2();
                  swift_once();
                }

                v22 = type metadata accessor for Logger();
                __swift_project_value_buffer(v22, static Logging.proto);

                v23 = Logger.logObject.getter();
                v24 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v23, v24))
                {
                  v25 = swift_slowAlloc();
                  v26 = swift_slowAlloc();
                  v27 = v26;
                  *v25 = 136315138;
                  *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v27);
                  _os_log_impl(&dword_25DC66000, v23, v24, "Unknown swift type: %s", v25, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v26);
                  OUTLINED_FUNCTION_10_0();
                  OUTLINED_FUNCTION_10_0();
                }

                return 0;
              }
            }

            return v7;
          }
        }
      }

      return v3 | 0x20;
    }
  }

  return v7;
}

uint64_t ProtoSchemaGenerator.toSnakeCase(_:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v4 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000011, 0x800000025DCEA990, 0);
  String.count.getter();
  v5 = OUTLINED_FUNCTION_19();
  v6 = MEMORY[0x25F8A1E10](v5, a2);
  v7 = MEMORY[0x25F8A1E10](0x32245F3124, 0xE500000000000000);
  v8 = [v4 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v3, v7}];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.lowercased()();

  return OUTLINED_FUNCTION_13_0();
}

void *ProtoSchemaGenerator.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t ProtoSchemaGenerator.__deallocating_deinit()
{
  ProtoSchemaGenerator.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F8A1E10]();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes15LLMSearchResultV_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for LLMSearchResult() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes16ProtoConvertible_pXpGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes16ProtoConvertible_pXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15OmniSearchTypes15LLMSearchResultV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMd, &_ss23_ContiguousArrayStorageCy15OmniSearchTypes15LLMSearchResultVGMR);
  v4 = *(type metadata accessor for LLMSearchResult() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for LLMSearchResult(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for LLMSearchResult();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = v3;
    v35[1] = v35;
    MEMORY[0x28223BE20](v10);
    v36 = v8;
    v40 = (v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v40);
    v11 = 0;
    v12 = 0;
    v8 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(v5 + 56);
    v3 = (v13 + 63) >> 6;
    v38 = v5;
    v39 = a2;
LABEL_6:
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(a2 + 48);
      if (*(v20 + 16))
      {
        v42 = v15;
        v43 = v11;
        v21 = *(v5 + 48);
        v41 = v19;
        v22 = (v21 + 16 * v19);
        v9 = *v22;
        v23 = v22[1];
        v24 = *(v20 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v25 = Hasher._finalize()();
        v26 = ~(-1 << *(v20 + 32));
        do
        {
          v27 = v25 & v26;
          if (((*(v20 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {

            v5 = v38;
            a2 = v39;
            v15 = v42;
            v11 = v43;
            goto LABEL_6;
          }

          v28 = (*(v20 + 48) + 16 * v27);
          if (*v28 == v9 && v28[1] == v23)
          {
            break;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v25 = v27 + 1;
        }

        while ((v30 & 1) == 0);

        *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        v15 = v42;
        v11 = v43 + 1;
        v5 = v38;
        a2 = v39;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_28;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        v31 = specialized _NativeSet.extractSubset(using:count:)(v40, v36, v11, v5);

        goto LABEL_26;
      }

      v18 = *(v8 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();

  v31 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n186_s15OmniSearchTypes20ProtoSchemaGeneratorC8generate07messageC05enums23externalMessagesContextSSSayAA0D11Convertible_pXpG_SayAA0d4EnumM0_pXpGSayypXp9swiftType_SS10definitiontGtFSbSSXEfU3_0sT5Types0vwX0CTf1nnc_n(v34, v8, v5, a2);

  MEMORY[0x25F8A2A10](v34, -1, -1);

LABEL_26:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25DCE2860;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v29 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
LABEL_5:
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(v4 + 48);
    if (*(v15 + 16))
    {
      v32 = v10;
      v33 = v5;
      v30 = v12 | (v6 << 6);
      v16 = (*(a3 + 48) + 16 * v30);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v15 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(v15 + 32));
      do
      {
        v22 = v20 & v21;
        if (((*(v15 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {

          v4 = a4;
          v5 = v33;
          v10 = v32;
          goto LABEL_5;
        }

        v23 = (*(v15 + 48) + 16 * v22);
        if (*v23 == v17 && v23[1] == v18)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = v22 + 1;
      }

      while ((v25 & 1) == 0);

      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v5 = v33 + 1;
      v4 = a4;
      v10 = v32;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v26 = specialized _NativeSet.extractSubset(using:count:)(v29, a2, v5, a3);

      return v26;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n186_s15OmniSearchTypes20ProtoSchemaGeneratorC8generate07messageC05enums23externalMessagesContextSSSayAA0D11Convertible_pXpG_SayAA0d4EnumM0_pXpGSayypXp9swiftType_SS10definitiontGtFSbSSXEfU3_0sT5Types0vwX0CTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Mirror.DisplayStyle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of ProtoGenerationIgnored<Any>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFD && *(a1 + 41))
    {
      v2 = *a1 + 16380;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) | (4 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (((*(a1 + 40) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >> 2 >= 0xFFF)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ProtoSchemaGenerator.ReflectedTypeInfo(uint64_t result, char a2)
{
  v2 = *(result + 40) & 1 | (a2 << 6);
  *(result + 32) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = (v0 - 192);
  v3 = *(v0 - 176);
  v4 = *(v0 - 160);
  v2[3] = *(v0 - 192);
  v2[4] = v3;
  v2[5] = v4;
  v5 = *(v0 - 320);

  return ProtoSchemaGenerator.getTypeInfo(for:)(v0 - 128);
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x25F8A2A10);
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x25F8A1F10);
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x25F8A1F10);
}

char *OUTLINED_FUNCTION_21()
{

  return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{
  *(v1 - 312) = a1;

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return outlined destroy of ProtoGenerationIgnored<Any>?(a1, v1, v2);
}

uint64_t AnswerSynthesisExtractionCandidate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657263536E6FLL && a2 == 0xEC00000074786554)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int AnswerSynthesisExtractionCandidate.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AnswerSynthesisExtractionCandidate.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E65657263536E6FLL;
  }

  else
  {
    return 0x7469746E45707061;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisExtractionCandidate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisExtractionCandidate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisExtractionCandidate.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisExtractionCandidate.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisExtractionCandidate.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v51 = v0;
  v2 = v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v49);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_1();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v50);
  v48 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_32();
  v10 = type metadata accessor for TypedValue();
  v11 = OUTLINED_FUNCTION_1(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for AnswerSynthesisExtractionCandidate(0);
  v19 = OUTLINED_FUNCTION_9_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_0();
  v31 = v2[4];
  OUTLINED_FUNCTION_41(v2, v2[3]);
  lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();
  OUTLINED_FUNCTION_40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AnswerSynthesisExtractionCandidate(v51, v24, type metadata accessor for AnswerSynthesisExtractionCandidate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v24;
    v33 = v24[1];
    lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();
    OUTLINED_FUNCTION_34();
    KeyedEncodingContainer.encode(_:forKey:)();

    v34 = OUTLINED_FUNCTION_28();
    v35(v34);
    v36 = *(v27 + 8);
  }

  else
  {
    OUTLINED_FUNCTION_30();
    v39(v17, v24, v47);
    lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_16_1();
    lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v40, v41);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v42 = *(v48 + 8);
    v43 = OUTLINED_FUNCTION_33();
    v44(v43);
    (*(v46 + 8))(v17, v47);
    v45 = *(v27 + 8);
  }

  v37 = OUTLINED_FUNCTION_26();
  v38(v37);
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys);
  }

  return result;
}

void AnswerSynthesisExtractionCandidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_36();
  a22 = v25;
  a23 = v26;
  v118 = v23;
  v28 = v27;
  v109 = v29;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO22OnScreenTextCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v110);
  v113 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_1();
  v115 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO19AppEntityCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v36 = OUTLINED_FUNCTION_1(v35);
  v111 = v37;
  v112 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_1();
  v114 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v43 = OUTLINED_FUNCTION_1(v42);
  v116 = v44;
  v117 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_25_0();
  v48 = type metadata accessor for AnswerSynthesisExtractionCandidate(0);
  v49 = OUTLINED_FUNCTION_9_1(v48);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v105 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v105 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v105 - v58;
  v60 = v28[4];
  OUTLINED_FUNCTION_41(v28, v28[3]);
  lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.CodingKeys and conformance AnswerSynthesisExtractionCandidate.CodingKeys();
  v61 = v118;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v61)
  {
    goto LABEL_8;
  }

  v106 = v59;
  v107 = v54;
  v105 = v57;
  v108 = v48;
  v118 = v28;
  v62 = v117;
  v63 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v63, 0);
  if (v66 == v65 >> 1)
  {
LABEL_7:
    v80 = v108;
    v81 = type metadata accessor for DecodingError();
    swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v83 = v80;
    v85 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v85);
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x277D84160], v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = OUTLINED_FUNCTION_28();
    v87(v86);
    v28 = v118;
LABEL_8:
    v88 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_29();
  if (v71 < (v67 >> 1))
  {
    v72 = *(v70 + v68);
    specialized ArraySlice.subscript.getter(v68 + 1, v67 >> 1, started, v70, v68, v69);
    v74 = v73;
    v76 = v75;
    swift_unknownObjectRelease();
    v77 = v107;
    if (v74 == v76 >> 1)
    {
      v78 = v72;
      v79 = v62;
      if (v78)
      {
        a13 = 1;
        lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys and conformance AnswerSynthesisExtractionCandidate.OnScreenTextCodingKeys();
        OUTLINED_FUNCTION_45(&unk_286F8FCA0, &a13);
        v93 = KeyedDecodingContainer.decode(_:forKey:)();
        v95 = v94;
        swift_unknownObjectRelease();
        v96 = OUTLINED_FUNCTION_22_0();
        v97(v96);
        v98 = OUTLINED_FUNCTION_21_0();
        v99(v98);
        *v77 = v93;
        v77[1] = v95;
        swift_storeEnumTagMultiPayload();
        v100 = v77;
        v101 = v109;
        v102 = v106;
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type AnswerSynthesisExtractionCandidate.AppEntityCodingKeys and conformance AnswerSynthesisExtractionCandidate.AppEntityCodingKeys();
        OUTLINED_FUNCTION_45(&unk_286F8FC10, &a12);
        v102 = v106;
        type metadata accessor for TypedValue();
        OUTLINED_FUNCTION_16_1();
        lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v89, v90);
        v91 = v105;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v92 = v116;
        swift_unknownObjectRelease();
        v103 = OUTLINED_FUNCTION_6_1();
        v104(v103);
        (*(v92 + 8))(v24, v79);
        swift_storeEnumTagMultiPayload();
        v100 = v91;
        v101 = v109;
      }

      outlined init with take of AnswerSynthesisExtractionCandidate(v100, v102, type metadata accessor for AnswerSynthesisExtractionCandidate);
      outlined init with take of AnswerSynthesisExtractionCandidate(v102, v101, type metadata accessor for AnswerSynthesisExtractionCandidate);
      v88 = v118;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResolutionType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616964656DLL && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125892 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706D6F4365746144 && a2 == 0xEE0073746E656E6FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F73726550 && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656C62756F44 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t AnswerSynthesisResolutionType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x697461676976616ELL;
  switch(a1)
  {
    case 1:
      result = 0x616964656DLL;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 1702125892;
      break;
    case 4:
      result = 0x706D6F4365746144;
      break;
    case 5:
      result = 0x6E6F73726550;
      break;
    case 6:
      result = 0x656C62756F44;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResolutionType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResolutionType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResolutionType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResolutionType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.MediaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.MediaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionType.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionType.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AnswerSynthesisResolutionType.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v6 = OUTLINED_FUNCTION_1(v5);
  v85 = v7;
  v86 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_1();
  v84 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v13 = OUTLINED_FUNCTION_1(v12);
  v82 = v14;
  v83 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_1();
  v81 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v20 = OUTLINED_FUNCTION_1(v19);
  v79 = v21;
  v80 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_1();
  v78 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v27 = OUTLINED_FUNCTION_1(v26);
  v76 = v28;
  v77 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1();
  v75 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v34 = OUTLINED_FUNCTION_1(v33);
  v73 = v35;
  v74 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_1();
  v72 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v41 = OUTLINED_FUNCTION_1(v40);
  v70 = v42;
  v71 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v45);
  v47 = v69 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v48);
  v69[1] = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v87);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_0();
  v58 = *v2;
  v59 = v4[4];
  OUTLINED_FUNCTION_41(v4, v4[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();
  OUTLINED_FUNCTION_40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v60 = (v54 + 8);
  switch(v58)
  {
    case 1:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();
      OUTLINED_FUNCTION_3_1();
      v68 = v70;
      v67 = v71;
      goto LABEL_9;
    case 2:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();
      v47 = v72;
      OUTLINED_FUNCTION_3_1();
      v68 = v73;
      v67 = v74;
      goto LABEL_9;
    case 3:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();
      v47 = v75;
      OUTLINED_FUNCTION_3_1();
      v68 = v76;
      v67 = v77;
      goto LABEL_9;
    case 4:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();
      v47 = v78;
      OUTLINED_FUNCTION_3_1();
      v68 = v79;
      v67 = v80;
      goto LABEL_9;
    case 5:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();
      v47 = v81;
      OUTLINED_FUNCTION_3_1();
      v68 = v82;
      v67 = v83;
      goto LABEL_9;
    case 6:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();
      v47 = v84;
      OUTLINED_FUNCTION_3_1();
      v68 = v85;
      v67 = v86;
LABEL_9:
      (*(v68 + 8))(v47, v67);
      v66 = *v60;
      v64 = v1;
      v65 = v48;
      break;
    default:
      lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();
      OUTLINED_FUNCTION_34();
      v61 = OUTLINED_FUNCTION_28();
      v62(v61);
      v63 = *v60;
      v64 = OUTLINED_FUNCTION_26();
      break;
  }

  v66(v64, v65);
  OUTLINED_FUNCTION_35();
}

Swift::Int AnswerSynthesisResolutionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](v1);
  return Hasher._finalize()();
}

void AnswerSynthesisResolutionType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_36();
  a26 = v29;
  a27 = v30;
  v145 = v27;
  v32 = v31;
  v140 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v136 = OUTLINED_FUNCTION_1(v34);
  v137 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_1();
  v143 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v134 = OUTLINED_FUNCTION_1(v40);
  v135 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_1();
  v142 = v45;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v128);
  v133 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_1();
  v139 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v52 = OUTLINED_FUNCTION_1(v51);
  v131 = v53;
  v132 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_1();
  v138 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v59 = OUTLINED_FUNCTION_1(v58);
  v129 = v60;
  v130 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10_1();
  v141 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO15MediaCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v66 = OUTLINED_FUNCTION_1(v65);
  v126 = v67;
  v127 = v66;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v70);
  v72 = v120 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v73);
  v125 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v77);
  v79 = v120 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes29AnswerSynthesisResolutionTypeO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v80);
  v82 = v81;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_24_0();
  v86 = v32[3];
  v87 = v32[4];
  v144 = v32;
  OUTLINED_FUNCTION_41(v32, v86);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionType.CodingKeys and conformance AnswerSynthesisResolutionType.CodingKeys();
  OUTLINED_FUNCTION_40();
  v88 = v145;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v88)
  {
    goto LABEL_8;
  }

  v123 = v79;
  v122 = v73;
  v124 = v72;
  v90 = v141;
  v89 = v142;
  v91 = v143;
  v145 = v80;
  v92 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v92, 0);
  if (v95 == v94 >> 1)
  {
LABEL_7:
    v109 = v28;
    v110 = type metadata accessor for DecodingError();
    swift_allocError();
    v112 = v111;
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v112 = &type metadata for AnswerSynthesisResolutionType;
    v114 = v145;
    v115 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v115);
    (*(*(v110 - 8) + 104))(v112, *MEMORY[0x277D84160], v110);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v109, v114);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v144);
LABEL_9:
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_29();
  v120[1] = 0;
  if (v100 < (v96 >> 1))
  {
    v121 = *(v99 + v97);
    specialized ArraySlice.subscript.getter(v97 + 1, v96 >> 1, started, v99, v97, v98);
    v102 = v101;
    v104 = v103;
    swift_unknownObjectRelease();
    if (v102 == v104 >> 1)
    {
      v105 = v82;
      v106 = v140;
      v107 = v145;
      switch(v121)
      {
        case 1:
          a12 = 1;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.MediaCodingKeys and conformance AnswerSynthesisResolutionType.MediaCodingKeys();
          v91 = v124;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA50, &a12);
          swift_unknownObjectRelease();
          v118 = v126;
          v117 = v127;
          goto LABEL_16;
        case 2:
          a13 = 2;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.UrlCodingKeys and conformance AnswerSynthesisResolutionType.UrlCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FA70, &a13);
          swift_unknownObjectRelease();
          (*(v129 + 8))(v90, v130);
          break;
        case 3:
          a14 = 3;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateCodingKeys and conformance AnswerSynthesisResolutionType.DateCodingKeys();
          v91 = v138;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA90, &a14);
          swift_unknownObjectRelease();
          v118 = v131;
          v117 = v132;
          goto LABEL_16;
        case 4:
          a15 = 4;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionType.DateComponentsCodingKeys();
          v116 = v139;
          OUTLINED_FUNCTION_2_1(&unk_286F8FAB0, &a15);
          swift_unknownObjectRelease();
          (*(v133 + 8))(v116, v128);
          break;
        case 5:
          a16 = 5;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.PersonCodingKeys and conformance AnswerSynthesisResolutionType.PersonCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FAD0, &a16);
          swift_unknownObjectRelease();
          (*(v135 + 8))(v89, v134);
          break;
        case 6:
          a17 = 6;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.DoubleCodingKeys and conformance AnswerSynthesisResolutionType.DoubleCodingKeys();
          OUTLINED_FUNCTION_2_1(&unk_286F8FAF0, &a17);
          swift_unknownObjectRelease();
          v117 = v136;
          v118 = v137;
LABEL_16:
          (*(v118 + 8))(v91, v117);
          break;
        default:
          a11 = 0;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionType.NavigationCodingKeys and conformance AnswerSynthesisResolutionType.NavigationCodingKeys();
          v108 = v123;
          OUTLINED_FUNCTION_2_1(&unk_286F8FA30, &a11);
          swift_unknownObjectRelease();
          (*(v125 + 8))(v108, v122);
          break;
      }

      (*(v105 + 8))(v28, v107);
      v119 = v144;
      *v106 = v121;
      __swift_destroy_boxed_opaque_existential_1(v119);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResolutionResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461676976616ELL && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125892 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D6F4365746144 && a2 == 0xEE0073746E656E6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F73726550 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C62756F44 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t AnswerSynthesisResolutionResult.CodingKeys.stringValue.getter(char a1)
{
  result = 0x697461676976616ELL;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 1702125892;
      break;
    case 3:
      result = 0x706D6F4365746144;
      break;
    case 4:
      result = 0x6E6F73726550;
      break;
    case 5:
      result = 0x656C62756F44;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AnswerSynthesisExtractionCandidate.AppEntityCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResolutionResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResolutionResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResolutionResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResolutionResult.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.DoubleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.NavigationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.PersonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResolutionResult.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResolutionResult.UrlCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnswerSynthesisResolutionResult.encode(to:)(void *a1)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v147);
  v145 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1();
  v141 = v7;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v148);
  v146 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_1();
  v142 = v12;
  OUTLINED_FUNCTION_32();
  v13 = type metadata accessor for IntentPerson();
  v14 = OUTLINED_FUNCTION_1(v13);
  v143 = v15;
  v144 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_1();
  v140 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v21 = OUTLINED_FUNCTION_1(v20);
  v138 = v22;
  v139 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_1();
  v135 = v26;
  OUTLINED_FUNCTION_32();
  v27 = type metadata accessor for DateComponents();
  v28 = OUTLINED_FUNCTION_1(v27);
  v136 = v29;
  v137 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_1();
  v134 = v33 - v32;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v133);
  v132 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_1();
  v129 = v38;
  OUTLINED_FUNCTION_32();
  v131 = type metadata accessor for Date();
  v39 = OUTLINED_FUNCTION_1(v131);
  v130 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_1();
  v128 = v44 - v43;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v127);
  v126 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_1();
  v123 = v49;
  OUTLINED_FUNCTION_32();
  v125 = type metadata accessor for URL();
  v50 = OUTLINED_FUNCTION_1(v125);
  v124 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_1();
  v122 = v55 - v54;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v121);
  v120 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  v61 = &v118 - v60;
  v62 = type metadata accessor for PlaceDescriptor();
  v63 = OUTLINED_FUNCTION_1(v62);
  v119 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_5_1();
  v69 = v68 - v67;
  v70 = type metadata accessor for AnswerSynthesisResolutionResult(0);
  v71 = OUTLINED_FUNCTION_9_1(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_5_1();
  v76 = (v75 - v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v78 = OUTLINED_FUNCTION_1(v77);
  v150 = v79;
  v151 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_25_0();
  v83 = a1[4];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();
  v149 = v1;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AnswerSynthesisExtractionCandidate(v152, v76, type metadata accessor for AnswerSynthesisResolutionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = v124;
      OUTLINED_FUNCTION_30();
      v90 = v122;
      v107 = OUTLINED_FUNCTION_33();
      v88 = v125;
      v108(v107);
      v154 = 1;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();
      v93 = v123;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_13_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v109, v110);
      OUTLINED_FUNCTION_39();
      v96 = v127;
      OUTLINED_FUNCTION_19_0();
      v102 = &v159;
      goto LABEL_7;
    case 2u:
      v89 = v130;
      OUTLINED_FUNCTION_30();
      v90 = v128;
      v98 = OUTLINED_FUNCTION_33();
      v88 = v131;
      v99(v98);
      v155 = 2;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();
      v93 = v129;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_15_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v100, v101);
      OUTLINED_FUNCTION_39();
      v96 = v133;
      OUTLINED_FUNCTION_19_0();
      v102 = &v160;
LABEL_7:
      v97 = *(v102 - 32);
      goto LABEL_8;
    case 3u:
      v89 = v136;
      v88 = v137;
      OUTLINED_FUNCTION_30();
      v90 = v134;
      v103 = OUTLINED_FUNCTION_33();
      v104(v103);
      v156 = 3;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();
      v93 = v135;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_14_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v105, v106);
      OUTLINED_FUNCTION_39();
      v96 = v139;
      OUTLINED_FUNCTION_19_0();
      v97 = v138;
      goto LABEL_8;
    case 4u:
      v89 = v143;
      v88 = v144;
      OUTLINED_FUNCTION_30();
      v90 = v140;
      v91 = OUTLINED_FUNCTION_33();
      v92(v91);
      v157 = 4;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();
      v93 = v142;
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_17_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v94, v95);
      OUTLINED_FUNCTION_39();
      v96 = v148;
      OUTLINED_FUNCTION_19_0();
      v97 = v146;
LABEL_8:
      (*(v97 + 8))(v93, v96);
      (*(v89 + 8))(v90, v88);
      goto LABEL_9;
    case 5u:
      v115 = *v76;
      v158 = 5;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      v116 = OUTLINED_FUNCTION_21_0();
      v117(v116);
      v112 = OUTLINED_FUNCTION_22_0();
      return v111(v112, v113);
    default:
      v84 = v119;
      (*(v119 + 32))(v69, v76, v62);
      v153 = 0;
      lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_11_1();
      lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v85, v86);
      v87 = v121;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v120 + 8))(v61, v87);
      (*(v84 + 8))(v69, v62);
LABEL_9:
      v111 = *(v150 + 8);
      v112 = v76;
      v113 = v70;
      return v111(v112, v113);
  }
}

void AnswerSynthesisResolutionResult.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16DoubleCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v147);
  v158 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1();
  v157 = v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO16PersonCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v146);
  v152 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_1();
  v156 = v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO24DateComponentsCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v145);
  v151 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  v155 = v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO14DateCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v144);
  v150 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_1();
  v163 = v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO13UrlCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v143);
  v149 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_1();
  v162 = v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO20NavigationCodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v142);
  v148 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1();
  v154 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes31AnswerSynthesisResolutionResultO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  v34 = OUTLINED_FUNCTION_1(v33);
  v160 = v35;
  v161 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  v40 = &v132 - v39;
  v159 = type metadata accessor for AnswerSynthesisResolutionResult(0);
  v41 = OUTLINED_FUNCTION_9_1(v159);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v140 = (&v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v141 = &v132 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v132 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v132 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v132 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v132 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v132 - v60;
  v63 = a1[3];
  v62 = a1[4];
  v164 = a1;
  OUTLINED_FUNCTION_41(a1, v63);
  lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.CodingKeys and conformance AnswerSynthesisResolutionResult.CodingKeys();
  v64 = v165;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v64)
  {
    goto LABEL_10;
  }

  v135 = v56;
  v136 = v53;
  v137 = v50;
  v138 = v59;
  v65 = v163;
  v165 = v61;
  v66 = v161;
  v67 = v40;
  v68 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC15OmniSearchTypes34AnswerSynthesisExtractionCandidateO10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLO_Tt1g5(v68, 0);
  if (v71 == v70 >> 1)
  {
    v72 = v160;
LABEL_9:
    v87 = v159;
    v88 = type metadata accessor for DecodingError();
    swift_allocError();
    v90 = v89;
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v90 = v87;
    v92 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v92);
    (*(*(v88 - 8) + 104))(v90, *MEMORY[0x277D84160], v88);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v72 + 8))(v67, v66);
LABEL_10:
    v93 = v164;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v93);
    return;
  }

  OUTLINED_FUNCTION_29();
  v139 = v40;
  v134 = 0;
  if (v77 < (v73 >> 1))
  {
    v133 = *(v76 + v74);
    specialized ArraySlice.subscript.getter(v74 + 1, v73 >> 1, started, v76, v74, v75);
    v79 = v78;
    v81 = v80;
    swift_unknownObjectRelease();
    v82 = v79 == v81 >> 1;
    v83 = v165;
    v84 = v158;
    if (v82)
    {
      switch(v133)
      {
        case 1:
          v167 = 1;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.UrlCodingKeys and conformance AnswerSynthesisResolutionResult.UrlCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F740, &v167);
          type metadata accessor for URL();
          OUTLINED_FUNCTION_13_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v101, v102);
          OUTLINED_FUNCTION_23_0(v172);
          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_6_1();
          v124(v123);
          v125 = OUTLINED_FUNCTION_1_1();
          v126(v125);
          OUTLINED_FUNCTION_44();
          goto LABEL_17;
        case 2:
          v168 = 2;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateCodingKeys and conformance AnswerSynthesisResolutionResult.DateCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F7D0, &v168);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v96, v97);
          OUTLINED_FUNCTION_23_0(&v173);
          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v109 = OUTLINED_FUNCTION_6_1();
          v110(v109);
          v111 = OUTLINED_FUNCTION_1_1();
          v112(v111);
          OUTLINED_FUNCTION_44();
          goto LABEL_17;
        case 3:
          v169 = 3;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DateComponentsCodingKeys and conformance AnswerSynthesisResolutionResult.DateComponentsCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F860, &v169);
          type metadata accessor for DateComponents();
          OUTLINED_FUNCTION_14_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v98, v99);
          v100 = v137;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v113 = OUTLINED_FUNCTION_37();
          v114(v113);
          v115 = OUTLINED_FUNCTION_1_1();
          v116(v115);
          swift_storeEnumTagMultiPayload();
          v122 = v100;
          goto LABEL_18;
        case 4:
          v170 = 4;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.PersonCodingKeys and conformance AnswerSynthesisResolutionResult.PersonCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F8F0, &v170);
          type metadata accessor for IntentPerson();
          OUTLINED_FUNCTION_17_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v94, v95);
          OUTLINED_FUNCTION_23_0(&v175);
          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v105 = OUTLINED_FUNCTION_6_1();
          v106(v105);
          v107 = OUTLINED_FUNCTION_1_1();
          v108(v107);
          OUTLINED_FUNCTION_44();
LABEL_17:
          swift_storeEnumTagMultiPayload();
          v122 = v65;
          goto LABEL_18;
        case 5:
          v171 = 5;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.DoubleCodingKeys and conformance AnswerSynthesisResolutionResult.DoubleCodingKeys();
          v103 = v157;
          OUTLINED_FUNCTION_4_1(&unk_286F8F980, &v171);
          v104 = v147;
          KeyedDecodingContainer.decode(_:forKey:)();
          v128 = v127;
          swift_unknownObjectRelease();
          (*(v84 + 8))(v103, v104);
          v129 = OUTLINED_FUNCTION_1_1();
          v130(v129);
          v131 = v140;
          *v140 = v128;
          swift_storeEnumTagMultiPayload();
          v122 = v131;
LABEL_18:
          v121 = v164;
          break;
        default:
          v166 = 0;
          lazy protocol witness table accessor for type AnswerSynthesisResolutionResult.NavigationCodingKeys and conformance AnswerSynthesisResolutionResult.NavigationCodingKeys();
          OUTLINED_FUNCTION_4_1(&unk_286F8F6B0, &v166);
          type metadata accessor for PlaceDescriptor();
          OUTLINED_FUNCTION_11_1();
          lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v85, v86);
          OUTLINED_FUNCTION_23_0(&v174);
          OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_31();
          swift_unknownObjectRelease();
          v117 = OUTLINED_FUNCTION_6_1();
          v118(v117);
          v119 = OUTLINED_FUNCTION_1_1();
          v120(v119);
          OUTLINED_FUNCTION_44();
          swift_storeEnumTagMultiPayload();
          v121 = v164;
          v122 = v65;
          break;
      }

      outlined init with take of AnswerSynthesisExtractionCandidate(v122, v83, type metadata accessor for AnswerSynthesisResolutionResult);
      outlined init with take of AnswerSynthesisExtractionCandidate(v83, v153, type metadata accessor for AnswerSynthesisResolutionResult);
      v93 = v121;
      goto LABEL_11;
    }

    v72 = v160;
    v67 = v139;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AnswerSynthesisResult.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_38();
}

uint64_t AnswerSynthesisResult.dialog.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_38();
}

uint64_t AnswerSynthesisResult.__allocating_init(answer:dialog:sources:resolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

void *AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  outlined init with take of AnswerSynthesisResolutionResult?(a6, v6 + OBJC_IVAR____TtC15OmniSearchTypes21AnswerSynthesisResult_resolutionResult);
  return v6;
}

uint64_t AnswerSynthesisResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726577736E61 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000025DCEABF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t AnswerSynthesisResult.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726577736E61;
  switch(a1)
  {
    case 1:
      result = 0x676F6C616964;
      break;
    case 2:
      result = 0x73656372756F73;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnswerSynthesisResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnswerSynthesisResult.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AnswerSynthesisResult.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnswerSynthesisResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AnswerSynthesisResult.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  outlined destroy of AnswerSynthesisResolutionResult?(v0 + OBJC_IVAR____TtC15OmniSearchTypes21AnswerSynthesisResult_resolutionResult);
  return v0;
}

uint64_t AnswerSynthesisResult.__deallocating_deinit()
{
  AnswerSynthesisResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AnswerSynthesisResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes21AnswerSynthesisResultC10CodingKeys33_EA2E033E5419814CE23C73E65D97B491LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  OUTLINED_FUNCTION_41(a1, a1[3]);
  lazy protocol witness table accessor for type AnswerSynthesisResult.CodingKeys and conformance AnswerSynthesisResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v3[2];
  v15 = v3[3];
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[4];
    v17 = v3[5];
    v23 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[6];
    v21[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMd, &_sSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOGMR);
    lazy protocol witness table accessor for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A](&lazy protocol witness table cache variable for type [AnswerSynthesisExtractionCandidate] and conformance <A> [A], &lazy protocol witness table cache variable for type AnswerSynthesisExtractionCandidate and conformance AnswerSynthesisExtractionCandidate);
    OUTLINED_FUNCTION_43();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[14] = 3;
    type metadata accessor for AnswerSynthesisResolutionResult(0);
    OUTLINED_FUNCTION_12_1();
    lazy protocol witness table accessor for type TypedValue and conformance TypedValue(v18, v19);
    OUTLINED_FUNCTION_43();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t AnswerSynthesisResult.__allocating_init(from:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AnswerSynthesisResult.init(from:)();
  return v3;
}