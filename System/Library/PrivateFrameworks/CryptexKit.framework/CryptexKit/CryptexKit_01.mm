uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
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
    v5 = MEMORY[0x22AA74D20](15, a1 >> 16);
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

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexVersion and conformance CryptexVersion()
{
  result = lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion;
  if (!lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexVersion(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CryptexVersion(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

__n128 CryptexBundleIndex.buildIdentity.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t CryptexBundleIndex.variant.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

__n128 CryptexBundleIndex.init(buildIdentity:variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v4;
  *(a4 + 128) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 144) = a2;
  *(a4 + 152) = a3;
  return result;
}

uint64_t AsyncCryptexSequence.AsyncIterator.next()()
{
  return MEMORY[0x2822009F8](AsyncCryptexSequence.AsyncIterator.next(), 0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t key path getter for CryptexBundle.buildManifest : CryptexBundle@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CryptexBundle.buildManifest : CryptexBundle(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t CryptexBundle.buildManifest.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t CryptexBundle.buildManifest.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t CryptexBundle.__allocating_init(path:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CryptexBundle.init(path:)(a1);
  return v5;
}

uint64_t CryptexBundle.init(path:)(uint64_t a1)
{
  v64 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v63 = type metadata accessor for Logger();
  v67 = *(v63 - 8);
  v1 = *(v67 + 64);
  v3 = MEMORY[0x28223BE20](v63, v2);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v61 = &v61 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v74 = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v12, *MEMORY[0x277D85268], v7);
  v19 = v64;
  v20 = v65;
  *(v20 + 32) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v71 = 0x10000000000000;
  v72 = 16842752;
  v22 = v66;
  FilePath.withCString<A>(_:)();
  if (v22)
  {
    v23 = type metadata accessor for FilePath();
    (*(*(v23 - 8) + 8))(v19, v23);
    v24 = v63;
    v25 = v67;
LABEL_18:

    (*(v25 + 8))(v20 + v21, v24);
    type metadata accessor for CryptexBundle();
    v58 = *(*v20 + 48);
    v59 = *(*v20 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_19;
  }

  v70 = v74;
  *(v20 + 24) = cryptex_bundle_create_with_directory();
  v73 = 0;
  v74 = 0;
  if (!cryptex_bundle_copy_build_manifest2() || !v74)
  {
    v30 = v73;
    v25 = v67;
    if (v73)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v31 = swift_allocError();
      *v32 = v30;
    }

    else
    {
      type metadata accessor for CryptexError();
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      v31 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v46 = v62;
    v24 = v63;
    (*(v25 + 16))(v62, v20 + v21, v63);
    v47 = v31;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v19;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v31;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_2260DF000, v48, v49, "Failed to copy BuildManifest: %@", v51, 0xCu);
      outlined destroy of NSObject?(v52);
      v55 = v52;
      v25 = v67;
      MEMORY[0x22AA75CB0](v55, -1, -1);
      v56 = v51;
      v19 = v50;
      v46 = v62;
      MEMORY[0x22AA75CB0](v56, -1, -1);
    }

    (*(v25 + 8))(v46, v24);
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();
    close(v70);
    v57 = type metadata accessor for FilePath();
    (*(*(v57 - 8) + 8))(v19, v57);
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  result = _CFXPCCreateCFObjectFromXPCObject();
  v25 = v67;
  if (result)
  {
    v69 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v27 = swift_dynamicCast();
    v28 = v61;
    if (v27)
    {
      swift_unknownObjectRelease();
      *(v20 + 16) = v68;
      swift_unknownObjectRelease();
      close(v70);
      v29 = type metadata accessor for FilePath();
      (*(*(v29 - 8) + 8))(v19, v29);
LABEL_19:
      v60 = *MEMORY[0x277D85DE8];
      return v20;
    }

    type metadata accessor for CryptexError();
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v25 + 16))(v28, v20 + v21, v63);
    v34 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v19;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_2260DF000, v35, v36, "BuildManifest conversion failed: %@", v38, 0xCu);
      outlined destroy of NSObject?(v39);
      v42 = v39;
      v25 = v67;
      MEMORY[0x22AA75CB0](v42, -1, -1);
      v43 = v38;
      v19 = v37;
      v28 = v61;
      MEMORY[0x22AA75CB0](v43, -1, -1);
    }

    v44 = v28;
    v45 = v63;
    (*(v25 + 8))(v44, v63);
    swift_willThrow();
    v24 = v45;
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t CryptexBundle.getCryptex(matching:variant:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 224) = a2;
  v5 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v5;
  *(v4 + 144) = a1[8];
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  v7 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  type metadata accessor for CryptexBundle();
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexBundle.getCryptex(matching:variant:), v9, v10);
}

uint64_t CryptexBundle.getCryptex(matching:variant:)()
{
  v36 = *MEMORY[0x277D85DE8];
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  v1 = (v0 + 216);
  if (*(v0 + 232))
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
  }

  v4 = *(*(v0 + 240) + 24);

  _cryptex_identity.init(from:)((v0 + 16), v0 + 160);
  String.utf8CString.getter();

  v5 = cryptex_bundle_copy_cryptex2();

  if (v5)
  {
    v6 = *(v0 + 208);
    if (v6)
    {
      type metadata accessor for Cryptex();
      v7 = RawCryptex.init(_:)(v6);
      v8 = Cryptex.__allocating_init(from:)(v7);
LABEL_16:
      v23 = *(v0 + 8);
      v24 = *MEMORY[0x277D85DE8];

      return v23(v8);
    }
  }

  v9 = *v1;
  if (*v1)
  {
    type metadata accessor for CFErrorRef(0);
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    v10 = swift_allocError();
    *v11 = v9;
    v12 = v10;
    v13 = _convertErrorToNSError(_:)();

    v14 = [v13 domain];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == 0xD00000000000001ALL && 0x8000000226116AA0 == v17)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if ([v13 code] == 8)
    {
      v19 = *(v0 + 240) + OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2260DF000, v20, v21, "No match found", v22, 2u);
        MEMORY[0x22AA75CB0](v22, -1, -1);
      }

      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  type metadata accessor for CryptexError();
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
  v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v26 = *(v0 + 240);
  v27 = v10;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v10;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_2260DF000, v28, v29, "Lookup failed: %@", v30, 0xCu);
    outlined destroy of NSObject?(v31);
    MEMORY[0x22AA75CB0](v31, -1, -1);
    MEMORY[0x22AA75CB0](v30, -1, -1);
  }

  swift_willThrow();
  v34 = *(v0 + 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34();
}

void *CryptexBundle.__allocating_init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = *(v0 + 48);
  v14 = *(v0 + 52);
  v15 = swift_allocObject();
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x277D85268], v1);
  v15[4] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v15[3] = cryptex_bundle_create();
  v15[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v15;
}

void *CryptexBundle.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v14[1] = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x277D85268], v1);
  v0[4] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v0[3] = cryptex_bundle_create();
  v0[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t CryptexBundle.add(cryptex:)(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  type metadata accessor for CryptexBundle();
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](CryptexBundle.add(cryptex:), v3, v4);
}

uint64_t CryptexBundle.add(cryptex:)()
{
  v22 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = 0;
  v1 = (v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 48;
  v5 = (*(*v2 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in CryptexBundle.add(cryptex:), v4, v6);

  v5(v0 + 16, 0);
  if (*(v0 + 72) == 1)
  {
    v7 = *(v0 + 8);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *v1;
    if (*v1)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      v10 = swift_allocError();
      *v11 = v9;
    }

    else
    {
      type metadata accessor for CryptexError();
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      v10 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v12 = *(v0 + 64);
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2260DF000, v14, v15, "Failed to add cryptex: %@", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x22AA75CB0](v17, -1, -1);
      MEMORY[0x22AA75CB0](v16, -1, -1);
    }

    swift_willThrow();
    v7 = *(v0 + 8);
    v20 = *MEMORY[0x277D85DE8];
  }

  return v7();
}

