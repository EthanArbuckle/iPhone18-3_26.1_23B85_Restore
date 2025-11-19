__n128 static DOCGridLayout.Spec.preferredSystemSpec(for:layoutMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  if (v5 != 3)
  {
    v12 = *(a1 + 56);
    if (*(a1 + 72) < 2u)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if (v5 == 4 || !*(a1 + 88))
    {
      v14 = 0;
      if (v12 != 6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = 2;
      if (v12 != 6)
      {
LABEL_11:
        v15 = MEMORY[0x277D76938];
        v16 = MEMORY[0x277D769D0];
LABEL_14:
        v17 = *v15;
        v18 = *v16;
        v19 = v17;
        *a3 = v18;
        *(a3 + 8) = v13;
        *(a3 + 16) = v19;
        *(a3 + 24) = v14;
        *(a3 + 32) = 0;
        *(a3 + 40) = 257;
        *(a3 + 42) = 1;
        v20 = *(a2 + 16);
        *(a3 + 48) = *a2;
        *(a3 + 64) = v20;
        result = *(a2 + 32);
        v21 = *(a2 + 48);
        *(a3 + 80) = result;
        *(a3 + 96) = v21;
        return result;
      }
    }

    v15 = MEMORY[0x277D769D0];
    v16 = MEMORY[0x277D76918];
    goto LABEL_14;
  }

  v6 = *MEMORY[0x277D76938];
  *a3 = *MEMORY[0x277D76938];
  *(a3 + 8) = 2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v6;
  *(a3 + 39) = 0;
  v7 = *(a2 + 16);
  *(a3 + 48) = *a2;
  *(a3 + 64) = v7;
  v8 = *(a2 + 48);
  *(a3 + 80) = *(a2 + 32);
  *(a3 + 96) = v8;
  v9 = v6;

  v10 = v9;
  return result;
}

double DOCGridLayout.Environment.thresholdForAllowingMoreThanOneColumn.getter()
{
  v1 = v0[5];
  *&v8[16] = v0[4];
  v9 = v1;
  v10 = v0[6];
  v2 = v0[1];
  v7[0] = *v0;
  v7[1] = v2;
  v3 = v0[3];
  v7[2] = v0[2];
  *v8 = v3;
  DOCGridLayout.Environment.preferredSystemLayoutMetrics.getter(v6);
  static DOCGridLayout.Spec.preferredSystemSpec(for:layoutMetrics:)(v0, v6, v7);
  outlined destroy of DOCGridLayout.Spec(v7);
  v4 = vaddq_f64(*&v8[8], *&v8[8]);
  return *&v9 + *(&v10 + 1) + *(&v10 + 1) + *v8 + v4.f64[0] + v4.f64[1] + *v8 + v4.f64[0] + v4.f64[1];
}

uint64_t minColumnsIfRegularSizeSetting #1 () in DOCGridLayout.Environment.preferredMinColumns.getter(__int128 *a1, double a2)
{
  v3 = *(a1 + 73);
  v4 = a1[5];
  v5 = a1[6];
  v19 = a1[4];
  v20 = v4;
  v21 = v5;
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v7 = a1[3];
  v17 = a1[2];
  v18 = v7;
  DOCGridLayout.Environment.preferredSystemLayoutMetrics.getter(&v11);
  v8 = vaddq_f64(v12, v12);
  if (v3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if (v14 + v14 + (v11 + v8.f64[0] + v8.f64[1]) * v9 + v13 * (v9 - 1) <= a2)
  {
    return v9;
  }

  else
  {
    return 2;
  }
}

uint64_t static DOCGridLayout.Spec.LayoutMetrics.iOS.allFromSmallToLarge(for:)(__int128 *a1)
{
  v1 = a1[5];
  v22 = a1[4];
  v23 = v1;
  v24 = a1[6];
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = a1[3];
  v20 = a1[2];
  v21 = v3;
  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5, 0);
  v4 = 0;
  v5 = v17;
  do
  {
    v6 = outlined read-only object #0 of static DOCGridLayout.Spec.LayoutMetrics.iOS.allFromSmallToLarge(for:)[v4 + 32];
    v7 = qword_249BA4958[v6];
    v15[4] = v22;
    v15[5] = v23;
    v15[6] = v24;
    v15[0] = v18;
    v15[1] = v19;
    v15[2] = v20;
    v15[3] = v21;
    static DOCGridLayout.Spec.LayoutMetrics.iOS.metrics(for:type:)(v15, v6, v16);
    v17 = v5;
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v5 = v17;
    }

    ++v4;
    *(v5 + 16) = v9 + 1;
    v10 = v5 + 72 * v9;
    *(v10 + 32) = v7;
    v11 = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    *(v10 + 88) = v16[3];
    *(v10 + 72) = v13;
    *(v10 + 56) = v12;
    *(v10 + 40) = v11;
  }

  while (v4 != 5);
  return v5;
}

uint64_t DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(double a1, double a2)
{
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = a2 - a1;
  DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
  v8 = v6 * v7 + a1;
  if (v4)
  {
    if (v4 == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = v8 * 0.785;
  }

  swift_beginAccess();
  if (v9 >= *&static DOCItemCellIconWidth.size_largest)
  {
    v9 = *&static DOCItemCellIconWidth.size_largest;
  }

  swift_beginAccess();
  if (*&static DOCItemCellIconWidth.size_smallest > v9)
  {
    v9 = *&static DOCItemCellIconWidth.size_smallest;
  }

  result = specialized static DOCItemCellIconWidth.findCloseMatchKnownIconAssetWidth(for:threshold:)(v9, 1.0);
  if (v11)
  {
    return UIRoundToScale();
  }

  return result;
}

uint64_t DOCGridLayout.Environment.specValue(_:dynamicTypeScaled:)(char a1)
{
  if (a1)
  {
    DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
  }

  return UIFloorToScale();
}

uint64_t static DOCGridLayout.Spec.LayoutMetrics.iOS.metrics(for:type:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *(a1 + 73);
  v7 = *(a1 + 88);
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      swift_beginAccess();
      v21 = *&static DOCItemCellIconWidth.size_84;
      swift_beginAccess();
      DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v21, *&static DOCItemCellIconWidth.size_135);
      v11 = v22;
    }

    else
    {
      swift_beginAccess();
      v9 = *&static DOCItemCellIconWidth.size_66;
      swift_beginAccess();
      DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v9, *&static DOCItemCellIconWidth.size_90);
      v11 = v10;
      if (!a2)
      {
        v12 = 4.0;
        if ((v7 - 1) >= 2)
        {
          v13 = 4.0;
        }

        else
        {
          v13 = 8.0;
        }

        DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
        result = UIFloorToScale();
        v17 = 0;
        v18.i32[1] = 1082081280;
        if (v4 < 500.0)
        {
          v18.i64[0] = -8.0;
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }

    if ((v7 - 1) >= 2)
    {
      v13 = 4.0;
    }

    else
    {
      v13 = 8.0;
    }

    DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
    result = UIFloorToScale();
    if (v4 > 719.0)
    {
      DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
      result = UIFloorToScale();
    }

    v18.i32[1] = 1082081280;
    if (v4 >= 500.0 || (v18.i64[0] = -2.0, v6 != 2))
    {
      v17 = 0;
      v12 = 10.0;
      goto LABEL_28;
    }

LABEL_27:
    *v16.i64 = v13 + -4.0;
    v12 = fmax(*v18.i64, 4.0);
    v13 = fmax(v13 + -4.0, 4.0);
    v17 = 1;
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    swift_beginAccess();
    v19 = *&static DOCItemCellIconWidth.size_84;
    v20 = &static DOCItemCellIconWidth.size_170;
  }

  else
  {
    swift_beginAccess();
    v19 = *&static DOCItemCellIconWidth.size_84;
    v20 = &static DOCItemCellIconWidth.size_226;
  }

  swift_beginAccess();
  DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v19, *v20);
  v11 = v23;
  if ((v7 - 1) >= 2)
  {
    v13 = 6.0;
  }

  else
  {
    v13 = 12.0;
  }

  DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
  result = UIFloorToScale();
  v17 = 0;
  v12 = 30.0;
  v18.i32[1] = 1082081280;
  if (v4 < 500.0)
  {
    v18.i64[0] = 18.0;
LABEL_26:
    if (v6 != 2)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_28:
  v18.i32[0] = 3;
  v16.i32[0] = v5;
  __asm { FMOV            V3.2D, #12.0 }

  v29 = vbslq_s8(vdupq_lane_s8(*&vceqq_s8(v16, v18), 0), _Q3, xmmword_249BA48C0);
  v30 = fmax(v13 + -2.0, 4.0);
  if (v5 != 3)
  {
    v30 = v13;
  }

  v31 = 12.0;
  if (v5 != 3)
  {
    v31 = v13;
  }

  if (v17)
  {
    v32 = v12 + v12 + v11 + v15 + v15 + 8.0 + v11 + v15 + v15 + 8.0 + v30;
    if (v32 - v4 > 0.0)
    {
      v33 = (v32 - v4) * 0.5;
      if (v33 > 0.0)
      {
        v15 = fmax(v15 - v33, 2.0);
        v32 = v30 + v12 + v12 + v11 + v15 + v15 + 8.0 + v11 + v15 + v15 + 8.0;
      }
    }

    v34 = v4 - v32;
    if (v34 <= 0.0)
    {
      v34 = 0.0;
    }

    v35 = (v11 * 0.2 - v34) * 0.5;
    if (v35 > 0.0)
    {
      v15 = fmax(v15 - v35, 2.0);
    }
  }

  *a3 = v11;
  *(a3 + 8) = v15;
  *(a3 + 16) = 0x4010000000000000;
  *(a3 + 24) = v31;
  *(a3 + 32) = v30;
  *(a3 + 40) = v29;
  *(a3 + 56) = v12;
  return result;
}

uint64_t DOCGridLayout.Environment.specValue<A>(regular:compact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + 88) - 1 < 2)
  {
    a2 = a1;
  }

  return (*(*(a3 - 8) + 16))(a4, a2);
}

uint64_t static DOCGridLayout.Spec.LayoutMetrics.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    v9 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
    v10 = [v9 userInterfaceIdiom];
    [v9 displayScale];
    v12 = v11;
    v13 = v9;
    DOCGridSpecTextSize.init(_:)(v13);
    v14 = v54;
    v15 = [v13 preferredContentSizeCategory];
    if (UIContentSizeCategory.isAccessibilityCategory.getter())
    {
      v16 = static UIContentSizeCategory.> infix(_:_:)();

      if (v16)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {

      v17 = 0;
    }

    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();
    v30 = v54;
    v31 = BYTE8(v54);
    v32 = v55;
    v33 = [objc_opt_self() defaultMetrics];
    [v33 scaledValueForValue:v13 compatibleWithTraitCollection:1.0];
    v35 = v34;

    swift_beginAccess();
    v36 = *&static DOCItemCellIconWidth.size_128;
    swift_beginAccess();
    DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v36, *&static DOCItemCellIconWidth.size_226);
    v38 = v37;
    v54 = xmmword_249BA48D0;
    *&v55 = v5;
    *(&v55 + 1) = v6;
    *&v56 = v7;
    *(&v56 + 1) = v8;
    v57 = 2;
    v58 = v10;
    v59 = v12;
    v60 = v14;
    v61 = v17;
    v62 = v30;
    v63 = v31;
    v64 = v32;
    v65 = v35;
    DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
    result = UIFloorToScale();
    *a1 = v38;
    *(a1 + 8) = v40;
    __asm { FMOV            V0.2D, #12.0 }

    *(a1 + 16) = _Q0;
    *(a1 + 32) = xmmword_249BA48E0;
    *(a1 + 48) = xmmword_249BA48F0;
  }

  else
  {
    v18 = [v2 currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19)
    {
      v20 = 1022.0;
    }

    else
    {
      v20 = 718.0;
    }

    v52 = *(MEMORY[0x277D768C8] + 16);
    v53 = *MEMORY[0x277D768C8];
    v21 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
    v22 = [v21 userInterfaceIdiom];
    [v21 displayScale];
    v24 = v23;
    v25 = v21;
    DOCGridSpecTextSize.init(_:)(v25);
    v26 = v54;
    v27 = [v25 preferredContentSizeCategory];
    if (UIContentSizeCategory.isAccessibilityCategory.getter())
    {
      v28 = static UIContentSizeCategory.> infix(_:_:)();

      if (v28)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {

      v29 = 0;
    }

    lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
    UITraitCollection.subscript.getter();
    v46 = v54;
    v47 = BYTE8(v54);
    v48 = v55;
    v49 = [objc_opt_self() defaultMetrics];
    [v49 scaledValueForValue:v25 compatibleWithTraitCollection:1.0];
    v51 = v50;

    *&v54 = v20;
    *(&v54 + 1) = v20;
    v55 = v53;
    v56 = v52;
    v57 = 2;
    v58 = v22;
    v59 = v24;
    v60 = v26;
    v61 = v29;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v51;
    return static DOCGridLayout.Spec.LayoutMetrics.iOS.metrics(for:type:)(&v54, 2u, a1);
  }

  return result;
}

double static DOCGridLayout.Spec.LayoutMetrics.TestSupport.visionOS_metrics(for:)@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = *&static DOCItemCellIconWidth.size_128;
  swift_beginAccess();
  DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v2, *&static DOCItemCellIconWidth.size_226);
  v4 = v3;
  DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
  UIFloorToScale();
  *a1 = v4;
  *(a1 + 8) = v5;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 16) = _Q0;
  *(a1 + 32) = xmmword_249BA48E0;
  result = 20.0;
  *(a1 + 48) = xmmword_249BA48F0;
  return result;
}

