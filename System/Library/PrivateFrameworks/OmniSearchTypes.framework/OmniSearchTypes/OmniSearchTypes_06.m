uint64_t PhoneHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73726F68747561 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746174536C6C6163 && a2 == 0xEA00000000007375;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657461446C6C6163 && a2 == 0xE800000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x657079546C6C6163 && a2 == 0xE800000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t PhoneHistory.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73726F68747561;
      break;
    case 2:
      result = 0x6E65697069636572;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0x6D754E656E6F6870;
      break;
    case 5:
      result = 0x746174536C6C6163;
      break;
    case 6:
      result = 0x657461446C6C6163;
      break;
    case 7:
      result = 0x657079546C6C6163;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PhoneHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PhoneHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PhoneHistory.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneHistory.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PhoneHistory.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_147_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v17 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_85_0();
    v18 = v1[3];
    OUTLINED_FUNCTION_85_0();
    v19 = v1[4];
    OUTLINED_FUNCTION_85_0();
    v20 = v1[5];
    OUTLINED_FUNCTION_85_0();
    v8 = v1[6];
    v9 = v1[7];
    OUTLINED_FUNCTION_221_0(5);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for PhoneHistory(0);
    v11 = v10[10];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v12);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[11]);
    OUTLINED_FUNCTION_221_0(7);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v10[12]);
    OUTLINED_FUNCTION_221_0(8);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = v10[13];
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v15 = OUTLINED_FUNCTION_10();
  v16(v15);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys);
  }

  return result;
}

void PhoneHistory.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_36();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_94_1();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12PhoneHistoryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v48);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_79_0();
  v50 = type metadata accessor for PhoneHistory(0);
  v27 = OUTLINED_FUNCTION_9_1(v50);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_2();
  v49 = v30;
  v31 = v13[3];
  v32 = v13[4];
  v33 = OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_41(v33, v34);
  lazy protocol witness table accessor for type PhoneHistory.CodingKeys and conformance PhoneHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    OUTLINED_FUNCTION_166();
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v11)
    {
      v36 = v49[3];

      if ((v32 & 1) == 0)
      {
LABEL_9:
        if (!v23)
        {
          goto LABEL_11;
        }

LABEL_10:
        v37 = v49[5];

        goto LABEL_11;
      }
    }

    else if (!v32)
    {
      goto LABEL_9;
    }

    v35 = v49[4];

    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LOBYTE(a10) = 0;
  OUTLINED_FUNCTION_21_1();
  *v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v49[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_78_1();
  v49[2] = a10;
  OUTLINED_FUNCTION_78_1();
  v49[3] = a10;
  OUTLINED_FUNCTION_78_1();
  v49[4] = a10;
  OUTLINED_FUNCTION_78_1();
  v49[5] = a10;
  OUTLINED_FUNCTION_21_1();
  v49[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49[7] = v39;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_0_10();
  _s10Foundation4DateVACSQAAWlTm_0(v40);
  OUTLINED_FUNCTION_21_1();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  OUTLINED_FUNCTION_423();
  v41 = v50[10];
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_21_1();
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v42, v43, v50[11]);
  OUTLINED_FUNCTION_21_1();
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v44, v45, v50[12]);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1_9();
  _s10Foundation4DateVACSQAAWlTm_0(v46);
  OUTLINED_FUNCTION_21_1();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v23 + 8))(v11, v48);
  v47 = v50[13];
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_222_0();
  outlined init with copy of EmailDocument();
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_270_0();
LABEL_11:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

uint64_t VoicemailTranscript.init(id:displayTitle:phoneNumber:date:url:)()
{
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_180_0(v0, v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for VoicemailTranscript(0);
  v8 = *(v7 + 28);
  OUTLINED_FUNCTION_318_0();
  _s10Foundation4DateVSgWObTm_0();
  v9 = *(v7 + 32);
  return _s10Foundation4DateVSgWObTm_0();
}

void static VoicemailTranscript.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v4 = OUTLINED_FUNCTION_245_0();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_279(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_1();
  v77 = v19;
  OUTLINED_FUNCTION_32();
  v20 = type metadata accessor for Date();
  v21 = OUTLINED_FUNCTION_1(v20);
  v78 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_94_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_194_0();
  v35 = v35 && v33 == v34;
  if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v36 = v0[3];
  if (!v1[3])
  {
    if (v36)
    {
      goto LABEL_44;
    }

LABEL_15:
    v40 = v1[5];
    v41 = v0[5];
    if (v40)
    {
      if (!v41)
      {
        goto LABEL_44;
      }

      v42 = v1[4] == v0[4] && v40 == v41;
      if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v41)
    {
      goto LABEL_44;
    }

    v75 = v4;
    v74 = type metadata accessor for VoicemailTranscript(0);
    v43 = *(v74 + 28);
    v44 = *(v29 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v3);
    if (v35)
    {
      OUTLINED_FUNCTION_16_3(v3 + v44);
      if (v35)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_34:
        v57 = *(v74 + 32);
        v58 = *(v15 + 48);
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        v59 = OUTLINED_FUNCTION_299_0();
        OUTLINED_FUNCTION_66(v59, v60, v75);
        if (v35)
        {
          v61 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v61, v62, v75);
          if (v35)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_44;
          }
        }

        else
        {
          outlined init with copy of Date?();
          v63 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v63, v64, v75);
          if (!v65)
          {
            OUTLINED_FUNCTION_203_0();
            v69(v76, v77 + v58, v75);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v70);
            OUTLINED_FUNCTION_227_0();
            dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = *(v7 + 8);
            v72 = OUTLINED_FUNCTION_292_0();
            v71(v72);
            v73 = OUTLINED_FUNCTION_138_1();
            v71(v73);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_44;
          }

          v66 = *(v7 + 8);
          v67 = OUTLINED_FUNCTION_138_1();
          v68(v67);
        }

        v48 = &_s10Foundation3URLVSg_ADtMd;
        v49 = &_s10Foundation3URLVSg_ADtMR;
        v50 = v77;
LABEL_43:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v50, v48, v49);
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v3 + v44);
      if (!v45)
      {
        OUTLINED_FUNCTION_203_0();
        v51(v2, v3 + v44, v20);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v52);
        OUTLINED_FUNCTION_396();
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        v54 = *(v78 + 8);
        v55 = OUTLINED_FUNCTION_288();
        v54(v55);
        v56 = OUTLINED_FUNCTION_38();
        v54(v56);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v53 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_390();
      v46 = OUTLINED_FUNCTION_38();
      v47(v46);
    }

    v48 = &_s10Foundation4DateVSg_ADtMd;
    v49 = &_s10Foundation4DateVSg_ADtMR;
    v50 = v3;
    goto LABEL_43;
  }

  if (v36)
  {
    OUTLINED_FUNCTION_265_0();
    v39 = v35 && v37 == v38;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_42_0();
}

uint64_t VoicemailTranscript.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t VoicemailTranscript.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoicemailTranscript.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = VoicemailTranscript.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoicemailTranscript.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoicemailTranscript.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void VoicemailTranscript.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v0[4];
    v11 = v0[5];
    OUTLINED_FUNCTION_47_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = type metadata accessor for VoicemailTranscript(0);
    v13 = *(v12 + 28);
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v12 + 32);
    OUTLINED_FUNCTION_151_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v16);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v17 = OUTLINED_FUNCTION_10();
  v18(v17);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys);
  }

  return result;
}

void VoicemailTranscript.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_279(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes19VoicemailTranscriptV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  v33 = OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_237();
  v16 = type metadata accessor for VoicemailTranscript(0);
  v17 = OUTLINED_FUNCTION_9_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v22 = (v21 - v20);
  v23 = v2[4];
  OUTLINED_FUNCTION_41(v2, v2[3]);
  lazy protocol witness table accessor for type VoicemailTranscript.CodingKeys and conformance VoicemailTranscript.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    *v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v22[1] = v24;
    OUTLINED_FUNCTION_77_1();
    v22[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22[3] = v25;
    OUTLINED_FUNCTION_113_0();
    v22[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22[5] = v26;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v27);
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_320_0();
    v28 = *(v16 + 28);
    _s10Foundation4DateVSgWObTm_0();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v29);
    OUTLINED_FUNCTION_320_0();
    v30 = OUTLINED_FUNCTION_150_0();
    v31(v30, v33);
    v32 = *(v16 + 32);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t JournalEntry.init(id:displayTitle:text:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  OUTLINED_FUNCTION_180_0(a1, a2, a3, a4, a5, a6, a7);
  v7 = *(type metadata accessor for JournalEntry(0) + 28);
  return _s10Foundation4DateVSgWObTm_0();
}

void static JournalEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_251_0();
  v3 = type metadata accessor for URL();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_51_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_266();
  v19 = v19 && v17 == v18;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v20 = v1[3];
  if (!v2[3])
  {
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_15:
    v24 = v2[5];
    v25 = v1[5];
    if (v24)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = v2[4] == v1[4] && v24 == v25;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v25)
    {
      goto LABEL_33;
    }

    v27 = *(type metadata accessor for JournalEntry(0) + 28);
    v28 = *(v13 + 48);
    OUTLINED_FUNCTION_271_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_271_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v0);
    if (v19)
    {
      OUTLINED_FUNCTION_16_3(v0 + v28);
      if (v19)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_33;
      }
    }

    else
    {
      OUTLINED_FUNCTION_292_0();
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v0 + v28);
      if (!v29)
      {
        OUTLINED_FUNCTION_30();
        v32 = OUTLINED_FUNCTION_311_0();
        v33(v32);
        OUTLINED_FUNCTION_1_9();
        _s10Foundation4DateVACSQAAWlTm_0(v34);
        OUTLINED_FUNCTION_134_0();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v6 + 8);
        v36 = OUTLINED_FUNCTION_38();
        v35(v36);
        v37 = OUTLINED_FUNCTION_283();
        v35(v37);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_390();
      v30 = OUTLINED_FUNCTION_283();
      v31(v30);
    }

    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    goto LABEL_33;
  }

  if (v20)
  {
    OUTLINED_FUNCTION_249_0();
    v23 = v19 && v21 == v22;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_42_0();
}