void CryptexBundle.write(toDirectory:overwrite:)(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v4 = FilePath.string.getter();
    v5 = MEMORY[0x22AA74BE0](v4);

    v6 = [v3 fileExistsAtPath_];

    if (v6)
    {
      v7 = FilePath.string.getter();
      v8 = MEMORY[0x22AA74BE0](v7);

      v15[0] = 0;
      v9 = [v3 removeItemAtPath:v8 error:v15];

      if (!v9)
      {
        v13 = v15[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_9;
      }

      v10 = v15[0];
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v11 = FilePath.withCString<A>(_:)();
  if (!v2)
  {
    MEMORY[0x28223BE20](v11, v12);
    FileDescriptor.closeAfter<A>(_:)();
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t CryptexBundle.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CryptexBundle.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for CryptexBundle()
{
  result = type metadata singleton initialization cache for CryptexBundle;
  if (!type metadata singleton initialization cache for CryptexBundle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in CryptexBundle.add(cryptex:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + 24);
  result = cryptex_bundle_set_cryptex2();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in CryptexBundle.write(toDirectory:overwrite:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for CryptexBundle();
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v2 + 24);
  result = cryptex_bundle_write2();
  if (!result)
  {
    type metadata accessor for CryptexError();
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_2260DF000, v7, v8, "Failed to write bundle: %@", v9, 0xCu);
      outlined destroy of NSObject?(v10);
      MEMORY[0x22AA75CB0](v10, -1, -1);
      MEMORY[0x22AA75CB0](v9, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator;
  if (!lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexBundleIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexBundleIndex(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for CryptexBundle()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of CryptexBundle.getCryptex(matching:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of CryptexLocalDevice.inventoryConn();

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexBundle.add(cryptex:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v8(a1);
}

void Cryptex.InstallOptions.init()(uint64_t a1@<X8>)
{
  Cryptex.BootstrapOptions.init()(&v3);
  v2 = v3;
  *a1 = 2;
  *(a1 + 2) = 0;
  *(a1 + 3) = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Cryptex.InstallOptions.CodingKeys()
{
  v1 = 0x6172656D65687065;
  v2 = 0x7469725764616572;
  if (*v0 != 2)
  {
    v2 = 0x61727473746F6F62;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Cryptex.InstallOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Cryptex.InstallOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Cryptex.InstallOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Cryptex.InstallOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.InstallOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMd, &_ss22KeyedEncodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v10 = v1[1];
  v16 = v1[2];
  v17 = v10;
  HIDWORD(v15) = v1[3];
  v11 = a1[4];
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = BYTE4(v15);
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v13;
    v18 = 3;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions()
{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions);
  }

  return result;
}

uint64_t Cryptex.InstallOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  Cryptex.BootstrapOptions.init()(&v24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v23 = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = 2;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = 3;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v10, v5);
    v15 = v20;
    v16 = v18 & 1;
    *a2 = v12;
    a2[1] = v13 & 1;
    a2[2] = v16;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t getEnumTagSinglePayload for Cryptex.InstallOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Cryptex.InstallOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cryptex.InstallOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Cryptex.InstallOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized Cryptex.InstallOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6172656D65687065 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000226116B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469725764616572 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

xpc_object_t XpcDictCodable.asXPC()(uint64_t a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  (*(a2 + 16))(&empty, a1, a2);
  v5 = empty;
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

xpc_object_t XpcArrayCodable.asXPC()(uint64_t a1, uint64_t a2)
{
  empty = xpc_array_create_empty();
  (*(a2 + 16))(&empty, a1, a2);
  v5 = empty;
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

void *OS_xpc_object.encode(_:forKey:)(void *a1, void *a2)
{
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 16))(v5, v6);
  if (!v2)
  {
    OS_xpc_object.set<A>(_:forKey:)(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OS_xpc_object.set<A>(_:forKey:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CryptexError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x22AA75EA0](v2);
  if (v9 == XPC_TYPE_DICTIONARY.getter())
  {
    dispatch thunk of CodingKey.stringValue.getter();
    v12 = String.utf8CString.getter();

    xpc_dictionary_set_value(v2, (v12 + 32), a1);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v8, 0xD000000000000017, 0x8000000226116B20, 0xD00000000000001BLL, 0x8000000226116B40, 0x6F663A5F28746573, 0xEE00293A79654B72, 71, v10);
    outlined destroy of CryptexError(v8);
    return swift_willThrow();
  }
}

xpc_object_t OS_xpc_object.decode<A>(_:forKey:)@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = OS_xpc_object.object<A>(forKey:)();
  if (!v4)
  {
    if (result)
    {
      (*(a3 + 8))();
      (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
      return swift_unknownObjectRelease();
    }

    else
    {
      return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
    }
  }

  return result;
}

xpc_object_t OS_xpc_object.object<A>(forKey:)()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA75EA0](v0);
  if (v6 == XPC_TYPE_DICTIONARY.getter())
  {
    dispatch thunk of CodingKey.stringValue.getter();
    v10 = String.utf8CString.getter();

    v7 = xpc_dictionary_get_value(v0, (v10 + 32));
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x22AA74CD0](0xD00000000000001DLL, 0x8000000226116B60);
    v14 = v0;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = v12;
    v8 = v13;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v5, v7, v8, 0xD00000000000001BLL, 0x8000000226116B40, 0x66287463656A626FLL, 0xEF293A79654B726FLL, 63, v9);

    outlined destroy of CryptexError(v5);
    swift_willThrow();
  }

  return v7;
}

xpc_object_t OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v19[1] = a4;
  v7 = type metadata accessor for CryptexError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = OS_xpc_object.object<A>(forKey:)();
  if (!v5)
  {
    if (result)
    {
      (*(v22 + 8))();
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v20 = 0;
      v21 = 0xE000000000000000;
      MEMORY[0x22AA74CD0](0x20676E697373694DLL, 0xEC0000002079656BLL);
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v15 = *(v14 + 16);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v16 = v20;
      v17 = v21;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v11, v16, v17, 0xD00000000000001BLL, 0x8000000226116B40, 0xD00000000000001FLL, 0x8000000226116B80, 55, v18);

      outlined destroy of CryptexError(v11);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t CFErrorRef.nserr.getter()
{
  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
  v1 = swift_allocError();
  *v2 = v0;
  v3 = v0;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

uint64_t protocol witness for Error._code.getter in conformance AMSupportError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError);
  v5 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t TatsuError.init(tssCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + 3100;
  if (result >= 3100)
  {
    v2 = result;
  }

  if (v2 > 3233)
  {
    if (v2 != 3234 && v2 != 3268)
    {
      if (v2 == 3560)
      {
        v3 = 0;
        v4 = 3;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_12:
    v3 = 0;
    v4 = 2;
    goto LABEL_17;
  }

  switch(v2)
  {
    case 3099:
      v3 = 0;
      v4 = 0;
      goto LABEL_17;
    case 3169:
      goto LABEL_12;
    case 3194:
      v3 = 0;
      v4 = 1;
      goto LABEL_17;
  }

LABEL_14:
  v3 = v2 - 3100;
  if (v2 >= 3500)
  {
    v4 = 4;
  }

  else
  {
    v3 = 0;
    v4 = 5;
  }

LABEL_17:
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void TatsuError.init(extractedFrom:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = MEMORY[0x22AA74BE0](0xD000000000000020, 0x8000000226116BA0);
  v5 = _CFErrorCopyTopLevelErrorWithDomain(a1, v4);

  if (!v5)
  {

LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = -1;
    goto LABEL_6;
  }

  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
  v6 = swift_allocError();
  *v7 = v5;
  v8 = v5;
  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 code];
  TatsuError.init(tssCode:)(v10, &v12);
  v11 = v13;
  *a2 = v12;
LABEL_6:
  *(a2 + 16) = v11;
}

uint64_t static CryptexError.error(_:_:file:function:lineNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27[0] = a8;
  type metadata accessor for CryptexError();
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
  v17 = swift_allocError();
  outlined init with copy of CryptexError(a1, v18);
  ErrorValue = swift_getErrorValue();
  v20 = *(*(v27[2] - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue, v27[1]);
  (*(v22 + 16))(v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = String.init<A>(describing:)();
  v25 = v24;

  *a9 = v23;
  *(a9 + 8) = v25;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v27[0];
  *(a9 + 72) = 0;
}

uint64_t type metadata accessor for CryptexError()
{
  result = type metadata singleton initialization cache for CryptexError;
  if (!type metadata singleton initialization cache for CryptexError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of CryptexError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CryptexErrorMessage.init(_:_:file:function:lineNumber:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v27 = a7;
  v28 = a8;
  ErrorValue = swift_getErrorValue();
  v18 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](ErrorValue, v29);
  (*(v20 + 16))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = String.init<A>(describing:)();
  v23 = v22;

  *a9 = v21;
  *(a9 + 8) = v23;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v25 = v27;
  v24 = v28;
  *(a9 + 48) = a6;
  *(a9 + 56) = v25;
  *(a9 + 64) = v24;
  *(a9 + 72) = a10 & 1;
}

uint64_t CryptexErrorMessage.error.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CryptexErrorMessage.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CryptexErrorMessage.file.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CryptexErrorMessage.function.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CryptexErrorMessage.lineNumber.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

void __swiftcall CryptexErrorMessage.init(_:_:file:function:lineNumber:)(CryptexKit::CryptexErrorMessage *__return_ptr retstr, Swift::String _, Swift::String a3, Swift::String_optional file, Swift::String_optional function, Swift::UInt_optional lineNumber)
{
  retstr->error = _;
  retstr->message = a3;
  retstr->file = file;
  retstr->function = function;
  retstr->lineNumber.value = lineNumber.value;
  retstr->lineNumber.is_nil = lineNumber.is_nil;
}

uint64_t CryptexErrorMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v23 = v1[3];
  v24 = v11;
  v12 = v1[4];
  v21 = v1[5];
  v22 = v12;
  v13 = v1[6];
  v19 = v1[7];
  v20 = v13;
  v18 = v1[8];
  v17[3] = *(v1 + 72);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = 0;
  v15 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v29 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v28 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v27 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v26 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v8, v3);
}

uint64_t CryptexErrorMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v13;
  LOBYTE(v39[0]) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v15;
  v30 = v14;
  LOBYTE(v39[0]) = 2;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v16;
  LOBYTE(v39[0]) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v17;
  v42 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v21 = v18;
  (*(v6 + 8))(v10, v5);
  v20 &= 1u;
  v41 = v20;
  *&v35 = v12;
  *(&v35 + 1) = v34;
  v22 = v33;
  *&v36 = v30;
  *(&v36 + 1) = v33;
  v23 = v32;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v24 = v31;
  *v38 = v28;
  *&v38[8] = v31;
  *&v38[16] = v21;
  v38[24] = v20;
  v25 = *v38;
  a2[2] = v37;
  a2[3] = v25;
  *(a2 + 57) = *&v38[9];
  v26 = v36;
  *a2 = v35;
  a2[1] = v26;
  outlined init with copy of CryptexErrorMessage(&v35, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v12;
  v39[1] = v34;
  v39[2] = v30;
  v39[3] = v22;
  v39[4] = v29;
  v39[5] = v23;
  v39[6] = v28;
  v39[7] = v24;
  v39[8] = v21;
  v40 = v20;
  return outlined destroy of CryptexErrorMessage(v39);
}

unint64_t CryptexError.errorDescription.getter()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34[-v14];
  v16 = type metadata accessor for CryptexError();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v34[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of CryptexError(v0, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 6u:
      if (v20[1])
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v35 = *v20;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v35, &v36);
        v21 = v36;
        v22 = v37;
      }

      v28 = 0x8000000226116E00;
      v29 = 0xD000000000000026;
      goto LABEL_44;
    case 2u:
      if (v20[1])
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v35 = *v20;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v35, &v36);
        v21 = v36;
        v22 = v37;
      }

      v28 = 0x8000000226116E70;
      v29 = 0xD000000000000027;
      goto LABEL_44;
    case 3u:
      outlined init with take of FilePath?(v20, v15);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v36 = 0xD00000000000001DLL;
      v37 = 0x8000000226116DE0;
      outlined init with copy of FilePath?(v15, v12);
      if ((*(v2 + 48))(v12, 1, v1) == 1)
      {
        v24 = 0xE500000000000000;
        v25 = 0x3E6C696E3CLL;
      }

      else
      {
        (*(v2 + 32))(v6, v12, v1);
        v31 = FilePath.description.getter();
        v24 = v32;
        (*(v2 + 8))(v6, v1);
        v25 = v31;
      }

      MEMORY[0x22AA74CD0](v25, v24);

      v33 = v36;
      outlined destroy of CryptexPersonalizationService?(v15, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      return v33;
    case 4u:
      if (v20[1])
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v35 = *v20;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v35, &v36);
        v21 = v36;
        v22 = v37;
      }

      v28 = 0x8000000226116E50;
      v29 = 0xD00000000000001ALL;
      goto LABEL_44;
    case 5u:
      if (v20[1])
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v35 = *v20;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v35, &v36);
        v21 = v36;
        v22 = v37;
      }

      v28 = 0x8000000226116E30;
      v29 = 0xD00000000000001CLL;
      goto LABEL_44;
    case 7u:
      v26 = *v20;
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v36 = 0xD00000000000001ALL;
      v37 = 0x8000000226116C90;
      v21 = Errno.description.getter();
      goto LABEL_45;
    case 8u:
      v30 = *v20;
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v36 = 0xD000000000000023;
      v37 = 0x8000000226116BD0;
      LOBYTE(v35) = v30;
      v21 = CryptexAssetType.name.getter();
      goto LABEL_45;
    case 9u:
      return 0xD00000000000003DLL;
    case 0xAu:
      return 0xD00000000000002FLL;
    case 0xBu:
      return 0xD000000000000016;
    case 0xCu:
      return 0xD000000000000019;
    case 0xDu:
      return 0xD000000000000043;
    case 0xEu:
      return 0xD00000000000002BLL;
    case 0xFu:
      return 0xD00000000000002DLL;
    case 0x10u:
      return 0xD00000000000001DLL;
    case 0x11u:
      return 0xD000000000000029;
    case 0x12u:
    case 0x17u:
      return 0xD00000000000001ELL;
    case 0x13u:
      return 0xD000000000000015;
    case 0x14u:
      return 0xD000000000000020;
    case 0x15u:
      return 0xD00000000000001FLL;
    case 0x16u:
      return 0xD000000000000022;
    case 0x18u:
    case 0x19u:
      return 0xD00000000000001BLL;
    case 0x1Au:
      return 0xD000000000000027;
    default:
      if (v20[1])
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v35 = *v20;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v35, &v36);
        v21 = v36;
        v22 = v37;
      }

      v28 = 0x8000000226116EA0;
      v29 = 0xD000000000000014;
LABEL_44:
      v36 = v29;
      v37 = v28;
      v27 = v22;
LABEL_45:
      MEMORY[0x22AA74CD0](v21, v27);

      return v36;
  }
}

uint64_t closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  _StringGuts.grow(_:)(23);

  POSIXErrorCode.rawValue.getter();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v4);

  MEMORY[0x22AA74CD0](8250, 0xE200000000000000);
  v5 = POSIXErrorCode.rawValue.getter();
  result = strerror(v5);
  if (result)
  {
    v7 = String.init(cString:)();
    MEMORY[0x22AA74CD0](v7);

    *a2 = 0xD000000000000011;
    a2[1] = 0x8000000226116FE0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AMSupportError@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t specialized static CryptexError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v117 = a1;
  v118 = a2;
  v2 = type metadata accessor for FilePath();
  v113 = *(v2 - 8);
  v114 = v2;
  v3 = *(v113 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v109 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v110 = &v108 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
  v10 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111, v11);
  v112 = &v108 - v12;
  v13 = type metadata accessor for CryptexError();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v116 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v115 = (&v108 - v20);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = (&v108 - v23);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = (&v108 - v27);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = (&v108 - v31);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v108 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = (&v108 - v39);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = (&v108 - v43);
  MEMORY[0x28223BE20](v42, v45);
  v47 = (&v108 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A5ErrorO_ACtMd, &_s10CryptexKit0A5ErrorO_ACtMR);
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v53 = &v108 - v52;
  v54 = &v108 + *(v51 + 56) - v52;
  outlined init with copy of CryptexError(v117, &v108 - v52);
  v117 = v54;
  outlined init with copy of CryptexError(v118, v54);
  v118 = v53;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v44);
      v83 = *v44;
      v57 = v117;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_72;
      }

      v58 = *(v57 + 4);
      if (v44[1])
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    case 2u:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v40);
      v70 = *v40;
      v57 = v117;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_72;
      }

      v58 = *(v57 + 4);
      if (v40[1])
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    case 3u:
      outlined init with copy of CryptexError(v118, v36);
      v72 = v117;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v73 = v112;
        v74 = *(v111 + 48);
        outlined init with take of FilePath?(v36, v112);
        outlined init with take of FilePath?(v72, v73 + v74);
        v76 = v113;
        v75 = v114;
        v77 = *(v113 + 48);
        if (v77(v73, 1, v114) == 1)
        {
          v78 = v77(v73 + v74, 1, v75);
          v79 = v118;
          if (v78 == 1)
          {
            outlined destroy of CryptexPersonalizationService?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
LABEL_80:
            v101 = v79;
            goto LABEL_70;
          }
        }

        else
        {
          v103 = v110;
          outlined init with copy of FilePath?(v73, v110);
          v104 = v77(v73 + v74, 1, v75);
          v79 = v118;
          if (v104 != 1)
          {
            v105 = v109;
            (*(v76 + 32))(v109, v73 + v74, v75);
            lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
            v106 = dispatch thunk of static Equatable.== infix(_:_:)();
            v107 = *(v76 + 8);
            v107(v105, v75);
            v107(v103, v75);
            outlined destroy of CryptexPersonalizationService?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            if (v106)
            {
              goto LABEL_80;
            }

LABEL_78:
            outlined destroy of CryptexError(v79);
            goto LABEL_73;
          }

          (*(v76 + 8))(v103, v75);
        }

        outlined destroy of CryptexPersonalizationService?(v73, &_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
        goto LABEL_78;
      }

      outlined destroy of CryptexPersonalizationService?(v36, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v55 = v118;
LABEL_72:
      outlined destroy of CryptexPersonalizationService?(v55, &_s10CryptexKit0A5ErrorO_ACtMd, &_s10CryptexKit0A5ErrorO_ACtMR);
LABEL_73:
      v82 = 0;
      return v82 & 1;
    case 4u:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v32);
      v62 = *v32;
      v63 = v117;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_72;
      }

      v58 = *(v63 + 4);
      if (v32[1])
      {
        goto LABEL_26;
      }

      if ((v63[1] & 1) == 0)
      {
        v64 = *v63;
        v65 = POSIXErrorCode.rawValue.getter();
        if (v65 == POSIXErrorCode.rawValue.getter())
        {
          goto LABEL_69;
        }
      }

      goto LABEL_40;
    case 5u:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v28);
      v88 = *v28;
      v57 = v117;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_72;
      }

      v58 = *(v57 + 4);
      if ((v28[1] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 6u:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v24);
      v91 = *v24;
      v57 = v117;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_72;
      }

      v58 = *(v57 + 4);
      if ((v24[1] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 7u:
      v55 = v118;
      v80 = v115;
      outlined init with copy of CryptexError(v118, v115);
      v81 = v117;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_72;
      }

      v82 = *v80 == *v81;
      goto LABEL_61;
    case 8u:
      v55 = v118;
      v94 = v116;
      outlined init with copy of CryptexError(v118, v116);
      v95 = v117;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_72;
      }

      v96 = *v95;
      v120 = *v94;
      v119 = v96;
      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      v82 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_61:
      outlined destroy of CryptexError(v55);
      return v82 & 1;
    case 9u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xAu:
      v93 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v93 != 10)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xBu:
      v61 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v61 != 11)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xCu:
      v66 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v66 != 12)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xDu:
      v90 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v90 != 13)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xEu:
      v60 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v60 != 14)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xFu:
      v71 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v71 != 15)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x10u:
      v59 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v59 != 16)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x11u:
      v86 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v86 != 17)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x12u:
      v92 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v92 != 18)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x13u:
      v98 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v98 != 19)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x14u:
      v87 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v87 != 20)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x15u:
      v89 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v89 != 21)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x16u:
      v97 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v97 != 22)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x17u:
      v99 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v99 != 23)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x18u:
      v69 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v69 != 24)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x19u:
      v68 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v68 != 25)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x1Au:
      v100 = swift_getEnumCaseMultiPayload();
      v55 = v118;
      if (v100 == 26)
      {
        goto LABEL_69;
      }

      goto LABEL_72;
    default:
      v55 = v118;
      outlined init with copy of CryptexError(v118, v47);
      v56 = *v47;
      v57 = v117;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_72;
      }

      v58 = *(v57 + 4);
      if (v47[1])
      {
LABEL_26:
        if ((v58 & 1) == 0)
        {
LABEL_40:
          outlined destroy of CryptexError(v55);
          goto LABEL_73;
        }
      }

      else
      {
LABEL_38:
        if (v58)
        {
          goto LABEL_40;
        }

        v84 = *v57;
        v85 = POSIXErrorCode.rawValue.getter();
        if (v85 != POSIXErrorCode.rawValue.getter())
        {
          goto LABEL_40;
        }
      }