uint64_t static DOCGridLayout.Spec.LayoutMetrics.TestSupport.iOS_metrics_small(for:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1 + 1;
  v8 = v3;
  v4 = *(v2 + 2);
  v12 = *(v2 + 3);
  v5 = *(v2 + 5);
  v13 = *(v2 + 4);
  v14 = v5;
  v6 = *(v2 + 1);
  v9 = *v2;
  v10 = v6;
  v15 = *(v2 + 12);
  v11 = v4;
  return static DOCGridLayout.Spec.LayoutMetrics.iOS.metrics(for:type:)(&v8, v3 > 209.0, a2);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v81 = (v7 + 16);
    v82 = *(v7 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v7 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 72 * *v83), (*a3 + 72 * *v85), (*a3 + 72 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6);
      v10 = 72 * v8;
      v11 = (*a3 + 72 * v8);
      v13 = *v11;
      v12 = v11 + 18;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 9;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 72 * v6 - 72;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = v23 + v19;
            v95 = *(v23 + v10 + 32);
            v97 = *(v23 + v10 + 48);
            v99 = *(v23 + v10 + 64);
            v91 = *(v23 + v10);
            v93 = *(v23 + v10 + 16);
            result = memmove((v23 + v10), (v23 + v19), 0x48uLL);
            *(v22 + 32) = v95;
            *(v22 + 48) = v97;
            *(v22 + 64) = v99;
            *v22 = v91;
            *(v22 + 16) = v93;
          }

          ++v21;
          v19 -= 72;
          v10 += 72;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v34 = *(v7 + 16);
    v33 = *(v7 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v35;
    v36 = v7 + 32;
    v37 = (v7 + 32 + 16 * v34);
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v7 + 32);
          v40 = *(v7 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v7 + 16 * v35);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v36 + 16 * v38);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v7 + 16 * v35);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v36 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v36 + 16 * (v38 - 1));
        v77 = *v76;
        v78 = (v36 + 16 * v38);
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 72 * *v76), (*a3 + 72 * *v78), (*a3 + 72 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v7 + 16);
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove((v36 + 16 * v38), v78 + 2, 16 * (v80 - 1 - v38));
        *(v7 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v36 + 16 * v35;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v7 + 16 * v35);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v36 + 16 * v38);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 72 * v6;
  v26 = v8 - v6;
LABEL_30:
  v27 = v26;
  v28 = v25;
  while (1)
  {
    v29 = (v28 - 72);
    if (*v28 >= *(v28 - 72))
    {
LABEL_29:
      ++v6;
      v25 += 72;
      --v26;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v96 = *(v28 + 32);
    v98 = *(v28 + 48);
    v100 = *(v28 + 64);
    v92 = *v28;
    v94 = *(v28 + 16);
    v30 = *(v28 - 24);
    *(v28 + 32) = *(v28 - 40);
    *(v28 + 48) = v30;
    *(v28 + 64) = *(v28 - 8);
    v31 = *(v28 - 56);
    *v28 = *v29;
    *(v28 + 16) = v31;
    *(v28 - 8) = v100;
    *(v28 - 40) = v96;
    *(v28 - 24) = v98;
    v28 -= 72;
    *v29 = v92;
    v29[1] = v94;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v5 = a3;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v98 = &v8[16 * v96];
        v5 = *v98;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v97 + 48 * *v98), (v97 + 48 * *v99), (v97 + 48 * v100), v104);
        if (v4)
        {
        }

        if (v100 < v5)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v98 = v5;
        *(v98 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        result = memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v5 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 48 * v7;
      result = *(v11 + 16);
      v12 = *(v11 + 24);
      v13 = *v5 + 48 * v9;
      if (result == *(v13 + 16) && v12 == *(v13 + 24))
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 120);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 6;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 48 * v7 - 48;
          v19 = 48 * v9;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v30 + v19);
              v23 = (v30 + v18);
              v24 = *(v22 + 4);
              v25 = *(v22 + 5);
              v27 = *v22;
              v26 = v22[1];
              v29 = v23[1];
              v28 = v23[2];
              *v22 = *v23;
              v22[1] = v29;
              v22[2] = v28;
              *v23 = v27;
              v23[1] = v26;
              *(v23 + 4) = v24;
              *(v23 + 5) = v25;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 48 * v92), (*v5 + 48 * *&v8[16 * v53 + 32]), (*v5 + 48 * v93), v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = specialized Array.remove(at:)(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 48 * v7 - 48;
  v102 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = v33 + 48 * v7;
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *(v40 + 16) && v38 == *(v40 + 24);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 48;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v102;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v37 = *(v40 + 64);
    v38 = *(v40 + 72);
    v42 = *(v40 + 16);
    v44 = *(v40 + 32);
    v43 = *(v40 + 48);
    *(v40 + 48) = *v40;
    *(v40 + 64) = v42;
    v45 = *(v40 + 80);
    v46 = *(v40 + 88);
    *(v40 + 80) = v44;
    *v40 = v43;
    *(v40 + 16) = v37;
    *(v40 + 24) = v38;
    *(v40 + 32) = v45;
    *(v40 + 40) = v46;
    v40 -= 48;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_135:
    v7 = *v88;
    if (!*v88)
    {
      goto LABEL_173;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_137:
      v80 = v8 + 16;
      v81 = *(v8 + 2);
      if (v81 >= 2)
      {
        while (*a3)
        {
          v82 = &v8[16 * v81];
          v83 = *v82;
          v84 = &v80[2 * v81];
          v85 = v84[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v82), (*a3 + *v84), *a3 + v85, v7);
          if (v4)
          {
          }

          if (v85 < v83)
          {
            goto LABEL_159;
          }

          if (v81 - 2 >= *v80)
          {
            goto LABEL_160;
          }

          *v82 = v83;
          *(v82 + 1) = v85;
          v86 = *v80 - v81;
          if (*v80 < v81)
          {
            goto LABEL_161;
          }

          v81 = *v80 - 1;
          result = memmove(v84, v84 + 2, 16 * v86);
          *v80 = v81;
          if (v81 <= 1)
          {
          }
        }

        goto LABEL_171;
      }
    }

LABEL_167:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_137;
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  result = 3;
  while (1)
  {
    v9 = v7++;
    if (v7 >= v5)
    {
      goto LABEL_52;
    }

    v10 = v7[*a3];
    v11 = *(*a3 + v9);
    if (v10)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (v10 == 3)
    {
      v12 = 2;
    }

    if (v10 == 2)
    {
      v12 = 1;
    }

    if (v11 == 2)
    {
      v13 = 1;
    }

    else if (v11 == 3)
    {
      v13 = 2;
    }

    else if (v11)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    v7 = (v9 + 2);
    if (v9 + 2 < v5)
    {
      while (1)
      {
        v14 = v7[*a3];
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }

        if (v14 == 3)
        {
          v15 = 2;
        }

        if (v14 == 2)
        {
          v15 = 1;
        }

        if (v10 == 2)
        {
          if (v12 < v13)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v10 == 3)
          {
            v16 = v12 < v13;
            v17 = v15 > 1;
            goto LABEL_35;
          }

          if (v10)
          {
            v16 = v12 < v13;
            v17 = v15 > 2;
LABEL_35:
            v18 = v17;
            if (((v16 ^ v18) & 1) == 0)
            {
              break;
            }

            goto LABEL_22;
          }

          if (v12 < v13 == v15 > 3)
          {
            break;
          }
        }

LABEL_22:
        ++v7;
        LOBYTE(v10) = v14;
        if (v5 == v7)
        {
          v7 = v5;
          if (v12 < v13)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }
    }

    if (v12 < v13)
    {
LABEL_44:
      if (v7 < v9)
      {
        goto LABEL_164;
      }

      if (v9 < v7)
      {
        v19 = v7 - 1;
        v20 = v9;
        do
        {
          if (v20 != v19)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_170;
            }

            v22 = v20[v21];
            v20[v21] = v19[v21];
            v19[v21] = v22;
          }

          v17 = ++v20 < v19--;
        }

        while (v17);
        v5 = a3[1];
      }
    }

LABEL_52:
    if (v7 >= v5)
    {
      goto LABEL_84;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_163;
    }

    if (&v7[-v9] >= v6)
    {
      goto LABEL_84;
    }

    if (__OFADD__(v9, v6))
    {
      goto LABEL_165;
    }

    if (v9 + v6 < v5)
    {
      v5 = v9 + v6;
    }

    if (v5 < v9)
    {
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v7 == v5)
    {
      goto LABEL_84;
    }

    v23 = *a3;
    v24 = &v7[*a3];
    v25 = v9 - v7;
LABEL_62:
    v26 = v7[v23];
    v27 = (v26 & 1) != 0 ? 3 : 4;
    v28 = v25;
    v29 = v24;
LABEL_66:
    v30 = *(v29 - 1);
    if (v26 == 3)
    {
      v31 = 2;
    }

    else
    {
      v31 = v27;
    }

    if (v26 == 2)
    {
      v31 = 1;
    }

    if (v30 == 3)
    {
      if (v31 >= 2)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v30 == 2)
      {
        goto LABEL_61;
      }

      if (v30)
      {
        if (v31 >= 3)
        {
          goto LABEL_61;
        }
      }

      else if (v31 > 3)
      {
        goto LABEL_61;
      }
    }

    if (!v23)
    {
      break;
    }

    *v29 = v30;
    *--v29 = v26;
    if (!__CFADD__(v28++, 1))
    {
      goto LABEL_66;
    }

LABEL_61:
    ++v7;
    ++v24;
    --v25;
    if (v7 != v5)
    {
      goto LABEL_62;
    }

    v7 = v5;
LABEL_84:
    if (v7 < v9)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v35;
    v36 = &v8[16 * v34];
    *(v36 + 4) = v9;
    *(v36 + 5) = v7;
    v37 = *v88;
    if (!*v88)
    {
      goto LABEL_172;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_104:
          if (v42)
          {
            goto LABEL_150;
          }

          v55 = &v8[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_153;
          }

          v61 = &v8[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_156;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_157;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        v65 = &v8[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_118:
        if (v60)
        {
          goto LABEL_152;
        }

        v68 = &v8[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_155;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_125:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*a3)
        {
          goto LABEL_169;
        }

        v77 = *&v8[16 * v76 + 32];
        v78 = *&v8[16 * v38 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v77), (*a3 + *&v8[16 * v38 + 32]), *a3 + v78, v37);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v76 >= *(v8 + 2))
        {
          goto LABEL_147;
        }

        v79 = &v8[16 * v76];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = specialized Array.remove(at:)(v38);
        v35 = *(v8 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v8[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_148;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_149;
      }

      v50 = &v8[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_151;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_154;
      }

      if (v54 >= v46)
      {
        v72 = &v8[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_158;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_104;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    result = 3;
    if (v7 >= v5)
    {
      goto LABEL_135;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *(v22 + 16);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v23[1];
            *v22 = *v23;
            v22[1] = v27;
            *v23 = v26;
            *(v23 + 16) = v24;
            *(v23 + 3) = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 8) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 16);
    v36 = *v34;
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 16) = v35;
    *(v34 - 8) = v32;
    *(v34 - 32) = v36;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[9 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v12 = &v4[9 * v11];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 9;
      v5 -= 9;
      v16 = v12;
      do
      {
        v17 = v5 + 9;
        v18 = *(v16 - 9);
        v16 -= 9;
        if (v18 < *v15)
        {
          if (v17 != v6)
          {
            memmove(v5, v6 - 9, 0x48uLL);
          }

          if (v12 <= v4 || (v6 -= 9, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v17 != v12)
        {
          memmove(v5, v16, 0x48uLL);
        }

        v5 -= 9;
        v12 = v16;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[9 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[9 * v9];
    if (v8 < 72)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 9;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 9;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 9;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x48uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v19 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[9 * v19])
  {
    memmove(v6, v4, 72 * v19);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t specialized static DOCGridLayout.Spec.LayoutMetrics.allLayoutMetricSpecsFromSmallToLarge(for:)(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables13DOCGridLayoutV4SpecV0H7MetricsV9Scenarios33_282165E317DD05969D6EF6C181B16702LLVGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_249B9A480;
    v5 = *(a1 + 16);
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = 6;
    v23 = v3;
    v24 = *(a1 + 72);
    v25 = *(a1 + 88);
    v26 = *(a1 + 104);
    swift_beginAccess();
    v6 = *&static DOCItemCellIconWidth.size_128;
    swift_beginAccess();
    DOCGridLayout.Environment.iconWidthForStandardSpec(widthAtDefaultFont:widthAtMaxFont:)(v6, *&static DOCItemCellIconWidth.size_226);
    v8 = v7;
    v9 = *(a1 + 16);
    v18 = *a1;
    v19 = v9;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = 6;
    v23 = v3;
    v24 = *(a1 + 72);
    v25 = *(a1 + 88);
    v26 = *(a1 + 104);
    DOCGridLayout.Environment.largerThanDefaultInterpolationFactor.getter();
    UIFloorToScale();
    *(v4 + 32) = 0x7FEFFFFFFFFFFFFFLL;
    *(v4 + 40) = v8;
    *(v4 + 48) = v10;
    __asm { FMOV            V0.2D, #12.0 }

    *(v4 + 56) = _Q0;
    *(v4 + 72) = xmmword_249BA48E0;
    *(v4 + 88) = xmmword_249BA48F0;
  }

  else
  {
    v16 = *(a1 + 16);
    v18 = *a1;
    v19 = v16;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    v22 = v2;
    v23 = v3;
    v24 = *(a1 + 72);
    v25 = *(a1 + 88);
    v26 = *(a1 + 104);
    v4 = static DOCGridLayout.Spec.LayoutMetrics.iOS.allFromSmallToLarge(for:)(&v18);
  }

  *&v18 = v4;

  specialized MutableCollection<>.sort(by:)(&v18);

  return v18;
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

uint64_t getEnumTagSinglePayload for DOCGridLayout.Spec.LayoutMetrics.Scenarios(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCGridLayout.Spec.LayoutMetrics.Scenarios(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

double static DOCItemStatusView.preferredSize(forTextStyle:)(uint64_t a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 ascender];
  v3 = v2;
  [v1 descender];
  v5 = v4;

  return ceil(fmax(v3 - v5, 27.0));
}

Swift::Void __swiftcall DOCItemStatusView.registerToSelfSize()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249B9A480;
  v1 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t DOCItemStatusView.canShowStopButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemStatusView.canShowStopButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCItemStatusView.updateProgressDisplayProperties()();
  v4 = DOCItemStatusView.statusButton.getter();
  [v4 setNeedsUpdateConfiguration];
}

uint64_t (*DOCItemStatusView.canShowStopButton.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemStatusView.canShowStopButton.modify;
}

uint64_t DOCItemStatusView.statusAppearance.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void DOCItemStatusView.statusAppearance.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v4 != v2)
  {
    DOCItemStatusView.updateProgressDisplayProperties()();
    v5 = DOCItemStatusView.statusButton.getter();
    [v5 setNeedsUpdateConfiguration];
  }
}

void (*DOCItemStatusView.statusAppearance.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemStatusView.statusAppearance.modify;
}

void DOCItemStatusView.statusAppearance.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    DOCItemStatusView.updateProgressDisplayProperties()();
    v6 = DOCItemStatusView.statusButton.getter();
    [v6 setNeedsUpdateConfiguration];
  }

  free(v1);
}

id DOCItemStatusView.statusImageFontStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemStatusView.statusImageFontStyle.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCItemStatusView.updateProgressDisplayProperties()();
  v6 = DOCItemStatusView.statusButton.getter();
  [v6 setNeedsUpdateConfiguration];
}

uint64_t (*DOCItemStatusView.statusImageFontStyle.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemStatusView.statusImageFontStyle.modify;
}

void DOCItemStatusView.canShowStopButton.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemStatusView.updateProgressDisplayProperties()();
    v3 = DOCItemStatusView.statusButton.getter();
    [v3 setNeedsUpdateConfiguration];
  }
}

Swift::Void __swiftcall DOCItemStatusView.configureColors(inSelectedBackground:iconColor:containerTintColor:)(Swift::Bool inSelectedBackground, UIColor iconColor, UIColor containerTintColor)
{
  v6 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor) = iconColor;
  v7 = iconColor.super.isa;

  v8 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor);
  if (inSelectedBackground)
  {
    isa = v7;
  }

  else
  {
    isa = containerTintColor.super.isa;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor) = isa;
  if (inSelectedBackground)
  {
    v10 = &selRef_defaultTrackColorOnSelectedBackground;
  }

  else
  {
    v10 = &selRef_defaultTrackColor;
  }

  v11 = isa;

  v12 = [objc_opt_self() *v10];
  v13 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor);
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor) = v12;

  DOCItemStatusView.updateProgressDisplayProperties()();
  v14 = DOCItemStatusView.statusButton.getter();
  [v14 setNeedsUpdateConfiguration];
}

