uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LSKDestinationDevice.Delivery(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v71 - v16;
  v83 = type metadata accessor for LSKDestinationDevice(0);
  v17 = *(*(v83 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v83);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v71 - v23;
  result = MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_88;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_89;
  }

  v30 = (a2 - a1) / v28;
  v86 = a1;
  v85 = a4;
  if (v30 >= v29 / v28)
  {
    v32 = v29 / v28 * v28;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v32;
    if (v32 >= 1)
    {
      v72 = v76 + 8;
      v73 = v75 + 8;
      v50 = -v28;
      v51 = a4 + v32;
      v74 = a4;
      v82 = -v28;
      do
      {
        v71 = v49;
        v52 = a2 + v50;
        v79 = a2;
        v80 = a2 + v50;
        while (1)
        {
          if (a2 <= a1)
          {
            v86 = a2;
            v84 = v71;
            goto LABEL_86;
          }

          v53 = a3;
          v77 = v49;
          v54 = v51 + v50;
          v55 = v78;
          outlined init with copy of LSKDestinationDevice(v51 + v50, v78, type metadata accessor for LSKDestinationDevice);
          outlined init with copy of LSKDestinationDevice(v52, v81, type metadata accessor for LSKDestinationDevice);
          v56 = v55 + *(v83 + 28);
          v57 = v75;
          outlined init with copy of LSKDestinationDevice(v56, v75, type metadata accessor for LSKDestinationDevice.Delivery);
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
          v59 = *(*(v58 - 8) + 48);
          v60 = v59(v57, 3, v58);
          if (v60 > 1)
          {
            v63 = v60 == 2 ? 3 : 0;
          }

          else if (v60)
          {
            v63 = 2;
          }

          else
          {
            v61 = *(v73 + *(v58 + 48));

            v62 = type metadata accessor for Date();
            (*(*(v62 - 8) + 8))(v75, v62);
            v63 = 1;
          }

          v64 = v76;
          outlined init with copy of LSKDestinationDevice(v81 + *(v83 + 28), v76, type metadata accessor for LSKDestinationDevice.Delivery);
          v65 = v59(v64, 3, v58);
          if (v65 > 1)
          {
            v69 = v82;
            v68 = v65 == 2 ? 3 : 0;
            v70 = v74;
          }

          else
          {
            if (v65)
            {
              v68 = 2;
            }

            else
            {
              v66 = *(v72 + *(v58 + 48));

              v67 = type metadata accessor for Date();
              (*(*(v67 - 8) + 8))(v76, v67);
              v68 = 1;
            }

            v70 = v74;
            v69 = v82;
          }

          a3 = v53 + v69;
          outlined destroy of LSKDestinationDevice(v81, type metadata accessor for LSKDestinationDevice);
          outlined destroy of LSKDestinationDevice(v78, type metadata accessor for LSKDestinationDevice);
          if (v63 < v68)
          {
            break;
          }

          v49 = v54;
          v52 = v80;
          if (v53 < v51 || a3 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v54;
          v50 = v82;
          a2 = v79;
          if (v54 <= v70)
          {
            goto LABEL_84;
          }
        }

        a2 = v80;
        if (v53 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v49 = v77;
        }

        else
        {
          v49 = v77;
          if (v53 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = v82;
      }

      while (v51 > v70);
    }

LABEL_84:
    v86 = a2;
    v84 = v49;
  }

  else
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v81 = a4 + v31;
    v84 = a4 + v31;
    if (v31 >= 1 && a2 < a3)
    {
      v75 = v80 + 8;
      v76 = v79 + 8;
      v77 = a3;
      v78 = v28;
      do
      {
        outlined init with copy of LSKDestinationDevice(a2, v26, type metadata accessor for LSKDestinationDevice);
        v34 = a4;
        outlined init with copy of LSKDestinationDevice(a4, v82, type metadata accessor for LSKDestinationDevice);
        v35 = v79;
        outlined init with copy of LSKDestinationDevice(&v26[*(v83 + 28)], v79, type metadata accessor for LSKDestinationDevice.Delivery);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
        v37 = *(*(v36 - 8) + 48);
        v38 = v37(v35, 3, v36);
        v39 = a2;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v42 = 3;
          }

          else
          {
            v42 = 0;
          }
        }

        else if (v38)
        {
          v42 = 2;
        }

        else
        {
          v40 = *(v76 + *(v36 + 48));

          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 8))(v79, v41);
          v42 = 1;
        }

        v43 = v80;
        outlined init with copy of LSKDestinationDevice(v82 + *(v83 + 28), v80, type metadata accessor for LSKDestinationDevice.Delivery);
        v44 = v37(v43, 3, v36);
        if (v44 > 1)
        {
          v45 = v78;
          if (v44 == 2)
          {
            v48 = 3;
          }

          else
          {
            v48 = 0;
          }
        }

        else
        {
          v45 = v78;
          if (v44)
          {
            v48 = 2;
          }

          else
          {
            v46 = *(v75 + *(v36 + 48));

            v47 = type metadata accessor for Date();
            (*(*(v47 - 8) + 8))(v80, v47);
            v48 = 1;
          }
        }

        outlined destroy of LSKDestinationDevice(v82, type metadata accessor for LSKDestinationDevice);
        outlined destroy of LSKDestinationDevice(v26, type metadata accessor for LSKDestinationDevice);
        if (v42 >= v48)
        {
          a4 += v45;
          a2 = v39;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v85 = v34 + v45;
        }

        else
        {
          a2 = v39 + v45;
          if (a1 < v39 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v45;
        v86 = a1;
      }

      while (a4 < v81 && a2 < v77);
    }
  }

LABEL_86:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v86, &v85, &v84);
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LSKDestinationDevice(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void type metadata completion function for LSKPublishedStatus(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  type metadata accessor for LSKKey();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      type metadata accessor for [LSKDestinationDevice]();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LSKPublishedStatus(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 24) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for LSKPublishedStatus(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 24) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 24) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    a1[2] = a2 - 1;
  }
}