LABEL_69:
      v101 = v55;
LABEL_70:
      outlined destroy of CryptexError(v101);
      v82 = 1;
      return v82 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppleImage4Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 5))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 4) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AppleImage4Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 4) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for AppleImage4Error(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unsigned int *destructiveInjectEnumTag for AppleImage4Error(unsigned int *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = (*result | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
  }

  else
  {
    v2 = (a2 - 3) | 0xFFFFFFC000000000;
  }

  *result = v2;
  *(result + 4) = BYTE4(v2);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TatsuError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TatsuError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata completion function for CryptexError()
{
  type metadata accessor for (code: POSIXErrorCode?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (at: FilePath?)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (code: Errno)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (code: POSIXErrorCode?)()
{
  if (!lazy cache variable for type metadata for (code: POSIXErrorCode?))
  {
    _sSo10CFErrorRefaMaTm_0(0, &lazy cache variable for type metadata for POSIXErrorCode?, MEMORY[0x277D85A90], MEMORY[0x277D83D88]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (code: POSIXErrorCode?));
    }
  }
}

void type metadata accessor for (at: FilePath?)()
{
  if (!lazy cache variable for type metadata for (at: FilePath?))
  {
    type metadata accessor for FilePath?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (at: FilePath?));
    }
  }
}

void type metadata accessor for FilePath?()
{
  if (!lazy cache variable for type metadata for FilePath?)
  {
    type metadata accessor for FilePath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FilePath?);
    }
  }
}

uint64_t type metadata accessor for (code: Errno)()
{
  result = lazy cache variable for type metadata for (code: Errno);
  if (!lazy cache variable for type metadata for (code: Errno))
  {
    result = MEMORY[0x277D85488];
    atomic_store(MEMORY[0x277D85488], &lazy cache variable for type metadata for (code: Errno));
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexErrorMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for CryptexErrorMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _sSo10CFErrorRefaMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t outlined init with copy of CryptexPersonalizationService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexPersonalizationService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Cryptex.PersonalizeOptions()
{
  result = type metadata singleton initialization cache for Cryptex.PersonalizeOptions;
  if (!type metadata singleton initialization cache for Cryptex.PersonalizeOptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of CryptexPersonalizationService?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Cryptex.PersonalizeOptions.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Cryptex.PersonalizeOptions();
  v3 = *(v2 + 24);
  v4 = CryptexPersonalizationService.tatsu.unsafeMutableAddressor();
  outlined init with copy of CryptexPersonalizationService(v4, &a1[v3]);
  v5 = type metadata accessor for CryptexPersonalizationService();
  (*(*(v5 - 8) + 56))(&a1[v3], 0, 1, v5);
  v6 = *(v2 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

void type metadata completion function for Cryptex.PersonalizeOptions()
{
  type metadata accessor for CryptexPersonalizationService?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (host: URL, port: Int32)?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CryptexPersonalizationService?()
{
  if (!lazy cache variable for type metadata for CryptexPersonalizationService?)
  {
    type metadata accessor for CryptexPersonalizationService();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CryptexPersonalizationService?);
    }
  }
}

void type metadata accessor for (host: URL, port: Int32)?()
{
  if (!lazy cache variable for type metadata for (host: URL, port: Int32)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (host: URL, port: Int32)?);
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OS_xpc_object.string()()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA75EA0]();
  if (v6 == XPC_TYPE_STRING.getter())
  {
    if (xpc_string_get_string_ptr(v0))
    {
      v13 = String.init(cString:)();
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v7 = 0x8000000226117050;
    v9 = v15;
    v10 = v5;
    v11 = 0xD000000000000020;
    v12 = 11;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v7 = 0x8000000226117000;
    v9 = v8;
    v10 = v5;
    v11 = 0xD000000000000013;
    v12 = 8;
  }

  static CryptexError.error(_:_:file:function:lineNumber:)(v10, v11, v7, 0xD000000000000025, 0x8000000226117020, 0x2928676E69727473, 0xE800000000000000, v12, v9);
  outlined destroy of CryptexError(v5);
  v13 = swift_willThrow();
LABEL_8:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t OS_xpc_object.data()()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x22AA75EA0](v0);
  if (v6 != XPC_TYPE_DATA.getter())
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v7 = 0x8000000226117080;
    v9 = v8;
    v10 = v5;
    v11 = 0xD000000000000011;
    v12 = 19;
LABEL_3:
    static CryptexError.error(_:_:file:function:lineNumber:)(v10, v11, v7, 0xD000000000000025, 0x8000000226117020, 0x292861746164, 0xE600000000000000, v12, v9);
    outlined destroy of CryptexError(v5);
    return swift_willThrow();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v0);
  if (!bytes_ptr)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v7 = 0x80000002261170A0;
    v9 = v17;
    v10 = v5;
    v11 = 0xD00000000000001ELL;
    v12 = 23;
    goto LABEL_3;
  }

  v15 = bytes_ptr;
  length = xpc_data_get_length(v0);
  return specialized Data.init(bytes:count:)(v15, length);
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t Data.asXPC()(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v5 = bytes;
      v4 = 0;
      goto LABEL_23;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v8 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 += v6 - a1;
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
    v5 = bytes;
    goto LABEL_23;
  }

  v11 = a1;
  v10 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v12 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v12))
    {
      v8 += v11 - v12;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v13 = MEMORY[0x22AA74760]();
  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v4 = v14;
  }

  else
  {
    v4 = 0;
  }

  v5 = v8;
LABEL_23:
  result = xpc_data_create(v5, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance Data@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static Data.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t specialized static Data.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x22AA75EA0](a1);
  if (v7 != XPC_TYPE_DATA.getter())
  {
    swift_storeEnumTagMultiPayload();
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x22AA74CD0](0xD000000000000017, 0x80000002261170C0);
    name = xpc_type_get_name(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    _print_unlocked<A, B>(_:_:)();
    v8 = v16;
    v9 = v17;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, v8, v9, 0xD000000000000020, 0x80000002261170E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 7, v10);

LABEL_3:
    outlined destroy of CryptexError(v6);
    return swift_willThrow();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  if (!bytes_ptr)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD00000000000001ELL, 0x8000000226117110, 0xD000000000000020, 0x80000002261170E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 10, v15);
    goto LABEL_3;
  }

  v13 = bytes_ptr;
  length = xpc_data_get_length(a1);
  return specialized Data.init(bytes:count:)(v13, length);
}

uint64_t FilePath.appending(_:)()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  FilePath.string.getter();
  return FilePath.appending(_:)();
}

{
  return MEMORY[0x2821FFA68]();
}

{
  return MEMORY[0x2821FFA70]();
}

uint64_t NSFileHandle.path.getter()
{
  v1 = swift_slowAlloc();
  if (MEMORY[0x22AA74A40]([v0 fileDescriptor], 50, v1))
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    v3 = v2;
    v4 = type metadata accessor for FilePath();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v6 = String.init(cString:)();
    return MEMORY[0x22AA74B40](v6);
  }
}

__n128 FileStat.rawValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 FileStat.rawValue.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v4;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void __swiftcall FileStat.init(rawValue:)(CryptexKit::FileStat *__return_ptr retstr, stat *rawValue)
{
  v2 = *&rawValue->st_blksize;
  *&retstr->rawValue.st_size = *&rawValue->st_size;
  *&retstr->rawValue.st_blksize = v2;
  *retstr->rawValue.st_qspare = *rawValue->st_qspare;
  st_mtimespec = rawValue->st_mtimespec;
  retstr->rawValue.st_atimespec = rawValue->st_atimespec;
  retstr->rawValue.st_mtimespec = st_mtimespec;
  st_birthtimespec = rawValue->st_birthtimespec;
  retstr->rawValue.st_ctimespec = rawValue->st_ctimespec;
  retstr->rawValue.st_birthtimespec = st_birthtimespec;
  v5 = *&rawValue->st_uid;
  *&retstr->rawValue.st_dev = *&rawValue->st_dev;
  *&retstr->rawValue.st_uid = v5;
}

BOOL FileStat.isBlockSpecial.getter(unsigned __int16 (*a1)(void))
{
  v3 = *(v1 + 4);
  v4 = S_IFMT.getter() & v3;
  return v4 == a1();
}