uint64_t JournalEntry.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5479616C70736964 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047348 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t JournalEntry.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JournalEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JournalEntry.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JournalEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JournalEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void JournalEntry.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v0[4];
    v11 = v0[5];
    OUTLINED_FUNCTION_47_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(type metadata accessor for JournalEntry(0) + 28);
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v13);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v14 = OUTLINED_FUNCTION_10();
  v15(v14);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys);
  }

  return result;
}

void JournalEntry.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_237();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12JournalEntryV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_1();
  v11 = type metadata accessor for JournalEntry(0);
  v12 = OUTLINED_FUNCTION_9_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = (v16 - v15);
  v18 = v2[3];
  v19 = v2[4];
  v20 = OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_41(v20, v21);
  lazy protocol witness table accessor for type JournalEntry.CodingKeys and conformance JournalEntry.CodingKeys();
  OUTLINED_FUNCTION_263_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_186();
    *v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v17[1] = v22;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_186();
    v17[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17[3] = v23;
    OUTLINED_FUNCTION_113_0();
    v17[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17[5] = v24;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v25);
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_186();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_141_0();
    v27(v26);
    v28 = *(v11 + 28);
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

uint64_t VoiceMemo.init(id:displayName:creationDate:durationInSeconds:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char a6@<W6>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for VoiceMemo(0);
  v11 = v10[6];
  _s10Foundation4DateVSgWObTm_0();
  v12 = a7 + v10[7];
  *v12 = a5;
  v12[8] = a6 & 1;
  v13 = v10[8];
  return _s10Foundation4DateVSgWObTm_0();
}

uint64_t VoiceMemo.creationDate.getter()
{
  return VoiceMemo.creationDate.getter();
}

{
  v0 = OUTLINED_FUNCTION_35_1();
  v2 = *(v1(v0) + 24);
  return OUTLINED_FUNCTION_88_1();
}

void static VoiceMemo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  v5 = OUTLINED_FUNCTION_245_0();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_279(v18);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v80);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_1();
  v81 = v22;
  OUTLINED_FUNCTION_32();
  v23 = type metadata accessor for Date();
  v24 = OUTLINED_FUNCTION_1(v23);
  v82 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_333();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_255();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_194_0();
  v38 = v38 && v36 == v37;
  if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = *(v1 + 24);
  if (!*(v2 + 24))
  {
    if (v39)
    {
      goto LABEL_25;
    }

LABEL_15:
    v79 = v13;
    v77 = v5;
    v78 = type metadata accessor for VoiceMemo(0);
    v43 = *(v78 + 24);
    v44 = *(v32 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v4);
    if (v38)
    {
      OUTLINED_FUNCTION_16_3(v4 + v44);
      if (v38)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_27:
        v55 = v78;
        v56 = *(v78 + 28);
        v57 = *(v2 + v56 + 8);
        v58 = *(v1 + v56 + 8);
        if (v57)
        {
          v59 = v79;
          if (!v58)
          {
            goto LABEL_25;
          }
        }

        else
        {
          OUTLINED_FUNCTION_247();
          v59 = v79;
          if (v60)
          {
            goto LABEL_25;
          }
        }

        v61 = *(v55 + 32);
        v62 = *(v80 + 48);
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        OUTLINED_FUNCTION_65();
        outlined init with copy of Date?();
        v63 = OUTLINED_FUNCTION_299_0();
        OUTLINED_FUNCTION_66(v63, v64, v77);
        if (v38)
        {
          v65 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v65, v66, v77);
          if (v38)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }
        }

        else
        {
          outlined init with copy of Date?();
          v67 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_66(v67, v68, v77);
          if (!v69)
          {
            OUTLINED_FUNCTION_203_0();
            v73(v59, v81 + v62, v77);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v74);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v75 = *(v8 + 8);
            v75(v59, v77);
            v76 = OUTLINED_FUNCTION_138_1();
            (v75)(v76);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }

          v70 = *(v8 + 8);
          v71 = OUTLINED_FUNCTION_138_1();
          v72(v71);
        }

        v47 = &_s10Foundation3URLVSg_ADtMd;
        v48 = &_s10Foundation3URLVSg_ADtMR;
        v49 = v81;
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v4 + v44);
      if (!v45)
      {
        OUTLINED_FUNCTION_203_0();
        v50(v3, v4 + v44, v23);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v51);
        OUTLINED_FUNCTION_396();
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = *(v82 + 8);
        v54 = OUTLINED_FUNCTION_288();
        v53(v54);
        (v53)(v0, v23);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v52 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_390();
      v46(v0, v23);
    }

    v47 = &_s10Foundation4DateVSg_ADtMd;
    v48 = &_s10Foundation4DateVSg_ADtMR;
    v49 = v4;
LABEL_24:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v49, v47, v48);
    goto LABEL_25;
  }

  if (v39)
  {
    OUTLINED_FUNCTION_265_0();
    v42 = v38 && v40 == v41;
    if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_42_0();
}

uint64_t VoiceMemo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000025DCEB2B0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

unint64_t VoiceMemo.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x6E6F697461657263;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceMemo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = VoiceMemo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceMemo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceMemo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void VoiceMemo.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_140_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for VoiceMemo(0);
    v11 = v10[6];
    OUTLINED_FUNCTION_131_1();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v12);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_296((v0 + v10[7]));
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = v10[8];
    OUTLINED_FUNCTION_151_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_56_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v15 = OUTLINED_FUNCTION_10();
  v16(v15);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys);
  }

  return result;
}

void VoiceMemo.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_62(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_94_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes9VoiceMemoV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  v13 = OUTLINED_FUNCTION_1(v12);
  v35 = v14;
  v36 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59_1();
  v18 = type metadata accessor for VoiceMemo(0);
  v19 = OUTLINED_FUNCTION_9_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  v24 = (v23 - v22);
  v25 = v3[4];
  OUTLINED_FUNCTION_41(v3, v3[3]);
  lazy protocol witness table accessor for type VoiceMemo.CodingKeys and conformance VoiceMemo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    *v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v24[1] = v26;
    OUTLINED_FUNCTION_77_1();
    v24[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24[3] = v27;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v28);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v18[6];
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_137_0();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v24 + v18[7];
    *v31 = v30;
    v31[8] = v32 & 1;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v33);
    OUTLINED_FUNCTION_175_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v35 + 8))(v1, v36);
    v34 = v18[8];
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_35();
}

void Safari.init(id:websiteTitle:websiteUrl:body:contentType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  *v27 = v29;
  v27[1] = v30;
  v27[2] = v31;
  v27[3] = v32;
  v33 = type metadata accessor for Safari(0);
  v34 = v33[6];
  OUTLINED_FUNCTION_229_0();
  _s10Foundation4DateVSgWObTm_0();
  v35 = (v28 + v33[7]);
  *v35 = v26;
  v35[1] = v24;
  v36 = (v28 + v33[8]);
  *v36 = v22;
  v36[1] = a21;
  v37 = v33[9];
  OUTLINED_FUNCTION_229_0();
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_42_0();
}

uint64_t Safari.body.getter()
{
  v0 = type metadata accessor for Safari(0);
  OUTLINED_FUNCTION_68(*(v0 + 28));
  return OUTLINED_FUNCTION_38();
}

uint64_t Safari.contentType.getter()
{
  return Safari.contentType.getter();
}

{
  v0 = OUTLINED_FUNCTION_145();
  v2 = v1(v0);
  OUTLINED_FUNCTION_68(*(v2 + 32));
  return OUTLINED_FUNCTION_38();
}

void static Safari.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_251_0();
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = OUTLINED_FUNCTION_62(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v19 = OUTLINED_FUNCTION_9_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_266();
  v25 = v25 && v23 == v24;
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = *(v1 + 24);
  if (!*(v2 + 24))
  {
    if (v26)
    {
      goto LABEL_25;
    }

LABEL_15:
    v67 = v7;
    v64 = v0;
    v65 = v12;
    v66 = type metadata accessor for Safari(0);
    v30 = v66[6];
    v31 = *(v18 + 48);
    outlined init with copy of Date?();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v3);
    if (v25)
    {
      OUTLINED_FUNCTION_16_3(v3 + v31);
      if (v25)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_27:
        v41 = v66[7];
        OUTLINED_FUNCTION_293_0();
        if (v44)
        {
          if (!v42)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_25_2(v43);
          v47 = v25 && v45 == v46;
          if (!v47 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v42)
        {
          goto LABEL_25;
        }

        v48 = v66[8];
        OUTLINED_FUNCTION_293_0();
        if (v51)
        {
          if (!v49)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_25_2(v50);
          v54 = v25 && v52 == v53;
          if (!v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v49)
        {
          goto LABEL_25;
        }

        v55 = v66[9];
        v56 = *(v18 + 48);
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_323();
        OUTLINED_FUNCTION_16_3(v64);
        if (v25)
        {
          OUTLINED_FUNCTION_16_3(v64 + v56);
          if (v25)
          {
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v64, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }
        }

        else
        {
          outlined init with copy of Date?();
          OUTLINED_FUNCTION_16_3(v64 + v56);
          if (!v57)
          {
            OUTLINED_FUNCTION_203_0();
            v60(v65, v64 + v56, v4);
            OUTLINED_FUNCTION_1_9();
            _s10Foundation4DateVACSQAAWlTm_0(v61);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v62 = *(v67 + 8);
            v62(v65, v4);
            v63 = OUTLINED_FUNCTION_302_0();
            (v62)(v63);
            outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v64, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_390();
          v58 = OUTLINED_FUNCTION_302_0();
          v59(v58);
        }

        v35 = v64;
LABEL_24:
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v35, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
        goto LABEL_25;
      }
    }

    else
    {
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v3 + v31);
      if (!v32)
      {
        (*(v67 + 32))(v65, v3 + v31, v4);
        OUTLINED_FUNCTION_1_9();
        _s10Foundation4DateVACSQAAWlTm_0(v36);
        OUTLINED_FUNCTION_135_1();
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v67 + 8);
        v39 = OUTLINED_FUNCTION_302_0();
        v38(v39);
        v40 = OUTLINED_FUNCTION_430();
        v38(v40);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if ((v37 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_390();
      v33 = OUTLINED_FUNCTION_430();
      v34(v33);
    }

    v35 = v3;
    goto LABEL_24;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_249_0();
    v29 = v25 && v27 == v28;
    if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_42_0();
}

uint64_t Safari.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5465746973626577 && a2 == 0xEC000000656C7469;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 2036625250 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t Safari.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x5465746973626577;
      break;
    case 2:
      result = 0x5565746973626577;
      break;
    case 3:
      result = 2036625250;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Safari.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Safari.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Safari.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Safari.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void Safari.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_140_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();
  OUTLINED_FUNCTION_18();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_48_1();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = v0[2];
    v11 = v0[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = type metadata accessor for Safari(0);
    v13 = v12[6];
    OUTLINED_FUNCTION_131_1();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_9();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v0 + v12[7]);
    v16 = *v15;
    v17 = v15[1];
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v0 + v12[8]);
    v19 = *v18;
    v20 = v18[1];
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_52_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v12[9];
    OUTLINED_FUNCTION_40_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v22 = *(v4 + 8);
  v23 = OUTLINED_FUNCTION_134_0();
  v24(v23);
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys;
  if (!lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Safari.CodingKeys and conformance Safari.CodingKeys);
  }

  return result;
}