void type metadata accessor for [LSKDestinationDevice]()
{
  if (!lazy cache variable for type metadata for [LSKDestinationDevice])
  {
    type metadata accessor for LSKDestinationDevice(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [LSKDestinationDevice]);
    }
  }
}

uint64_t LSKPublishedStatusSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  result = (*(v12 + 32))(&v15[v14], a1, a4);
  *a6 = partial apply for closure #1 in LSKPublishedStatusSequence.init<A>(_:);
  a6[1] = v15;
  return result;
}

void *closure #1 in LSKPublishedStatusSequence.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v12 + 16))(v15, a1, a4);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = v16;
  *a6 = &async function pointer to partial apply for closure #1 in closure #1 in LSKPublishedStatusSequence.init<A>(_:);
  a6[1] = result;
  return result;
}

uint64_t LSKPublishedStatusSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](LSKObservationsSequence.AsyncIterator.next(), 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance LSKPublishedStatusSequence<A, B>.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return LSKPublishedStatusSequence.AsyncIterator.next()(a1);
}

uint64_t LSKPublishedStatusSequence.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance LSKPublishedStatusSequence<A, B>()
{
  LSKPublishedStatusSequence.makeAsyncIterator()();
  v1 = *(v0 + 8);
}

uint64_t type metadata instantiation function for LSKPublishedStatusSequence()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for LSKPublishedStatusSequence.AsyncIterator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in closure #1 in LSKPublishedStatusSequence.init<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LSKLocalStatusClient.status<A>(for:);

  return closure #1 in closure #1 in LSKObservationsSequence.init<A>(_:)(a1, v8, v4, v5, v6, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKStatusOptions.DeviceType.CodingKeys()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 825242478;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.DeviceType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LSKStatusOptions.DeviceType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.MacCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.MacCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.N301CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.N301CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.DeviceType.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.DeviceType.TvCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.DeviceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys);
  }

  return result;
}