uint64_t FileStat.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v25 = a1;
  v26 = &v15;
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = nothingOrErrno<A>(retryOnInterrupt:_:)(1, partial apply for closure #1 in FileStat.init(_:), v24, MEMORY[0x277D849A8], v4);
  if ((v5 & 0x100000000) != 0)
  {
    v10 = v5;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v11 = v10;
  }

  else
  {
    v6 = v22;
    a2[6] = v21;
    a2[7] = v6;
    a2[8] = v23;
    v7 = v18;
    a2[2] = v17;
    a2[3] = v7;
    v8 = v20;
    a2[4] = v19;
    a2[5] = v8;
    v9 = v16;
    *a2 = v15;
    a2[1] = v9;
  }

  v12 = type metadata accessor for FilePath();
  result = (*(*(v12 - 8) + 8))(a1, v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t partial apply for closure #1 in FileStat.init(_:)@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  FilePath.string.getter();
  v5 = String.utf8CString.getter();

  LODWORD(v4) = lstat((v5 + 32), v3);

  *a1 = v4;
  return result;
}

{
  result = fstat(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t FileStat.init(_:)@<X0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = FileStat.init(_:)(a1, partial apply for closure #1 in FileStat.init(_:), a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileStat.init(_:)(CryptexKit::FileStat *__return_ptr retstr, Swift::Int32 a2)
{
  v3 = *MEMORY[0x277D85DE8];
  FileStat.init(_:)(a2, closure #1 in FileStat.init(_:)partial apply, retstr);
  v2 = *MEMORY[0x277D85DE8];
}

unint64_t FileStat.init(_:)@<X0>(int a1@<W0>, void (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v24 = a1;
  v25 = &v14;
  v5 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  result = nothingOrErrno<A>(retryOnInterrupt:_:)(1, a2, v23, MEMORY[0x277D849A8], v5);
  if ((result & 0x100000000) != 0)
  {
    v11 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v12 = v11;
  }

  else
  {
    v7 = v21;
    a3[6] = v20;
    a3[7] = v7;
    a3[8] = v22;
    v8 = v17;
    a3[2] = v16;
    a3[3] = v8;
    v9 = v19;
    a3[4] = v18;
    a3[5] = v9;
    v10 = v15;
    *a3 = v14;
    a3[1] = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for FileStat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FileStat(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *result = (a2 - 1);
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

  *(result + 144) = v3;
  return result;
}

uint64_t static CryptexAssetType.from(xpc:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = OS_xpc_object.string()();
  result = v8._countAndFlagsBits;
  if (!v9)
  {

    CryptexAssetType.init(stringValue:)(v8);
    v10 = v14;
    if (v14 == 6)
    {
      swift_storeEnumTagMultiPayload();
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v14 = 0xD000000000000012;
      v15 = 0x8000000226117140;
      MEMORY[0x22AA74CD0](v8._countAndFlagsBits, v8._object);

      v11 = v14;
      v12 = v15;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v6, v11, v12, 0xD00000000000002CLL, 0x8000000226117160, 0x637078286D6F7266, 0xEA0000000000293ALL, 9, v13);

      outlined destroy of CryptexError(v6);
      return swift_willThrow();
    }

    else
    {

      *a1 = v10;
    }
  }

  return result;
}

xpc_object_t CryptexAssetType.asXPC()()
{
  v4 = *v0;
  CryptexAssetType.stringValue.getter();
  v1 = String.utf8CString.getter();

  v2 = xpc_string_create((v1 + 32));

  return v2;
}

xpc_object_t protocol witness for XpcCodable.asXPC() in conformance CryptexAssetType()
{
  v4 = *v0;
  CryptexAssetType.stringValue.getter();
  v1 = String.utf8CString.getter();

  v2 = xpc_string_create((v1 + 32));

  return v2;
}

uint64_t CryptexAsset.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CryptexAsset.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CryptexAsset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x646E6148656C6966;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CryptexAsset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646E6148656C6966;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v6 = 0x646E6148656C6966;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000656CLL;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexAsset.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CryptexAsset.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexAsset.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CryptexAsset.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CryptexAsset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x646E6148656C6966;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexAsset.CodingKeys()
{
  if (*v0)
  {
    result = 0x646E6148656C6966;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CryptexAsset.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static CryptexAsset.from(xpc:)()
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v26 = &type metadata for CryptexAsset.CodingKeys;
  v7 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
  v27 = v7;
  LOBYTE(v25[0]) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(v25, &type metadata for CryptexAssetType, &protocol witness table for CryptexAssetType, &v28);
  result = __swift_destroy_boxed_opaque_existential_0(v25);
  if (!v1)
  {
    v9 = v28;
    if (v28 == 6)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v25, "Missing key ");
      BYTE5(v25[1]) = 0;
      HIWORD(v25[1]) = -5120;
      LOBYTE(v28) = 0;
      lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v10);

      v11 = v25[0];
      v12 = v25[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v14 = v13;
      v15 = v6;
      v16 = v11;
      v17 = v12;
      v18 = 29;
LABEL_4:
      static CryptexError.error(_:_:file:function:lineNumber:)(v15, v16, v17, 0xD00000000000002CLL, 0x8000000226117160, 0x637078286D6F7266, 0xEA0000000000293ALL, v18, v14);

      outlined destroy of CryptexError(v6);
      return swift_willThrow();
    }

    v19 = type metadata accessor for NSFileHandle();
    v26 = &type metadata for CryptexAsset.CodingKeys;
    v27 = v7;
    LOBYTE(v25[0]) = 1;
    OS_xpc_object.decode<A>(_:forKey:)(v25, v19, &protocol witness table for NSFileHandle, &v28);
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (!v28)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v25, "Missing key ");
      BYTE5(v25[1]) = 0;
      HIWORD(v25[1]) = -5120;
      LOBYTE(v28) = 1;
      lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v20);

      v21 = v25[0];
      v22 = v25[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v14 = v23;
      v15 = v6;
      v16 = v21;
      v17 = v22;
      v18 = 32;
      goto LABEL_4;
    }

    LOBYTE(v25[0]) = v9;
    return (*(v0 + 104))(v25);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t CryptexAsset.populate(xpcDict:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  swift_getObjectType();
  v5 = *(v3 + 16);
  v14 = &type metadata for CryptexAssetType;
  v15 = &protocol witness table for CryptexAssetType;
  LOBYTE(v13[0]) = v5;
  v11 = &type metadata for CryptexAsset.CodingKeys;
  v6 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
  v12 = v6;
  LOBYTE(v10[0]) = 0;
  OS_xpc_object.encode(_:forKey:)(v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v2)
  {
    v8 = *(v3 + 24);
    v14 = type metadata accessor for NSFileHandle();
    v15 = &protocol witness table for NSFileHandle;
    v12 = v6;
    v13[0] = v8;
    v11 = &type metadata for CryptexAsset.CodingKeys;
    LOBYTE(v10[0]) = 1;
    v9 = v8;
    OS_xpc_object.encode(_:forKey:)(v13, v10);
    __swift_destroy_boxed_opaque_existential_0(v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance CryptexAsset@<X0>(uint64_t *a1@<X8>)
{
  result = static CryptexAsset.from(xpc:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static Dictionary<>.from(xpc:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  v12 = static Array._allocateUninitialized(_:)();
  v13 = specialized Dictionary.init(dictionaryLiteral:)(v12, a2, a3, a5);

  v20 = v13;
  v19 = 0;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = &v20;
  v14[8] = &v19;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static Dictionary<>.from(xpc:);
  *(v15 + 24) = v14;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v16);
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      swift_willThrow();
    }

    else
    {
      v15 = v20;
    }

    return v15;
  }

  return result;
}

uint64_t closure #1 in static Dictionary<>.from(xpc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47[0] = a8;
  v47[1] = a3;
  v54 = a7;
  v47[2] = a4;
  v49 = a2;
  v11 = type metadata accessor for Logger();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v50 = a6;
  v51 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v48 = v47 - v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = v47 - v24;
  v26 = *(a5 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v23, v28);
  v31 = v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = v47 - v33;
  v35 = String.init(cString:)();
  v37 = v36;

  dispatch thunk of CodingKey.init(stringValue:)();
  if ((*(v26 + 48))(v25, 1, a5) == 1)
  {
    (*(v20 + 8))(v25, v19);
    v38 = v51;
    Logger.init()();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55 = v42;
      *v41 = 136315138;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v55);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_2260DF000, v39, v40, "Ignoring unknown key %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AA75CB0](v42, -1, -1);
      MEMORY[0x22AA75CB0](v41, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v38, v53);
  }

  else
  {

    (*(v26 + 32))(v34, v25, a5);
    (*(v26 + 16))(v31, v34, a5);
    v44 = v48;
    v45 = v50;
    (*(a9 + 8))(v49, v50, a9);
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    (*(v26 + 8))(v34, a5);
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t Dictionary<>.populate(xpcDict:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v64 = a5;
  v63 = a1;
  v62 = *(a4 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v74 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v11, v15);
  v73 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v17;
  v79 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = type metadata accessor for Optional();
  v19 = *(v68 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v68, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v57 - v26;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v28 = __CocoaDictionary.makeIterator()();
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v69 = v28 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(a2 + 32);
    v30 = ~v32;
    v29 = a2 + 64;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(a2 + 64);
    v69 = a2;
  }

  v76 = (v61 + 32);
  v75 = (v62 + 32);
  v67 = TupleTypeMetadata2 - 8;
  v57 = v30;
  v58 = (v30 + 64) >> 6;
  v60 = v61 + 16;
  v59 = v62 + 16;
  v66 = (v19 + 32);

  v36 = 0;
  while (1)
  {
    v37 = TupleTypeMetadata2;
    v70 = v36;
    v71 = v31;
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v39 = v70;
      v78 = v71;
      v37 = TupleTypeMetadata2;
LABEL_21:
      v45 = *(v37 + 48);
      (*v76)(v24, v73, v82);
      (*v75)(&v24[v45], v74, v79);
      v46 = 0;
      v41 = v39;
      goto LABEL_22;
    }

    v46 = 1;
    v41 = v70;
    v78 = v71;
    v37 = TupleTypeMetadata2;
LABEL_22:
    v47 = *(v37 - 8);
    (*(v47 + 56))(v24, v46, 1, v37);
    (*v66)(v27, v24, v68);
    if ((*(v47 + 48))(v27, 1, v37) == 1)
    {
      return outlined consume of [A : B].Iterator._Variant<A, B>();
    }

    v48 = v29;
    v49 = v27;
    v50 = v79;
    v77 = v8;
    v51 = v82;
    v52 = *(v37 + 48);
    v53 = *v63;
    swift_getObjectType();
    v81[3] = v50;
    v81[4] = v65;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*v75)(boxed_opaque_existential_1, &v49[v52], v50);
    v80[3] = v51;
    v80[4] = v64;
    v55 = __swift_allocate_boxed_opaque_existential_1(v80);
    v27 = v49;
    (*v76)(v55, v49, v51);
    v56 = v77;
    OS_xpc_object.encode(_:forKey:)(v81, v80);
    v8 = v56;
    if (v56)
    {
      outlined consume of [A : B].Iterator._Variant<A, B>();
      __swift_destroy_boxed_opaque_existential_0(v80);
      return __swift_destroy_boxed_opaque_existential_0(v81);
    }

    __swift_destroy_boxed_opaque_existential_0(v80);
    result = __swift_destroy_boxed_opaque_existential_0(v81);
    v36 = v41;
    v31 = v78;
    v29 = v48;
  }

  if (v31)
  {
    v38 = v31;
    v39 = v36;
LABEL_20:
    v78 = (v38 - 1) & v38;
    v43 = __clz(__rbit64(v38)) | (v39 << 6);
    v44 = v69;
    (*(v61 + 16))(v73, *(v69 + 48) + *(v61 + 72) * v43, v82);
    (*(v62 + 16))(v74, *(v44 + 56) + *(v62 + 72) * v43, v79);
    goto LABEL_21;
  }

  if (v58 <= v36 + 1)
  {
    v40 = v36 + 1;
  }

  else
  {
    v40 = v58;
  }

  v41 = v40 - 1;
  v42 = v36;
  while (1)
  {
    v39 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v39 >= v58)
    {
      v78 = 0;
      v46 = 1;
      goto LABEL_22;
    }

    v38 = *(v29 + 8 * v39);
    ++v42;
    if (v38)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (MEMORY[0x22AA74DF0](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x22AA74E20](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

xpc_object_t FileDescriptor.asXPC()(int a1)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_fd_create(a1);
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD000000000000017, 0x8000000226116680, 0xD00000000000002ALL, 0x80000002261171C0, 0x29284350587361, 0xE700000000000000, 17, v8);
    outlined destroy of CryptexError(v6);
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance FileDescriptor@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized static FileDescriptor.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized static FileDescriptor.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x22AA75EA0](a1);
  if (v7 == XPC_TYPE_FD.getter())
  {
    return xpc_fd_dup(a1);
  }

  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v6, 0xD00000000000001CLL, 0x8000000226116630, 0xD00000000000002ALL, 0x80000002261171C0, 0x637078286D6F7266, 0xEA0000000000293ALL, 8, v8);
  outlined destroy of CryptexError(v6);
  return swift_willThrow();
}

uint64_t static Array<A>.from(xpc:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = static Array._allocateUninitialized(_:)();
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = &v12;
  v6[5] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in static Array<A>.from(xpc:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_2;
  v8 = _Block_copy(aBlock);

  xpc_array_apply(a1, v8);
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    if (v11)
    {
      swift_willThrow();
    }

    else
    {
      v7 = v12;
    }

    return v7;
  }

  return result;
}

uint64_t closure #1 in static Array<A>.from(xpc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  (*(v6 + 8))(v5, v7, v6);
  type metadata accessor for Array();
  Array.append(_:)();
  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t Array<A>.populate(xpcArray:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x22AA74E10](v11, v12);
  if (result)
  {
    v14 = 0;
    v22 = (v8 + 16);
    v23 = a4;
    v21 = a4 + 16;
    v19 = v9;
    v20 = (v8 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v8 + 16))(v10, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, a3);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v19 != 8)
        {
          goto LABEL_13;
        }

        v25 = result;
        (*v22)(v10, &v25, a3);
        result = swift_unknownObjectRelease();
      }

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = *v24;
      v18 = (*(v23 + 16))(a3);
      result = (*v20)(v10, a3);
      if (!v4)
      {
        xpc_array_append_value(v17, v18);
        swift_unknownObjectRelease();
        result = MEMORY[0x22AA74E10](a2, a3);
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance <A> [A]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.from(xpc:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

xpc_object_t protocol witness for XpcCodable.asXPC() in conformance <A> [A](uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return XpcArrayCodable.asXPC()(a1, WitnessTable);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t RequestUninstall.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL RequestUninstall.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestUninstall.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL RequestUninstall.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestUninstall.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestUninstall.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestUninstall.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestUninstall.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance RequestUninstall.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestUninstall.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance RequestUninstall.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestUninstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestUninstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static RequestUninstall.from(xpc:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v6[3] = &type metadata for RequestUninstall.CodingKeys;
  v6[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277D837D0], v6, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  if (!v1)
  {
    v5 = v6[6];
    *a1 = v6[5];
    a1[1] = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

uint64_t RequestUninstall.populate(xpcDict:)(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *a1;
  swift_getObjectType();
  v7[3] = MEMORY[0x277D837D0];
  v7[4] = &protocol witness table for String;
  v7[0] = v3;
  v7[1] = v2;
  v6[3] = &type metadata for RequestUninstall.CodingKeys;
  v6[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  OS_xpc_object.encode(_:forKey:)(v7, v6);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestUninstall.checkEntitlement(entitlements:)(Swift::OpaquePointer entitlements)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226114ED0;
  v6._countAndFlagsBits = 0x6C6174736E696E75;
  v6._object = 0xE90000000000006CLL;
  *(v5 + 32) = Request.entitlementString(_:)(v6);
  v7._countAndFlagsBits = 0x6C6C6174736E69;
  v7._object = 0xE700000000000000;
  *(v5 + 48) = Request.entitlementString(_:)(v7);
  v8._countAndFlagsBits = 0x6C6174736E696E75;
  v8._object = 0xE90000000000006CLL;
  *(v5 + 64) = Request.packageEntitlementString(_:)(v8);
  Request.checkEntitlement(approvedList:_:)(entitlements._rawValue, v5);
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance RequestUninstall@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v6[3] = &type metadata for RequestUninstall.CodingKeys;
  v6[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277D837D0], v6, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  if (!v1)
  {
    v5 = v6[6];
    *a1 = v6[5];
    a1[1] = v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestUninstall(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RequestUninstall(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _cryptex_identity.init(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v69 = a1[6];
  v70 = v4;
  v71 = a1[8];
  v5 = a1[3];
  v65 = a1[2];
  v66 = v5;
  v6 = a1[5];
  v67 = a1[4];
  v68 = v6;
  v7 = a1[1];
  v63 = *a1;
  v64 = v7;
  v61 = CryptexIdentity.containsApIdentifiers()();
  v8 = a1[7];
  v69 = a1[6];
  v70 = v8;
  v71 = a1[8];
  v9 = a1[3];
  v65 = a1[2];
  v66 = v9;
  v10 = a1[5];
  v67 = a1[4];
  v68 = v10;
  v11 = a1[1];
  v63 = *a1;
  v64 = v11;
  v60 = CryptexIdentity.containsCryptex1Identifiers()();
  v12 = a1[7];
  v69 = a1[6];
  v70 = v12;
  v71 = a1[8];
  v13 = a1[3];
  v65 = a1[2];
  v66 = v13;
  v14 = a1[5];
  v67 = a1[4];
  v68 = v14;
  v15 = a1[1];
  v63 = *a1;
  v64 = v15;
  v59 = CryptexIdentity.chipFamily.getter();
  v16 = a1[7];
  v69 = a1[6];
  v70 = v16;
  v71 = a1[8];
  v17 = a1[3];
  v65 = a1[2];
  v66 = v17;
  v18 = a1[5];
  v67 = a1[4];
  v68 = v18;
  v19 = a1[1];
  v63 = *a1;
  v64 = v19;
  v20 = CryptexIdentity.boardID.getter();
  v21 = a1[7];
  v69 = a1[6];
  v70 = v21;
  v71 = a1[8];
  v22 = a1[3];
  v65 = a1[2];
  v66 = v22;
  v23 = a1[5];
  v67 = a1[4];
  v68 = v23;
  v24 = a1[1];
  v63 = *a1;
  v64 = v24;
  v25 = CryptexIdentity.chipID.getter();
  v26 = a1[7];
  v69 = a1[6];
  v70 = v26;
  v71 = a1[8];
  v27 = a1[3];
  v65 = a1[2];
  v66 = v27;
  v28 = a1[5];
  v67 = a1[4];
  v68 = v28;
  v29 = a1[1];
  v63 = *a1;
  v64 = v29;
  v30 = CryptexIdentity.securityDomain.getter();
  v31 = a1[7];
  v69 = a1[6];
  v70 = v31;
  v71 = a1[8];
  v32 = a1[3];
  v65 = a1[2];
  v66 = v32;
  v33 = a1[5];
  v67 = a1[4];
  v68 = v33;
  v34 = a1[1];
  v63 = *a1;
  v64 = v34;
  v35 = CryptexIdentity.chipFamily.getter();
  v36 = a1[7];
  v69 = a1[6];
  v70 = v36;
  v71 = a1[8];
  v37 = a1[3];
  v65 = a1[2];
  v66 = v37;
  v38 = a1[5];
  v67 = a1[4];
  v68 = v38;
  v39 = a1[1];
  v63 = *a1;
  v64 = v39;
  v40 = CryptexIdentity.type.getter();
  v41 = a1[7];
  v69 = a1[6];
  v70 = v41;
  v71 = a1[8];
  v42 = a1[3];
  v65 = a1[2];
  v66 = v42;
  v43 = a1[5];
  v67 = a1[4];
  v68 = v43;
  v44 = a1[1];
  v63 = *a1;
  v64 = v44;
  v45 = CryptexIdentity.subType.getter();
  v46 = a1[7];
  v69 = a1[6];
  v70 = v46;
  v71 = a1[8];
  v47 = a1[3];
  v65 = a1[2];
  v66 = v47;
  v48 = a1[5];
  v67 = a1[4];
  v68 = v48;
  v49 = a1[1];
  v63 = *a1;
  v64 = v49;
  CryptexIdentity.productClass.getter(&v62);
  if (v62 == 6)
  {
    result = 0;
  }

  else
  {
    result = CryptexIdentity.ProductClass.rawValue.getter();
  }

  if (v60)
  {
    v51 = !v61 | 2;
  }

  else
  {
    v51 = !v61;
  }

  v52 = ((v59 >> 30) & 4 | v51) ^ 4;
  if ((v45 & 0x100000000) != 0)
  {
    v53 = 0;
  }

  else
  {
    v53 = v45;
  }

  if ((v40 & 0x100000000) != 0)
  {
    v54 = 0;
  }

  else
  {
    v54 = v40;
  }

  if ((v35 & 0x100000000) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = v35;
  }

  *a2 = 1;
  if ((v30 & 0x100000000) != 0)
  {
    v56 = 0;
  }

  else
  {
    v56 = v30;
  }

  *(a2 + 8) = v52;
  if ((v25 & 0x100000000) != 0)
  {
    v57 = 0;
  }

  else
  {
    v57 = v25;
  }

  if ((v20 & 0x100000000) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v20;
  }

  *(a2 + 16) = v58;
  *(a2 + 20) = v57;
  *(a2 + 24) = v56;
  *(a2 + 28) = v55;
  *(a2 + 32) = v54;
  *(a2 + 36) = v53;
  *(a2 + 40) = result;
  return result;
}

uint64_t CryptexTrustOptions.tssUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexTrustOptions() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CryptexTrustOptions()
{
  result = type metadata singleton initialization cache for CryptexTrustOptions;
  if (!type metadata singleton initialization cache for CryptexTrustOptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexTrustOptions.tssUrl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CryptexTrustOptions() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CryptexTrustOptions.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CryptexPersonalizationService();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  v7 = *(type metadata accessor for CryptexTrustOptions() + 20);
  v8 = CryptexPersonalizationService.tatsu.unsafeMutableAddressor();
  outlined init with copy of CryptexPersonalizationService(v8, v6);
  v9 = type metadata accessor for URL();
  return (*(*(v9 - 8) + 32))(&a1[v7], v6, v9);
}

uint64_t type metadata completion function for CryptexTrustOptions()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Request.wrap()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(a2 + 32))(&v11);
  v8 = v11;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 8));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  *a3 = v8;
  return result;
}

Swift::String __swiftcall Request.entitlementString(_:)(Swift::String a1)
{
  MEMORY[0x22AA74CD0](a1._countAndFlagsBits, a1._object);
  v1 = 0xD000000000000023;
  v2 = 0x80000002261172A0;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Request.packageEntitlementString(_:)(Swift::String a1)
{
  MEMORY[0x22AA74CD0](a1._countAndFlagsBits, a1._object);
  MEMORY[0x22AA74CD0](0x2E6567616B636170, 0xE800000000000000);

  v1 = 0xD000000000000023;
  v2 = 0x80000002261172A0;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Request.checkEntitlement(approvedList:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4, v4);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2 + 40;
    v22[0] = a2 + 40;
    v22[1] = v7;
LABEL_3:
    v25 = v10;
    v13 = (v12 + 16 * v11);
    do
    {
      if (v11 >= v9)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_16;
      }

      if (*(a1 + 16))
      {
        v15 = *(v13 - 1);
        v16 = *v13;

        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        v19 = v18;

        if (v19)
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v17, v24);
          result = swift_dynamicCast();
          if (result)
          {
            v10 = v26;
            if (v26 == 1)
            {
              ++v11;
              v12 = v22[0];
              if (v14 != v9)
              {
                goto LABEL_3;
              }

              return result;
            }
          }
        }
      }

      ++v11;
      v13 += 2;
    }

    while (v14 != v9);
    if (v25)
    {
      return result;
    }
  }

  v20 = v23;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v20, 0xD00000000000001CLL, 0x80000002261172D0, 0xD000000000000018, 0x80000002261172F0, 0xD000000000000021, 0x8000000226117310, 34, v21);
  outlined destroy of CryptexError(v20);
  return swift_willThrow();
}

CryptexKit::RequestWrapper::CodingKeys_optional __swiftcall RequestWrapper.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_request;
  }

  else
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

CryptexKit::RequestWrapper::CodingKeys_optional __swiftcall RequestWrapper.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_request;
  }

  else
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t RequestWrapper.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74736575716572;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RequestWrapper.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74736575716572;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x74736575716572;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006C6C6174736ELL;
  v3 = 0x4974736575716572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x8000000226117260;
    }

    else
    {
      v6 = 0x8000000226117280;
    }

    v5 = 0xD000000000000010;
  }

  else
  {
    if (a1)
    {
      v5 = 0x4974736575716572;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v6 = 0xEE006C6C6174736ELL;
    }

    else
    {
      v6 = 0x8000000226117230;
    }
  }

  v7 = 0x8000000226117260;
  if (a2 != 2)
  {
    v7 = 0x8000000226117280;
  }

  if (!a2)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x8000000226117230;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestWrapper.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestWrapper.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestWrapper.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestWrapper.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestWrapper.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x74736575716572;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestWrapper.CodingKeys()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestWrapper.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static RequestWrapper.from(xpc:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for CryptexError();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x22AA75EA0](a1);
  if (v10 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v9, 0xD000000000000017, 0x8000000226116B20, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, 56, v11);
LABEL_3:
    outlined destroy of CryptexError(v9);
    return swift_willThrow();
  }

  swift_getObjectType();
  v32 = &type metadata for RequestWrapper.CodingKeys;
  v33 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
  LOBYTE(v31) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(&v31, &type metadata for RequestType, &protocol witness table for RequestType, &v34);
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v2)
  {
    v13 = v34;
    if (v34 == 4)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(&v31, "Expected key ");
      HIWORD(v31) = -4864;
      v34 = 0;
      lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v14);

      v15 = v31;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v17 = v16;
      v18 = v9;
      v20 = v15 >> 64;
      v19 = v15;
      v21 = 60;
