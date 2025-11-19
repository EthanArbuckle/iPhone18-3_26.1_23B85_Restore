@interface CalculateTerm
+ (id)termWithValue:(id)a3 units:(id)a4 result:(id)a5;
- ($71D83D51AB0F57F7CF166351F850C832)decimalValue;
- (BOOL)isCurrency;
- (BOOL)isEqual:(id)a3;
- (CalculateResult)result;
- (CalculateTerm)init;
- (CalculateUnit)primaryUnit;
- (NSString)formattedResult;
- (NSString)formattedUnit;
- (NSString)formattedValue;
- (double)_valueWithoutIrrelevantDecimals;
- (id)emptyNumeratorString;
- (id)formattedResultBeforeNumberingSystem;
- (id)formattedUnitReplacingFirstNumerator:(id)a3;
- (id)formattedValueBeforeNumberingSystem;
- (id)locale;
- (id)numberFormatter;
- (id)replaceNumberingSystem:(id)a3;
- (id)resultContainingNumberFormatter;
- (int64_t)compare:(id)a3;
- (void)_setDecimalValue:(id)a3;
- (void)getMaximumFractionDigits:(unint64_t *)a3 minimumFractionDigits:(unint64_t *)a4;
- (void)getMaximumFractionDigits:(unint64_t *)a3 minimumFractionDigits:(unint64_t *)a4 forValue:(id)a5;
@end

@implementation CalculateTerm

- ($71D83D51AB0F57F7CF166351F850C832)decimalValue
{
  v2 = self->_decimalValue.w[1];
  v3 = self->_decimalValue.w[0];
  result.var0[1] = v2;
  result.var0[0] = v3;
  return result;
}

- (CalculateResult)result
{
  WeakRetained = objc_loadWeakRetained(&self->_result);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CalculateTerm *)self compare:v4]== 0;

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CalculateTerm *)self value];
  v6 = [v4 value];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(CalculateTerm *)self units];
    v9 = [v8 count];
    v10 = [v4 units];
    v11 = [v10 count];
    v7 = v9 < v11 ? -1 : v9 > v11;

    if (!v7)
    {
      v13 = [(CalculateTerm *)self units];
      v7 = [v13 count];

      if (v7)
      {
        v14 = 0;
        while (1)
        {
          v15 = [(CalculateTerm *)self units];
          v16 = [v15 objectAtIndexedSubscript:v14];
          v17 = [v4 units];
          v18 = [v17 objectAtIndexedSubscript:v14];
          v7 = [v16 compare:v18];

          if (v7)
          {
            break;
          }

          ++v14;
          v19 = [(CalculateTerm *)self units];
          v20 = [v19 count];

          if (v14 >= v20)
          {
            v7 = 0;
            break;
          }
        }
      }
    }
  }

  return v7;
}

- (NSString)formattedResult
{
  v3 = [(CalculateTerm *)self formattedResultBeforeNumberingSystem];
  v4 = [(CalculateTerm *)self replaceNumberingSystem:v3];

  return v4;
}