uint64_t DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCItemStatusView.statusButton.getter();
  DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(*(v1 + v3));
}

void (*DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify;
}

void DOCItemStatusView.hoverEffectsAllowedIfInteractionDisabled.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCItemStatusView.statusButton.getter();
    DOCButton.hoverEffectsAllowedIfInteractionDisabled.setter(*(v4 + v5));
  }

  free(v3);
}

id DOCItemStatusView.statusButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton];
  }

  else
  {
    v4 = closure #1 in DOCItemStatusView.statusButton.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCItemStatusView.statusButton.getter(void *a1)
{
  v52 = a1;
  v1 = type metadata accessor for UIShape();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - v20;
  v56 = &v49 - v20;
  static UIButton.Configuration.borderless()();
  type metadata accessor for DOCButton();
  v22 = *(v10 + 16);
  v22(v17, v21, v9);
  v53 = v9;
  v22(v13, v17, v9);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = UIButton.init(configuration:primaryAction:)();
  v24 = *(v10 + 8);
  v54 = v10 + 8;
  v55 = v24;
  v24(v17, v9);
  v25 = v23;
  [v25 setUserInteractionEnabled_];
  [v25 setMinimumContentSizeCategory_];
  [v25 setMaximumContentSizeCategory_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle);
  static UIShape.circle.getter();
  UIShape.inset(by:)();
  v27 = v50;
  v26 = v51;
  (*(v50 + 8))(v4, v51);
  (*(v27 + 56))(v8, 0, 1, v26);
  v28 = UIHoverStyle.init(shape:)();
  [v25 setHoverStyle_];

  v29 = swift_allocObject();
  v30 = v52;
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #2 in closure #1 in DOCItemStatusView.statusButton.getter;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_26;
  v31 = _Block_copy(aBlock);
  v32 = v25;

  [v32 setConfigurationUpdateHandler_];
  _Block_release(v31);

  [v30 addSubview_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_249BA0470;
  v35 = [v32 leadingAnchor];
  v36 = [v30 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [v30 trailingAnchor];
  v39 = [v32 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v34 + 40) = v40;
  v41 = [v32 topAnchor];
  v42 = [v30 topAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v34 + 48) = v43;
  v44 = [v30 bottomAnchor];
  v45 = [v32 bottomAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v46;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints_];

  v55(v56, v53);
  return v32;
}

uint64_t closure #2 in closure #1 in DOCItemStatusView.statusButton.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28[-v8];
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    UIButton.configuration.getter();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return outlined destroy of UIButton.Configuration?(v9);
    }

    else
    {
      v17 = (*(v11 + 32))(v14, v9, v10);
      v18 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v16) + 0xC8))(&v29, v17);
      DOCNodeStatusAppearance.image(with:)(0, 1);
      v19 = UIButton.Configuration.image.setter();
      v20 = (*((*v18 & *v16) + 0xE0))(v19);
      v21 = [objc_opt_self() configurationWithTextStyle:v20 scale:*(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics + 8)];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.Configuration.contentInsets.setter();
      v22 = [v16 traitCollection];
      v23 = [v22 userInterfaceIdiom];

      if (v23 == 6)
      {
        v24 = [objc_opt_self() whiteColor];
      }

      else
      {
        v25 = *(v16 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor);
      }

      UIButton.Configuration.baseForegroundColor.setter();
      (*(v11 + 16))(v5, v14, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      UIButton.configuration.setter();
      v26 = UIButton.Configuration.image.getter();
      v27 = v26;
      if (v26)
      {
      }

      [a1 setHidden_];

      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void DOCItemStatusView.makeProgressViewIfNeeded()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView;
  if (!*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView))
  {
    v2 = v0;
    v3 = [objc_allocWithZone(DOCDownloadProgressView) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setActiveStrokeColor_];
    v4 = [v3 setInactiveStrokeColor_];
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v0) + 0x1C0))(v4);
    [v3 setObservedProgress_];

    [v3 setCanShowStopButton_];
    [v2 addSubview_];
    v7 = DOCConstraintsToResizeWithSuperview();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v9 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints_];

    v11 = *(v2 + v1);
    *(v2 + v1) = v3;
  }
}

void *DOCItemStatusView.observedProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemStatusView.observedProgress.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (a1)
  {
    if (([v5 isFinished] & 1) == 0)
    {
      DOCItemStatusView.makeProgressViewIfNeeded()();
    }
  }

  DOCItemStatusView.updateProgressDisplayProperties()();
  v6 = DOCItemStatusView.statusButton.getter();
  [v6 setNeedsUpdateConfiguration];
}

void (*DOCItemStatusView.observedProgress.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemStatusView.observedProgress.modify;
}

void DOCItemStatusView.observedProgress.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (v4)
    {
      v5 = v4;
      if (([v5 isFinished] & 1) == 0)
      {
        DOCItemStatusView.makeProgressViewIfNeeded()();
      }
    }

    DOCItemStatusView.updateProgressDisplayProperties()();
    v6 = DOCItemStatusView.statusButton.getter();
    [v6 setNeedsUpdateConfiguration];
  }

  free(v3);
}

void DOCItemStatusView.updateProgressDisplayProperties()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1C0);
    v11 = v1;
    v4 = v3();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v3();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 isFinished];

    if ((v7 & 1) == 0 && (v8 = (*((*v2 & *v0) + 0xC8))(&v12), v12 == 7))
    {
      v9 = (v3)(v8);
      v10 = 0;
    }

    else
    {
LABEL_7:
      v9 = 0;
      v10 = 1;
    }

    [v11 setObservedProgress_];

    [v11 setCanShowStopButton_];
    [v11 setActiveStrokeColor_];
    [v11 setInactiveStrokeColor_];
  }
}

id DOCItemStatusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemStatusView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance] = 2;
  v9 = *MEMORY[0x277D76918];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle] = *MEMORY[0x277D76918];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor;
  v11 = objc_opt_self();
  v12 = v9;
  *&v4[v10] = [v11 secondaryLabelColor];
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor;
  v14 = objc_opt_self();
  *&v4[v13] = [v14 defaultProgressColor];
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor;
  *&v4[v15] = [v14 defaultTrackColor];
  v16 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics];
  *v16 = 0;
  v16[1] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for DOCItemStatusView();
  return objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCItemStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCItemStatusView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_canShowStopButton] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusAppearance] = 2;
  v3 = *MEMORY[0x277D76918];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_statusImageFontStyle] = *MEMORY[0x277D76918];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_iconColor;
  v5 = objc_opt_self();
  v6 = v3;
  *&v1[v4] = [v5 secondaryLabelColor];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressCompletedColor;
  v8 = objc_opt_self();
  *&v1[v7] = [v8 defaultProgressColor];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressBackgroundRingColor;
  *&v1[v9] = [v8 defaultTrackColor];
  v10 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_metrics];
  *v10 = 0;
  v10[1] = 2;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_hoverEffectsAllowedIfInteractionDisabled] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView____lazy_storage___statusButton] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_progressView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCItemStatusView_observedProgress] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DOCItemStatusView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id DOCItemStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIView.enclosingTabSwitcherStyle.getter(SEL *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 *a1];

  return v4;
}

double @objc UIView.enclosingUIPHorizontalInset.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  [v2 enclosingUIPHorizontalInset];
  v4 = v3;

  return v4;
}

double UIView.enclosingUIPHorizontalInset.getter()
{
  v1 = [v0 traitCollection];
  [v1 enclosingUIPHorizontalInset];
  v3 = v2;

  return v3;
}

uint64_t UITraitCollection.enclosingTabSwitcherStyle.getter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle);
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t UITraitCollection.enclosingDocumentLandingMode.getter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode);
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t UITraitCollection.enclosingUIPHorizontalInset.getter()
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  return UITraitCollection.subscript.getter();
}

BOOL static UITraitCollection.enclosingTabSwitcherCanBeFloating.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

id UITraitCollection.contextPrefersVariableBlurBottomTabBar.getter()
{
  v1 = [v0 enclosingTabSwitcherStyle];
  v2 = [v0 horizontalSizeClass];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  if (v1 != 1)
  {
    return 0;
  }

  v4 = IsReduceTransparencyEnabled;
  result = [v0 enclosedInUIPDocumentLanding];
  if (result)
  {
    return (v2 == 1 && !v4);
  }

  return result;
}

id DOCConfiguration.canHaveFloatingTabSwitcher.getter()
{
  result = [objc_opt_self() enclosingTabSwitcherCanBeFloating];
  if (result)
  {
    return ([v0 isPickerUI] ^ 1);
  }

  return result;
}

id @objc UITraitCollection.descriptionOfDOCUIPTraits.getter(void *a1)
{
  v1 = a1;
  v2 = UITraitCollection.descriptionOfDOCUIPTraits.getter();
  v4 = v3;

  v5 = MEMORY[0x24C1FAD20](v2, v4);

  return v5;
}

uint64_t UITraitCollection.descriptionOfDOCUIPTraits.getter()
{
  _StringGuts.grow(_:)(108);
  MEMORY[0x24C1FAEA0](0xD00000000000001FLL, 0x8000000249BD3870);
  v1 = [v0 enclosingTabSwitcherStyle];
  if (!v1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x736261546F6ELL;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 0xEE00726142676E69;
    v3 = 0x74616F6C46706F74;
LABEL_7:
    MEMORY[0x24C1FAEA0](v3, v2);

    MEMORY[0x24C1FAEA0](0xD000000000000024, 0x8000000249BD3890);
    [v0 enclosingDocumentLandingMode];
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD38C0);
    [v0 enclosingUIPHorizontalInset];
    v4 = Double.description.getter();
    MEMORY[0x24C1FAEA0](v4);

    return 0;
  }

  if (v1 == 1)
  {
    v2 = 0xE900000000000072;
    v3 = 0x61426D6F74746F62;
    goto LABEL_7;
  }

  type metadata accessor for DOCTabSwitcherStyle(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t UIMutableTraits.enclosingTabSwitcherStyle.getter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

uint64_t (*UIMutableTraits.enclosingTabSwitcherStyle.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.enclosingTabSwitcherStyle.getter();
  return UIMutableTraits.enclosingTabSwitcherStyle.modify;
}

uint64_t UIMutableTraits.uipDocumentLandingMode.getter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

uint64_t UIMutableTraits.uipDocumentLandingMode.setter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCUIPDocumentLandingMode and conformance DOCUIPDocumentLandingMode, type metadata accessor for DOCUIPDocumentLandingMode);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.uipDocumentLandingMode.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.uipDocumentLandingMode.getter();
  return UIMutableTraits.uipDocumentLandingMode.modify;
}