LABEL_7:
      static CryptexError.error(_:_:file:function:lineNumber:)(v18, v19, v20, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, v21, v17);

      goto LABEL_3;
    }

    LOBYTE(v31) = 1;
    v22 = OS_xpc_object.object<A>(forKey:)();
    if (!v22)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(&v31, "Expected key ");
      HIWORD(v31) = -4864;
      v34 = 1;
      lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v28);

      v29 = v31;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v17 = v30;
      v18 = v9;
      v20 = v29 >> 64;
      v19 = v29;
      v21 = 63;
      goto LABEL_7;
    }

    v24 = off_278584070[v13];
    v25 = *(v24[1] + 1);
    v26 = *(v25 + 8);
    v32 = off_278584050[v13];
    v23 = v32;
    v33 = v24;
    v27 = v22;
    __swift_allocate_boxed_opaque_existential_1(&v31);
    v26(v27, v23, v25);
    swift_unknownObjectRelease();
    *a2 = v13;
    return outlined init with take of Response(&v31, (a2 + 8));
  }

  return result;
}

ValueMetadata *RequestType.type()()
{
  v1 = *v0;
  result = off_278584050[v1];
  v3 = off_278584070[v1];
  return result;
}

uint64_t RequestWrapper.populate(xpcDict:)(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  swift_getObjectType();
  v5 = *v3;
  v16 = &type metadata for RequestType;
  v17 = &protocol witness table for RequestType;
  LOBYTE(v15[0]) = v5;
  v13 = &type metadata for RequestWrapper.CodingKeys;
  v6 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
  v14 = v6;
  LOBYTE(v12[0]) = 0;
  OS_xpc_object.encode(_:forKey:)(v15, v12);
  __swift_destroy_boxed_opaque_existential_0(v12);
  result = __swift_destroy_boxed_opaque_existential_0(v15);
  if (!v2)
  {
    v8 = *(v3 + 4);
    v9 = *(v3 + 5);
    v10 = __swift_project_boxed_opaque_existential_1(v3 + 1, v8);
    v16 = v8;
    v17 = *(*(v9 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    v13 = &type metadata for RequestWrapper.CodingKeys;
    v14 = v6;
    LOBYTE(v12[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v15, v12);
    __swift_destroy_boxed_opaque_existential_0(v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return result;
}

uint64_t static RequestType.from(xpc:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CryptexError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = OS_xpc_object.string()();
  result = v8._countAndFlagsBits;
  if (!v9)
  {

    v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestType.init(rawValue:), v8);

    if (v10 >= 4)
    {
      swift_storeEnumTagMultiPayload();
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v14 = 0xD00000000000001BLL;
      v15 = 0x8000000226117340;
      MEMORY[0x22AA74CD0](v8._countAndFlagsBits, v8._object);

      v11 = v14;
      v12 = v15;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v6, v11, v12, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, 93, v13);

      outlined destroy of CryptexError(v6);
      return swift_willThrow();
    }

    else
    {

      *a1 = v10;
    }
  }

  return result;
}

CryptexKit::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestType.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

xpc_object_t RequestType.asXPC()()
{
  *v0;
  v1 = String.utf8CString.getter();

  v2 = xpc_string_create((v1 + 32));

  return v2;
}

unint64_t RequestType.rawValue.getter()
{
  v1 = 0x4974736575716572;
  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestType(unint64_t *a1@<X8>)
{
  v2 = 0xEE006C6C6174736ELL;
  v3 = 0x4974736575716572;
  v4 = 0x8000000226117260;
  if (*v1 != 2)
  {
    v4 = 0x8000000226117280;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x8000000226117230;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x22AA75CB0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType()
{
  result = lazy protocol witness table cache variable for type RequestType and conformance RequestType;
  if (!lazy protocol witness table cache variable for type RequestType and conformance RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestType and conformance RequestType);
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

uint64_t getEnumTagSinglePayload for RequestWrapper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestWrapper(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

CryptexKit::CryptexIdentity::ProductClass_optional __swiftcall CryptexIdentity.ProductClass.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = rawValue + 16;
  if (rawValue - 240 >= 6)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexIdentity.ProductClass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 240);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexIdentity.ProductClass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 240);
  return Hasher._finalize()();
}

Swift::Int CryptexIdentity.ProductionStatus.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

__n128 CryptexIdentity.chipInstance.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t CryptexIdentity.boardID.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 2) != 0;
  if ((v1 & 2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 28);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.chipID.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 4) != 0;
  if ((v1 & 4) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 32);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.securityDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 8) != 0;
  if ((v1 & 8) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 36);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.chipFamily.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x8000) != 0;
  if ((v1 & 0x8000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 128);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.type.getter()
{
  v1 = *(v0 + 16);
  v2 = BYTE2(v1) & 1;
  if ((v1 & 0x10000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 132);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.subType.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x20000) != 0;
  if ((v1 & 0x20000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 136);
  }

  return v3 | (v2 << 32);
}

void CryptexIdentity.productClass.getter(char *a1@<X8>)
{
  v2 = 6;
  if ((*(v1 + 18) & 4) == 0)
  {
    if ((*(v1 + 140) - 240) >= 6)
    {
      v2 = 6;
    }

    else
    {
      v2 = *(v1 + 140) + 16;
    }
  }

  *a1 = v2;
}

unint64_t CryptexIdentity.epoch.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  return v1 | ((*(v0 + 16) & 1) << 32);
}

uint64_t CryptexIdentity.uniqueChipID.getter()
{
  if ((*(v0 + 16) & 0x10) != 0)
  {
    result = 0;
  }

  else
  {
    result = *(v0 + 40);
  }

  v2 = (*(v0 + 16) & 0x10uLL) >> 4;
  return result;
}

void CryptexIdentity.certificateProductionStatus.getter(_BYTE *a1@<X8>)
{
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2 = *v1;
  v3 = v1[1];
  _img4_chip_instance.certificateProductionStatus.getter(a1);
}

uint64_t CryptexIdentity.certificateSecurityMode.getter()
{
  if ((*(v0 + 16) & 0x40) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 49);
  }
}

void CryptexIdentity.effectiveProductionStatus.getter(_BYTE *a1@<X8>)
{
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2 = *v1;
  v3 = v1[1];
  _img4_chip_instance.effectiveProductionStatus.getter(a1);
}

uint64_t CryptexIdentity.effectiveSecurityMode.getter()
{
  if (*(v0 + 17))
  {
    return 2;
  }

  else
  {
    return *(v0 + 51);
  }
}

uint64_t CryptexIdentity.internalUseOnly.getter()
{
  if ((*(v0 + 17) & 2) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 52);
  }
}