- (id)formattedResultBeforeNumberingSystem
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(CalculateTerm *)self units];
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      if ([v9 isNumerator])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = [(CalculateTerm *)self locale];
    [(CalculateTerm *)self _valueWithoutIrrelevantDecimals];
    v12 = [(CalculateTerm *)self localizedNameForValue:v11 locale:1 retainingFormat:v10 unit:?];
    v13 = [(CalculateTerm *)self formattedValueBeforeNumberingSystem];
    v14 = [v12 stringByReplacingOccurrencesOfString:@"%g" withString:v13];

    v15 = [(CalculateTerm *)self numberFormatter];
    v16 = [v10 exponent];
    if (v16 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -v16;
    }

    WeakRetained = objc_loadWeakRetained(&self->_result);
    v19 = [WeakRetained matchLocale];
    if (v19)
    {
      v2 = objc_loadWeakRetained(&self->_result);
      v20 = [v2 numberingSystem];
    }

    else
    {
      v20 = 0;
    }

    v26 = [v15 formatString:v14 byAppendingExponent:v17 withNumberingSystem:v20];

    if (v19)
    {
    }

    v25 = [(CalculateTerm *)self formattedUnitReplacingFirstNumerator:v26];
  }

  else
  {
LABEL_9:

LABEL_16:
    v10 = [(CalculateTerm *)self formattedUnitBeforeNumberingSystem];
    v11 = [(CalculateTerm *)self formattedValueBeforeNumberingSystem];
    if ([v10 length])
    {
      v21 = [(CalculateTerm *)self emptyNumeratorString];
      v22 = [v10 hasPrefix:v21];
      v23 = MEMORY[0x1E696AEC0];
      if (v22)
      {
        v24 = [v10 substringFromIndex:{objc_msgSend(v21, "length")}];
        v25 = [v23 stringWithFormat:@"%@%@", v11, v24];
      }

      else
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v10];
      }
    }

    else
    {
      v11 = v11;
      v25 = v11;
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)formattedUnitReplacingFirstNumerator:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = [(CalculateTerm *)self locale];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = [(CalculateTerm *)self units];
  v6 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v64 + 1) + 8 * i) isNumerator])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [(CalculateTerm *)self units];
  v13 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  v54 = v12;
  if (v13)
  {
    v14 = v13;
    v59 = 0;
    v15 = 1;
    v57 = *v61;
    v52 = v11;
    v53 = v4;
    do
    {
      v16 = 0;
      v55 = v14;
      do
      {
        if (*v61 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v60 + 1) + 8 * v16);
        v18 = [v17 isNumerator];
        v19 = 1.0;
        if (!v18)
        {
          if ((v10 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          [(CalculateTerm *)self _valueWithoutIrrelevantDecimals];
          v19 = v20;
          goto LABEL_21;
        }

        if (v15)
        {
          goto LABEL_20;
        }

LABEL_21:
        v21 = [v17 name];
        v22 = v18 ^ 1;
        if (!v4)
        {
          v22 = 1;
        }

        if (((v22 | v59) & 1) == 0)
        {
          v31 = v4;
          v59 = 1;
          goto LABEL_45;
        }

        v23 = [v17 exponent];
        v24 = [(CalculateTerm *)self result];
        v25 = [v24 localizeUnit];

        if (!v25)
        {
          v26 = v21;
          v27 = self;
          goto LABEL_30;
        }

        v26 = [(CalculateTerm *)self localizedNameForValue:v49 locale:0 retainingFormat:v17 unit:v19];

        v27 = self;
        if (v23 != 1)
        {
          v28 = [v17 unitInfo];
          v29 = [v28 impliesDivision];

          if (v29)
          {
            v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v26];

            v26 = v30;
LABEL_30:
            v14 = v55;
            goto LABEL_36;
          }
        }

        v14 = v55;
        if ([v26 hasSuffix:@"²"])
        {
          v32 = [v26 stringByReplacingOccurrencesOfString:@"²" withString:&stru_1F418FCD8];

          v23 *= 2;
LABEL_35:
          v26 = v32;
          goto LABEL_36;
        }

        if ([v26 hasSuffix:@"³"])
        {
          v32 = [v26 stringByReplacingOccurrencesOfString:@"³" withString:&stru_1F418FCD8];

          v23 *= 3;
          goto LABEL_35;
        }

LABEL_36:
        v21 = [(CalculateTerm *)v27 numberFormatter];
        if (v23 >= 0)
        {
          v33 = v23;
        }

        else
        {
          v33 = -v23;
        }

        WeakRetained = objc_loadWeakRetained(&v27->_result);
        v35 = [WeakRetained matchLocale];
        v36 = v27;
        v37 = v35;
        if (v35)
        {
          v51 = objc_loadWeakRetained(&v36->_result);
          v50 = [v51 numberingSystem];
          v38 = v50;
        }

        else
        {
          v38 = 0;
        }

        v31 = [v21 formatString:v26 byAppendingExponent:v33 withNumberingSystem:v38];

        if (v37)
        {
        }

        v11 = v52;
        v4 = v53;
        v12 = v54;
LABEL_45:

        if (v18)
        {
          v39 = v11;
        }

        else
        {
          v39 = v12;
        }

        v10 &= v18;
        v15 &= v18 ^ 1;
        [v39 addObject:v31];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v14);
  }

  if ([v11 count] || objc_msgSend(v12, "count"))
  {
    v40 = [(CalculateTerm *)self emptyNumeratorString];
    if ([v11 count])
    {
      v41 = [v11 componentsJoinedByString:@"·"];

      v40 = v41;
      v12 = v54;
    }

    if ([v12 count] == 1)
    {
      v42 = MEMORY[0x1E696AEC0];
      v43 = [v12 objectAtIndexedSubscript:0];
      [v42 stringWithFormat:@"/%@", v43];
    }

    else
    {
      if (![v12 count])
      {
        v45 = &stru_1F418FCD8;
        goto LABEL_59;
      }

      v44 = MEMORY[0x1E696AEC0];
      v43 = [v12 componentsJoinedByString:@"·"];
      [v44 stringWithFormat:@"/(%@)", v43];
    }
    v45 = ;

LABEL_59:
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v40, v45];

    goto LABEL_60;
  }

  v46 = &stru_1F418FCD8;