uint64_t UIMutableTraits.enclosingUIPHorizontalInset.getter()
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  return dispatch thunk of UIMutableTraits.subscript.getter();
}

uint64_t UIMutableTraits.enclosingUIPHorizontalInset.setter()
{
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t (*UIMutableTraits.enclosingUIPHorizontalInset.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  lazy protocol witness table accessor for type DOCUIPHorizontalInsetTrait and conformance DOCUIPHorizontalInsetTrait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  *a1 = v5;
  return UIMutableTraits.enclosingUIPHorizontalInset.modify;
}

uint64_t UITraitOverrides.enclosingTabSwitcherStyleIfSet.getter()
{
  lazy protocol witness table accessor for type DOCTabSwitcherStyleTrait and conformance DOCTabSwitcherStyleTrait();
  if ((UITraitOverrides.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UITraitOverrides();
  lazy protocol witness table accessor for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle(&lazy protocol witness table cache variable for type DOCTabSwitcherStyle and conformance DOCTabSwitcherStyle, type metadata accessor for DOCTabSwitcherStyle);
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v1;
}

uint64_t UITraitOverrides.uipDocumentLandingModeIfSet.getter()
{
  lazy protocol witness table accessor for type DOCUIPDocumentLandingModeTrait and conformance DOCUIPDocumentLandingModeTrait();
    ;
  }

  return 0;
}

uint64_t static DOCUIPHorizontalInsetTrait.defaultValue.setter(double a1)
{
  result = swift_beginAccess();
  static DOCUIPHorizontalInsetTrait.defaultValue = *&a1;
  return result;
}

uint64_t static DOCTabSwitcherStyleTrait.name.getter(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t static DOCTabSwitcherStyleTrait.name.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t key path setter for static DOCTabSwitcherStyleTrait.name : DOCTabSwitcherStyleTrait.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t static DOCUIPDocumentLandingModeTrait.defaultValue.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static DOCUIPDocumentLandingModeTrait.defaultValue = a1;
  return result;
}

uint64_t keypath_get_9Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v16 = &block_descriptor_68_0;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v16 = &block_descriptor_65;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void *ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  swift_allocObject();
  v10 = specialized DOCFileProviderSyncStateSidebarCellAccessoryItemViewModel.init(for:)(a2);
  v11 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateSidebarCellAccessoryItemView());

  v13 = DOCFileProviderSyncStateSidebarCellAccessoryItemView.init(with:)(v12);
  v14 = [objc_opt_self() shared];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = partial apply for closure #1 in ProviderDomainState.init(source:domain:alertPresenting:stateDidChange:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_43;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [v14 performAfterLaunch_];
  _Block_release(v16);

  v6[2] = v10;

  v18 = v6[3];
  v6[3] = v17;
  v45 = v17;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static DOCUSBFormatting.shared;
  v20 = [a2 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = (*(*v19 + 160))(v21, v23);

  if (v24)
  {
    aBlock[0] = v24;
    swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;

    v26 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v27 = v6[4];
    v6[4] = v26;
  }

  if ([a1 isEjectable])
  {
    v28 = type metadata accessor for DOCEjectionController();
    v29 = objc_allocWithZone(v28);
    v44 = a2;
    swift_unknownObjectWeakInit();
    *&v29[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
    swift_unknownObjectWeakInit();
    *&v29[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
    *&v29[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
    swift_unknownObjectWeakAssign();
    v49.receiver = v29;
    v49.super_class = v28;
    v30 = a1;
    v31 = a3;
    v32 = objc_msgSendSuper2(&v49, sel_init);
    aBlock[0] = v30;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v32;
    v34 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v35 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
    swift_beginAccess();
    v36 = *&v33[v35];
    *&v33[v35] = v34;

    v37 = type metadata accessor for EjectStateDelegate();
    v38 = objc_allocWithZone(v37);
    v39 = &v38[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_8DF2B3C7EA992A572C5DD842497A91B118EjectStateDelegate_stateDidChange];
    *v39 = a4;
    *(v39 + 1) = a5;
    v48.receiver = v38;
    v48.super_class = v37;

    v40 = objc_msgSendSuper2(&v48, sel_init);

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v41 = v6[5];
    v6[5] = v32;

    v42 = v6[6];
    v6[6] = v40;
  }

  else
  {
  }

  return v6;
}

uint64_t ProviderDomainState.getEjectAccessory()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UICellAccessory.Placement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 40);
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
    v19 = v17;
    if ([v18 isEjectable])
    {
      v30 = DOCEjectionController._button.getter();

      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
      v21 = *MEMORY[0x277D74A98];
      v22 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v22 - 8) + 104))(v11, v21, v22);
      *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
      v20[1] = 0;
      (*(v8 + 104))(v11, *MEMORY[0x277D74AD8], v7);
      v23 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v24 = v30;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();

      (*(v13 + 8))(v16, v12);
      v25 = type metadata accessor for UICellAccessory();
      return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    }
  }

  v27 = type metadata accessor for UICellAccessory();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, 1, 1, v27);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for UICellAccessory.Placement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 16);
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source];
    v19 = v17;
    if ([v18 isEjectable])
    {
      v30 = DOCEjectionController._button.getter();

      v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
      v21 = *MEMORY[0x277D74A98];
      v22 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v22 - 8) + 104))(v11, v21, v22);
      *v20 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
      v20[1] = 0;
      (*(v8 + 104))(v11, *MEMORY[0x277D74AD8], v7);
      v23 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v24 = v30;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();

      (*(v13 + 8))(v16, v12);
      v25 = type metadata accessor for UICellAccessory();
      return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    }
  }

  v27 = type metadata accessor for UICellAccessory();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, 1, 1, v27);
}

void ProviderDomainState.invalidate()()
{
  v1 = v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE8);
    v4 = v2;
    v3();

    v2 = v1[3];
  }

  v1[3] = 0;

  v1[2] = 0;

  v5 = v1[4];
  if (v5)
  {
    v6 = v5;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v5 = v1[4];
  }

  v1[4] = 0;

  v7 = v1[5];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v9;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }
  }

  v11 = v1[5];
  v1[5] = 0;

  v12 = v1[6];
  v1[6] = 0;
}

uint64_t ProviderDomainState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void LocationSectionManager.dataSource.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*LocationSectionManager.dataSource.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return LocationSectionManager.dataSource.modify;
}

void LocationSectionManager.dataSource.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *LocationSectionManager.trashObserver.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void LocationSectionManager.trashObserver.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void *LocationSectionManager.trashSubscriber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void LocationSectionManager.trashSubscriber.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t LocationSectionManager.__allocating_init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  swift_unknownObjectWeakInit();
  *(v8 + 96) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 104) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v8 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18FPProviderDomainIDa_SbTt0g5Tf4g_n(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9A480;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000027;
  *(v10 + 40) = 0x8000000249BD3A40;
  print(_:separator:terminator:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  _StringGuts.grow(_:)(35);

  v13 = [a1 hiddenSourcesIdentifiers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x24C1FB0D0](v14, v11);
  v17 = v16;

  MEMORY[0x24C1FAEA0](v15, v17);

  *(v12 + 56) = v11;
  *(v12 + 32) = 0xD000000000000021;
  *(v12 + 40) = 0x8000000249BD3A70;
  print(_:separator:terminator:)();

  *(v8 + 24) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v8;
}

void *LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = specialized LocationSectionManager.init(configuration:sourceObserver:sourceVisibilityController:mutableSectionsData:dataSource:)(a1, a2, a3, a4);

  return v6;
}

Swift::Void __swiftcall LocationSectionManager.startObserving()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v1[5];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = objc_allocWithZone(DOCSourceOrderObserver);
  v12[4] = partial apply for closure #1 in LocationSectionManager.startObserving();
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v12[3] = &block_descriptor_27;
  v6 = _Block_copy(v12);

  v7 = [v5 initWithConfiguration:v2 sourceObserver:v3 updateBlock:v6];
  _Block_release(v6);

  v8 = v1[8];
  v1[8] = v7;

  if (!v1[9])
  {
    v9 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for DOCSourceVisibilityController.VisibilityObserver();
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #2 in LocationSectionManager.startObserving();
    *(v10 + 24) = v9;
    v1[9] = v10;

    DOCSourceVisibilityController.addObserver(_:)(v10);
  }

  v11 = v1[8];
  if (v11)
  {
    [v11 invokeUpdateBlock];
  }
}

uint64_t closure #1 in LocationSectionManager.startObserving()(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LocationSectionManager.handleSourceUpdate(_:)(a1);
  }

  return result;
}

uint64_t LocationSectionManager.handleSourceUpdate(_:)(unint64_t a1)
{
  if (one-time initialization token for Sidebar != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.Sidebar);
    v3 = a1;
    v4 = Logger.logObject.getter();
    LOBYTE(v5) = static os_log_type_t.debug.getter();
    v6 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    if (os_log_type_enabled(v4, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = [v3 regularSources];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v9 >> 62)
      {
        goto LABEL_158;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      *(v7 + 4) = v10;

      _os_log_impl(&dword_2493AC000, v4, v5, "Starting handleSourceUpdate with %ld sources", v7, 0xCu);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {

      v4 = v3;
    }

    v11 = [v3 *(v6 + 2432)];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v166[0] = MEMORY[0x277D84F90];
    v7 = a1 >> 62 ? __CocoaSet.count.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v12 = 0;
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v167[0] = v13;
      if (closure #1 in LocationSectionManager.handleSourceUpdate(_:)(v167, v163))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v15 == v7)
      {
        v6 = v166[0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v5 = 0;
LABEL_22:

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *(v6 + 16);
    }

    *(v18 + 4) = v19;

    _os_log_impl(&dword_2493AC000, v16, v17, "Filtered to %ld valid sources", v18, 0xCu);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  else
  {
  }

  v166[0] = specialized Array._copyToContiguousArray()(v20);
  specialized MutableCollection<>.sort(by:)(v166);
  v3 = v166[0];
  v164 = v6;
  if (v166[0] < 0 || (v166[0] & 0x4000000000000000) != 0)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_31;
    }

LABEL_45:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v21 = *(v166[0] + 16);
  if (!v21)
  {
    goto LABEL_45;
  }

LABEL_31:
  v166[0] = MEMORY[0x277D84F90];
  v4 = v166;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    goto LABEL_157;
  }

  v5 = 0;
  v22 = v166[0];
  v7 = v3 & 0xC000000000000001;
  do
  {
    if (v7)
    {
      v23 = MEMORY[0x24C1FC540](v5, v3);
    }

    else
    {
      v23 = *(v3 + 8 * v5 + 32);
    }

    v166[0] = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      v27 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      v23 = v27;
      v22 = v166[0];
    }

    *(v22 + 16) = v25 + 1;
    v26 = v22 + 48 * v25;
    *(v26 + 32) = v23;
    ++v5;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 1;
  }

  while (v21 != v5);

  v6 = v164;
LABEL_46:
  v167[0] = v22;
  if (one-time initialization token for shared == -1)
  {
    goto LABEL_47;
  }

LABEL_154:
  swift_once();
LABEL_47:
  v28 = static DOCUSBFormatting.shared;
  if (((*(*static DOCUSBFormatting.shared + 128))() & 1) == 0)
  {
    goto LABEL_163;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v29, v30, "USB: Processing USB operations", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v31 = (v6 >> 62) & 1;
  if (v6 < 0)
  {
    LODWORD(v31) = 1;
  }

  LODWORD(v161) = v31;
  if (v31 == 1)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *(v6 + 16);
  }

  v162 = v22;
  if (!v32)
  {
    v32 = MEMORY[0x277D84F90];
    v3 = *(MEMORY[0x277D84F90] + 16);
    v34 = MEMORY[0x277D84F90];
LABEL_65:
    v22 = 0;
    v166[0] = v32;
    v42 = v34 + 40;
LABEL_66:
    v43 = (v42 + 16 * v22);
    while (v3 != v22)
    {
      if (v22 >= *(v34 + 16))
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      ++v22;
      v6 = (v43 + 2);
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = *(*v28 + 160);
      v7 = *v28 + 160;

      v5 = v46(v44, v45);

      v43 = v6;
      if (v5)
      {
        MEMORY[0x24C1FB090](v47);
        if (*((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v166[0];
        v42 = v34 + 40;
        goto LABEL_66;
      }
    }

    if (!(v32 >> 62))
    {
      v6 = v164;
      v49 = v162;
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

LABEL_162:

      goto LABEL_163;
    }

    v6 = v164;
    v49 = v162;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_162;
    }

LABEL_75:
    if ((v32 & 0xC000000000000001) == 0)
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v50 = *(v32 + 32);
        goto LABEL_78;
      }

      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      v82 = v48;
      v83 = __CocoaSet.count.getter();
      if (!v83)
      {
        goto LABEL_210;
      }

      goto LABEL_106;
    }

    goto LABEL_206;
  }

  v166[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v34 = v166[0];
    v7 = v6 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v35 = MEMORY[0x24C1FC540](v33, v164);
      }

      else
      {
        v35 = v164[v33 + 4];
      }

      v36 = v35;
      v37 = [v35 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v166[0] = v34;
      v6 = *(v34 + 16);
      v40 = *(v34 + 24);
      v3 = v6 + 1;
      if (v6 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v6 + 1, 1);
        v34 = v166[0];
      }

      ++v33;
      *(v34 + 16) = v3;
      v41 = v34 + 16 * v6;
      *(v41 + 32) = v5;
      *(v41 + 40) = v39;
    }

    while (v32 != v33);
    v32 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  __break(1u);
LABEL_206:
  v50 = MEMORY[0x24C1FC540](0, v32);
LABEL_78:
  v51 = v50;

  v7 = v51;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v5 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v7;
    *v54 = v7;
    v55 = v7;
    _os_log_impl(&dword_2493AC000, v52, v53, "USB: Found erase operation: %@", v5, 0xCu);
    outlined destroy of CharacterSet?(v54, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v54, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v56 = 0;
  v158 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source;
  v22 = v6 & 0xC000000000000001;
  if (!v161)
  {
LABEL_81:
    if (v56 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    goto LABEL_99;
  }

  while (1)
  {
    if (v56 == __CocoaSet.count.getter())
    {
      goto LABEL_99;
    }

LABEL_84:
    if (v22)
    {
      v57 = MEMORY[0x24C1FC540](v56, v6);
    }

    else
    {
      if (v56 >= *(v6 + 16))
      {
        goto LABEL_153;
      }

      v57 = *(v6 + 8 * v56 + 32);
    }

    v58 = v57;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_152;
    }

    v5 = [v57 identifier];
    v59 = [*(v7 + v158) identifier];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
    if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
    {
      break;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_95;
    }

    ++v56;
    v6 = v164;
    if (!v161)
    {
      goto LABEL_81;
    }
  }

LABEL_95:
  type metadata accessor for DOCExternalDeviceSource();
  v152 = swift_dynamicCastClass();
  if (!v152)
  {

    v6 = v164;
LABEL_99:
    v65 = *(v7 + v158);
    type metadata accessor for DOCExternalDeviceSource();
    v66 = swift_dynamicCastClass();
    if (!v66)
    {

      goto LABEL_163;
    }

    v32 = v66;
    v67 = v65;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    v161 = v32;
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v166[0] = v71;
      *v70 = 136315138;
      v72 = [v161 identifier];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v166);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_2493AC000, v68, v69, "USB: Processing external drive source: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      v77 = v71;
      v32 = v161;
      MEMORY[0x24C1FE850](v77, -1, -1);
      v6 = v164;
      MEMORY[0x24C1FE850](v70, -1, -1);
    }

    v49 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v32;
    v166[0] = v6;

    v3 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    v5 = MEMORY[0x277D84F90];
    v79 = specialized static DOCSourceOrderStrategy.sortedSources(from:orderedIdentifiers:)(v166[0], MEMORY[0x277D84F90]);

    if (!*(v79 + 16) || (v80 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v81 & 1) == 0))
    {

      goto LABEL_150;
    }

    v82 = *(*(v79 + 56) + 8 * v80);

    v48 = v82;
    if (v82 >> 62)
    {
      goto LABEL_209;
    }

    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v83)
    {
LABEL_210:

      v167[0] = MEMORY[0x277D84F90];
      goto LABEL_163;
    }