uint64_t CryptexIdentity.researchFused.getter()
{
  if ((*(v0 + 17) & 4) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 53);
  }
}

uint64_t CryptexIdentity.engineeringUseOnly.getter()
{
  if ((*(v0 + 17) & 8) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 54);
  }
}

uint64_t CryptexIdentity.extendedSecurityDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x1000) != 0;
  if ((v1 & 0x1000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 56);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.factoryPreReleaseGlobalTrust.getter()
{
  if ((*(v0 + 17) & 0x20) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 60);
  }
}

uint64_t CryptexIdentity.universalDeviceID.getter()
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 17) & 0x40) != 0)
  {
    result = 0;
  }

  else
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 96);
    v5[0] = *(v0 + 80);
    v5[1] = v2;
    v5[2] = *(v0 + 112);
    result = specialized Data.init(bytes:count:)(v5, v1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Bool __swiftcall CryptexIdentity.containsCryptex1Identifiers()()
{
  v1 = *(v0 + 2);
  if ((v1 & 0x18000) != 0)
  {
    return 0;
  }

  v4 = *v0;
  v5 = v1;
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  v12 = *(v0 + 120);
  v13 = *(v0 + 17);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  CryptexIdentity.productClass.getter(&v3);
  return v3 != 6;
}

uint64_t CryptexIdentity.description.getter()
{
  v62 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 7);
  v40 = *(v0 + 6);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 88);
  v58 = *(v0 + 72);
  v59 = v5;
  v60 = *(v0 + 104);
  v61 = *(v0 + 15);
  v6 = *(v0 + 56);
  v56 = *(v0 + 40);
  v57 = v6;
  v41 = v0[8];
  if ((v1 & 2) != 0)
  {
    v9 = MEMORY[0x277D84F90];
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  *&v43 = 0x3D64496472616F62;
  *(&v43 + 1) = 0xE800000000000000;
  LODWORD(v42) = v2;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v7);

  v8 = v43;
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[16 * v11 + 32] = v8;
  if ((v1 & 4) == 0)
  {
LABEL_7:
    *&v43 = 0x3D644970696863;
    *(&v43 + 1) = 0xE700000000000000;
    LODWORD(v42) = v3;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v12);

    v13 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    *&v9[16 * v15 + 32] = v13;
  }

LABEL_12:
  if ((v1 & 8) == 0)
  {
    _StringGuts.grow(_:)(17);

    *&v43 = 0x7974697275636573;
    *(&v43 + 1) = 0xEF3D6E69616D6F44;
    LODWORD(v42) = v4;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v16);

    v17 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    if (v19 >= v18 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v19 + 1;
    *&v9[16 * v19 + 32] = v17;
  }

  v43 = v62;
  v51 = v58;
  v52 = v59;
  v53 = v60;
  v49 = v56;
  v44 = v1;
  v45 = v40;
  v46 = v2;
  v47 = v3;
  v48 = v4;
  v54 = v61;
  v50 = v57;
  v55 = v41;
  CryptexIdentity.productClass.getter(&v42);
  v20 = v42;
  if (v42 == 6)
  {
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    MEMORY[0x22AA74CD0](0x43746375646F7270, 0xED00003D7373616CLL);
    LOBYTE(v42) = v20;
    _print_unlocked<A, B>(_:_:)();
    v21 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v23 = *(v9 + 2);
    v22 = *(v9 + 3);
    if (v23 >= v22 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v9);
    }

    *(v9 + 2) = v23 + 1;
    *&v9[16 * v23 + 32] = v21;
    if ((v1 & 0x8000) != 0)
    {
LABEL_20:
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  *&v43 = 0x696D614670696863;
  *(&v43 + 1) = 0xEB000000003D796CLL;
  LODWORD(v42) = v41;
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v24);

  v25 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v27 = *(v9 + 2);
  v26 = *(v9 + 3);
  if (v27 >= v26 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
  }

  *(v9 + 2) = v27 + 1;
  *&v9[16 * v27 + 32] = v25;
  if ((v1 & 0x10000) != 0)
  {
LABEL_21:
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  *&v43 = 0x3D65707974;
  *(&v43 + 1) = 0xE500000000000000;
  LODWORD(v42) = DWORD1(v41);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v28);

  v29 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v31 = *(v9 + 2);
  v30 = *(v9 + 3);
  if (v31 >= v30 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v9);
  }

  *(v9 + 2) = v31 + 1;
  *&v9[16 * v31 + 32] = v29;
  if ((v1 & 0x20000) == 0)
  {
LABEL_38:
    *&v43 = 0x3D65707954627573;
    *(&v43 + 1) = 0xE800000000000000;
    LODWORD(v42) = DWORD2(v41);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v32);

    v33 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    if (v35 >= v34 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
    }

    *(v9 + 2) = v35 + 1;
    *&v9[16 * v35 + 32] = v33;
  }

LABEL_43:
  *&v43 = 91;
  *(&v43 + 1) = 0xE100000000000000;
  v42 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  MEMORY[0x22AA74CD0](v36, v38);

  MEMORY[0x22AA74CD0](93, 0xE100000000000000);
  return v43;
}