void Safari.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v4 = v3;
  v40[4] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = OUTLINED_FUNCTION_62(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes6SafariV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v41);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_79_0();
  v42 = type metadata accessor for Safari(0);
  v16 = OUTLINED_FUNCTION_9_1(v42);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v19 = v4[3];
  v20 = v4[4];
  v43 = v4;
  v21 = OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_41(v21, v22);
  lazy protocol witness table accessor for type Safari.CodingKeys and conformance Safari.CodingKeys();
  OUTLINED_FUNCTION_263_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v40[3] = v2;
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_156_0();
    *v0 = KeyedDecodingContainer.decode(_:forKey:)();
    v0[1] = v23;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_156_0();
    v0[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v0[3] = v24;
    v25 = type metadata accessor for URL();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_1_9();
    v27 = _s10Foundation4DateVACSQAAWlTm_0(v26);
    v40[2] = v12;
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40[0] = v27;
    v40[1] = v25;
    v28 = v0;
    v29 = v42;
    v30 = v42[6];
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_156_0();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = (v28 + v29[7]);
    *v32 = v31;
    v32[1] = v33;
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_156_0();
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = (v28 + v29[8]);
    *v35 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_156_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = OUTLINED_FUNCTION_95_1();
    v38(v37);
    v39 = v29[9];
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_314_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_231_0();
    outlined destroy of PreExtractedSharedLink();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

uint64_t FileDocument.init(id:item:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FileDocument.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id key path getter for FileDocument.item : FileDocument@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  result = FileDocument.item.getter();
  *a2 = result;
  return result;
}

uint64_t static FileDocument.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_200_0(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CSSearchableItem();
  v7 = v4;
  v8 = v5;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

unint64_t type metadata accessor for CSSearchableItem()
{
  result = lazy cache variable for type metadata for CSSearchableItem;
  if (!lazy cache variable for type metadata for CSSearchableItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CSSearchableItem);
  }

  return result;
}

uint64_t FileDocument.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000)
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

uint64_t FileDocument.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1835365481;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FileDocument.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FileDocument.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FileDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FileDocument.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void FileDocument.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v18 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_1();
  v9 = *v0;
  v10 = v0[1];
  v17 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_41(v3, v3[3]);
  lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();
  OUTLINED_FUNCTION_148_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_122_1();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    lazy protocol witness table accessor for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v14 = *(v18 + 8);
  v15 = OUTLINED_FUNCTION_134_0();
  v16(v15);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys;
  if (!lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys);
  }

  return result;
}

void FileDocument.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_260_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes12FileDocumentV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_237();
  v7 = v0[4];
  OUTLINED_FUNCTION_41(v0, v0[3]);
  lazy protocol witness table accessor for type FileDocument.CodingKeys and conformance FileDocument.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    v8 = OUTLINED_FUNCTION_215();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    OUTLINED_FUNCTION_122_1();
    lazy protocol witness table accessor for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>(&lazy protocol witness table cache variable for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = OUTLINED_FUNCTION_0_0();
    v12(v11);
    *v2 = v8;
    v2[1] = v10;
    v2[2] = v14;

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type CodableNSSecureCoding<CSSearchableItem> and conformance CodableNSSecureCoding<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t WalletTransaction.init(id:title:description:date:city:stateOrProvince:country:amount:currencyCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_198_0();
  v25 = OUTLINED_FUNCTION_319_0(v19, v20, v21, v22, v23, v24);
  v26 = type metadata accessor for WalletTransaction(v25);
  v27 = v26[7];
  OUTLINED_FUNCTION_318_0();
  result = _s10Foundation4DateVSgWObTm_0();
  v29 = (v18 + v26[8]);
  *v29 = v17;
  v29[1] = a9;
  v30 = (v18 + v26[9]);
  *v30 = a10;
  v30[1] = a11;
  v31 = (v18 + v26[10]);
  *v31 = a12;
  v31[1] = a13;
  v32 = v18 + v26[11];
  *v32 = a14;
  *(v32 + 8) = a15 & 1;
  v33 = (v18 + v26[12]);
  *v33 = a16;
  v33[1] = a17;
  return result;
}

void static WalletTransaction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v3 = type metadata accessor for Date();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_237();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_130();
  v20 = v20 && v18 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v21 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!v21)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_129();
    v24 = v20 && v22 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v21)
  {
    goto LABEL_33;
  }

  v25 = *(v0 + 40);
  if (*(v1 + 40))
  {
    if (!v25)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_128();
    v28 = v20 && v26 == v27;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v25)
  {
    goto LABEL_33;
  }

  v70 = type metadata accessor for WalletTransaction(0);
  v29 = v70[7];
  v30 = *(v14 + 48);
  OUTLINED_FUNCTION_229_0();
  outlined init with copy of Date?();
  OUTLINED_FUNCTION_229_0();
  outlined init with copy of Date?();
  OUTLINED_FUNCTION_16_3(v2);
  if (!v20)
  {
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v2 + v30);
    if (!v31)
    {
      OUTLINED_FUNCTION_262_0();
      v34(v9, v2 + v30, v3);
      OUTLINED_FUNCTION_0_10();
      _s10Foundation4DateVACSQAAWlTm_0(v35);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      MEMORY[0](v9, v3);
      v37 = OUTLINED_FUNCTION_322();
      MEMORY[0](v37);
      outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v36 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_390();
    v32 = OUTLINED_FUNCTION_322();
    v33(v32);
LABEL_32:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_16_3(v2 + v30);
  if (!v20)
  {
    goto LABEL_32;
  }

  outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_35:
  v38 = v70[8];
  OUTLINED_FUNCTION_10_3();
  if (v41)
  {
    if (!v39)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_25_2(v40);
    v44 = v20 && v42 == v43;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v39)
  {
    goto LABEL_33;
  }

  v45 = v70[9];
  OUTLINED_FUNCTION_10_3();
  if (v48)
  {
    if (!v46)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_25_2(v47);
    v51 = v20 && v49 == v50;
    if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v46)
  {
    goto LABEL_33;
  }

  v52 = v70[10];
  OUTLINED_FUNCTION_10_3();
  if (v55)
  {
    if (!v53)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_25_2(v54);
    v58 = v20 && v56 == v57;
    if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v53)
  {
    goto LABEL_33;
  }

  v59 = v70[11];
  v60 = *(v1 + v59 + 8);
  v61 = *(v0 + v59 + 8);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_247();
    if (v62)
    {
      goto LABEL_33;
    }
  }

  v63 = v70[12];
  OUTLINED_FUNCTION_10_3();
  if (v66 && v64)
  {
    OUTLINED_FUNCTION_25_2(v65);
    if (!v20 || v67 != v68)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_42_0();
}

uint64_t WalletTransaction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 2037672291 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x50724F6574617473 && a2 == 0xEF65636E69766F72;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t WalletTransaction.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 2037672291;
      break;
    case 5:
      result = 0x50724F6574617473;
      break;
    case 6:
      result = 0x7972746E756F63;
      break;
    case 7:
      result = 0x746E756F6D61;
      break;
    case 8:
      result = 0x79636E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WalletTransaction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WalletTransaction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WalletTransaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WalletTransaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void WalletTransaction.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_147_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes17WalletTransactionV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes17WalletTransactionV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = type metadata accessor for WalletTransaction(0);
    v13 = v12[7];
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v12[8]);
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v12[9]);
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v12[10]);
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_296((v1 + v12[11]));
    OUTLINED_FUNCTION_221_0(7);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_70(v12[12]);
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v15 = OUTLINED_FUNCTION_10();
  v16(v15);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys);
  }

  return result;
}

void WalletTransaction.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_1();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes17WalletTransactionV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes17WalletTransactionV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v44);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_79_0();
  v45 = type metadata accessor for WalletTransaction(0);
  v14 = OUTLINED_FUNCTION_9_1(v45);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v18 = v4[3];
  v17 = v4[4];
  v19 = OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_41(v19, v20);
  lazy protocol witness table accessor for type WalletTransaction.CodingKeys and conformance WalletTransaction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    OUTLINED_FUNCTION_171();
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v2)
    {
      v21 = v0[3];

      if (v18)
      {
        goto LABEL_9;
      }
    }

    else if (v18)
    {
LABEL_9:
      v22 = v0[5];

      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v0 + v45[7], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_159_0();
  *v0 = KeyedDecodingContainer.decode(_:forKey:)();
  v0[1] = v23;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_217_0();
  v0[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v0[3] = v24;
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_217_0();
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_322_0(v25, v26);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_0_10();
  _s10Foundation4DateVACSQAAWlTm_0(v27);
  OUTLINED_FUNCTION_277_0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v45[7];
  _s10Foundation4DateVSgWObTm_0();
  OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_217_0();
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v29, v30, v45[8]);
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_217_0();
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v31, v32, v45[9]);
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_217_0();
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_143(v33, v34, v45[10]);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_217_0();
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v0 + v45[11];
  *v36 = v35;
  v36[8] = v37 & 1;
  OUTLINED_FUNCTION_217_0();
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_91_1();
  v42(v41);
  v43 = (v0 + v45[12]);
  *v43 = v38;
  v43[1] = v40;
  OUTLINED_FUNCTION_222_0();
  outlined init with copy of EmailDocument();
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_270_0();
LABEL_10:
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