LABEL_106:
    v152 = v3;
    v166[0] = v5;
    v4 = v166;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83 & ~(v83 >> 63), 0);
    if ((v83 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v3 = v166[0];
      v85 = v82;
      v157 = v7;
      v159 = v82 & 0xC000000000000001;
      v150 = v82 & 0xFFFFFFFFFFFFFF8;
      v153 = v83;
      v155 = v82;
      while (1)
      {
        v6 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          v10 = __CocoaSet.count.getter();
          goto LABEL_5;
        }

        if (v159)
        {
          v86 = MEMORY[0x24C1FC540](v84, v85);
        }

        else
        {
          if (v84 >= *(v150 + 16))
          {
            goto LABEL_208;
          }

          v86 = *(v85 + 8 * v84 + 32);
        }

        v5 = v86;
        v87 = [v86 identifier];
        v88 = [v32 identifier];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;
        if (v89 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v91 == v92)
        {
          break;
        }

        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v94)
        {
          goto LABEL_120;
        }

        v7 = 1;
        v32 = v161;
        v49 = v162;
LABEL_123:
        v166[0] = v3;
        v100 = *(v3 + 16);
        v99 = *(v3 + 24);
        if (v100 >= v99 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1);
          v3 = v166[0];
        }

        *(v3 + 16) = v100 + 1;
        v101 = v3 + 48 * v100;
        *(v101 + 32) = v5;
        *(v101 + 40) = 0u;
        *(v101 + 56) = 0u;
        *(v101 + 72) = v7;
        ++v84;
        v85 = v155;
        v4 = v157;
        if (v6 == v153)
        {

          v167[0] = v3;
          v6 = v164;
          goto LABEL_163;
        }
      }

LABEL_120:
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      v32 = v161;
      v49 = v162;
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_2493AC000, v95, v96, "USB: Converting external drive source to disconnected item", v97, 2u);
        MEMORY[0x24C1FE850](v97, -1, -1);
      }

      v98 = v152;
      v7 = 4;
      v5 = v161;
      goto LABEL_123;
    }

    __break(1u);
LABEL_212:
    v162 = specialized _ArrayBuffer._consumeAndCreateNew()(v162);
    goto LABEL_146;
  }

  if ([v7 operationState] == 2)
  {

    v6 = v164;
    goto LABEL_163;
  }

  v5 = v58;
  v102 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v151 = v5;

  if (os_log_type_enabled(v102, v4))
  {
    v5 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v166[0] = v103;
    *v5 = 136315138;
    v104 = [v152 identifier];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, v166);

    *(v5 + 4) = v108;
    _os_log_impl(&dword_2493AC000, v102, v4, "USB: Operation not finished for source: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x24C1FE850](v103, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = v164;
  v3 = *(v162 + 2);
  if (!v3)
  {

    goto LABEL_163;
  }

  v32 = 0;
  v49 = 72;
  while (1)
  {
    if (v32 >= *(v162 + 2))
    {
      goto LABEL_156;
    }

    v109 = &v162[v49];
    if (v162[v49] != 1)
    {
      goto LABEL_133;
    }

    v110 = v3;
    v111 = *(v109 - 5);
    v160 = *(v109 - 3);
    v161 = *(v109 - 4);
    v154 = *(v109 - 1);
    v156 = *(v109 - 2);
    v5 = [v111 identifier];
    v112 = [v152 identifier];
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v114;
    if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v115)
    {
      break;
    }

    v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined consume of DOCSidebarItem(v111, v161, v160, v156, v154, 1u);

    v3 = v110;
    if (v117)
    {
      goto LABEL_145;
    }

LABEL_133:
    ++v32;
    v49 += 48;
    v6 = v164;
    if (v3 == v32)
    {

      goto LABEL_162;
    }
  }

  outlined consume of DOCSidebarItem(v111, v161, v160, v156, v154, 1u);

LABEL_145:

  v3 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_212;
  }

LABEL_146:
  v6 = v164;
  if (v32 >= *(v162 + 2))
  {
    __break(1u);

    while (1)
    {

      __break(1u);
    }
  }

  v118 = &v162[v49];
  v119 = *&v162[v49 - 40];
  v120 = *&v162[v49 - 32];
  v121 = *&v162[v49 - 24];
  v122 = *&v162[v49 - 16];
  v123 = *&v162[v49 - 8];
  *(v118 - 5) = v152;
  *(v118 - 2) = 0u;
  *(v118 - 1) = 0u;
  v124 = v162[v49];
  *v118 = 4;
  outlined consume of DOCSidebarItem(v119, v120, v121, v122, v123, v124);
  v167[0] = v162;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 134217984;
    *(v127 + 4) = v32;
    _os_log_impl(&dword_2493AC000, v125, v126, "USB: Replaced source with disconnected item at index: %ld", v127, 0xCu);
    MEMORY[0x24C1FE850](v127, -1, -1);
  }

LABEL_150:
LABEL_163:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v129 = Strong;
    v130 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v131 = v130(3);

    if (specialized closure #9 in LocationSectionManager.handleSourceUpdate(_:)(v131, v167))
    {
      DOCTabSidebarDataSource.updateTabsIfNeeded()();
    }
  }

  v165 = MEMORY[0x277D84F90];
  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    goto LABEL_187;
  }

  for (i = *(v6 + 16); i; i = __CocoaSet.count.getter())
  {
    v133 = 0;
    v134 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v134)
      {
        v135 = MEMORY[0x24C1FC540](v133, v6);
      }

      else
      {
        if (v133 >= *(v6 + 16))
        {
          goto LABEL_186;
        }

        v135 = *(v6 + 8 * v133 + 32);
      }

      v136 = v135;
      v137 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        break;
      }

      type metadata accessor for DOCFileProviderSource();
      v138 = swift_dynamicCastClass();
      if (v138 && (v139 = *(v138 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
      {
        v140 = v139;
        v141 = [v140 identifier];
        v142 = DOCProviderDomainIDIsExternalDevice();

        if (v142)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v6 = v164;
      }

      else
      {
      }

      ++v133;
      if (v137 == i)
      {
        v143 = v165;
        goto LABEL_189;
      }
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    ;
  }

  v143 = MEMORY[0x277D84F90];
LABEL_189:

  v144 = v143 < 0 || (v143 & 0x4000000000000000) != 0;
  if (v144)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_204;
    }

LABEL_194:

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 134217984;
      if (v144)
      {
        v148 = __CocoaSet.count.getter();
      }

      else
      {
        v148 = *(v143 + 16);
      }

      *(v147 + 4) = v148;

      _os_log_impl(&dword_2493AC000, v145, v146, "USB: Found %ld USB sources, prewarming StorageKit", v147, 0xCu);
      MEMORY[0x24C1FE850](v147, -1, -1);
    }

    else
    {
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x277D85000] & *static DOCUSBStorageKitManager.shared) + 0x60))();
  }

  else
  {
    if (*(v143 + 16))
    {
      goto LABEL_194;
    }

LABEL_204:
  }
}

void closure #2 in LocationSectionManager.startObserving()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 64);
    if (v1)
    {
      v2 = v1;

      [v2 invokeUpdateBlock];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall LocationSectionManager.stopObserving()()
{
  swift_beginAccess();
  v1 = v0[13];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(v0[13] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;

        ProviderDomainState.invalidate()();
      }

      while (v7);
      continue;
    }
  }

  v0[13] = MEMORY[0x277D84F98];

  v11 = v0[8];
  v0[8] = 0;

  if (v0[9])
  {

    DOCSourceVisibilityController.removeObserver(_:)(v12);
  }

  v0[9] = 0;
}

Swift::Void __swiftcall LocationSectionManager.updateSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249B9A480;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD00000000000001BLL;
  *(v1 + 40) = 0x8000000249BD3AA0;
  print(_:separator:terminator:)();

  v2 = *(v0 + 64);
  if (v2)
  {

    [v2 invokeUpdateBlock];
  }
}

id LocationSectionManager.generateTabGroup(using:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

id closure #1 in LocationSectionManager.generateTabGroup(using:alertPresenting:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v0 init];
}

uint64_t closure #1 in LocationSectionManager.handleSourceUpdate(_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = [v3 hiddenSourcesIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v2 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v65 = v7;
  v66 = v9;
  v64 = &v65;
  LOBYTE(v6) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v63, v5);

  if (v6)
  {
    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.Sidebar);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v65 = v15;
    *v14 = 136315138;
    v16 = [v11 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v65);

    *(v14 + 4) = v20;
    v21 = "Filtering out hidden source: %s";
LABEL_6:
    _os_log_impl(&dword_2493AC000, v12, v13, v21, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
LABEL_7:

    return 0;
  }

  v23 = [v2 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    goto LABEL_10;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return 1;
  }

  v23 = [v2 identifier];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
LABEL_10:
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      v34 = [v3 hiddenSourcesIdentifiers];
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = [v2 identifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v65 = v37;
      v66 = v39;
      MEMORY[0x28223BE20](v40, v41);
      v62[2] = &v65;
      LOBYTE(v36) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v62, v35);

      if (v36)
      {
        if (one-time initialization token for Sidebar != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.Sidebar);
        v43 = v2;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_7;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v65 = v15;
        *v14 = 136315138;
        v44 = [v43 identifier];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v65);

        *(v14 + 4) = v48;
        v21 = "Filtering out configuration specified hidden source: %s";
        goto LABEL_6;
      }

      type metadata accessor for DOCFileProviderSource();
      v49 = swift_dynamicCastClass();
      if (v49 && !*(v49 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain))
      {
        v50 = one-time initialization token for Sidebar;
        v51 = v2;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        __swift_project_value_buffer(v52, static Logger.Sidebar);
        v53 = v51;
        v12 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v65 = v56;
          *v55 = 136315138;
          v57 = [v53 identifier];
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v65);

          *(v55 + 4) = v61;
          _os_log_impl(&dword_2493AC000, v12, v54, "Filtering out source with nil providerDomain: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x24C1FE850](v56, -1, -1);
          MEMORY[0x24C1FE850](v55, -1, -1);
        }

        goto LABEL_7;
      }
    }
  }

  return 1;
}

uint64_t sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(void *a1)
{
  v2 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = specialized Sequence<>.starts<A>(with:)();

  if (v3)
  {

    return 0;
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = specialized Sequence<>.starts<A>(with:)();

    if (v5)
    {
      return 0;
    }

    else
    {
      v6 = [a1 identifier];
      IsNonManagedICloud = DOCDocumentSourceIdentifierIsNonManagedICloud(v6);

      return IsNonManagedICloud;
    }
  }
}