LABEL_60:

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

- (NSString)formattedUnit
{
  v3 = [(CalculateTerm *)self formattedUnitBeforeNumberingSystem];
  v4 = [(CalculateTerm *)self replaceNumberingSystem:v3];

  return v4;
}

- (CalculateUnit)primaryUnit
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CalculateTerm *)self units];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isNumerator])
        {
          v9 = v8;

          goto LABEL_15;
        }

        if (!v5)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v5 = v5;
  v9 = v5;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)emptyNumeratorString
{
  v2 = [(CalculateTerm *)self numberFormatter];
  v3 = [v2 stringFromNumber:&unk_1F4199CA0];

  return v3;
}

- (double)_valueWithoutIrrelevantDecimals
{
  v44 = 0;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CalculateTerm *)self value];
  v5 = [v3 stringWithFormat:@"%@", v4];
  v6 = [v5 UTF8String];

  v7 = __bid128_from_string(v6, 4, &v44);
  v9 = v8;
  v10 = __bid128_quiet_less(v7, v8, 0, 0x3040000000000000, &v44);
  if (v10)
  {
    v9 &= ~0x8000000000000000;
  }

  if (__bid128_quiet_greater(v7, v9, 0x2710uLL, 0x3040000000000000, &v44))
  {
    v11 = __bid128_add(v7, v9, 0x2710uLL, 0xB040000000000000, 4, &v44);
    v13 = __bid128_fmod(v11, v12, 0x2710uLL, 0x3040000000000000uLL, &v44);
    v7 = __bid128_add(v13, v14, 0x2710uLL, 0x3040000000000000, 4, &v44);
    v9 = v15;
  }

  v43 = 0;
  [(CalculateTerm *)self getMaximumFractionDigits:&v43 minimumFractionDigits:0];
  if (v43)
  {
    if (v43 >= 0)
    {
      v16 = v43;
    }

    else
    {
      v16 = -v43;
    }

    if (v43 < 0)
    {
      v17 = 0xB040000000000000;
    }

    else
    {
      v17 = 0x3040000000000000;
    }

    v18 = bid128_pow_fix(0xAuLL, 0x3040000000000000uLL, v16, v17, 4u, &v44);
    v20 = v19;
    v21 = __bid128_mul(v7, v9, v18, v19, 4u, &v44);
    v23 = __bid128_round_integral_exact(v21, v22, 4, &v44);
    v25 = __bid128_div(v23, v24, v18, v20, 4, &v44);
    v27 = v26;
    v28 = __bid128_div(1uLL, 0x3040000000000000uLL, 0xAuLL, 0x3040000000000000uLL, 4, &v44);
    if (v43 + 2 < 0)
    {
      v30 = (-2 - v43);
    }

    else
    {
      v30 = (v43 + 2);
    }

    if (v43 <= -3)
    {
      v31 = 0xB040000000000000;
    }

    else
    {
      v31 = 0x3040000000000000;
    }

    v32 = bid128_pow_fix(v28, v29, v30, v31, 4u, &v44);
    v34 = v33;
    v35 = __bid128_round_integral_exact(v25, v27, 4, &v44);
    v37 = v36;
    v38 = __bid128_sub(v35, v36, v25, v27, 4, &v44);
    v40 = __bid128_quiet_less_equal(v38, v39 & 0x7FFFFFFFFFFFFFFFLL, v32, v34, &v44);
    if (v40)
    {
      v9 = v37;
    }

    else
    {
      v9 = v27;
    }

    if (v40)
    {
      v7 = v35;
    }

    else
    {
      v7 = v25;
    }
  }

  if (v10)
  {
    v41 = v9 ^ 0x8000000000000000;
  }

  else
  {
    v41 = v9;
  }

  return __bid128_to_binary64(v7, v41, 4, &v44);
}