uint64_t WalletPass.init(id:title:description:creationDate:creator:extraData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_180_0(v12, v13, v14, v15, v16, v17, v18);
  v19 = type metadata accessor for WalletPass(0);
  v20 = v19[7];
  OUTLINED_FUNCTION_318_0();
  result = _s10Foundation4DateVSgWObTm_0();
  v22 = (v11 + v19[8]);
  *v22 = v10;
  v22[1] = a9;
  *(v11 + v19[9]) = a10;
  return result;
}

uint64_t WalletPass.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_38();
}

uint64_t WalletPass.extraData.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletPass(0) + 36));
}

void static WalletPass.== infix(_:_:)()
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_129_0();
  v4 = type metadata accessor for Date();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  OUTLINED_FUNCTION_9_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_130();
  v21 = v21 && v19 == v20;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_33;
  }

  v22 = *(v0 + 24);
  if (!*(v1 + 24))
  {
    if (v22)
    {
      goto LABEL_33;
    }

LABEL_15:
    v26 = *(v0 + 40);
    if (*(v1 + 40))
    {
      if (!v26)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_128();
      v29 = v21 && v27 == v28;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v26)
    {
      goto LABEL_33;
    }

    v48 = type metadata accessor for WalletPass(0);
    v30 = v48[7];
    v31 = *(v15 + 48);
    OUTLINED_FUNCTION_229_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_229_0();
    outlined init with copy of Date?();
    OUTLINED_FUNCTION_16_3(v2);
    if (v21)
    {
      OUTLINED_FUNCTION_16_3(v2 + v31);
      if (v21)
      {
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_35;
      }
    }

    else
    {
      OUTLINED_FUNCTION_148();
      outlined init with copy of Date?();
      OUTLINED_FUNCTION_16_3(v2 + v31);
      if (!v32)
      {
        OUTLINED_FUNCTION_262_0();
        v34(v10, v2 + v31, v4);
        OUTLINED_FUNCTION_0_10();
        _s10Foundation4DateVACSQAAWlTm_0(v35);
        OUTLINED_FUNCTION_138_1();
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = OUTLINED_FUNCTION_283();
        MEMORY[0](v37);
        MEMORY[0](v3, v4);
        outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        if ((v36 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_35:
        v38 = v48[8];
        OUTLINED_FUNCTION_10_3();
        if (v41)
        {
          if (!v39)
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_25_2(v40);
          v44 = v21 && v42 == v43;
          if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v39)
        {
          goto LABEL_33;
        }

        v45 = v48[9];
        v46 = *(v1 + v45);
        v47 = *(v0 + v45);
        if (v46 && v47)
        {

          _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v46, v47);
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_390();
      v33(v3, v4);
    }

    outlined destroy of (RentalCarReservation?, RentalCarReservation?)(v2, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_33;
  }

  if (v22)
  {
    OUTLINED_FUNCTION_129();
    v25 = v21 && v23 == v24;
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_42_0();
}

uint64_t WalletPass.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F7461657263 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7461446172747865 && a2 == 0xE900000000000061)
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

uint64_t WalletPass.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
      result = 0x726F7461657263;
      break;
    case 5:
      result = 0x7461446172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WalletPass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = WalletPass.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WalletPass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WalletPass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void WalletPass.encode(to:)()
{
  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_147_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes10WalletPassV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes10WalletPassV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_94();
  lazy protocol witness table accessor for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys();
  OUTLINED_FUNCTION_18();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    OUTLINED_FUNCTION_32_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = type metadata accessor for WalletPass(0);
    v13 = v12[7];
    OUTLINED_FUNCTION_137_0();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v14);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_70(v12[8]);
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v1 + v12[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_1(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v15 = OUTLINED_FUNCTION_10();
  v16(v15);
  OUTLINED_FUNCTION_325_0();
}

unint64_t lazy protocol witness table accessor for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys;
  if (!lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys);
  }

  return result;
}

void WalletPass.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_62(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes10WalletPassV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes10WalletPassV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v25);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_1();
  v26 = type metadata accessor for WalletPass(0);
  v11 = OUTLINED_FUNCTION_9_1(v26);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_278_0();
  v14 = v3[4];
  OUTLINED_FUNCTION_41(v3, v3[3]);
  lazy protocol witness table accessor for type WalletPass.CodingKeys and conformance WalletPass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_186();
    *v0 = KeyedDecodingContainer.decode(_:forKey:)();
    v0[1] = v15;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_186();
    v0[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v0[3] = v16;
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_186();
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_322_0(v17, v18);
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_0_10();
    _s10Foundation4DateVACSQAAWlTm_0(v19);
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_186();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v26[7];
    OUTLINED_FUNCTION_223();
    _s10Foundation4DateVSgWObTm_0();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_186();
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_143(v21, v22, v26[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    OUTLINED_FUNCTION_220();
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_1(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_186();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = OUTLINED_FUNCTION_189_0();
    v24(v23);
    *(v0 + v26[9]) = v27;
    OUTLINED_FUNCTION_222_0();
    outlined init with copy of EmailDocument();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_35();
}

unint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void __swiftcall Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)(OmniSearchTypes::Contact *__return_ptr retstr, Swift::String id, Swift::String_optional name, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer emailAddresses, Swift::OpaquePointer physicalAddresses, Swift::OpaquePointer dates, Swift::String_optional birthday)
{
  OUTLINED_FUNCTION_180_0(id._countAndFlagsBits, id._object, name.value._countAndFlagsBits, name.value._object, phoneNumbers._rawValue, emailAddresses._rawValue, retstr);
  v10[6] = v8;
  v10[7] = v9;
  v10[8] = v12;
  v10[9] = v11;
}

uint64_t Contact.birthday.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_38();
}

uint64_t static Contact.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_200_0(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v8 = v3[5];
  v7 = v3[6];
  v23 = v3[9];
  v10 = v2[2];
  v9 = v2[3];
  v12 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v24 = v2[7];
  v25 = v3[7];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v20 = v2[8];
  v21 = v3[8];
  v22 = v2[9];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = v4 == v10 && v5 == v9;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v16 = OUTLINED_FUNCTION_430();
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v16, v17) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v8, v11) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v7, v13) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v25, v24))
  {
    if (v23)
    {
      if (v22)
      {
        v18 = v21 == v20 && v23 == v22;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Contact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6464416C69616D65 && a2 == 0xEE00736573736572;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x800000025DCEBE90 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365746164 && a2 == 0xE500000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7961646874726962 && a2 == 0xE800000000000000)
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

unint64_t Contact.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6D754E656E6F6870;
      break;
    case 3:
      result = 0x6464416C69616D65;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7365746164;
      break;
    case 6:
      result = 0x7961646874726962;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Contact.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Contact.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Contact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Contact.CodingKeys and conformance Contact.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Contact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Contact.CodingKeys and conformance Contact.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void Contact.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes7ContactV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes7ContactV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_51_1();
  v10 = *v0;
  v11 = v0[1];
  v25 = v0[3];
  v26 = v0[2];
  v23 = v0[5];
  v24 = v0[4];
  v21 = v0[7];
  v22 = v0[6];
  v19 = v0[8];
  v20 = v0[9];
  v12 = v3[4];
  OUTLINED_FUNCTION_41(v3, v3[3]);
  lazy protocol witness table accessor for type Contact.CodingKeys and conformance Contact.CodingKeys();
  OUTLINED_FUNCTION_148_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    v13 = *(v6 + 8);
    v14 = OUTLINED_FUNCTION_134_0();
    v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_221_0(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_30_2(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_114_0(3);
    OUTLINED_FUNCTION_114_0(4);
    OUTLINED_FUNCTION_114_0(5);
    OUTLINED_FUNCTION_221_0(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_134_0();
    v18(v17);
  }

  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type Contact.CodingKeys and conformance Contact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys;
  if (!lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys;
  if (!lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys;
  if (!lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys;
  if (!lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact.CodingKeys and conformance Contact.CodingKeys);
  }

  return result;
}

void Contact.init(from:)()
{
  OUTLINED_FUNCTION_36();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes7ContactV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes7ContactV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_237();
  v9 = v2[3];
  v10 = v2[4];
  v11 = OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_41(v11, v12);
  lazy protocol witness table accessor for type Contact.CodingKeys and conformance Contact.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_224_0();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v14;
    LOBYTE(v37[0]) = 1;
    OUTLINED_FUNCTION_224_0();
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_28_3(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_71_1();
    *(v17 - 256) = v16;
    OUTLINED_FUNCTION_224_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v37[0];
    LOBYTE(v36[0]) = 3;
    OUTLINED_FUNCTION_71_1();
    v19 = *(v18 - 256);
    OUTLINED_FUNCTION_224_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v37[0];
    LOBYTE(v36[0]) = 4;
    OUTLINED_FUNCTION_71_1();
    v21 = *(v20 - 256);
    OUTLINED_FUNCTION_224_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v37[0];
    LOBYTE(v36[0]) = 5;
    OUTLINED_FUNCTION_71_1();
    v23 = *(v22 - 256);
    OUTLINED_FUNCTION_224_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v37[0];
    OUTLINED_FUNCTION_224_0();
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_87_1();
    v28(v27);
    v36[0] = v13;
    v36[1] = v35;
    v36[2] = v31;
    v36[3] = v34;
    v36[4] = v37[0];
    v36[5] = v37[0];
    v36[6] = v37[0];
    v36[7] = v37[0];
    v36[8] = v32;
    v36[9] = v26;
    memcpy(v4, v36, 0x50uLL);
    outlined init with copy of Contact(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v37[0] = v13;
    v37[1] = v35;
    v37[2] = v31;
    v37[3] = v34;
    v37[4] = v30;
    v37[5] = v29;
    v37[6] = v33;
    v37[7] = v24;
    v37[8] = v32;
    v37[9] = v26;
    outlined destroy of Contact(v37);
  }

  OUTLINED_FUNCTION_35();
}

void __swiftcall OnScreen.init(id:text:)(OmniSearchTypes::OnScreen *__return_ptr retstr, Swift::String id, Swift::String text)
{
  retstr->source._countAndFlagsBits = 0x6E65657263536E6FLL;
  retstr->source._object = 0xE800000000000000;
  OUTLINED_FUNCTION_283_0(id._countAndFlagsBits, id._object, text._countAndFlagsBits, text._object, retstr);
}

uint64_t OnScreen.source.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_38();
}

uint64_t static OnScreen.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_200_0(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v6 != v9)
  {
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_271_0();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5 == v10 && v7 == v11)
  {
    return 1;
  }

  OUTLINED_FUNCTION_38();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OnScreen.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047348 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t OnScreen.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1954047348;
  }

  return 0x656372756F73;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OnScreen.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OnScreen.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance OnScreen.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OnScreen.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OnScreen.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OnScreen.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void OnScreen.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes8OnScreenV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes8OnScreenV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_1();
  v11 = *v0;
  v12 = v0[1];
  v19 = v0[3];
  v20 = v0[2];
  v17 = v0[5];
  v18 = v0[4];
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_41(v15, v16);
  lazy protocol witness table accessor for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys();
  OUTLINED_FUNCTION_148_1();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_158_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_96_1();
    OUTLINED_FUNCTION_5();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys;
  if (!lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys;
  if (!lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys;
  if (!lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys;
  if (!lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys);
  }

  return result;
}

void OnScreen.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_260_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes8OnScreenV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes8OnScreenV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_237();
  v10 = v0[4];
  OUTLINED_FUNCTION_41(v0, v0[3]);
  lazy protocol witness table accessor for type OnScreen.CodingKeys and conformance OnScreen.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    v11 = OUTLINED_FUNCTION_215();
    v13 = v12;
    OUTLINED_FUNCTION_77_1();
    v14 = OUTLINED_FUNCTION_215();
    v15 = v3;
    v17 = v16;
    (*(v6 + 8))(v15, v4);
    *v2 = v11;
    v2[1] = v13;
    v2[2] = v14;
    v2[3] = v17;
    v2[4] = 0x6E65657263536E6FLL;
    v2[5] = 0xE800000000000000;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

uint64_t static GenericSpotlightItem.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_200_0(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_38();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t GenericSpotlightItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t GenericSpotlightItem.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericSpotlightItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GenericSpotlightItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericSpotlightItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericSpotlightItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void GenericSpotlightItem.encode(to:)()
{
  OUTLINED_FUNCTION_36();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes20GenericSpotlightItemV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes20GenericSpotlightItemV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_51_1();
  v8 = *v0;
  v9 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_41(v12, v13);
  lazy protocol witness table accessor for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys();
  OUTLINED_FUNCTION_148_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_41_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_41_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  OUTLINED_FUNCTION_390();
  v14 = OUTLINED_FUNCTION_134_0();
  v15(v14);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_35();
}

unint64_t lazy protocol witness table accessor for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys);
  }

  return result;
}

void GenericSpotlightItem.init(from:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_260_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes20GenericSpotlightItemV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes20GenericSpotlightItemV10CodingKeys33_B3950FDC86E80C6F6E555B064BADCADDLLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_237();
  v10 = v0[4];
  OUTLINED_FUNCTION_41(v0, v0[3]);
  lazy protocol witness table accessor for type GenericSpotlightItem.CodingKeys and conformance GenericSpotlightItem.CodingKeys();
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_132_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_159_0();
    v11 = OUTLINED_FUNCTION_215();
    v13 = v12;
    OUTLINED_FUNCTION_77_1();
    v14 = OUTLINED_FUNCTION_215();
    v16 = v15;
    v17 = v14;
    (*(v6 + 8))(v3, v4);
    *v2 = v11;
    v2[1] = v13;
    v2[2] = v17;
    v2[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_35();
}

unint64_t instantiation function for generic protocol witness table for EmailDocument(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type EmailDocument and conformance EmailDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MobileSMSDocument(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type MobileSMSDocument and conformance MobileSMSDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CalendarEvent(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CalendarEvent and conformance CalendarEvent);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Photo(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Photo and conformance Photo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NoteDocument(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NoteDocument and conformance NoteDocument);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Reminder(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Reminder and conformance Reminder);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PhoneHistory(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type PhoneHistory and conformance PhoneHistory);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoicemailTranscript(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoicemailTranscript and conformance VoicemailTranscript);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for JournalEntry(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type JournalEntry and conformance JournalEntry);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for VoiceMemo(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type VoiceMemo and conformance VoiceMemo);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Safari(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Safari and conformance Safari);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FileDocument and conformance FileDocument()
{
  result = lazy protocol witness table cache variable for type FileDocument and conformance FileDocument;
  if (!lazy protocol witness table cache variable for type FileDocument and conformance FileDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument and conformance FileDocument;
  if (!lazy protocol witness table cache variable for type FileDocument and conformance FileDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDocument and conformance FileDocument;
  if (!lazy protocol witness table cache variable for type FileDocument and conformance FileDocument)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileDocument and conformance FileDocument);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletTransaction(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction);
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WalletPass(void *a1)
{
  a1[1] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[2] = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  result = _s10Foundation4DateVACSQAAWlTm_0(&lazy protocol witness table cache variable for type WalletPass and conformance WalletPass);
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Contact and conformance Contact()
{
  result = lazy protocol witness table cache variable for type Contact and conformance Contact;
  if (!lazy protocol witness table cache variable for type Contact and conformance Contact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact and conformance Contact);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Contact and conformance Contact;
  if (!lazy protocol witness table cache variable for type Contact and conformance Contact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact and conformance Contact);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Contact and conformance Contact;
  if (!lazy protocol witness table cache variable for type Contact and conformance Contact)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Contact and conformance Contact);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnScreen and conformance OnScreen()
{
  result = lazy protocol witness table cache variable for type OnScreen and conformance OnScreen;
  if (!lazy protocol witness table cache variable for type OnScreen and conformance OnScreen)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScreen and conformance OnScreen;
  if (!lazy protocol witness table cache variable for type OnScreen and conformance OnScreen)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OnScreen and conformance OnScreen;
  if (!lazy protocol witness table cache variable for type OnScreen and conformance OnScreen)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScreen and conformance OnScreen);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FileDocument(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSpotlightItem and conformance GenericSpotlightItem()
{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem;
  if (!lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSpotlightItem and conformance GenericSpotlightItem);
  }

  return result;
}

uint64_t type metadata completion function for EmailDocument()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for DataDetectorResults?, &type metadata for DataDetectorResults, MEMORY[0x277D83D88]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PartialExtractedAttributes?, type metadata accessor for PartialExtractedAttributes, MEMORY[0x277D83D88]);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedCard?, type metadata accessor for PreExtractedCard, MEMORY[0x277D83D88]);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedContact?, type metadata accessor for PreExtractedContact, MEMORY[0x277D83D88]);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedSharedLink?, type metadata accessor for PreExtractedSharedLink, MEMORY[0x277D83D88]);
              v1 = v15;
              if (v16 <= 0x3F)
              {
                _sSSSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedBreadcrumb?, &type metadata for PreExtractedBreadcrumb, MEMORY[0x277D83D88]);
                v1 = v17;
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for MobileSMSDocument()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for [Photo], type metadata accessor for Photo, MEMORY[0x277D83940]);
      if (v9 > 0x3F)
      {
        return v5;
      }

      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for [MobileSMSDocument], type metadata accessor for MobileSMSDocument, MEMORY[0x277D83940]);
      if (v10 > 0x3F)
      {
        return v5;
      }

      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for DataDetectorResults?, &type metadata for DataDetectorResults, MEMORY[0x277D83D88]);
      if (v11 > 0x3F)
      {
        return v5;
      }

      else
      {
        _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PartialExtractedAttributes?, type metadata accessor for PartialExtractedAttributes, MEMORY[0x277D83D88]);
        v1 = v12;
        if (v13 <= 0x3F)
        {
          _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedCard?, type metadata accessor for PreExtractedCard, MEMORY[0x277D83D88]);
          v1 = v14;
          if (v15 <= 0x3F)
          {
            _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedContact?, type metadata accessor for PreExtractedContact, MEMORY[0x277D83D88]);
            v1 = v16;
            if (v17 <= 0x3F)
            {
              _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedSharedLink?, type metadata accessor for PreExtractedSharedLink, MEMORY[0x277D83D88]);
              v1 = v18;
              if (v19 <= 0x3F)
              {
                _sSSSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedBreadcrumb?, &type metadata for PreExtractedBreadcrumb, MEMORY[0x277D83D88]);
                v1 = v20;
                if (v21 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for CalendarEvent()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for DataDetectorResults?, &type metadata for DataDetectorResults, MEMORY[0x277D83D88]);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for Photo()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PartialExtractedAttributes?, type metadata accessor for PartialExtractedAttributes, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedCard?, type metadata accessor for PreExtractedCard, MEMORY[0x277D83D88]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedContact?, type metadata accessor for PreExtractedContact, MEMORY[0x277D83D88]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedSharedLink?, type metadata accessor for PreExtractedSharedLink, MEMORY[0x277D83D88]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                _sSSSgMaTm_0(319, &lazy cache variable for type metadata for PreExtractedBreadcrumb?, &type metadata for PreExtractedBreadcrumb, MEMORY[0x277D83D88]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void type metadata completion function for NoteDocument()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Reminder()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for PhoneHistory()
{
  type metadata accessor for (TransientAppEntityConvertibleIntentValue & Decodable & Encodable)?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void type metadata completion function for VoicemailTranscript()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for JournalEntry()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for VoiceMemo()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for Safari()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FileDocument(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FileDocument(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for WalletTransaction()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    _sSSSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_index_18Tm()
{
  OUTLINED_FUNCTION_125();
  if (v1)
  {
    return OUTLINED_FUNCTION_77();
  }

  OUTLINED_FUNCTION_318();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_118(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_19Tm()
{
  OUTLINED_FUNCTION_99();
  if (v3)
  {
    OUTLINED_FUNCTION_317();
  }

  else
  {
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    v5 = OUTLINED_FUNCTION_187(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t type metadata completion function for WalletPass()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for (TransientAppEntityConvertibleIntentValue & Decodable & Encodable)?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for Contact(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Contact(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OnScreen(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnScreen(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for OnScreen.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Contact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericSpotlightItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_235(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_235(v8);
}

_BYTE *storeEnumTagSinglePayload for GenericSpotlightItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_234_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_232_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_233_0(result, v6);
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
          result = OUTLINED_FUNCTION_34_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JournalEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceMemo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_235(-1);
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
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_235(v8);
}

_BYTE *storeEnumTagSinglePayload for VoiceMemo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_234_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_232_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_233_0(result, v6);
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
          result = OUTLINED_FUNCTION_34_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneHistory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WalletTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_235(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_235(v8);
}

_BYTE *storeEnumTagSinglePayload for WalletTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_234_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_232_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_233_0(result, v6);
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
          result = OUTLINED_FUNCTION_34_0(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WalletPass.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_235(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_235((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_235(v8);
}

_BYTE *storeEnumTagSinglePayload for WalletPass.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_234_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_232_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_233_0(result, v6);
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
          result = OUTLINED_FUNCTION_34_0(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Photo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Photo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileSMSDocument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailDocument.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmailDocument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_9()
{
  *(v0 - 304) = 0;
  *(v0 - 296) = 0;
  *(v0 - 288) = 0;
  *(v0 - 280) = 0;
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 216) = 0;
}

void OUTLINED_FUNCTION_3_8()
{
  *(v0 - 288) = 0;
  *(v0 - 280) = 0;
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 216) = 0;
}

void OUTLINED_FUNCTION_4_5()
{
  *(v0 - 320) = 0;
  *(v0 - 272) = 0;
  *(v0 - 264) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

void OUTLINED_FUNCTION_6_5()
{
  *(v0 - 264) = 0;
  *(v0 - 256) = 0;
  *(v0 - 216) = 0;
}

void OUTLINED_FUNCTION_7_6()
{
  *(v0 - 264) = 0;
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

void OUTLINED_FUNCTION_14_4()
{
  *(v0 - 272) = 0;
  *(v0 - 248) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 312);
  v3 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_5@<X0>(char a1@<W8>)
{
  *(v1 + 120) = a1;

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

unint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

unint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

void OUTLINED_FUNCTION_36_3()
{
  *(v0 - 248) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

void OUTLINED_FUNCTION_38_3()
{
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  *(v3 - 192) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_72_1@<X0>(char a1@<W8>)
{
  *(v1 - 184) = a1;
  result = v1 - 184;
  v3 = *(v1 - 264);
  v4 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_80_1@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_108_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 264);
  v5 = *(v1 - 312);
  v6 = *(v1 - 192);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_114_0@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_118_1()
{
  result = v0;
  v3 = *(v1 - 232);
  v4 = *(v1 - 224);
  v5 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_128_1()
{
  v3 = *(v0 + 8) + v1;

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_180_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_182_0()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 192);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_187_0()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_190_0()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 232);
  return *(v1 - 224);
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_192_0()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_193_0()
{
  *(v3 - 160) = v1;
  v4 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_194_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void *OUTLINED_FUNCTION_195_0()
{

  return memcpy((v0 + 24), (v0 + 120), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_196_0()
{

  return outlined init with copy of Date?();
}

void *OUTLINED_FUNCTION_197_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_208_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_212_0()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_215()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_226_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];

  return outlined consume of DataDetectorResults?(v4);
}

uint64_t OUTLINED_FUNCTION_236()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_238_0()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);
  v4 = *(v0 - 168);
  v5 = *(v0 - 160);
  v6 = *(v0 - 152);

  return outlined consume of DataDetectorResults?(v2);
}

uint64_t OUTLINED_FUNCTION_245_0()
{

  return type metadata accessor for URL();
}

void OUTLINED_FUNCTION_248_0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_249_0()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_250_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 - 208) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_252_0(int a1@<W8>)
{
  *(v1 - 248) = a1;
  *(v1 - 240) = a1;
  *(v1 - 232) = a1;
}

uint64_t OUTLINED_FUNCTION_253_0()
{
  *(v3 - 200) = v1;
  v4 = *(v2 + 8);
  return v0;
}

double OUTLINED_FUNCTION_254_0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_256_0()
{
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_257_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_265_0()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_266()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_270_0()
{

  return outlined destroy of PreExtractedSharedLink();
}

uint64_t OUTLINED_FUNCTION_272_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  result = *(v1 - 312);
  v4 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_280_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v5);
}

uint64_t OUTLINED_FUNCTION_281_0()
{

  return outlined destroy of PreExtractedSharedLink();
}

uint64_t OUTLINED_FUNCTION_282_0()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_283_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *OUTLINED_FUNCTION_284()
{

  return memcpy((v0 + 120), (v2 + v1), 0x60uLL);
}

void *OUTLINED_FUNCTION_285_0()
{

  return memcpy(v0, (v1 + v2), 0x60uLL);
}

void *OUTLINED_FUNCTION_286(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __dst)
{

  return memcpy(&__dst, (v21 + v22), 0x60uLL);
}

void *OUTLINED_FUNCTION_287@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + a1), (v2 - 184), 0x60uLL);
}

void *OUTLINED_FUNCTION_288_0()
{

  return memcpy((v1 + 16), (v0 + 16), 0x50uLL);
}

void *OUTLINED_FUNCTION_289_0()
{

  return memcpy((v2 - 184), (v1 + v0), 0x60uLL);
}

void *OUTLINED_FUNCTION_290_0()
{

  return memcpy((v1 - 184), v0, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_291()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_296@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_305_0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  return *(v1 - 184);
}

uint64_t OUTLINED_FUNCTION_319_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_320_0()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_321_0()
{
  v3 = *(v0 - 232);
  v2 = *(v0 - 224);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_322_0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return type metadata accessor for Date();
}

uint64_t OUTLINED_FUNCTION_323()
{

  return outlined init with copy of Date?();
}

uint64_t OUTLINED_FUNCTION_324_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

void __swiftcall SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)(OmniSearchTypes::SpotlightRankingItem *__return_ptr retstr, Swift::Int_optional retrievalType, Swift::String_optional bundleId, Swift::Float_optional *likelihood, Swift::Float_optional *topicality, Swift::Float_optional *pommesL1Score, Swift::Float_optional *pommesAdjustedL1Score, Swift::Float_optional *pommesCalibratedL1Score, Swift::Float_optional *embeddingSimilarity, Swift::Float_optional *keywordMatchScore, Swift::Float_optional *freshness)
{
  retstr->retrievalType.value = retrievalType.value;
  retstr->retrievalType.is_nil = retrievalType.is_nil;
  retstr->bundleId = bundleId;
  LODWORD(retstr->likelihood.value) = likelihood;
  retstr->likelihood.is_nil = BYTE4(likelihood) & 1;
  *(&retstr->topicality.value + 3) = topicality;
  BYTE2(retstr->pommesL1Score.value) = BYTE4(topicality) & 1;
  *(&retstr->pommesAdjustedL1Score.value + 1) = pommesL1Score;
  LOBYTE(retstr->pommesCalibratedL1Score.value) = BYTE4(pommesL1Score) & 1;
  *&retstr->pommesCalibratedL1Score.is_nil = pommesAdjustedL1Score;
  HIBYTE(retstr->embeddingSimilarity.value) = BYTE4(pommesAdjustedL1Score) & 1;
  *(&retstr->keywordMatchScore.value + 2) = pommesCalibratedL1Score;
  BYTE1(retstr->freshness.value) = BYTE4(pommesCalibratedL1Score) & 1;
  LODWORD(retstr[1].retrievalType.value) = embeddingSimilarity;
  BYTE4(retstr[1].retrievalType.value) = BYTE4(embeddingSimilarity) & 1;
  *&retstr[1].retrievalType.is_nil = keywordMatchScore;
  *(&retstr[1].retrievalType + 12) = BYTE4(keywordMatchScore) & 1;
  LODWORD(retstr[1].bundleId.value._countAndFlagsBits) = freshness;
  BYTE4(retstr[1].bundleId.value._countAndFlagsBits) = BYTE4(freshness) & 1;
}

uint64_t SpotlightRankingItem.retrievalType.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SpotlightRankingItem.retrievalType.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t SpotlightRankingItem.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SpotlightRankingItem.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SpotlightRankingItem.likelihood.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.topicality.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.pommesL1Score.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.pommesAdjustedL1Score.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.pommesCalibratedL1Score.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.embeddingSimilarity.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.keywordMatchScore.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t SpotlightRankingItem.freshness.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t static SpotlightRankingItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = *(a1 + 40);
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 68);
  v17 = *(a1 + 72);
  v18 = *(a1 + 76);
  v19 = *(a1 + 80);
  v20 = *(a1 + 84);
  v21 = *(a1 + 88);
  v22 = *(a1 + 92);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  v25 = *(a2 + 36);
  v26 = *(a2 + 40);
  v27 = *(a2 + 44);
  v28 = *(a2 + 48);
  v29 = *(a2 + 52);
  v30 = *(a2 + 56);
  v31 = *(a2 + 60);
  v32 = *(a2 + 64);
  v33 = *(a2 + 68);
  v34 = *(a2 + 72);
  v35 = *(a2 + 76);
  v36 = *(a2 + 80);
  v37 = *(a2 + 84);
  v38 = *(a2 + 88);
  v39 = *(a2 + 92);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v40 = *(a2 + 8);
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v23)
    {
      return 0;
    }

    if (v5 != *(a2 + 16) || v6 != v23)
    {
      v65 = v21;
      v64 = v22;
      v63 = v19;
      v62 = v20;
      v61 = v17;
      v60 = *(a2 + 92);
      v59 = *(a2 + 88);
      v58 = v18;
      v57 = v15;
      v56 = *(a2 + 84);
      v55 = *(a2 + 80);
      v54 = v16;
      v52 = *(a2 + 72);
      v53 = v13;
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v34 = v52;
      v13 = v53;
      v16 = v54;
      v36 = v55;
      v37 = v56;
      v15 = v57;
      v18 = v58;
      v38 = v59;
      v39 = v60;
      v17 = v61;
      v20 = v62;
      v19 = v63;
      v22 = v64;
      v21 = v65;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v8)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v24)
    {
      v43 = v25;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v26)
    {
      v44 = v27;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == v28)
    {
      v45 = v29;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (v13 == v30)
    {
      v46 = v31;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v16)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v32)
    {
      v47 = v33;
    }

    else
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  if (v18)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == v34)
    {
      v48 = v35;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v20)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (v19 == v36)
    {
      v49 = v37;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v22)
  {
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == v38)
    {
      v51 = v39;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SpotlightRankingItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6176656972746572 && a2 == 0xED0000657079546CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F68696C656B696CLL && a2 == 0xEA0000000000646FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696C616369706F74 && a2 == 0xEA00000000007974;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x314C73656D6D6F70 && a2 == 0xED000065726F6353;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000025DCEBEB0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x800000025DCEBED0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000025DCEBEF0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x800000025DCEBF10 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x73656E6873657266 && a2 == 0xE900000000000073)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

unint64_t SpotlightRankingItem.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6176656972746572;
  switch(a1)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x6F68696C656B696CLL;
      break;
    case 3:
      result = 0x696C616369706F74;
      break;
    case 4:
      result = 0x314C73656D6D6F70;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x73656E6873657266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpotlightRankingItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SpotlightRankingItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpotlightRankingItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpotlightRankingItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpotlightRankingItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15OmniSearchTypes20SpotlightRankingItemV10CodingKeys33_F9DD511CF6AB4CDC1145D3E7FEE7873BLLOGMd, &_ss22KeyedEncodingContainerVy15OmniSearchTypes20SpotlightRankingItemV10CodingKeys33_F9DD511CF6AB4CDC1145D3E7FEE7873BLLOGMR);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v27 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v1[2];
  v42 = v1[3];
  v43 = v13;
  v41 = *(v1 + 8);
  v45 = *(v1 + 36);
  v40 = *(v1 + 10);
  v39 = *(v1 + 44);
  v38 = *(v1 + 12);
  v37 = *(v1 + 52);
  v36 = *(v1 + 14);
  v35 = *(v1 + 60);
  v34 = *(v1 + 16);
  v33 = *(v1 + 68);
  v32 = *(v1 + 18);
  v31 = *(v1 + 76);
  v30 = *(v1 + 20);
  v29 = *(v1 + 84);
  v28 = *(v1 + 22);
  HIDWORD(v27) = *(v1 + 92);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = 0;
  v15 = v44;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v15)
  {
    v16 = v45;
    v18 = v40;
    v17 = v41;
    v19 = v39;
    v47 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47 = 2;
    v46 = v16;
    OUTLINED_FUNCTION_7_7(v17 | (v16 << 32));
    v47 = 3;
    v46 = v19;
    OUTLINED_FUNCTION_7_7(v18 | (v19 << 32));
    v47 = 4;
    OUTLINED_FUNCTION_10_6(v37);
    OUTLINED_FUNCTION_6_6(v20);
    v47 = 5;
    OUTLINED_FUNCTION_10_6(v35);
    OUTLINED_FUNCTION_6_6(v21);
    v47 = 6;
    OUTLINED_FUNCTION_10_6(v33);
    OUTLINED_FUNCTION_6_6(v22);
    v47 = 7;
    OUTLINED_FUNCTION_10_6(v31);
    OUTLINED_FUNCTION_6_6(v23);
    v47 = 8;
    OUTLINED_FUNCTION_10_6(v29);
    OUTLINED_FUNCTION_6_6(v24);
    v47 = 9;
    OUTLINED_FUNCTION_10_6(SBYTE4(v27));
    OUTLINED_FUNCTION_6_6(v25);
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys);
  }

  return result;
}

uint64_t SpotlightRankingItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15OmniSearchTypes20SpotlightRankingItemV10CodingKeys33_F9DD511CF6AB4CDC1145D3E7FEE7873BLLOGMd, &_ss22KeyedDecodingContainerVy15OmniSearchTypes20SpotlightRankingItemV10CodingKeys33_F9DD511CF6AB4CDC1145D3E7FEE7873BLLOGMR);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v127 = 1;
  v125 = 1;
  v122 = 1;
  v119 = 1;
  v116 = 1;
  v113 = 1;
  v110 = 1;
  v107 = 1;
  v104 = 1;
  v12 = a1[3];
  v13 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type SpotlightRankingItem.CodingKeys and conformance SpotlightRankingItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v129 = v2;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LODWORD(v12) = 0;
    v17 = 0;
    v18 = 0;
    OUTLINED_FUNCTION_2_10();
  }

  else
  {
    v18 = a2;
    LOBYTE(v68) = 0;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v127 = v21 & 1;
    OUTLINED_FUNCTION_3_9(1);
    v17 = v9;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v23;
    v62 = v22;
    OUTLINED_FUNCTION_3_9(2);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v24, &v113);
    v125 = v25;
    OUTLINED_FUNCTION_3_9(3);
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v26, &v107);
    v122 = v27;
    OUTLINED_FUNCTION_3_9(4);
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v28, v103);
    v119 = v29;
    OUTLINED_FUNCTION_3_9(5);
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v30, &v101);
    v116 = v31;
    OUTLINED_FUNCTION_3_9(6);
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v32, &v97);
    v113 = v33;
    OUTLINED_FUNCTION_3_9(7);
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_9_6(v34, &v93);
    v110 = v35;
    OUTLINED_FUNCTION_3_9(8);
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v129 = 0;
    OUTLINED_FUNCTION_9_6(v36, &v128);
    v107 = v37;
    v67 = 9;
    v38 = v129;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v129 = v38;
    if (!v38)
    {
      v43 = v39;
      v44 = *(v9 + 8);
      v45 = OUTLINED_FUNCTION_8_7();
      v46(v45);
      v104 = BYTE4(v43) & 1;
      *__src = v63;
      v47 = v127;
      __src[8] = v127;
      *&__src[16] = v62;
      *&__src[24] = v61;
      *&__src[32] = v60;
      v48 = v125;
      __src[36] = v125;
      *&__src[40] = v59;
      v49 = v122;
      __src[44] = v122;
      *&__src[48] = v58;
      v50 = v119;
      __src[52] = v119;
      *&__src[56] = v57;
      v51 = v116;
      __src[60] = v116;
      *&__src[64] = v56;
      v52 = v113;
      __src[68] = v113;
      *&__src[72] = v55;
      v53 = v110;
      __src[76] = v110;
      *&__src[80] = v65;
      v54 = v107;
      __src[84] = v107;
      *&__src[88] = v43;
      __src[92] = BYTE4(v43) & 1;
      memcpy(a2, __src, 0x5DuLL);
      outlined init with copy of SpotlightRankingItem(__src, &v68);
      __swift_destroy_boxed_opaque_existential_1(v64);
      v68 = v63;
      v69 = v47;
      *v70 = *v126;
      *&v70[3] = *&v126[3];
      v71 = v62;
      v72 = v61;
      v73 = v60;
      v74 = v48;
      v75 = v123;
      v76 = v124;
      v77 = v59;
      v78 = v49;
      v79 = v120;
      v80 = v121;
      v81 = v58;
      v82 = v50;
      v84 = v118;
      v83 = v117;
      v85 = v57;
      v86 = v51;
      v87 = v114;
      v88 = v115;
      v89 = v56;
      v90 = v52;
      v91 = v111;
      v92 = v112;
      v93 = v55;
      v94 = v53;
      v95 = v108;
      v96 = v109;
      v97 = v65;
      v98 = v54;
      v99 = v105;
      v100 = v106;
      v101 = v43;
      v19 = BYTE4(v43) & 1;
      goto LABEL_5;
    }

    v40 = *(v9 + 8);
    v41 = OUTLINED_FUNCTION_8_7();
    v42(v41);
    v14 = v63;
    v15 = v62;
    v16 = v61;
    OUTLINED_FUNCTION_5_7();
    LODWORD(a2) = v57;
    LODWORD(v9) = v55;
    v3 = v56;
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  v68 = v14;
  v69 = v127;
  *v70 = *v126;
  *&v70[3] = *&v126[3];
  v71 = v15;
  v72 = v16;
  v73 = v12;
  v74 = v125;
  v75 = v123;
  v76 = v124;
  v77 = v17;
  v78 = v122;
  v79 = v120;
  v80 = v121;
  v81 = v18;
  v82 = v119;
  v83 = v117;
  v84 = v118;
  v85 = a2;
  v86 = v116;
  v88 = v115;
  v87 = v114;
  v89 = v3;
  v90 = v113;
  v92 = v112;
  v91 = v111;
  v93 = v9;
  v94 = v110;
  v96 = v109;
  v95 = v108;
  v97 = v65;
  v98 = v107;
  v100 = v106;
  v99 = v105;
  v101 = 0;
  v19 = v104;
LABEL_5:
  v102 = v19;
  return outlined destroy of SpotlightRankingItem(&v68);
}

uint64_t getEnumTagSinglePayload for SpotlightRankingItem(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 93))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpotlightRankingItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 93) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpotlightRankingItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_11()
{
  *(v0 - 336) = 0;
  v1 = *(v0 - 352);
  v2 = *(v0 - 360);
  v3 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  *(v3 - 72) = v0;
  v4 = *(v1 + 8);
  return v2;
}