uint64_t closure #2 in LocationSectionManager.handleSourceUpdate(_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v13 = [v3 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

      LOBYTE(v11) = 1;
      goto LABEL_9;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_16;
    }

    v20 = [v2 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = specialized Sequence<>.starts<A>(with:)();

    if (v21)
    {
      goto LABEL_6;
    }

    v22 = [v3 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v22) = specialized Sequence<>.starts<A>(with:)();

    if (v22)
    {
LABEL_16:
      LOBYTE(v11) = 1;
      return v11 & 1;
    }

    v11 = sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(v2);
    if ((v11 ^ sourceIsICloudDrive #1 (_:) in LocationSectionManager.handleSourceUpdate(_:)(v3)))
    {
      return v11 & 1;
    }

    v23 = [v2 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = specialized Sequence<>.starts<A>(with:)();

    if (v24)
    {
      v11 = 1;
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = specialized Sequence<>.starts<A>(with:)();
    }

    v25 = [v3 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    LOBYTE(v25) = specialized Sequence<>.starts<A>(with:)();

    if (v25)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = specialized Sequence<>.starts<A>(with:)();

      if ((v11 ^ v26))
      {
        return v11 & 1;
      }
    }

    v27 = [v2 identifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v32 = [v3 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 ^ v37))
      {
        return v11 & 1;
      }
    }

    v38 = [v2 displayName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = [v3 displayName];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v39 != v43 || v41 != v45)
    {
      LOBYTE(v11) = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_9;
    }

LABEL_8:
    LOBYTE(v11) = 0;
LABEL_9:

    return v11 & 1;
  }

LABEL_6:
  LOBYTE(v11) = 0;
  return v11 & 1;
}

BOOL specialized closure #9 in LocationSectionManager.handleSourceUpdate(_:)(uint64_t a1, uint64_t *a2)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Sidebar);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*a2 + 16);
    _os_log_impl(&dword_2493AC000, v5, v6, "Setting %ld final items in locations section", v7, 0xCu);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(*a1 + 392);

  v8(v9);

  v11 = (*(*a1 + 312))(v10);
  swift_beginAccess();
  v12 = *a2;

  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables14DOCSidebarItemO_Tt1g5(v11, v12);

  return (v13 & 1) == 0;
}

void LocationSectionManager.visibilityDidChange(for:isHidden:)(void *a1, char a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for Sidebar != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.Sidebar);
      v4 = v23;
      swift_retain_n();
      v5 = v4;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v26[0] = v9;
        *v8 = 136315906;
        v10 = [v5 identifier];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v26);

        *(v8 + 4) = v14;
        *(v8 + 12) = 1024;
        *(v8 + 14) = a2 & 1;
        *(v8 + 18) = 2048;
        v15 = [v5 status];

        *(v8 + 20) = v15;
        *(v8 + 28) = 1024;
        DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
        v17 = v16;
        v18 = [v5 identifier];
        LOBYTE(v13) = specialized Set.contains(_:)(v18, v17);

        if ((v13 & 1) != 0 || ![v5 status])
        {

          v20 = 1;
        }

        else
        {
          v19 = [v5 status];

          v20 = v19 == 2;
        }

        *(v8 + 30) = v20;

        _os_log_impl(&dword_2493AC000, v6, v7, "Source visibility changed: Source: %s Hidden: %{BOOL}d Status: %lu isVisited: %{BOOL}d", v8, 0x22u);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C1FE850](v9, -1, -1);
        MEMORY[0x24C1FE850](v8, -1, -1);
      }

      else
      {
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = v5;
      specialized DOCDocumentSource.setHidden(hidden:completion:)(a2 & 1, v22, v21, a2 & 1, v22);
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v26, &_sypSgMd);
  }
}

uint64_t closure #1 in LocationSectionManager.visibilityDidChange(for:isHidden:)(uint64_t result, uint64_t a2, char a3, DOCDocumentSource *a4)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = result;
      if (a3)
      {

        DOCSourceVisibilityController.addVisitedSource(source:)(a4);

        if (one-time initialization token for Sidebar != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, static Logger.Sidebar);
        v8 = a4;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v21 = v12;
          *v11 = 136315138;
          v13 = [(DOCDocumentSource *)v8 identifier];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

          *(v11 + 4) = v17;
          _os_log_impl(&dword_2493AC000, v9, v10, "Source marked as visited: %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x24C1FE850](v12, -1, -1);
          MEMORY[0x24C1FE850](v11, -1, -1);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_249B9A480;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 32) = 0xD00000000000001BLL;
      *(v18 + 40) = 0x8000000249BD3AA0;
      print(_:separator:terminator:)();

      v19 = *(v6 + 64);
      if (v19)
      {
        v20 = v19;
        [v20 invokeUpdateBlock];
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall LocationSectionManager.canAcceptDrop(of:)(Swift::OpaquePointer of)
{
  v1 = of._rawValue + 72;
  v2 = *(of._rawValue + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 48;
  }

  while (v3 == 1);
  return v2 == 0;
}

uint64_t LocationSectionManager.handleDrop(of:at:completion:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v35 = a3;
    v36 = v3;
    v10 = *(**(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_mutableSectionsData) + 184);

    v11 = v10(3);

    a3 = (*(*v11 + 312))(v12);
    v40 = a3;
    v13 = *(a1 + 16);
    v34 = a1;
    if (v13)
    {
      v14 = (a1 + 64);
      while (1)
      {
        v15 = *(v14 - 1);
        v45 = *(v14 - 2);
        v46[0] = v15;
        *(v46 + 9) = *(v14 - 7);
        v37 = *(v14 - 1);
        v38 = v45;
        v16 = *v14;
        v17 = *(v14 + 8);

        outlined init with copy of DOCSidebarItem(&v45, v39);
        v18 = specialized Collection<>.firstIndex(of:)(&v45, a3);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          specialized Array.remove(at:)(v18, v41);
          outlined destroy of DOCSidebarItem(v41);
        }

        a3 = v40;
        v21 = *(v40 + 2);
        v22 = (v21 >= a2 ? a2 : *(v40 + 2));
        if (a2 < 0)
        {
          break;
        }

        outlined init with copy of DOCSidebarItem(&v45, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v21 >= *(a3 + 3) >> 1)
        {
          a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, a3);
          v40 = a3;
        }

        v42[0] = v38;
        v42[1] = v37;
        v43 = v16;
        v44 = v17;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v22, v22, 1, v42);
        outlined destroy of DOCSidebarItem(&v45);
        outlined destroy of DOCSidebarItem(&v45);
        v40 = a3;
        v14 += 6;
        if (!--v13)
        {
          goto LABEL_15;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_38;
      }

      goto LABEL_28;
    }

LABEL_15:
    (*(*v11 + 392))(a3);

    DOCTabSidebarDataSource.updateTabsIfNeeded()();

    a3 = v35;
    v4 = v36;
    a1 = v34;
  }

  v24 = 0;
  v21 = MEMORY[0x277D84F90];
  v39[0] = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
LABEL_17:
  v25 = a1 - 16 + 48 * v24;
  while (v13 != v24)
  {
    if (v24 >= v13)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_35;
    }

    v27 = *(v25 + 88);
    ++v24;
    v25 += 48;
    if (v27 == 1)
    {
      v28 = *v25;
      MEMORY[0x24C1FB090]();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v39[0];
      v24 = v26;
      goto LABEL_17;
    }
  }

  v13 = *(v4 + 64);
  if (!v13)
  {

    return (a3)(1);
  }

  if (v21 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_28:
  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_39:
    v31 = v13;
    v32 = MEMORY[0x24C1FC540](0, v21);
    goto LABEL_31;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v30 = *(v21 + 32);
  v31 = v13;
  v32 = v30;
LABEL_31:
  v33 = v32;

  [v31 moveSource:v33 toIndex:a2];

  return (a3)(1);
}

Swift::Void __swiftcall LocationSectionManager.displayOrderDidChange(for:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v48 = MEMORY[0x277D84F90];
  v2 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (i)
    {
      v4 = 0;
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        v5 = v4;
        while (1)
        {
          if ((rawValue & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1FC540](v5, rawValue);
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_70;
            }

            v6 = *(rawValue + 8 * v5 + 32);
          }

          v7 = v6;
          v4 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if ([v6 userInfo])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v44 = 0u;
            v45 = 0u;
          }

          v46[0] = v44;
          v46[1] = v45;
          if (*(&v45 + 1))
          {
            break;
          }

          outlined destroy of CharacterSet?(v46, &_sypSgMd);
LABEL_7:
          ++v5;
          if (v4 == i)
          {
            goto LABEL_25;
          }
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
        if ((swift_dynamicCast() & 1) == 0 || !v47)
        {
          goto LABEL_7;
        }

        MEMORY[0x24C1FB090]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v48;
        if (v4 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = MEMORY[0x277D84F90];
LABEL_25:
    (*(**(v36 + 56) + 136))(3);
    v9 = v8;
    ObjectType = swift_getObjectType();
    rawValue = (*(v9 + 72))(0, ObjectType, v9);
    swift_unknownObjectRelease();
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    *&v46[0] = MEMORY[0x277D84F90];
    v2 = *(rawValue + 16);
LABEL_26:
    v13 = rawValue - 16 + 48 * v11;
    while (v2 != v11)
    {
      if (v11 >= *(rawValue + 16))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      ++v11;
      v14 = (v13 + 48);
      v15 = *(v13 + 88);
      v13 += 48;
      if (v15 == 1)
      {
        v16 = *v14;
        MEMORY[0x24C1FB090]();
        if (*((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = *&v46[0];
        goto LABEL_26;
      }
    }

    if (v37 >> 62)
    {
      break;
    }

    v17 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_75;
    }

LABEL_35:
    v18 = 0;
    v19 = v12 & 0xFFFFFFFFFFFFFF8;
    v43 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 < 0)
    {
      v19 = v12;
    }

    v35 = v19;
    v42 = v12 & 0xC000000000000001;
    v39 = v12 >> 62;
    v38 = v17;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, v37);
      }

      else
      {
        if (v18 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v20 = *(v37 + 32 + 8 * v18);
      }

      v21 = v20;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v41 = v18;
      if (v39)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *(v43 + 16);
      }

      v23 = 0;
      v40 = v18 + 1;
      while (v22 != v23)
      {
        if (v42)
        {
          v24 = v12;
          v25 = MEMORY[0x24C1FC540](v23, v12);
        }

        else
        {
          if (v23 >= *(v43 + 16))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v24 = v12;
          v25 = *(v12 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = [v25 identifier];
        v28 = [v21 identifier];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        rawValue = v29;
        if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && rawValue == v30)
        {

LABEL_39:
          v12 = v24;
          if (v41 != v23)
          {

            v33 = *(v36 + 64);
            if (v33)
            {
              v34 = v33;
              [v34 moveSource:v21 toIndex:v41];
            }

            return;
          }

          break;
        }

        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_39;
        }

        v32 = __OFADD__(v23++, 1);
        v12 = v24;
        if (v32)
        {
          goto LABEL_67;
        }
      }

      v18 = v40;
      if (v40 == v38)
      {
        goto LABEL_75;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v17 = __CocoaSet.count.getter();
  if (v17)
  {
    goto LABEL_35;
  }

LABEL_75:
}

void LocationSectionManager.trashMenu(actionManager:actionContext:)(void *a1, void *a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_249BA0290;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:);
  v6[4] = 0;
  v6[5] = a2;
  v6[6] = a1;
  aBlock[4] = partial apply for closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = a2;
  v10 = a1;
  v11 = [v8 elementWithProvider_];
  _Block_release(v7);

  *(preferredElementSize + 32) = v11;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, v12, 0, v16, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14);
}

id closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:)()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v7._object = 0x8000000249BD42D0;
    v2._countAndFlagsBits = 0x41206574656C6544;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v2._object = 0xEA00000000006C6CLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD000000000000042;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v7);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v5 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v6 = [objc_opt_self() systemImageNamed_];

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a6;
  v14[7] = a7;

  v15 = a6;
  v16 = a7;
  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nAA015LocationSectionB0C_Tt1g5(a3, partial apply for closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), v14);
}

uint64_t closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(unint64_t a1, uint64_t (*a2)(void (*)(uint64_t a1), void *), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6, void *a7)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v12 = swift_allocObject();
    v12[2] = a6;
    v12[3] = a7;
    v12[4] = a1;
    v13 = a6;
    v14 = a7;

    v15 = a2(partial apply for closure #2 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), v12);

    [v15 setAttributes_];
    goto LABEL_6;
  }

  v15 = a2(closure #1 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:), 0);
  [v15 setAttributes_];
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = v15;
  v17 = v15;
  a4(v16);
}

void closure #1 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)()
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.Sidebar);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BD4250, &v5);
    _os_log_impl(&dword_2493AC000, oslog, v1, "%s: No items, disabling context menu action for Recently Deleted.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x24C1FE850](v3, -1, -1);
    MEMORY[0x24C1FE850](v2, -1, -1);
  }
}