- (NSString)formattedValue
{
  v3 = [(CalculateTerm *)self formattedValueBeforeNumberingSystem];
  v4 = [(CalculateTerm *)self replaceNumberingSystem:v3];

  return v4;
}

- (id)replaceNumberingSystem:(id)a3
{
  v4 = a3;
  v5 = [(CalculateTerm *)self result];
  if ([v5 matchLocale] && (objc_msgSend(v5, "numberingSystem"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 numberingSystem];
    v8 = [(CalculateTerm *)self locale];
    v9 = [Localize localizeString:v4 withNumberingSystem:v7 locale:v8];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (id)formattedValueBeforeNumberingSystem
{
  v3 = [(CalculateTerm *)self resultContainingNumberFormatter];
  v4 = [(CalculateTerm *)self numberFormatter];
  if (v3)
  {
    v5 = [v3 autoScientificNotation];
    v83 = [v3 scientificNotationFormat];
  }

  else
  {
    v6 = [(CalculateTerm *)self result];

    if (v6)
    {
      v7 = [(CalculateTerm *)self result];
      v5 = [v7 autoScientificNotation];

      v8 = [(CalculateTerm *)self result];
      v83 = [v8 scientificNotationFormat];
    }

    else
    {
      v83 = 1;
      v5 = 1;
    }
  }

  v95 = 0;
  v96 = 0;
  [(CalculateTerm *)self getMaximumFractionDigits:&v96 minimumFractionDigits:&v95];
  if ([v4 usesSignificantDigits])
  {
    v9 = [v4 maximumSignificantDigits];
  }

  else
  {
    v9 = [v4 maximumIntegerDigits];
  }

  v10 = v9;
  if (!v9 || (WeakRetained = objc_loadWeakRetained(&self->_result), v12 = [WeakRetained isSimpleVerticalMath], WeakRetained, v12))
  {
    v10 = 34;
  }

  if (v10 >= 0x22)
  {
    v13 = 34;
  }

  else
  {
    v13 = v10;
  }

  v14 = [(CalculateTerm *)self isCurrency];
  v94 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__CalculateTerm_formattedValueBeforeNumberingSystem__block_invoke;
  aBlock[3] = &unk_1E815C300;
  v86 = v4;
  v92 = v86;
  v93 = v13;
  v15 = _Block_copy(aBlock);
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __52__CalculateTerm_formattedValueBeforeNumberingSystem__block_invoke_2;
  v89[3] = &unk_1E815C328;
  v16 = v15;
  v90 = v16;
  v17 = _Block_copy(v89);
  v18 = [(CalculateTerm *)self decimalValue];
  if (__bid128_quiet_greater(v18, v19, 1uLL, 0xB040000000000000, &v94))
  {
    v20 = [(CalculateTerm *)self decimalValue];
    v5 &= __bid128_quiet_less(v20, v21, 1uLL, 0x3040000000000000, &v94) == 0 || !v14;
  }

  [MEMORY[0x1E696AB90] decimalNumberWithMantissa:1 exponent:0 isNegative:1];
  v23 = v22 = v13;
  v24 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:1 exponent:v22 isNegative:0];
  v85 = [v24 decimalNumberByMultiplyingBy:v23];
  forceScientificNotation = self->_forceScientificNotation;
  if (!forceScientificNotation)
  {
    v27 = [(CalculateTerm *)self value];
    if ([v27 compare:v24] != -1)
    {
      v26 = v86;
LABEL_22:

      goto LABEL_23;
    }

    v78 = v17;
    v80 = v23;
    v33 = [(CalculateTerm *)self value];
    v34 = [v33 compare:v85];

    if (((v34 == 1) & v5) != 1)
    {
      v60 = v34 == 1;
      v17 = v78;
      v23 = v80;
      v26 = v86;
      if (v60)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v27 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:1 exponent:(1 - v22) isNegative:0];
    v35 = [v27 decimalNumberByMultiplyingBy:v80];
    v36 = [(CalculateTerm *)self value];
    if ([v36 compare:v27] == 1)
    {

      v26 = v86;
    }

    else
    {
      v68 = [(CalculateTerm *)self value];
      v69 = [v68 compare:v35];

      v23 = v80;
      v60 = v69 == -1;
      v17 = v78;
      v26 = v86;
      if (!v60)
      {
LABEL_55:

        goto LABEL_22;
      }
    }

    v70 = objc_opt_new();
    v71 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    [v70 setLocale:v71];

    [v70 setNumberStyle:0];
    if ([v26 usesSignificantDigits])
    {
      [v70 setMaximumSignificantDigits:{objc_msgSend(v26, "maximumSignificantDigits")}];
    }

    else
    {
      [v70 setMaximumFractionDigits:v96];
    }

    v72 = [(CalculateTerm *)self value];
    v73 = [v70 stringFromNumber:v72];

    if (([v73 isEqualToString:@"0"] & 1) == 0 && !objc_msgSend(v73, "isEqualToString:", @"-0"))
    {

      v17 = v78;
      v23 = v80;
LABEL_25:
      v30 = [(CalculateTerm *)self value];
      v31 = (*(v16 + 2))(v16, v30, v96, v95);
      goto LABEL_26;
    }

    v17 = v78;
    v23 = v80;
    goto LABEL_55;
  }

  v26 = v86;
  if (![(NSNumber *)forceScientificNotation BOOLValue])
  {
    goto LABEL_25;
  }

LABEL_23:
  if ([v26 numberStyle] == 5)
  {
    goto LABEL_25;
  }

  v28 = [(CalculateTerm *)self decimalValue];
  if (__bid128_quiet_equal(v28, v29, 0, 0x3040000000000000uLL, &v94))
  {
    goto LABEL_25;
  }

  v82 = v24;
  v79 = v17;
  v37 = __bid128_log10(self->_decimalValue.w[0], self->_decimalValue.w[1] & 0x7FFFFFFFFFFFFFFFLL, 4u, &v94);
  v76 = __bid128_round_integral_negative(v37, v38, &v94);
  v77 = v39;
  v40 = bid128_pow_fix(0xAuLL, 0x3040000000000000uLL, v76, v39, 4u, &v94);
  v42 = __bid128_div(self->_decimalValue.w[0], self->_decimalValue.w[1], v40, v41, 4, &v94);
  v44 = v43;
  v30 = [CalculateResult decimalNumberWithDecimal128:v42, v43];
  [MEMORY[0x1E696AD98] numberWithInt:10];
  v75 = v74 = v42;
  v87 = 0;
  v88 = 0;
  v45 = v44;
  [(CalculateTerm *)self getMaximumFractionDigits:&v88 minimumFractionDigits:&v87 forValue:v42, v44];
  v46 = (*(v16 + 2))(v16, v30, v88, v87);
  v47 = [v26 decimalSeparator];
  if (!v47)
  {
    goto LABEL_34;
  }

  v48 = v47;
  [v26 decimalSeparator];
  v50 = v49 = v23;
  v51 = [v46 rangeOfString:v50];

  v23 = v49;
  v26 = v86;

  if (v51 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_34:
    v51 = [v46 length];
  }

  v81 = v23;
  if ((v51 + -__bid128_quiet_less(v74, v45, 0, 0x3040000000000000, &v94)) >= 2)
  {
    v76 = __bid128_add(v76, v77, 1uLL, 0x3040000000000000, 4, &v94);
    v77 = v52;
    v53 = __bid128_div(v74, v45, 0xAuLL, 0x3040000000000000uLL, 4, &v94);
    v55 = [CalculateResult decimalNumberWithDecimal128:v53, v54];

    v56 = (*(v16 + 2))(v16, v55, v88, v87);

    v30 = v55;
    v46 = v56;
  }

  v17 = v79;
  v57 = v75;
  if (v83 == 2)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __bid128_to_int32_int(v76, v77, &v94)];
    v59 = [v86 formatString:v61 usesGroupingSeparator:0];

    v62 = MEMORY[0x1E696AEC0];
    v26 = v86;
    v63 = v79[2](v79, v75);
    v31 = [v62 stringWithFormat:@"%@*%@^%@", v46, v63, v59];
  }

  else
  {
    if (v83)
    {
      v84 = v79[2](v79, v75);
      v64 = __bid128_to_int32_int(v76, v77, &v94);
      v65 = objc_loadWeakRetained(&self->_result);
      if ([v65 matchLocale])
      {
        v66 = objc_loadWeakRetained(&self->_result);
        v67 = [v66 numberingSystem];
        v59 = [v26 formatString:v84 byAppendingExponent:v64 withNumberingSystem:v67];
      }

      else
      {
        v59 = [v26 formatString:v84 byAppendingExponent:v64 withNumberingSystem:0];
      }

      v23 = v81;

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@×%@", v46, v59];
      v57 = v75;
      goto LABEL_58;
    }

    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", __bid128_to_int32_int(v76, v77, &v94)];
    v59 = [v86 formatString:v58 usesGroupingSeparator:0];

    v26 = v86;
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@e%@", v46, v59];
  }

  v23 = v81;
LABEL_58:

  v24 = v82;
LABEL_26:

  return v31;
}