Swift::Int LSKStatusOptions.DeviceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](v1);
  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.DeviceType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO12TvCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO13MacCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO14N301CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10DeviceTypeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.CodingKeys and conformance LSKStatusOptions.DeviceType.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for LSKStatusOptions.DeviceType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.MacCodingKeys and conformance LSKStatusOptions.DeviceType.MacCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.TvCodingKeys and conformance LSKStatusOptions.DeviceType.TvCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type LSKStatusOptions.DeviceType.N301CodingKeys and conformance LSKStatusOptions.DeviceType.N301CodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.Scope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F636341656D6173 && a2 == 0xEB00000000746E75)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.Scope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.Scope.SameAccountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.Scope.SameAccountCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.Scope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys);
  }

  return result;
}

Swift::Int LSKStatusOptions.Scope.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.Scope.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (specialized Collection<>.popFirst()() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v19 = &type metadata for LSKStatusOptions.Scope;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance LSKStatusOptions.Scope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO21SameAccountCodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV5ScopeO10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.CodingKeys and conformance LSKStatusOptions.Scope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LSKStatusOptions.Scope.SameAccountCodingKeys and conformance LSKStatusOptions.Scope.SameAccountCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t static LSKStatusOptions.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance LSKStatusOptions.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x65706F6373;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LSKStatusOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002561672A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LSKStatusOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LSKStatusOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LSKStatusOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedEncodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[1] = v9;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance <A> [A], lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType()
{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType;
  if (!lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
  }

  return result;
}

uint64_t LSKStatusOptions.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x259C5BAD0](0);
  result = MEMORY[0x259C5BAD0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x259C5BAD0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int LSKStatusOptions.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](0);
  MEMORY[0x259C5BAD0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x259C5BAD0](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t LSKStatusOptions.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMd, &_ss22KeyedDecodingContainerVy14LocalStatusKit16LSKStatusOptionsV10CodingKeys33_9B023BE778905B7ABFF7B860756E3625LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LSKStatusOptions.CodingKeys and conformance LSKStatusOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type LSKStatusOptions.Scope and conformance LSKStatusOptions.Scope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    v13 = 1;
    lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance <A> [A], lazy protocol witness table accessor for type LSKStatusOptions.DeviceType and conformance LSKStatusOptions.DeviceType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSKStatusOptions()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  LSKStatusOptions.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSKStatusOptions()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  LSKStatusOptions.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LSKStatusOptions.DeviceType.stringRepresentation.getter()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 825242478;
  }
}

unint64_t lazy protocol witness table accessor for type [LSKStatusOptions.DeviceType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMd, &_sSay14LocalStatusKit16LSKStatusOptionsV10DeviceTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LSKStatusOptions.DeviceType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKStatusOptions(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LSKStatusOptions(uint64_t result, int a2, int a3)
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

uint64_t specialized LSKStatusOptions.DeviceType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 825242478 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t LSKTargetDeviceFlags.idsDeviceTypes.getter()
{
  v1 = *v0;
  v4 = MEMORY[0x277D84FA0];
  if ((v1 & 0x10) == 0)
  {
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    specialized Set._Variant.insert(_:)(&v3, 9);
    if ((v1 & 0x20) == 0)
    {
      return v4;
    }

    goto LABEL_4;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 0x20) != 0)
  {
LABEL_4:
    specialized Set._Variant.insert(_:)(&v3, 5);
  }

  return v4;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance LSKTargetDeviceFlags(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance LSKTargetDeviceFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance LSKTargetDeviceFlags@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags()
{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags;
  if (!lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LSKTargetDeviceFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LSKTargetDeviceFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x259C5BAD0](v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x259C5BAD0](a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for IDSDeviceType();
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x259C5BAD0](v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC178]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1F8]();
}

uint64_t AsyncSequence.map<A>(_:)()
{
  return MEMORY[0x282200528]();
}

{
  return MEMORY[0x282200530]();
}