void closure #2 in closure #1 in closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Sidebar);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BD4250, aBlock);
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Performing context menu action for Recently Deleted.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  v11 = *((*MEMORY[0x277D85000] & *a2) + 0x98);
  v12 = swift_unknownObjectRetain();
  v11(v12);
  v13 = *MEMORY[0x277D05F90];
  v14 = _DocumentManagerBundle();
  if (v14)
  {
    v15 = v14;
    v28._object = 0x8000000249BD4280;
    v16._countAndFlagsBits = 0x41206574656C6544;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v28._countAndFlagsBits = 0xD00000000000002FLL;
    v16._object = 0xEA00000000006C6CLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v28);

    v20 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v21 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_127;
    v22 = _Block_copy(aBlock);
    v23 = [v20 initWithIdentifier:v13 localizedTitle:v21 unresolvedHandler:v22];

    _Block_release(v22);

    v24 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v25 = [objc_opt_self() systemImageNamed_];

    [v23 setImage_];
    [v23 setAvailability_];
    [v23 setNavigationSide_];
    [v23 setMenuSortOrder_];
    [v23 setActionStyle_];
    [v23 setRequiresFullyFormedItems_];

    if (a4 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v26 = _bridgeCocoaArray<A>(_:)();

      a4 = v26;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    specialized DOCActionManager.perform(_:on:actionContext:)(v23, a4, a2);
  }

  else
  {

    __break(1u);
  }
}

id LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2)
{
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  aBlock = v29;
  v24 = v30;
  if (!*(&v30 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v22 = v28;
  v5 = [objc_allocWithZone(DOCActionManager) init];
  isa = [a2 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setActions_];

  v7 = [a2 effectiveAppearance];
  v8 = *(v2 + 24);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for DOCActionContext();
  v11 = objc_allocWithZone(v10);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_appearance] = v7;
  *&v11[OBJC_IVAR___DOCActionContext_configuration] = v8;
  *&v11[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v11[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v11[OBJC_IVAR___DOCActionContext_userInfo] = v9;
  v27.receiver = v11;
  v27.super_class = v10;
  v12 = v8;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v27, sel_init);
  v15 = swift_allocObject();
  v15[2] = v22;
  v15[3] = v2;
  v15[4] = v5;
  v15[5] = v14;
  v15[6] = v13;
  v15[7] = a1;
  v16 = objc_opt_self();
  v25 = partial apply for closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v26 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v24 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  *(&v24 + 1) = &block_descriptor_14;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  v19 = a1;

  v20 = [v16 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];

  _Block_release(v17);
  return v20;
}

void closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(int a1, id a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v11 = MEMORY[0x277D84F90];
  v158 = MEMORY[0x277D84F90];
  v12 = [a2 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    goto LABEL_22;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_22:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_249BA0290;
    v38 = swift_allocObject();
    v38[2] = a3;
    v38[3] = closure #1 in LocationSectionManager.trashMenu(actionManager:actionContext:);
    v38[4] = 0;
    v38[5] = a5;
    v38[6] = a4;
    aBlock[4] = closure #2 in LocationSectionManager.trashMenu(actionManager:actionContext:)partial apply;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_91;
    v39 = _Block_copy(aBlock);
    v40 = objc_opt_self();

    v41 = a5;
    v42 = a4;
    v43 = [v40 elementWithProvider_];
    _Block_release(v39);

    *(v37 + 32) = v43;
    preferredElementSizea = v37;
LABEL_75:
    v145._countAndFlagsBits = 0;
    v145._object = 0xE000000000000000;
    v162.value.super.isa = 0;
    v162.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, v145, 0, v162, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, children);
    return;
  }

  v19 = [a4 actions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [a4 associatedActionManagers];
  type metadata accessor for DOCActionManager(0);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = specialized Sequence.flatMap<A>(_:)(v22);

  aBlock[0] = v20;
  specialized Array.append<A>(contentsOf:)(v23);
  v24 = v20;
  v151 = a6;
  v152 = a2;
  v150 = a3;
  v149 = a7;
  v153 = v11;
  if (!(v20 >> 62))
  {
    v25 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_31:

    v63 = MEMORY[0x277D84F90];
    v46 = v152;
    goto LABEL_32;
  }

LABEL_30:
  v25 = __CocoaSet.count.getter();
  if (!v25)
  {
    goto LABEL_31;
  }

LABEL_8:
  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1FC540](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = [v27 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_24;
    }

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_31;
    }
  }

LABEL_24:

  v45 = _DocumentManagerBundle();
  v46 = v152;
  if (!v45)
  {
    __break(1u);
    goto LABEL_77;
  }

  v47 = v45;
  swift__string._object = 0x8000000249BD3FE0;
  v48._object = 0x8000000249BD3FC0;
  swift__string._countAndFlagsBits = 0xD00000000000004ALL;
  v48._countAndFlagsBits = 0xD000000000000012;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v49.value._object = 0xEB00000000656C62;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, swift__string);

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
  v51 = MEMORY[0x24C1FAD20](0x7571732E73756C70, 0xEB00000000657261);
  v52 = [objc_opt_self() systemImageNamed_];

  v53 = swift_allocObject();
  v53[2] = a5;
  v53[3] = v152;
  v53[4] = a4;
  v53[5] = v28;
  v54 = a5;
  v55 = a4;
  v56 = v152;
  v57 = v28;
  v58 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_249BA0290;
  *(v59 + 32) = v58;
  v60 = v58;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v159.value.super.isa = 0;
  v159.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v62, v61, 0, v159, 1, 0xFFFFFFFFFFFFFFFFLL, v59, 0);
  MEMORY[0x24C1FB090]();
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v63 = v158;
LABEL_32:
  type metadata accessor for DOCFileProviderSource();
  v64 = swift_dynamicCastClass();
  if (v64)
  {
    v65 = v64;
    aBlock[0] = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D85000];
    v67 = *((*MEMORY[0x277D85000] & *v64) + 0x128);
    v68 = v46;
    v69 = v67();
    if (v69)
    {
      v70 = _DocumentManagerBundle();
      if (!v70)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v71 = v70;
      swift__stringa._object = 0x8000000249BD41E0;
      v72._countAndFlagsBits = 0xE220656D616E6552;
      v72._object = 0xAF9D80E240259C80;
      swift__stringa._countAndFlagsBits = 0xD00000000000002BLL;
      v73.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v73.value._object = 0xEB00000000656C62;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, swift__stringa);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_249B9A480;
      v76 = [v68 displayName];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v75 + 32) = v77;
      *(v75 + 40) = v79;
      static String.localizedStringWithFormat(_:_:)();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      v80 = MEMORY[0x24C1FAD20](0x6C69636E6570, 0xE600000000000000);
      v81 = [objc_opt_self() systemImageNamed_];

      preferredElementSize = UIMenuElementSizeSmall;
      children._rawValue = 0;
      v82 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v82);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v153 = aBlock[0];
    }

    v83 = *(v65 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (!v83)
    {
LABEL_43:
      if (((*((*v66 & *v65) + 0x130))(v69) & 1) == 0)
      {
LABEL_48:
        if (![v65 isEjectable])
        {
          goto LABEL_53;
        }

        v110 = _DocumentManagerBundle();
        if (v110)
        {
          v111 = v110;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
          swift__stringd._object = 0x8000000249BD40B0;
          v112._countAndFlagsBits = 0x7463656A45;
          swift__stringd._countAndFlagsBits = 0xD000000000000046;
          v112._object = 0xE500000000000000;
          v113.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v113.value._object = 0xEB00000000656C62;
          v114._countAndFlagsBits = 0;
          v114._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v112, v113, v111, v114, swift__stringd);

          v115 = MEMORY[0x24C1FAD20](0x69632E7463656A65, 0xEC000000656C6372);
          v116 = [objc_opt_self() systemImageNamed_];

          v117 = swift_allocObject();
          *(v117 + 16) = v65;
          *(v117 + 24) = v151;
          v118 = v68;
          v119 = v151;
          preferredElementSize = UIMenuElementSizeSmall;
          children._rawValue = 0;
          v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          MEMORY[0x24C1FB090](v120);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v153 = aBlock[0];
LABEL_53:
          if (v153 >> 62)
          {
            if (__CocoaSet.count.getter())
            {
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);

              v121 = _bridgeCocoaArray<A>(_:)();

              goto LABEL_56;
            }
          }

          else if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
            v121 = v153;
LABEL_56:

            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
            v122._countAndFlagsBits = 0;
            v122._object = 0xE000000000000000;
            v160.value.super.isa = 0;
            v160.is_nil = 0;
            UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v123, v122, 0, v160, 1, 0xFFFFFFFFFFFFFFFFLL, v121, children);
            MEMORY[0x24C1FB090]();
            if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v63 = v158;
            goto LABEL_63;
          }

LABEL_63:
          v46 = v152;
          goto LABEL_64;
        }

LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v99 = _DocumentManagerBundle();
      if (v99)
      {
        v100 = v99;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
        swift__stringc._object = 0x8000000249BD4100;
        v101._countAndFlagsBits = 0x6573617245;
        swift__stringc._countAndFlagsBits = 0xD000000000000051;
        v101._object = 0xE500000000000000;
        v102.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v102.value._object = 0xEB00000000656C62;
        v103._countAndFlagsBits = 0;
        v103._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, swift__stringc);

        v104 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BD4160);
        v105 = [objc_opt_self() systemImageNamed_];

        v106 = swift_allocObject();
        *(v106 + 16) = v68;
        *(v106 + 24) = v151;
        v107 = v68;
        v108 = v151;
        children._rawValue = 2;
        preferredElementSize = UIMenuElementSizeSmall;
        v109 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        MEMORY[0x24C1FB090](v109);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v153 = aBlock[0];
        goto LABEL_48;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v155 = v63;
    v84 = v83;
    v85 = _DocumentManagerBundle();
    if (v85)
    {
      v86 = v85;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
      swift__stringb._object = 0x8000000249BD4180;
      v87._countAndFlagsBits = 0x6F666E4920746547;
      swift__stringb._countAndFlagsBits = 0xD000000000000050;
      v87._object = 0xE800000000000000;
      v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v88.value._object = 0xEB00000000656C62;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, swift__stringb);

      v90 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
      v91 = [objc_opt_self() systemImageNamed_];

      v92 = swift_allocObject();
      v92[2] = v84;
      v92[3] = v151;
      v92[4] = v150;
      v92[5] = v149;
      v92[6] = v65;
      v92[7] = v68;
      v93 = v68;

      v94 = v93;
      v95 = v84;
      v96 = v151;
      v97 = v149;
      preferredElementSize = UIMenuElementSizeSmall;
      children._rawValue = 0;
      v98 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v98);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v153 = aBlock[0];
      v63 = v155;
      v66 = MEMORY[0x277D85000];
      goto LABEL_43;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_64:
  v124 = [v46 identifier];
  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;
  if (v125 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v127 == v128)
  {

LABEL_74:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    preferredElementSizea = v63;
    goto LABEL_75;
  }

  v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v129 & 1) != 0 || ([v46 status] | 2) != 2 || objc_msgSend(v46, sel_status) == 2)
  {
    goto LABEL_74;
  }

  v130 = _DocumentManagerBundle();
  if (v130)
  {
    v131 = v130;
    swift__stringe._object = 0x8000000249BD4050;
    v132._countAndFlagsBits = 0xD000000000000013;
    v132._object = 0x8000000249BD4030;
    swift__stringe._countAndFlagsBits = 0xD00000000000005FLL;
    v133.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v133.value._object = 0xEB00000000656C62;
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v132, v133, v131, v134, swift__stringe);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    v135 = MEMORY[0x24C1FAD20](0x6B72616D78, 0xE500000000000000);
    v136 = [objc_opt_self() systemImageNamed_];

    v137 = swift_allocObject();
    swift_weakInit();
    v138 = swift_allocObject();
    *(v138 + 16) = v46;
    *(v138 + 24) = v137;
    v139 = v46;
    v140 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_249BA0290;
    *(v141 + 32) = v140;
    v142 = v140;
    v143._countAndFlagsBits = 0;
    v143._object = 0xE000000000000000;
    v161.value.super.isa = 0;
    v161.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v144, v143, 0, v161, 1, 0xFFFFFFFFFFFFFFFFLL, v141, 2);
    MEMORY[0x24C1FB090]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v63 = v158;
    goto LABEL_74;
  }

LABEL_81:
  __break(1u);
}

void closure #2 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a2 + OBJC_IVAR___DOCActionContext_appearance);
  v6 = *(a2 + OBJC_IVAR___DOCActionContext_configuration);
  v7 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000036;
  *(inited + 40) = 0x8000000249BD4210;
  v9 = DOCDocumentSource.representedLocation.getter();
  *(inited + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  *(inited + 48) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
  v11 = type metadata accessor for DOCActionContext();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_appearance] = v5;
  *&v12[OBJC_IVAR___DOCActionContext_configuration] = v6;
  *&v12[OBJC_IVAR___DOCActionContext_presentingViewController] = v7;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
  *&v12[OBJC_IVAR___DOCActionContext_userInfo] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  specialized DOCActionManager.perform(_:on:actionContext:)(a5, MEMORY[0x277D84F90], v16);
}

void closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = [objc_opt_self() defaultManager];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v20[4] = partial apply for closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_97;
  v15 = _Block_copy(v20);
  v16 = a3;

  v17 = a5;
  v18 = a6;
  v19 = a7;

  [v13 doc:a2 fetchRootNodeForProviderDomain:v15 completionHandler:?];
  _Block_release(v15);
}