id __52__CalculateTerm_formattedValueBeforeNumberingSystem__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__461;
  v24 = __Block_byref_object_dispose__462;
  v25 = 0;
  v8 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__CalculateTerm_formattedValueBeforeNumberingSystem__block_invoke_559;
  v13[3] = &unk_1E815C2D8;
  v9 = v8;
  v17 = a3;
  v18 = a4;
  v19 = *(a1 + 40);
  v14 = v9;
  v16 = &v20;
  v10 = v7;
  v15 = v10;
  [v9 ignoreChanges:v13];
  v11 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v11;
}

uint64_t __52__CalculateTerm_formattedValueBeforeNumberingSystem__block_invoke_559(uint64_t a1)
{
  v2 = [*(a1 + 32) maximumFractionDigits];
  v3 = [*(a1 + 32) minimumFractionDigits];
  v4 = [*(a1 + 32) maximumIntegerDigits];
  if ([*(a1 + 32) maximumFractionDigits] != *(a1 + 56))
  {
    [*(a1 + 32) setMaximumFractionDigits:?];
  }

  v5 = [*(a1 + 32) minimumFractionDigits];
  if (*(a1 + 64) >= *(a1 + 56))
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 64);
  }

  if (v5 != v6)
  {
    [*(a1 + 32) setMinimumFractionDigits:?];
  }

  v7 = [*(a1 + 32) maximumIntegerDigits];
  v8 = [*(a1 + 32) maximumIntegerDigits];
  v9 = *(a1 + 72);
  if (v8 > v9)
  {
    v9 = v8;
  }

  if (v7 != v9)
  {
    v10 = [*(a1 + 32) maximumIntegerDigits];
    if (v10 <= *(a1 + 72))
    {
      v11 = *(a1 + 72);
    }

    else
    {
      v11 = v10;
    }

    [*(a1 + 32) setMaximumIntegerDigits:v11];
  }

  v12 = [*(a1 + 32) stringFromNumber:*(a1 + 40)];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if ([*(a1 + 32) maximumFractionDigits] != v2)
  {
    [*(a1 + 32) setMaximumFractionDigits:v2];
  }

  if ([*(a1 + 32) minimumFractionDigits] != v3)
  {
    [*(a1 + 32) setMinimumFractionDigits:v3];
  }

  result = [*(a1 + 32) maximumIntegerDigits];
  if (result != v4)
  {
    v16 = *(a1 + 32);

    return [v16 setMaximumIntegerDigits:v4];
  }

  return result;
}