void OUTLINED_FUNCTION_5_7()
{
  v1 = *(v0 - 376);
  v2 = *(v0 - 384);
  v3 = *(v0 - 392);
}

uint64_t OUTLINED_FUNCTION_6_6@<X0>(uint64_t a1@<X8>)
{

  return MEMORY[0x2821FDAD8](v1 | (a1 << 32), v3 - 65, v2);
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{

  return MEMORY[0x2821FDAD8](a1, v2 - 65, v1);
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a5)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v6 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    result = a4(15, result, v8, a2, a3);
    if (v9)
    {
      result = v8;
    }

    if (4 * v6 >= result >> 14)
    {
      v10 = a5();

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

Swift::String __swiftcall String.splitByCapitalLetters()()
{
  v2 = v1;
  v3 = v0;
  v52 = type metadata accessor for CharacterSet();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = specialized Collection.dropFirst(_:)(1uLL, v3, v2, String.UnicodeScalarView.index(_:offsetBy:limitedBy:), MEMORY[0x277D83750]);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = specialized Collection.prefix(_:)(1);
  v15 = MEMORY[0x25F8A1E90](v14);
  v17 = v16;

  v55 = v7;
  v50 = v9 >> 14;
  if (v9 >> 14 == v7 >> 14)
  {
  }

  else
  {
    v43 = v13 & 0xFFFFFFFFFFFFFFLL;
    v44 = HIBYTE(v13) & 0xF;
    v42[1] = v11 & 0xFFFFFFFFFFFFLL;
    v42[2] = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v46 = (v4 + 8);

    v42[0] = v17;
    v48 = v9;
    v49 = v7;
    v47 = v11;
    v45 = v13;
    do
    {
      OUTLINED_FUNCTION_2_11();
      _StringGuts.validateScalarIndex(_:in:)(v18, v19, v20, v21, v22);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v23 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v53 = v11;
          v54 = v43;
        }

        else if ((v11 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        v23 = _decodeScalar(_:startingAt:)();
      }

      v24 = v23;
      OUTLINED_FUNCTION_2_11();
      Substring.UnicodeScalarView.formIndex(after:)();
      v25 = v51;
      static CharacterSet.uppercaseLetters.getter();
      v26 = CharacterSet.contains(_:)();
      (*v46)(v25, v52);
      v27 = v24 >> 6;
      v28 = (v24 & 0x3F) << 8;
      if (v26)
      {
        v53 = v15;
        v54 = v17;

        MEMORY[0x25F8A1F10](32, 0xE100000000000000);
        if (v24 > 0x7F)
        {
          if (v24 >= 0x800)
          {
            OUTLINED_FUNCTION_0_12();
          }

          else
          {
            v29 = v27 + v28 + 33217;
          }
        }

        else
        {
          v29 = v24 + 1;
        }

        v30 = v53;
        v31 = v54;
        v32 = OUTLINED_FUNCTION_1_11(v29);
        v34 = v33;
        v53 = v30;
        v54 = v31;

        MEMORY[0x25F8A1F10](v32, v34);
      }

      else
      {
        if (v24 > 0x7F)
        {
          if (v24 >= 0x800)
          {
            OUTLINED_FUNCTION_0_12();
          }

          else
          {
            v35 = v27 + v28 + 33217;
          }
        }

        else
        {
          v35 = v24 + 1;
        }

        v36 = OUTLINED_FUNCTION_1_11(v35);
        v38 = v37;
        v53 = v15;
        v54 = v17;

        MEMORY[0x25F8A1F10](v36, v38);
      }

      v15 = v53;
      v17 = v54;
      v11 = v47;
      v13 = v45;
    }

    while (v50 != v55 >> 14);

    swift_bridgeObjectRelease_n();
  }

  v39 = v15;
  v40 = v17;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = MEMORY[0x25F8A1F30](15, a1 >> 16);
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

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x2821FD070]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v7)
  {
    goto LABEL_11;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
LABEL_11:
    result = _StringGuts.validateSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 0xC) == 4 << v7)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    __break(1u);
  }

  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((a3 & 0xC) == 4 << v10)
  {
LABEL_65:
    v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, a4, a5);
  }

  v12 = a1;
  if ((a1 & 0xC) == v11)
  {
    v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1, a4, a5);
  }

  result = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v11 = 0;
    a1 = v12 >> 14;
    v22 = &v34 + 7;
    v23 = &v34 + 6;
    while (a1 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v34 = v22;
        v31 = v23;
        result = String.UnicodeScalarView._foreignIndex(before:)();
        v23 = v31;
        v22 = v34;
      }

      else
      {
        v25 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v22[v25] & 0xC0) == 0x80)
          {
            v28 = &v23[v25];
            v29 = 1;
            do
            {
              ++v29;
              v30 = *v28--;
            }

            while ((v30 & 0xC0) == 0x80);
          }

          else
          {
            v29 = 1;
          }

          v25 -= v29;
        }

        else
        {
          v26 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v33 = v23;
            v34 = v22;
            v26 = _StringObject.sharedUTF8.getter();
            v23 = v33;
            v22 = v34;
          }

          do
          {
            v27 = *(v26 - 1 + v25--) & 0xC0;
          }

          while (v27 == 128);
        }

        result = (v25 << 16) | 5;
      }

      if (--v11 <= a2)
      {
        if (a1 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  a1 = v12 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v14 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v11 = a5 & 0xFFFFFFFFFFFFFFLL;
    while (v7 < a1 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v14)
      {
        __break(1u);
        goto LABEL_64;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v35 = a4;
          v36 = a5 & 0xFFFFFFFFFFFFFFLL;
          v18 = *(&v35 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = _StringObject.sharedUTF8.getter();
          }

          v18 = *(v17 + v16);
        }

        v19 = v18;
        v20 = __clz(v18 ^ 0xFF) - 24;
        if (v19 >= 0)
        {
          LOBYTE(v20) = 1;
        }

        result = ((v16 + v20) << 16) | 5;
      }

      if (!--a2)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

LABEL_29:
  if (v7 >= a1 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_11@<X0>(unsigned int a1@<W8>)
{
  *(v1 - 104) = (a1 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(a1) >> 3))));

  return MEMORY[0x2821FBD70](v1 - 104);
}