uint64_t closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a2;
  v14[7] = a6;
  v14[8] = a7;
  swift_unknownObjectRetain();
  v15 = a3;

  v16 = a5;
  v17 = a2;
  v18 = a6;
  v19 = a7;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, uint64_t a3, void *a4, id a5, void *a6)
{
  if (!a1 || (swift_getObjectType(), (v11 = DOCNode.fpfs_syncFetchFPItem()()) == 0))
  {
    if (!a5)
    {
      return;
    }

    v35 = *(a3 + 24);
    v36 = a5;
    v37 = a5;
    v38 = v35;
    v39 = DOCDocumentSource.representedLocation.getter();
    v40 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a6;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v39;
    *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a5;
    v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = 0;
    v41 = a5;
    v42 = a6;
    v43 = v39;
    v44 = _convertErrorToNSError(_:)();
    v45 = [v44 domain];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {

        goto LABEL_34;
      }
    }

    v51 = [v44 code];

    if (v51 == -1000)
    {
      v52 = *&v42[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v52)
      {
        v53 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_35:
        *&v40[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v53;
        v76 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v38, 0, 0);

        v77 = type metadata accessor for DOCGetInfoErrorPresentingViewController();
        v78 = objc_allocWithZone(v77);
        *&v78[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = v76;
        v88.receiver = v78;
        v88.super_class = v77;
        v79 = objc_msgSendSuper2(&v88, sel_init);
        [a2 presentViewController:v79 animated:1 completion:0];

        return;
      }
    }

LABEL_34:
    v53 = 0;
    goto LABEL_35;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = *(a3 + 24);
  v82 = v13;
  if (v13)
  {
    v15 = a2;
    v13 = [v13 splitBrowserViewController];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = v12;
  v17 = type metadata accessor for DOCServiceInfoViewController();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v14;
  v19 = objc_allocWithZone(DOCItemInfoViewController);
  v20 = v14;
  v81 = v12;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithNodes:isa configuration:v20 actionReporting:v13];

  swift_unknownObjectRelease();
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v23;
  [v23 _setBuiltinTransitionStyle_];
  v87.receiver = v18;
  v87.super_class = v17;
  v24 = objc_msgSendSuper2(&v87, sel_init);
  swift_unknownObjectRelease();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a4;
  v25[4] = a2;
  v26 = one-time initialization token for associatedObjectStorageKey;
  v27 = a2;
  v28 = v24;
  v29 = a4;
  v30 = v27;
  v31 = v28;
  v32 = v29;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v34 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v33) + 0x78))(v83);

  if (v83[0])
  {
  }

  else
  {
    v86 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v54 = static UIViewController.associatedObjectStorageKey;
    v55 = v31;
    v56 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v55, v54);
    v57 = v17;
    v58 = v30;
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v60 = v32;
    v61 = swift_allocObject();
    *(v61 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v61 + 32) = MEMORY[0x277D84F90];
    *(v61 + 40) = 0;
    swift_unknownObjectWeakAssign();
    v83[0] = v61;
    v32 = v60;
    v34 = MEMORY[0x277D85000];
    v62 = KeyPath;
    v30 = v58;
    v17 = v57;
    (*((*MEMORY[0x277D85000] & *v56) + 0x80))(v83, v62);
  }

  v63 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v31, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v34 & *v63) + 0x78))(v83);

  v64 = v83[0];
  if (v83[0])
  {
    if (*(v83[0] + 40) == 2)
    {
      closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(v31, v32, v30);
    }

    else
    {
      v69 = swift_allocObject();
      *(v69 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:);
      *(v69 + 24) = v25;
      swift_beginAccess();
      v70 = *(v64 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 32) = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        *(v64 + 32) = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
        v74 = v73 + 1;
        v70 = v80;
      }

      v70[2] = v74;
      v75 = &v70[2 * v73];
      v75[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v75[5] = v69;
      *(v64 + 32) = v70;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    v85.receiver = v31;
    v85.super_class = v17;
    objc_msgSendSuper2(&v85, sel_setModalPresentationStyle_, 7);
    v65 = [v31 traitCollection];
    v66 = [v65 userInterfaceIdiom];

    if (v66 != 6)
    {
      v84.receiver = v31;
      v84.super_class = v17;
      if (objc_msgSendSuper2(&v84, sel_modalPresentationStyle) == 2)
      {
        [v31 setPreferredContentSize_];
      }
    }

    v67 = [v31 popoverPresentationController];
    if (v67)
    {
      v68 = v67;
      [v67 setSourceItem_];
    }

    [v31 setModalPresentationStyle_];
    [v30 presentViewController:v31 animated:1 completion:0];
  }
}

id closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DOCServiceInfoViewController();
  v13.receiver = a1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_setModalPresentationStyle_, 7);
  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v12.receiver = a1;
    v12.super_class = v6;
    if (objc_msgSendSuper2(&v12, sel_modalPresentationStyle) == 2)
    {
      [a1 setPreferredContentSize_];
    }
  }

  v9 = [a1 popoverPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 setSourceItem_];
  }

  [a1 setModalPresentationStyle_];
  return [a3 presentViewController:a1 animated:1 completion:0];
}

uint64_t closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static DOCUSBFormatting.shared;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  (*(*v5 + 104))(a2, 0, 0, a3, 0, partial apply for closure #1 in closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:), v6, 0, 0);
}

void closure #1 in closure #5 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Rename);
    v8 = a1;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = a1;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v10, v11, "[Erase] Source: %@ failed with error: %s ", v12, 0x16u);
      outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a3;
    v21 = a1;
    v22 = a3;
    DOCRunInMainThread(_:)();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.Rename);
    v24 = a2;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&dword_2493AC000, oslog, v25, "[Erase] Source: %@ succeeded.", v26, 0xCu);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }
  }
}

void closure #6 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DOCEjectionController();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = a2;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v9;
  v11 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  DOCEjectionController.eject()();
}

void closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v4 = a2;
  specialized DOCDocumentSource.setHidden(hidden:completion:)(1, v4, v3, v4);
}

uint64_t closure #1 in closure #7 in closure #1 in LocationSectionManager.contextMenuConfiguration(for:alertPresenting:)(uint64_t a1, uint64_t a2, DOCDocumentSource *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    DOCSourceVisibilityController.addVisitedSource(source:)(a3);
  }

  return result;
}

id LocationSectionManager.sidebarItem(for:tab:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() itemFromRequest_];
  LocationSectionManager.accessories(for:)(a2);
  UITabSidebarItem.accessories.setter();
  if ([a2 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  aBlock = v30;
  v26 = v31;
  if (!*(&v31 + 1))
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
    return v9;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if (swift_dynamicCast())
  {
    v10 = v29;
    type metadata accessor for DOCFileProviderSource();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *((*MEMORY[0x277D85000] & *v11) + 0x128);
      v10 = v10;
      if (v12(v10, v13, v14, v15))
      {
        UITabSidebarItem.defaultContentConfiguration()();
        v16 = swift_allocObject();
        swift_weakInit();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = v10;
        v18 = objc_allocWithZone(MEMORY[0x277D75E80]);
        v27 = partial apply for closure #1 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = v17;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        *(&v26 + 1) = &block_descriptor_21;
        v19 = _Block_copy(&aBlock);

        v20 = [v18 initWithDidEndHandler_];
        _Block_release(v19);

        v27 = closure #2 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
        *(&v26 + 1) = &block_descriptor_24;
        v21 = _Block_copy(&aBlock);
        [v20 setShouldChangeHandler_];
        _Block_release(v21);
        v27 = closure #3 in LocationSectionManager.sidebarItem(for:tab:);
        v28 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v26 = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool);
        *(&v26 + 1) = &block_descriptor_27;
        v22 = _Block_copy(&aBlock);
        [v20 setShouldEndHandler_];
        _Block_release(v22);
        *(&v26 + 1) = v4;
        v27 = MEMORY[0x277D74C30];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
        (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
        UITabSidebarItem.contentConfiguration.setter();

        (*(v5 + 8))(v8, v4);
        return v9;
      }
    }
  }

  return v9;
}

char *LocationSectionManager.accessories(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v72 = v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v63 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v69 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v68 = v63 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v63 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = v63 - v30;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = v63 - v35;
  if ([a1 userInfo])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v76[0] = v74;
  v76[1] = v75;
  if (!*(&v75 + 1))
  {
    outlined destroy of CharacterSet?(v76, &_sypSgMd);
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v37 = v73;
  type metadata accessor for DOCFileProviderSource();
  v38 = swift_dynamicCastClass();
  if (!v38 || (v39 = *(v38 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {

    return MEMORY[0x277D84F90];
  }

  v65 = v37;
  v64 = v39;
  v40 = [v64 identifier];
  swift_beginAccess();
  v41 = *(v1 + 104);
  if (!*(v41 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40), (v43 & 1) == 0))
  {

    swift_endAccess();
    return MEMORY[0x277D84F90];
  }

  v44 = *(*(v41 + 56) + 8 * v42);

  swift_endAccess();

  v63[1] = v44;
  if (v44[3])
  {
    v63[0] = v44[3];
    v45 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
    v46 = *MEMORY[0x277D74A98];
    v47 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v47 - 8) + 104))(v13, v46, v47);
    *v45 = closure #1 in default argument 1 of UICellAccessory.Placement.trailing(_:);
    v45[1] = 0;
    (*(v66 + 104))(v13, *MEMORY[0x277D74AD8], v10);
    v48 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
    v49 = v63[0];
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    static UICellAccessory.customView(configuration:)();

    (*(v67 + 8))(v17, v14);
    v51 = v70;
    v50 = v71;
    v52 = *(v70 + 32);
    v52(v36, v31, v71);
    (*(v51 + 16))(v27, v36, v50);
    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v53);
    }

    v56 = v53;
    (*(v51 + 8))(v36, v50);
    *(v56 + 2) = v55 + 1;
    v52(&v56[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v55], v27, v50);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
    v51 = v70;
    v50 = v71;
  }

  v58 = v72;
  ProviderDomainState.getEjectAccessory()(v72);
  if ((*(v51 + 48))(v58, 1, v50) == 1)
  {

    outlined destroy of CharacterSet?(v58, &_s5UIKit15UICellAccessoryVSgMd);
    return v56;
  }

  else
  {
    v59 = *(v51 + 32);
    v60 = v68;
    v59(v68, v58, v50);
    (*(v51 + 16))(v69, v60, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
    }

    v62 = *(v56 + 2);
    v61 = *(v56 + 3);
    if (v62 >= v61 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v56);
    }

    (*(v51 + 8))(v68, v50);
    *(v56 + 2) = v62 + 1;
    v59(&v56[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v62], v69, v50);
    return v56;
  }
}

uint64_t closure #1 in LocationSectionManager.sidebarItem(for:tab:)(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v7 = Strong, v8 = (*((*MEMORY[0x277D85000] & *Strong) + 0x280))(), v7, v8))
    {
      v9 = [a1 text];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(a3, v8, v10, v12);
    }

    else
    {
    }
  }

  return result;
}

void *LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *result, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = result;
    v9 = [result displayName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a3 && v12 == a4)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = v8;
        v16[3] = a3;
        v16[4] = a4;
        v16[5] = v15;
        v16[6] = a2;
        v17 = one-time initialization token for shared;
        v18 = v8;

        v19 = a2;
        if (v17 != -1)
        {
          swift_once();
        }

        (*(*static DOCUSBRenaming.shared + 136))(v18, a3, a4, v19, 0, partial apply for closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:), v16, 0, 0);
      }
    }
  }

  return result;
}

id closure #2 in LocationSectionManager.sidebarItem(for:tab:)(void *a1)
{
  v1 = [a1 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = [a1 proposedReplacementText];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  [a1 proposedReplacementRange];
  if (v9 != 1)
  {
LABEL_10:

    return a1;
  }

  else
  {
    v10 = [a1 text];
    if (!v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x24C1FAD20](v11);
    }

    v12 = [objc_allocWithZone(MEMORY[0x277D75E88]) initWithText_];

    return v12;
  }
}

id thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

BOOL closure #3 in LocationSectionManager.sidebarItem(for:tab:)(void *a1)
{
  v1 = [a1 text];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void closure #1 in LocationSectionManager.startObservingState(for:tab:alertPresenting:)(void *a1)
{
  v2 = [a1 tabBarController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sidebar];

    [v4 reconfigureItemForTab_];
  }
}

uint64_t closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  v13 = a1;
  v14 = a2;

  v15 = a6;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in LocationSectionManager.handleUSBRename(source:alertPresenting:to:)(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  if (a1)
  {
    v11 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.Rename);
    v13 = a1;
    v14 = a2;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      osloga = a6;
      v33[0] = swift_slowAlloc();
      v19 = v33[0];
      *v17 = 138412802;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2080;
      v20 = v14;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v33);
      *(v17 + 22) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v22;
      v18[1] = v22;
      _os_log_impl(&dword_2493AC000, v15, v16, "Renaming source: %@ to: %s failed with error: %@", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v23 = v19;
      a6 = osloga;
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      specialized LocationSectionManager.warnAboutInvalidUSBName(name:alertPresenting:)(a6);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.Rename);
    v25 = a2;

    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v27 = 138412546;
      *(v27 + 4) = v25;
      *v28 = v25;
      *(v27 + 12) = 2080;
      v30 = v25;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v33);
      _os_log_impl(&dword_2493AC000, oslog, v26, "Renaming source: %@ to: %s succeeded.", v27, 0x16u);
      outlined destroy of CharacterSet?(v28, &_sSo8NSObjectCSgMd);
      MEMORY[0x24C1FE850](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {
    }
  }
}

id *LocationSectionManager.deinit()
{
  MEMORY[0x24C1FE970](v0 + 4);

  return v0;
}

uint64_t LocationSectionManager.__deallocating_deinit()
{
  LocationSectionManager.deinit();

  return swift_deallocClassInstance();
}

id protocol witness for TabSectionManager.generateTabGroup(using:alertPresenting:) in conformance LocationSectionManager(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  return specialized LocationSectionManager.generateTabGroup(using:alertPresenting:)(a1, a3, v3, ObjectType, a2);
}

id EjectStateDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EjectStateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EjectStateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = closure #2 in LocationSectionManager.handleSourceUpdate(_:)(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    specialized Array.remove(at:)(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      specialized Array.remove(at:)(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}