- (void)getMaximumFractionDigits:(unint64_t *)a3 minimumFractionDigits:(unint64_t *)a4 forValue:(id)a5
{
  v5 = a5.var0[1];
  v6 = a5.var0[0];
  v47 = [(CalculateTerm *)self resultContainingNumberFormatter];
  v10 = [(CalculateTerm *)self numberFormatter];
  if (v47)
  {
    v11 = [v47 flexibleFractionDigits];
  }

  else
  {
    v12 = [(CalculateTerm *)self result];

    if (v12)
    {
      v13 = [(CalculateTerm *)self result];
      v11 = [v13 flexibleFractionDigits];
    }

    else
    {
      v11 = 1;
    }
  }

  v14 = [v10 minimumFractionDigits];
  if (-[CalculateTerm isCurrency](self, "isCurrency") && [v10 numberStyle] != 4)
  {
    v46 = a4;
    if (getMaximumFractionDigits_minimumFractionDigits_forValue__onceToken != -1)
    {
      dispatch_once(&getMaximumFractionDigits_minimumFractionDigits_forValue__onceToken, &__block_literal_global_517);
    }

    v16 = [(CalculateTerm *)self units];
    v17 = [v16 objectAtIndexedSubscript:0];
    v18 = [v17 name];

    v19 = [getMaximumFractionDigits_minimumFractionDigits_forValue__decimalPlaces objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = [getMaximumFractionDigits_minimumFractionDigits_forValue__decimalPlaces objectForKeyedSubscript:v18];
      v15 = [v20 integerValue];
      v14 = v15;
    }

    else
    {
      v20 = objc_opt_new();
      [v20 setCurrencyCode:v18];
      [v20 setNumberStyle:2];
      v14 = [v20 maximumFractionDigits];
      v15 = [v20 maximumFractionDigits];
    }

    a4 = v46;
  }

  else
  {
    v15 = -1;
  }

  v48 = 0;
  if (v15 == -1)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    v22 = __bid128_round_integral_zero(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, &v48);
    v24 = v23;
    v25 = __bid128_sub(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v22, v23, 4, &v48);
    v27 = __bid128_log10(v25, v26, 4u, &v48);
    v29 = __bid128_round_integral_negative(v27, v28, &v48);
    v31 = __bid128_add(v29, v30 ^ 0x8000000000000000, 1uLL, 0xB040000000000000, 4, &v48);
    v33 = __bid128_to_int32_int(v31, v32, &v48);
    LODWORD(v34) = v33 & ~(v33 >> 31);
    if (__bid128_quiet_greater(v22, v24, 0, 0x3040000000000000, &v48))
    {
      v35 = __bid128_log10(v22, v24, 4u, &v48);
      v37 = __bid128_round_integral_negative(v35, v36, &v48);
      v39 = ~__bid128_to_int32_int(v37, v38, &v48);
    }

    else
    {
      v39 = 0;
    }

    v40 = [v10 maximumIntegerDigits];
    v41 = (v39 + v40) & ~((v39 + v40) >> 31);
    if (v41 >= v34)
    {
      v34 = v34;
    }

    else
    {
      v34 = v41;
    }

    v15 = [v10 maximumFractionDigits] + v34;
  }

  if (v15 == -1)
  {
    v15 = [v10 maximumFractionDigits];
  }

  WeakRetained = objc_loadWeakRetained(&self->_result);
  v43 = [WeakRetained minimumFractionDigits];

  if (v43)
  {
    v44 = objc_loadWeakRetained(&self->_result);
    v45 = [v44 minimumFractionDigits];

    if (v14 <= v45)
    {
      v14 = v45;
    }
  }

  if (a3)
  {
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = v14;
  }
}