Swift::Int SearchTransferabilityError.Code.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A2420](v1);
  return Hasher._finalize()();
}

uint64_t SearchTransferabilityError.targetTransferType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchTransferabilityError() + 24);
  v4 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_16_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SearchTransferabilityError()
{
  result = type metadata singleton initialization cache for SearchTransferabilityError;
  if (!type metadata singleton initialization cache for SearchTransferabilityError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  *a4 = *a1;
  a4[1] = v6;
  v7 = *(type metadata accessor for SearchTransferabilityError() + 24);
  v8 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_16_0(v8);
  v10 = *(v9 + 32);

  return v10(&a4[v7], a3);
}

uint64_t one-time initialization function for searchToolExportedExperiences()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.searchToolExportedExperiences);
  __swift_project_value_buffer(v4, static UTType.searchToolExportedExperiences);
  static UTType.data.getter();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t UTType.searchToolExportedExperiences.unsafeMutableAddressor()
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = type metadata accessor for UTType();

  return __swift_project_value_buffer(v0, static UTType.searchToolExportedExperiences);
}

uint64_t static UTType.searchToolExportedExperiences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  OUTLINED_FUNCTION_16_0(v2);
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static UTType.searchToolExportedExperiences.setter(uint64_t a1)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static UTType.searchToolExportedExperiences.modify())()
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v0 = type metadata accessor for UTType();
  __swift_project_value_buffer(v0, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  return MemoryCreationQUPerformanceMetrics.llmQUModelLatency.modify;
}