void CryptexIdentity.hash(into:)()
{
  v103 = *MEMORY[0x277D85DE8];
  v52 = v0[5];
  v53 = v0[6];
  v54 = v0[7];
  v78 = *v0;
  v98 = v0[7];
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 5);
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v10 = *(v0 + 51);
  v11 = *(v0 + 52);
  v12 = *(v0 + 53);
  v13 = *(v0 + 54);
  v14 = *(v0 + 55);
  v15 = *(v0 + 14);
  v16 = *(v0 + 60);
  v17 = *(v0 + 9);
  v18 = *(v0 + 32);
  v19 = *(v0 + 33);
  v21 = *(v0 + 34);
  v20 = *(v0 + 35);
  v79 = v1;
  v44 = v2;
  v80 = v2;
  v81 = v3;
  v82 = v4;
  v83 = v5;
  v45 = v6;
  v84 = v6;
  v38 = v9;
  v39 = v7;
  v85 = v7;
  v46 = v8;
  v47 = v10;
  v86 = v8;
  v87 = v9;
  v88 = v10;
  v48 = v11;
  v49 = v12;
  v89 = v11;
  v90 = v12;
  v50 = v13;
  v51 = v15;
  v91 = v13;
  v37 = v14;
  v92 = v14;
  v93 = v15;
  v40 = v20;
  v41 = v16;
  v94 = v16;
  *v95 = *(v0 + 61);
  *&v95[7] = *(v0 + 17);
  v42 = v17;
  *&v95[11] = v17;
  v96 = v52;
  v97 = v53;
  v43 = v18;
  v99 = v18;
  v100 = v19;
  v101 = v21;
  v102 = v20;
  if ((v1 & 2) != 0)
  {
    Hasher._combine(_:)(0);
    if ((v1 & 4) != 0)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      if ((v1 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
    if ((v1 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v4);
  if ((v1 & 8) != 0)
  {
LABEL_4:
    Hasher._combine(_:)(0);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
  if ((v1 & 0x8000) != 0)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v19);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v43);
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  Hasher._combine(_:)(0);
  if ((v1 & 0x20000) != 0)
  {
LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_14;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v21);
LABEL_14:
  v56 = *v0;
  *&v57 = v1;
  *(&v57 + 1) = __PAIR64__(v3, v44);
  *&v58 = __PAIR64__(v5, v4);
  *(&v58 + 1) = v45;
  v59 = v39;
  v60 = v46;
  v61 = v38;
  v62 = v47;
  v63 = v48;
  v64 = v49;
  v65 = v50;
  v66 = v37;
  v67 = v51;
  v68 = v41;
  v22 = *(v0 + 61);
  *&v69[7] = *(v0 + 17);
  *v69 = v22;
  v70 = v42;
  v23 = v0[7];
  v72 = v0[6];
  v73 = v23;
  v71 = v0[5];
  v74 = v43;
  v75 = v19;
  v76 = v21;
  v77 = v40;
  CryptexIdentity.productClass.getter(&v55);
  v24 = v55;
  if (v55 == 6)
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_16;
    }

LABEL_19:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v44);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v24 + 240);
  if ((v1 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  Hasher._combine(_:)(0);
  if ((v1 & 0x10) != 0)
  {
LABEL_17:
    Hasher._combine(_:)(0);
    goto LABEL_21;
  }

LABEL_20:
  Hasher._combine(_:)(1u);
  MEMORY[0x22AA752C0](v45);
LABEL_21:
  _img4_chip_instance.certificateProductionStatus.getter(&v56);
  v25 = v56;
  if (v56 == 2)
  {
    Hasher._combine(_:)(0);
    if ((v1 & 0x40) != 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x22AA75290](v25 & 1);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_23;
    }
  }

  Hasher._combine(_:)(1u);
  v26 = v46 & 1;
LABEL_26:
  Hasher._combine(_:)(v26);
  _img4_chip_instance.effectiveProductionStatus.getter(&v56);
  v27 = v56;
  if (v56 == 2)
  {
    Hasher._combine(_:)(0);
    if ((v1 & 0x100) != 0)
    {
LABEL_28:
      v28 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x22AA75290](v27 & 1);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(1u);
  v28 = v47 & 1;
LABEL_31:
  Hasher._combine(_:)(v28);
  if ((v1 & 0x200) != 0)
  {
    v29 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v29 = v48 & 1;
  }

  Hasher._combine(_:)(v29);
  if ((v1 & 0x400) != 0)
  {
    v30 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v30 = v49 & 1;
  }

  Hasher._combine(_:)(v30);
  if ((v1 & 0x800) != 0)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v50 & 1;
  }

  Hasher._combine(_:)(v31);
  if ((v1 & 0x1000) != 0)
  {
    Hasher._combine(_:)(0);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v51);
    if ((v1 & 0x2000) != 0)
    {
LABEL_42:
      v32 = 0;
      goto LABEL_45;
    }
  }

  Hasher._combine(_:)(1u);
  v32 = v41 & 1;
LABEL_45:
  Hasher._combine(_:)(v32);
  if ((v1 & 0x4000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v33 = specialized Data.init(bytes:count:)(&v56, v42);
    v35 = v34;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    outlined consume of Data._Representation(v33, v35);
  }

  v36 = *MEMORY[0x277D85DE8];
}

__n128 CryptexIdentity.init(chipInstance:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

Swift::Int CryptexIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexIdentity()
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexIdentity()
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)();
  return Hasher._finalize()();
}