void __73__CalculateTerm_getMaximumFractionDigits_minimumFractionDigits_forValue___block_invoke()
{
  v0 = getMaximumFractionDigits_minimumFractionDigits_forValue__decimalPlaces;
  getMaximumFractionDigits_minimumFractionDigits_forValue__decimalPlaces = &unk_1F419A758;
}

- (void)getMaximumFractionDigits:(unint64_t *)a3 minimumFractionDigits:(unint64_t *)a4
{
  v8 = [(CalculateTerm *)self decimalValue];

  [(CalculateTerm *)self getMaximumFractionDigits:a3 minimumFractionDigits:a4 forValue:v8, v7];
}

- (BOOL)isCurrency
{
  v3 = [(CalculateTerm *)self units];
  if ([v3 count] == 1)
  {
    v4 = [(CalculateTerm *)self units];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 unitType] == 16;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)locale
{
  v2 = [(CalculateTerm *)self result];
  if (!v2)
  {
    v8 = 0;
LABEL_14:
    v7 = +[Localize systemLocale];
    goto LABEL_15;
  }

  v3 = v2;
  do
  {
    v4 = [v3 locales];
    if (v4)
    {
      v5 = [v3 locales];
      if ([v5 count])
      {
        v6 = [v3 locales];
        v7 = [v6 objectAtIndexedSubscript:0];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = [v3 parent];

    if (v7)
    {
      break;
    }

    v3 = v8;
  }

  while (v8);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v7;
}

- (id)numberFormatter
{
  v3 = [(CalculateTerm *)self resultContainingNumberFormatter];
  v4 = v3;
  if (!v3 || ([v3 numberFormatter], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(CalculateTerm *)self locale];
    v5 = [CalculateResult defaultNumberFormatter:v6];
  }

  return v5;
}

- (id)resultContainingNumberFormatter
{
  v2 = [(CalculateTerm *)self result];
  if (v2)
  {
    while (1)
    {
      v3 = [v2 numberFormatter];
      if (v3)
      {
        break;
      }

      v4 = [v2 parent];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v5 = v3;
    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (void)_setDecimalValue:(id)a3
{
  self->_decimalValue = a3;
  v4 = [CalculateResult decimalNumberWithDecimal128:?];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (CalculateTerm)init
{
  v3.receiver = self;
  v3.super_class = CalculateTerm;
  result = [(CalculateTerm *)&v3 init];
  if (result)
  {
    result->_decimalValue.w[0] = 0;
    result->_decimalValue.w[1] = 0x3040000000000000;
  }

  return result;
}

+ (id)termWithValue:(id)a3 units:(id)a4 result:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = *(v10 + 8);
  *(v10 + 8) = v7;
  v12 = v7;

  objc_storeWeak((v10 + 24), v9);
  v13 = *(v10 + 16);
  *(v10 + 16) = v8;

  return v10;
}

@end