uint64_t static ExperienceProviding<>.experienceTransferableRepresentation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v11 = __swift_project_value_buffer(v6, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  v5 = type metadata accessor for UTType();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation(), 0, 0);
}

uint64_t closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation()()
{
  v27 = v0;
  v1 = v0[11];
  v2 = v0[5];
  (*(v0[7] + 16))(v0[6]);
  v3 = type metadata accessor for IntentFile();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[11];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    outlined destroy of IntentFile?(v0[11]);
    (*(v6 + 8))(&v26, v7, v6);
    v9 = v26;
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
    v14 = __swift_project_value_buffer(v12, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v13 + 16))(v11, v14, v12);
    v15 = type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchTransferabilityError and conformance SearchTransferabilityError();
    swift_allocError();
    *v16 = 0;
    v16[1] = v9;
    (*(v13 + 32))(&v16[*(v15 + 24)], v11, v12);
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[10];
    v20 = v0[11];
    v21 = IntentFile.data.getter();
    v23 = v22;
    OUTLINED_FUNCTION_16_0(v3);
    (*(v24 + 8))(v5, v3);

    v25 = v0[1];

    return v25(v21, v23);
  }
}

uint64_t partial apply for closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation();

  return closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in static ExperienceProviding<>.experienceTransferableRepresentation()(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t lazy protocol witness table accessor for type SearchTransferabilityError.Code and conformance SearchTransferabilityError.Code()
{
  result = lazy protocol witness table cache variable for type SearchTransferabilityError.Code and conformance SearchTransferabilityError.Code;
  if (!lazy protocol witness table cache variable for type SearchTransferabilityError.Code and conformance SearchTransferabilityError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTransferabilityError.Code and conformance SearchTransferabilityError.Code);
  }

  return result;
}

uint64_t type metadata completion function for SearchTransferabilityError()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchTransferabilityError.Code(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of IntentFile?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchTransferabilityError and conformance SearchTransferabilityError()
{
  result = lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError;
  if (!lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError)
  {
    type metadata accessor for SearchTransferabilityError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9A0]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}