__n128 static CryptexIdentity.wildcard()@<Q0>(uint64_t a1@<X8>)
{
  _img4_chip_instance.init()(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance img4_chip_instance_omit_t@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance img4_chip_instance_omit_t(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance img4_chip_instance_omit_t@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance img4_chip_instance_omit_t@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance img4_chip_instance_omit_t@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
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
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
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
      result = MEMORY[0x22AA74760]();
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
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
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
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x22AA74760]();
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

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
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

  MEMORY[0x22AA74760]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static CryptexIdentity.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v189 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  v3 = *(a1 + 6);
  v4 = *(a1 + 7);
  v5 = *(a1 + 8);
  v66 = *(a1 + 9);
  v6 = *(a1 + 5);
  v7 = *(a1 + 48);
  v74 = *(a1 + 49);
  v8 = *(a1 + 50);
  v73 = *(a1 + 51);
  v72 = *(a1 + 52);
  v71 = *(a1 + 53);
  v70 = *(a1 + 54);
  v69 = *(a1 + 60);
  v9 = *(a1 + 9);
  v82 = a1[6];
  v83 = a1[7];
  v10 = a1[5];
  v81 = v10;
  v11 = *(a1 + 32);
  v12 = *(a1 + 33);
  v80 = *(a2 + 49);
  v79 = *(a2 + 51);
  v78 = *(a2 + 52);
  v77 = *(a2 + 53);
  v14 = *(a2 + 32);
  v13 = *(a2 + 33);
  v15 = *(a1 + 61);
  *&v180[7] = *(a1 + 17);
  *v180 = v15;
  v181 = v9;
  v16 = a1[7];
  v183 = v82;
  v184 = v16;
  v182 = v10;
  v18 = (a2 + 61);
  v17 = *(a2 + 61);
  *&v154[7] = *(a2 + 17);
  v76 = *(a2 + 54);
  *v154 = v17;
  v75 = *(a2 + 60);
  v19 = a2[6];
  v86 = a2[7];
  v20 = a2[5];
  v84 = v20;
  v85 = v19;
  v163 = *a1;
  v164 = v2;
  v61 = v3;
  v165 = v3;
  v166 = v4;
  v64 = v4;
  v167 = v5;
  v168 = v66;
  v60 = v6;
  v169 = v6;
  v56 = v7;
  v170 = v7;
  v171 = v74;
  v55 = v8;
  v172 = v8;
  v173 = v73;
  v174 = v72;
  v175 = v71;
  v176 = v70;
  v21 = *(a1 + 55);
  v177 = v21;
  v59 = *(a1 + 14);
  v178 = v59;
  v179 = v69;
  v185 = v11;
  v186 = v12;
  v22 = *(a1 + 34);
  LODWORD(v6) = *(a1 + 35);
  v62 = v12;
  v187 = v22;
  v188 = v6;
  v54 = v6;
  v137 = *a2;
  v68 = *(a2 + 2);
  v138 = v68;
  v24 = *(a2 + 6);
  v23 = *(a2 + 7);
  v139 = v24;
  v140 = v23;
  v25 = *(a2 + 8);
  v26 = *(a2 + 9);
  v141 = v25;
  v142 = v26;
  v27 = *(a2 + 5);
  v143 = v27;
  v144 = *(a2 + 48);
  v145 = v80;
  v52 = *(a2 + 50);
  v53 = v144;
  v146 = v52;
  v147 = v79;
  v148 = v78;
  v149 = v77;
  v150 = v76;
  v28 = *(a2 + 55);
  v151 = v28;
  v58 = *(a2 + 14);
  v152 = v58;
  v153 = v75;
  v57 = *(a2 + 9);
  v155 = v57;
  v29 = a2[7];
  v157 = v19;
  v158 = v29;
  v156 = v20;
  v63 = v13;
  v159 = v14;
  v31 = *(a2 + 34);
  v30 = *(a2 + 35);
  v160 = v13;
  v161 = v31;
  v162 = v30;
  if (((v2 & 2) != 0 || (v68 & 2) != 0 || v64 == v23) && ((v2 & 4) != 0 || (v68 & 4) != 0 || v5 == v25) && ((v2 & 8) != 0 || (v68 & 8) != 0 || v66 == v26) && ((v2 & 0x8000) != 0 || (v68 & 0x8000) != 0 || v11 == v14) && ((v2 & 0x10000) != 0 || (v68 & 0x10000) != 0 || v62 == v13) && ((v2 & 0x20000) != 0 || (v68 & 0x20000) != 0 || v22 == v31))
  {
    v115 = *a1;
    v51 = v2;
    *&v116 = v2;
    *(&v116 + 1) = __PAIR64__(v64, v61);
    *&v117 = __PAIR64__(v66, v5);
    *(&v117 + 1) = v60;
    v118 = v56;
    v119 = v74;
    v120 = v55;
    v121 = v73;
    v122 = v72;
    v123 = v71;
    v124 = v70;
    v125 = v21;
    v126 = v59;
    v127 = v69;
    v32 = *(a1 + 61);
    v33 = v27;
    *&v128[7] = *(a1 + 17);
    *v128 = v32;
    v129 = v9;
    v34 = a1[6];
    v130 = a1[5];
    v131 = v34;
    v132 = a1[7];
    v133 = v11;
    v134 = v62;
    v135 = v22;
    v136 = v54;
    v65 = v30;
    v36 = v28;
    CryptexIdentity.productClass.getter(&v114);
    v67 = v114;
    v88 = *a2;
    v89 = v68;
    v90 = v24;
    v91 = v23;
    v92 = v25;
    v93 = v26;
    v94 = v33;
    v95 = v53;
    v96 = v80;
    v97 = v52;
    v98 = v79;
    v99 = v78;
    v100 = v77;
    v101 = v76;
    v102 = v36;
    v103 = v58;
    v104 = v75;
    v37 = *v18;
    *&v105[7] = *(v18 + 7);
    *v105 = v37;
    v106 = v57;
    v38 = a2[6];
    v107 = a2[5];
    v108 = v38;
    v109 = a2[7];
    v110 = v14;
    v111 = v63;
    v112 = v31;
    v113 = v65;
    CryptexIdentity.productClass.getter(&v87);
    if ((v67 == 6 || v87 == 6 || v67 == v87) && ((v51 & 1) != 0 || (v68 & 1) != 0 || v61 == v24) && ((v51 & 0x10) != 0 || (v68 & 0x10) != 0 || v60 == v33))
    {
      _img4_chip_instance.certificateProductionStatus.getter(&v115);
      v41 = v115;
      _img4_chip_instance.certificateProductionStatus.getter(&v88);
      if ((v41 == 2 || v88 == 2 || ((v88 ^ v41) & 1) == 0) && ((v51 & 0x40) != 0 || (v68 & 0x40) != 0 || ((v74 ^ v80) & 1) == 0))
      {
        _img4_chip_instance.effectiveProductionStatus.getter(&v115);
        v42 = v115;
        _img4_chip_instance.effectiveProductionStatus.getter(&v88);
        if ((v42 == 2 || v88 == 2 || ((v88 ^ v42) & 1) == 0) && ((v51 & 0x100) != 0 || (v68 & 0x100) != 0 || ((v73 ^ v79) & 1) == 0) && ((v51 & 0x200) != 0 || (v68 & 0x200) != 0 || ((v72 ^ v78) & 1) == 0) && ((v51 & 0x400) != 0 || (v68 & 0x400) != 0 || ((v71 ^ v77) & 1) == 0) && ((v51 & 0x800) != 0 || (v68 & 0x800) != 0 || ((v70 ^ v76) & 1) == 0) && ((v51 & 0x1000) != 0 || (v68 & 0x1000) != 0 || v59 == v58) && ((v51 & 0x2000) != 0 || (v68 & 0x2000) != 0 || ((v69 ^ v75) & 1) == 0))
        {
          if ((v51 & 0x4000) != 0)
          {
            v44 = 0;
            v46 = 0;
            v45 = 0xF000000000000000;
            v47 = 0xF000000000000000;
            if ((v68 & 0x4000) != 0)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v115 = v81;
            v116 = v82;
            v117 = v83;
            v44 = specialized Data.init(bytes:count:)(&v115, v9);
            v45 = v43;
            if ((v68 & 0x4000) != 0)
            {
              if (v43 >> 60 == 15)
              {
                v46 = 0;
                v47 = 0xF000000000000000;
LABEL_67:
                outlined consume of Data?(v46, v47);
LABEL_68:
                result = 1;
                goto LABEL_23;
              }

LABEL_66:
              v46 = v44;
              v47 = v45;
              goto LABEL_67;
            }
          }

          v115 = v84;
          v116 = v85;
          v117 = v86;
          v46 = specialized Data.init(bytes:count:)(&v115, v57);
          if (v45 >> 60 == 15)
          {
            goto LABEL_67;
          }

          if (v47 >> 60 == 15)
          {
            goto LABEL_66;
          }

          v48 = v46;
          v49 = v47;
          v50 = specialized static Data.== infix(_:_:)(v44, v45, v46, v47);
          outlined consume of Data?(v48, v49);
          outlined consume of Data?(v44, v45);
          if (v50)
          {
            goto LABEL_68;
          }
        }
      }
    }
  }

  result = 0;
LABEL_23:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass;
  if (!lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus;
  if (!lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity and conformance CryptexIdentity()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity;
  if (!lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type img4_chip_instance_omit_t and conformance img4_chip_instance_omit_t(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for img4_chip_instance_omit_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void CryptexCore.type.getter(uint64_t a1@<X8>)
{
  CryptexCore.createType()(&v4);
  if (v1)
  {

    v3 = 0uLL;
  }

  else
  {
    v3 = v4;
  }

  *a1 = v3;
  *(a1 + 16) = v1 != 0;
}

uint64_t CryptexCore.createType()@<X0>(void *a1@<X8>)
{
  v3 = CryptexCore.image4Ticket.getter();
  if (v3)
  {
    v4 = v3;
    Image4Auth.init()();
    static Image4PropertySpec.subType.getter(&v34);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v5 = *(*v4 + 112);
    v10 = v5(v6, v7, v8, v9);
    if (v1)
    {
    }

    else
    {
      v13 = v10;
      v14 = v11;
      v15 = Image4Auth.read(property:from:)(&v30, v10, v11);
      v17 = v16;
      v18 = v15;

      outlined consume of Data._Representation(v13, v14);
      if (v17)
      {
        goto LABEL_6;
      }

      static Image4PropertySpec.type.getter(&v34);
      v30 = v34;
      v31 = v35;
      v32 = v36;
      v33 = v37;
      v23 = v5(v19, v20, v21, v22);
      v25 = v24;
      v26 = Image4Auth.read(property:from:)(&v30, v23, v24);
      v28 = v27;
      v29 = v26;

      outlined consume of Data._Representation(v23, v25);
      if (v28)
      {
LABEL_6:
        type metadata accessor for CryptexError();
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        CryptexType.init(type:subtype:)(v29, v18, a1);
      }
    }
  }

  else
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t CryptexCore.infoPlist.getter(unsigned __int8 a1)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t CryptexCore.image4Ticket.getter()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(4u);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
}

uint64_t CryptexCore.__allocating_init(assets:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CryptexCore.init(assets:)(a1);
  return v2;
}

uint64_t CryptexCore.init(assets:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (!*(a1 + 16))
  {
    v2 = 2;
    goto LABEL_7;
  }

  v2 = 2;
  specialized __RawDictionaryStorage.find<A>(_:)(2u);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    *v5 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v1;
  }

  if (!*(*(v1 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0), (v4 & 1) == 0))
  {
    v2 = 0;
    goto LABEL_7;
  }

  return v1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCore.isPackage()()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CryptexCore.createType()(&v9);
  if (!v0)
  {
    return CryptexType.isPackage()();
  }

  *&v9 = v0;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v7;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    outlined destroy of CryptexError(v5);
    goto LABEL_7;
  }

  return 1;
}

uint64_t CryptexCore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CryptexCore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id FilePath.createDirectory(permissions:intermediateDirectories:)(__int16 a1, char a2)
{
  v15[10] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  v5 = FilePath.string.getter();
  v6 = MEMORY[0x22AA74BE0](v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226115790;
  v8 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  *(inited + 64) = MEMORY[0x277D84C58];
  *(inited + 40) = a1;
  v9 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSFileAttributeKey, Any)(inited + 32);
  type metadata accessor for NSFileAttributeKey();
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15[0] = 0;
  v11 = [v4 createDirectoryAtPath:v6 withIntermediateDirectories:a2 & 1 attributes:isa error:v15];

  if (v11)
  {
    result = v15[0];
  }

  else
  {
    v13 = v15[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void FilePath.createFile(permissions:withContents:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = FilePath.string.getter();
  v11 = MEMORY[0x22AA74BE0](v10);

  isa = 0;
  if (a3 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v13 = [v9 createFileAtPath:v11 contents:isa attributes:0];

  if ((v13 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v18 = 0xD000000000000019;
    v19 = 0x8000000226117390;
    type metadata accessor for FilePath();
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v14);

    v15 = v18;
    v16 = v19;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v8, v15, v16, 0xD00000000000001FLL, 0x80000002261173B0, 0xD000000000000025, 0x80000002261173D0, 31, v17);

    outlined destroy of CryptexError(v8);
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.delete()()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = FilePath.string.getter();
  v2 = MEMORY[0x22AA74BE0](v1);

  v7[0] = 0;
  v3 = [v0 removeItemAtPath:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x22AA74BE0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSFileAttributeKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x22AA74D60](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSFileAttributeKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileAttributeKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSFileAttributeKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSFileAttributeKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x22AA74BE0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  v3 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSFileAttributeKey, Any)(v4, &v11);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t outlined destroy of (NSFileAttributeKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NSFileAttributeKey()
{
  if (!lazy cache variable for type metadata for NSFileAttributeKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSFileAttributeKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of (NSFileAttributeKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CryptexSigningService.rootCertDER.getter()
{
  v1 = v0 + *(type metadata accessor for CryptexSigningService() + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptexSigningService()
{
  result = type metadata singleton initialization cache for CryptexSigningService;
  if (!type metadata singleton initialization cache for CryptexSigningService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexSigningService.init(rootCertificate:url:)@<X0>(__SecCertificate *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CryptexSigningService();
  v7 = *(v6 + 24);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  v8 = SecCertificateCopyData(a1);
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a3 + *(v6 + 20));
  *v12 = v9;
  v12[1] = v11;

  return outlined init with take of URL?(a2, a3);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CryptexSigningService.init(rootCertificateDER:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CryptexSigningService();
  v9 = *(v8 + 24);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  v10 = (a4 + *(v8 + 20));
  *v10 = a1;
  v10[1] = a2;
  return outlined init with take of URL?(a3, a4);
}

uint64_t CryptexSigningService.init(rootCertificatePEM:url:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v106[2] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for CryptexError();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v90 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v96 = &v90 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v97 = &v90 - v21;
  v22 = type metadata accessor for Data.Deallocator();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v92 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v90 - v29;
  v31 = type metadata accessor for String.Encoding();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v91 = type metadata accessor for CryptexSigningService();
  v34 = *(v91 + 24);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  static String.Encoding.utf8.getter();
  v98 = a1;
  v99 = a2;
  v35 = String.init(data:encoding:)();
  if (!v36)
  {
    swift_storeEnumTagMultiPayload();
    outlined init with copy of CryptexError(v16, v12);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v45 = a4;
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v97 = v34;
      v56 = v55;
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexError(v12, v58);
      v59 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v12);
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_2260DF000, v53, v54, "Failed to convert data to string: %@", v56, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v57, -1, -1);
      v60 = v56;
      v34 = v97;
      MEMORY[0x22AA75CB0](v60, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v12);
    }

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v16, v77);
    swift_willThrow();
    outlined consume of Data._Representation(v98, v99);
    outlined destroy of CryptexPersonalizationService?(v100, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = v16;
    goto LABEL_15;
  }

  v37 = v35;
  v38 = v36;
  v95 = v7;
  v102 = v35;
  v103 = v36;
  v106[0] = 0x4745422D2D2D2D2DLL;
  v106[1] = 0xEA00000000004E49;
  v39 = type metadata accessor for Locale();
  (*(*(v39 - 8) + 56))(v30, 1, 1, v39);
  lazy protocol witness table accessor for type String and conformance String();
  v40 = StringProtocol.range<A>(of:options:range:locale:)();
  v42 = v41;
  outlined destroy of CryptexPersonalizationService?(v30, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v42)
  {

    v43 = v97;
    swift_storeEnumTagMultiPayload();
    v44 = v96;
    outlined init with copy of CryptexError(v43, v96);
    v45 = a4;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
      swift_allocError();
      v50 = v44;
      outlined init with copy of CryptexError(v44, v51);
      v52 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v50);
      *(v48 + 4) = v52;
      *v49 = v52;
      _os_log_impl(&dword_2260DF000, v46, v47, "Failed to find PEM start: %@", v48, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v49, -1, -1);
      MEMORY[0x22AA75CB0](v48, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v44);
    }

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v43, v79);
    swift_willThrow();
    outlined consume of Data._Representation(v98, v99);
    outlined destroy of CryptexPersonalizationService?(v100, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v78 = v43;
LABEL_15:
    outlined destroy of CryptexError(v78);
    goto LABEL_16;
  }

  v61 = specialized Collection.subscript.getter(v40, v37, v38);
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v102 = v61;
  v103 = v63;
  v104 = v65;
  v105 = v67;
  v106[0] = 0;
  v101 = 0;

  v68 = Substring.distance(from:to:)();

  v69 = MEMORY[0x22AA75350](&v102, v68, v106, &v101);

  if (!v69)
  {
    v83 = v106[0];
    if (v106[0])
    {
      v84 = v101;
      v85 = v92;
      (*(v93 + 104))(v92, *MEMORY[0x277CC92A0], v94);
      v86 = specialized Data.init(bytesNoCopy:count:deallocator:)(v83, v84, v85);
      v88 = v87;
      outlined consume of Data._Representation(v98, v99);
      v89 = (a4 + *(v91 + 20));
      *v89 = v86;
      v89[1] = v88;
      result = outlined init with take of URL?(v100, a4);
      goto LABEL_17;
    }
  }

  v45 = a4;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    type metadata accessor for AMSupportError(0);
    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError);
    swift_allocError();
    *v74 = v69;
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 4) = v75;
    *v73 = v75;
    _os_log_impl(&dword_2260DF000, v70, v71, "Failed to parse PEM: %@", v72, 0xCu);
    outlined destroy of CryptexPersonalizationService?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA75CB0](v73, -1, -1);
    MEMORY[0x22AA75CB0](v72, -1, -1);
  }

  type metadata accessor for AMSupportError(0);
  _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError);
  swift_allocError();
  *v76 = v69;
  swift_willThrow();
  outlined consume of Data._Representation(v98, v99);
  outlined destroy of CryptexPersonalizationService?(v100, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_16:
  v80 = type metadata accessor for Logger();
  result = (*(*(v80 - 8) + 8))(&v34[v45], v80);
LABEL_17:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
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

uint64_t _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x22AA74760]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v12 = type metadata accessor for __DataStorage();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v15 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v11, a3, v6);
    if ((*(v7 + 88))(v11, v6) == *MEMORY[0x277CC92A8])
    {
      v16 = __DataStorage._capacity.modify();
      *v17 |= 0x8000000000000000;
      v16(v21, 0);
    }

    else
    {
      (*(v7 + 8))(v11, v6);
    }

    v19 = specialized Data._Representation.init(_:count:)(v15, a2);
  }

  else
  {
    v18 = Data.Deallocator._deallocator.getter();
    v18(a1, 0);

    v19 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v19;
}

void type metadata completion function for CryptexSigningService()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t Result<>.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Result<>.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Result<>.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Result<A, B><>.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F727265;
  }

  else
  {
    v4 = 0x65736E6F70736572;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F727265;
  }

  else
  {
    v6 = 0x65736E6F70736572;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Result<A, B><>.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Result<A, B><>.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Result<A, B><>.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}