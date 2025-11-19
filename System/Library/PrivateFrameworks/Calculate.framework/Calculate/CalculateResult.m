@interface CalculateResult
+ (CalculateResult)resultWithResultTree:(TreeObject *)a3 parseTree:(TreeObject *)a4 locales:(id)a5 numberFormatter:(id)a6 unitsInfo:(id)a7 unitType:(int)a8 unitExponent:(int)a9 expression:(id)a10 isTrivial:(BOOL)a11 isPartialExpression:(BOOL)a12 variableLookups:(id)a13 variableResultTrees:(TreeObject *)a14 variableResultTreesCount:(int)a15 resolvedUnitFormats:(id *)a16 forceResult:(BOOL)a17 assumeDegrees:(BOOL)a18 localizeUnit:(BOOL)a19 unitFormat:(unint64_t)a20 matchLocale:(BOOL)a21 numberingSystem:(id)a22 autoScientificNotation:(BOOL)a23 scientificNotationFormat:(unint64_t)a24 flexibleFractionDigits:(BOOL)a25 isSimpleVerticalMath:(BOOL)a26 minimumFractionDigits:(int)a27 hasStaleCurrencyData:(BOOL)a28;
+ (id)decimalNumberWithDecimal128:(id)a3;
+ (id)defaultNumberFormatter:(id)a3;
+ (void)preferMeasurementSystemsForLocale:(id)a3 preferred:(unint64_t *)a4 fallback:(unint64_t *)a5;
- ($786B50094F6E1A5F953E25B90648E2E3)resolvedUnitFormats;
- (BOOL)isAcceptableConversion:(TreeObject *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNaN;
- (CalculateResult)init;
- (CalculateResult)initWithDouble:(double)a3;
- (CalculateResult)parent;
- (NSString)formattedResult;
- (TreeObject)convertedTree:(id)a3 from:(id)a4 needsUpdate:(BOOL *)a5;
- (id)availableConversions;
- (id)bestConversion;
- (id)conversionsForMetric:(BOOL)a3 US:(BOOL)a4 UK:(BOOL)a5;
- (id)convertedTo:(id)a3 from:(id)a4;
- (id)description;
- (id)graphableFunction2DFor:(id)a3;
- (id)graphableFunction3D;
- (id)ignoringNaN;
- (id)localizedConversions;
- (id)newUnit:(id)a3;
- (id)updateVariables:(id)a3;
- (int64_t)compare:(id)a3;
- (void)_setConversions:(id)a3;
- (void)_setInputValueAndUnit:(id)a3;
- (void)_setTerms:(id)a3;
- (void)dealloc;
- (void)enableMeasurementSystemsForLocale:(id)a3 metric:(BOOL *)a4 US:(BOOL *)a5 UK:(BOOL *)a6;
- (void)setResolvedUnitFormats:(id *)a3;
@end

@implementation CalculateResult

- (void)setResolvedUnitFormats:(id *)a3
{
  *self->_resolvedUnitFormats.formats = *a3->var0;
  v3 = *&a3->var0[2];
  v4 = *&a3->var0[4];
  v5 = *&a3->var0[8];
  *&self->_resolvedUnitFormats.formats[6] = *&a3->var0[6];
  *&self->_resolvedUnitFormats.formats[8] = v5;
  *&self->_resolvedUnitFormats.formats[2] = v3;
  *&self->_resolvedUnitFormats.formats[4] = v4;
  v6 = *&a3->var0[10];
  v7 = *&a3->var0[12];
  v8 = *&a3->var0[14];
  self->_resolvedUnitFormats.formats[16] = a3->var0[16];
  *&self->_resolvedUnitFormats.formats[12] = v7;
  *&self->_resolvedUnitFormats.formats[14] = v8;
  *&self->_resolvedUnitFormats.formats[10] = v6;
}

- ($786B50094F6E1A5F953E25B90648E2E3)resolvedUnitFormats
{
  v3 = *&self[2].var0[2];
  *&retstr->var0[12] = *self[2].var0;
  *&retstr->var0[14] = v3;
  retstr->var0[16] = self[2].var0[4];
  v4 = *&self[1].var0[11];
  *&retstr->var0[4] = *&self[1].var0[9];
  *&retstr->var0[6] = v4;
  v5 = *&self[1].var0[15];
  *&retstr->var0[8] = *&self[1].var0[13];
  *&retstr->var0[10] = v5;
  v6 = *&self[1].var0[7];
  *retstr->var0 = *&self[1].var0[5];
  *&retstr->var0[2] = v6;
  return self;
}

- (CalculateResult)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CalculateResult)initWithDouble:(double)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = CalculateResult;
  v4 = [(CalculateResult *)&v16 init];
  if (v4)
  {
    v15 = 0;
    v5 = __binary64_to_bid128(4, &v15, a3);
    v7 = v6;
    v4->_resultTree = newDecimalNode(v5, v6);
    expression = v4->_expression;
    v4->_expression = &stru_1F418FCD8;

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v10 = [CalculateTerm termWithValue:v9 units:0 result:v4];

    [v10 setDecimalValue:{v5, v7}];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    terms = v4->_terms;
    v4->_terms = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CalculateResult *)self formattedExpression];
  v5 = [(CalculateResult *)self formattedResult];
  v6 = [v3 stringWithFormat:@"%@ = %@", v4, v5];

  return v6;
}

- (id)ignoringNaN
{
  resultTree = self->_resultTree;
  if ((~resultTree->var6 & 0x7C00000000000000) != 0)
  {
    var4 = resultTree->var4;
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isNaN
{
  resultTree = self->_resultTree;
  if ((~resultTree->var6 & 0x7C00000000000000) == 0)
  {
    return 1;
  }

  var4 = resultTree->var4;
  return 0;
}

- (id)graphableFunction3D
{
  v3 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:@"x"];
  v4 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:@"y"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      v7 = [v3 integerValue];
      if (!self->_variableResultTrees[v7])
      {
        if (my_rnd_mode)
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        v9 = __bid128_from_string("0", v8, my_fpsf);
        self->_variableResultTrees[v7] = newDecimalNode(v9, v10);
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __38__CalculateResult_graphableFunction3D__block_invoke_2;
      v37[3] = &unk_1E815C408;
      v37[4] = self;
      v38 = v7;
      v11 = v37;
    }

    else if (v4)
    {
      v23 = [v4 integerValue];
      if (!self->_variableResultTrees[v23])
      {
        if (my_rnd_mode)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        v25 = __bid128_from_string("0", v24, my_fpsf);
        self->_variableResultTrees[v23] = newDecimalNode(v25, v26);
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __38__CalculateResult_graphableFunction3D__block_invoke_3;
      v35[3] = &unk_1E815C408;
      v35[4] = self;
      v36 = v23;
      v11 = v35;
    }

    else
    {
      resultTree = self->_resultTree;
      var0 = resultTree->var0;
      if (resultTree->var0 == 1)
      {
        var4 = resultTree->var4;
      }

      else if (var0 == 2)
      {
        if (my_rnd_mode)
        {
          v33 = 4;
        }

        else
        {
          v33 = 0;
        }

        var4 = __bid128_to_binary64(resultTree->var5.var0[1], resultTree->var6, v33, my_fpsf);
      }

      else
      {
        var4 = 0.0;
        if (var0 == 4)
        {
          v30 = resultTree->var7[0];
          v31 = rint(1.79769313e308);
          v32 = rint(2.22507386e-308) < v30 && v31 > v30;
          var4 = v30;
          if (!v32)
          {
            var4 = NAN;
          }
        }
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __38__CalculateResult_graphableFunction3D__block_invoke_4;
      v34[3] = &__block_descriptor_40_e11_d24__0d8d16l;
      *&v34[4] = var4;
      v11 = v34;
    }
  }

  else
  {
    v12 = [v3 integerValue];
    v13 = v12;
    if (!self->_variableResultTrees[v12])
    {
      if (my_rnd_mode)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v15 = __bid128_from_string("0", v14, my_fpsf);
      self->_variableResultTrees[v13] = newDecimalNode(v15, v16);
    }

    v17 = [v5 integerValue];
    if (!self->_variableResultTrees[v17])
    {
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      v19 = __bid128_from_string("1", v18, my_fpsf);
      self->_variableResultTrees[v17] = newDecimalNode(v19, v20);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CalculateResult_graphableFunction3D__block_invoke;
    aBlock[3] = &unk_1E815C3E0;
    aBlock[4] = self;
    v40 = v13;
    v41 = v17;
    v11 = aBlock;
  }

  v21 = _Block_copy(v11);

  return v21;
}

void __38__CalculateResult_graphableFunction3D__block_invoke(uint64_t a1, double a2, double a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 160);
  v4 = *(v3 + 8 * *(a1 + 40));
  v5 = *(v3 + 8 * *(a1 + 44));
  *v4 = 1;
  *(v4 + 32) = a2;
  *(v4 + 204) = 0;
  *v5 = 1;
  *(v5 + 32) = a3;
  *(v5 + 204) = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = v6[20];
  g_variableResultTreesCount = *(v6 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v6 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v9[0]) = 2;
  HIDWORD(v19) = 0;
  evaluateTree(v6[15], v9);

  +[Calculate _unlock];
  if (LODWORD(v9[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    __bid128_to_binary64(v10, *(&v10 + 1), v7, my_fpsf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __38__CalculateResult_graphableFunction3D__block_invoke_2(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v2 = 1;
  *(v2 + 32) = a2;
  *(v2 + 204) = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = v3[20];
  g_variableResultTreesCount = *(v3 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v3 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v6[0]) = 2;
  HIDWORD(v16) = 0;
  evaluateTree(v3[15], v6);

  +[Calculate _unlock];
  if (LODWORD(v6[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    __bid128_to_binary64(v7, *(&v7 + 1), v4, my_fpsf);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __38__CalculateResult_graphableFunction3D__block_invoke_3(uint64_t a1, double a2, double a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v3 = 1;
  *(v3 + 32) = a3;
  *(v3 + 204) = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  v4 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = v4[20];
  g_variableResultTreesCount = *(v4 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v4 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v7[0]) = 2;
  HIDWORD(v17) = 0;
  evaluateTree(v4[15], v7);

  +[Calculate _unlock];
  if (LODWORD(v7[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    __bid128_to_binary64(v8, *(&v8 + 1), v5, my_fpsf);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)graphableFunction2DFor:(id)a3
{
  variableLookups = self->_variableLookups;
  v5 = [a3 lowercaseString];
  v6 = [(NSMutableDictionary *)variableLookups objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
    if (!self->_variableResultTrees[v7])
    {
      if (my_rnd_mode)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      v9 = __bid128_from_string("0", v8, my_fpsf);
      self->_variableResultTrees[v7] = newDecimalNode(v9, v10);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__CalculateResult_graphableFunction2DFor___block_invoke_2;
    v21[3] = &unk_1E815C3B8;
    v21[4] = self;
    v22 = v7;
    v11 = v21;
  }

  else
  {
    resultTree = self->_resultTree;
    var0 = resultTree->var0;
    if (resultTree->var0 == 1)
    {
      var4 = resultTree->var4;
    }

    else if (var0 == 2)
    {
      if (my_rnd_mode)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      var4 = __bid128_to_binary64(resultTree->var5.var0[1], resultTree->var6, v18, my_fpsf);
    }

    else
    {
      var4 = 0.0;
      if (var0 == 4)
      {
        v15 = resultTree->var7[0];
        v16 = rint(1.79769313e308);
        v17 = rint(2.22507386e-308) < v15 && v16 > v15;
        var4 = v15;
        if (!v17)
        {
          var4 = NAN;
        }
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__CalculateResult_graphableFunction2DFor___block_invoke;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    *&aBlock[4] = var4;
    v11 = aBlock;
  }

  v19 = _Block_copy(v11);

  return v19;
}

void __42__CalculateResult_graphableFunction2DFor___block_invoke_2(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 160) + 8 * *(a1 + 40));
  *v2 = 1;
  *(v2 + 32) = a2;
  *(v2 + 204) = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = *(a1 + 32);
  [Calculate _lock:0];
  g_variableResultTrees = v3[20];
  g_variableResultTreesCount = *(v3 + 8);
  g_forceResult = 1;
  g_assumeDegrees = *(v3 + 11);
  g_PreferredType = 2;
  g_ErrorCode = 0;
  LODWORD(v6[0]) = 2;
  HIDWORD(v16) = 0;
  evaluateTree(v3[15], v6);

  +[Calculate _unlock];
  if (LODWORD(v6[0]) == 2)
  {
    if (my_rnd_mode)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    __bid128_to_binary64(v7, *(&v7 + 1), v4, my_fpsf);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)updateVariables:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_terms count]== 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_variableLookups objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = [v5 objectForKeyedSubscript:v10];
            v13 = [MEMORY[0x1E695DFB0] null];

            if (v12 == v13)
            {
              v15 = 0;
            }

            else
            {
              v14 = [v5 objectForKeyedSubscript:v10];
              v15 = [v14 resultTree];
            }

            v16 = copyTree(v15);
            variableResultTrees = self->_variableResultTrees;
            variableResultTrees[[v11 integerValue]] = v16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v40 objects:v57 count:16];
      }

      while (v7);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v18 = self;
    +[Calculate _lock];
    g_variableResultTrees = v18->_variableResultTrees;
    g_variableResultTreesCount = v18->_variableResultTreesCount;
    g_forceResult = 1;
    g_assumeDegrees = v18->_assumeDegrees;
    g_PreferredType = 2;
    g_ErrorCode = 0;
    LODWORD(v44) = 2;
    HIDWORD(v56) = 0;
    evaluateTree(v18->_parseTree, &v44);
    v19 = HIDWORD(v56);
    +[Calculate _unlock];

    if (v19)
    {
      v20 = [CalculateError errorWithResultError:v19];
    }

    else
    {
      v20 = 0;
    }

    v4 = v39;
    if (v44 == 1)
    {
      if (my_rnd_mode)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      v21 = __binary64_to_bid128(v23, my_fpsf, *&v46);
      v22 = v24;
    }

    else if (v44 == 2)
    {
      v22 = v47.var0[1];
      v21 = v47.var0[0];
    }

    else
    {
      if (v44 == 4)
      {
        v21 = v48;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0x3040000000000000;
    }

    v25 = [CalculateResult decimalNumberWithDecimal128:v21, v22];
    resultTree = v18->_resultTree;
    v27 = v45;
    v28 = v46;
    v29 = v48;
    *(&resultTree->var5 + 8) = v47;
    *&resultTree->var7[0].unitID = v29;
    *&resultTree->var2 = v27;
    *&resultTree->var4 = v28;
    v30 = v49;
    v31 = v50;
    v32 = v52;
    *&resultTree->var7[6].unitID = v51;
    *&resultTree->var7[8].unitID = v32;
    *&resultTree->var7[2].unitID = v30;
    *&resultTree->var7[4].unitID = v31;
    v33 = v53;
    v34 = v54;
    v35 = v56;
    *&resultTree->var7[14].unitID = v55;
    *&resultTree->var8 = v35;
    *&resultTree->var7[10].unitID = v33;
    *&resultTree->var7[12].unitID = v34;
    *&resultTree->var0 = v44;
    v36 = [(NSArray *)self->_terms firstObject];
    [v36 setValue:v25];
    [v36 setDecimalValue:{v21, v22}];
  }

  else
  {
    v20 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)convertedTo:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[CalculateResult resultTree](self, "resultTree") || ((v8 = -[CalculateResult unitType](self, "unitType"), !v7) ? (v9 = [v6 unitType]) : (v9 = 0), v8 != v9))
  {
    v13 = 0;
    goto LABEL_23;
  }

  if ([(CalculateResult *)self synchronous]&& [(CalculateResult *)self unitType]== 16)
  {
    if (+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
    {
      v10 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
      v11 = [v10 needsRefresh];

      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = +[_TtC9Calculate22StocksKitCurrencyCache shared];
      [v12 refreshSynchronouslyWithTimeout:6.0];
    }

    else
    {
      v14 = +[CalculateCurrencyCache shared];
      [v14 setTimeout:6.0];

      v12 = +[CalculateCurrencyCache shared];
      [v12 refreshIfNeeded];
    }
  }

LABEL_14:
  v88[0] = 0;
  v15 = [(CalculateResult *)self convertedTree:v6 from:v7 needsUpdate:v88];
  if (v15)
  {
    v16 = v15;
    v17 = copyTree([(CalculateResult *)self resultTree]);
    if (v17)
    {
      v18 = v17;
      v19 = [v6 unitInfo];
      v20 = [v19 unitType];

      numberFormatter = self->_numberFormatter;
      locales = self->_locales;
      v23 = [(CalculateResult *)self unitsInfo];
      isPartialExpression = self->_isPartialExpression;
      assumeDegrees = self->_assumeDegrees;
      localizeUnit = self->_localizeUnit;
      matchLocale = self->_matchLocale;
      numberingSystem = self->_numberingSystem;
      autoScientificNotation = self->_autoScientificNotation;
      scientificNotationFormat = self->_scientificNotationFormat;
      unitFormat = self->_unitFormat;
      flexibleFractionDigits = self->_flexibleFractionDigits;
      isSimpleVerticalMath = self->_isSimpleVerticalMath;
      minimumFractionDigits = self->_minimumFractionDigits;
      unitExponent = self->_unitExponent;
      v36 = *&self->_resolvedUnitFormats.formats[14];
      v85 = *&self->_resolvedUnitFormats.formats[12];
      v86 = v36;
      v87 = self->_resolvedUnitFormats.formats[16];
      v37 = *&self->_resolvedUnitFormats.formats[6];
      v81 = *&self->_resolvedUnitFormats.formats[4];
      v82 = v37;
      v38 = *&self->_resolvedUnitFormats.formats[10];
      v83 = *&self->_resolvedUnitFormats.formats[8];
      v84 = v38;
      v39 = *&self->_resolvedUnitFormats.formats[2];
      v79 = *self->_resolvedUnitFormats.formats;
      v80 = v39;
      LOBYTE(v77) = v88[0];
      HIDWORD(v75) = minimumFractionDigits;
      BYTE1(v75) = isSimpleVerticalMath;
      LOBYTE(v75) = flexibleFractionDigits;
      LOBYTE(v73) = autoScientificNotation;
      LOBYTE(v71) = matchLocale;
      BYTE2(v69) = localizeUnit;
      BYTE1(v69) = assumeDegrees;
      LOBYTE(v69) = 0;
      LODWORD(v67) = 0;
      BYTE1(v65) = isPartialExpression;
      LOBYTE(v65) = 0;
      LODWORD(v63) = unitExponent;
      v13 = [CalculateResult resultWithResultTree:"resultWithResultTree:parseTree:locales:numberFormatter:unitsInfo:unitType:unitExponent:expression:isTrivial:isPartialExpression:variableLookups:variableResultTrees:variableResultTreesCount:resolvedUnitFormats:forceResult:assumeDegrees:localizeUnit:unitFormat:matchLocale:numberingSystem:autoScientificNotation:scientificNotationFormat:flexibleFractionDigits:isSimpleVerticalMath:minimumFractionDigits:hasStaleCurrencyData:" parseTree:v16 locales:0 numberFormatter:locales unitsInfo:numberFormatter unitType:v23 unitExponent:v20 expression:v63 isTrivial:&stru_1F418FCD8 isPartialExpression:v65 variableLookups:0 variableResultTrees:0 variableResultTreesCount:v67 resolvedUnitFormats:&v79 forceResult:v69 assumeDegrees:unitFormat localizeUnit:v71 unitFormat:numberingSystem matchLocale:v73 numberingSystem:scientificNotationFormat autoScientificNotation:v75 scientificNotationFormat:v77 flexibleFractionDigits:? isSimpleVerticalMath:? minimumFractionDigits:? hasStaleCurrencyData:?];

      if (v13)
      {
        v41 = self->_numberFormatter;
        v40 = self->_locales;
        unitsInfo = self->_unitsInfo;
        v43 = *&self->_isTrivial;
        v44 = self->_assumeDegrees;
        v45 = self->_localizeUnit;
        v46 = self->_matchLocale;
        v47 = self->_numberingSystem;
        v48 = self->_autoScientificNotation;
        v50 = self->_scientificNotationFormat;
        v49 = self->_unitFormat;
        v51 = self->_flexibleFractionDigits;
        v52 = self->_isSimpleVerticalMath;
        v54 = self->_minimumFractionDigits;
        v53 = self->_unitExponent;
        v55 = *&self->_resolvedUnitFormats.formats[14];
        v85 = *&self->_resolvedUnitFormats.formats[12];
        v86 = v55;
        v87 = self->_resolvedUnitFormats.formats[16];
        v56 = *&self->_resolvedUnitFormats.formats[6];
        v81 = *&self->_resolvedUnitFormats.formats[4];
        v82 = v56;
        v57 = *&self->_resolvedUnitFormats.formats[10];
        v83 = *&self->_resolvedUnitFormats.formats[8];
        v84 = v57;
        v58 = *&self->_resolvedUnitFormats.formats[2];
        v79 = *self->_resolvedUnitFormats.formats;
        v80 = v58;
        LOBYTE(v78) = v88[0];
        HIDWORD(v76) = v54;
        BYTE1(v76) = v52;
        LOBYTE(v76) = v51;
        LOBYTE(v74) = v48;
        LOBYTE(v72) = v46;
        BYTE2(v70) = v45;
        BYTE1(v70) = v44;
        LOBYTE(v70) = 0;
        LODWORD(v68) = 0;
        LOWORD(v66) = v43;
        LODWORD(v64) = v53;
        v59 = [CalculateResult resultWithResultTree:"resultWithResultTree:parseTree:locales:numberFormatter:unitsInfo:unitType:unitExponent:expression:isTrivial:isPartialExpression:variableLookups:variableResultTrees:variableResultTreesCount:resolvedUnitFormats:forceResult:assumeDegrees:localizeUnit:unitFormat:matchLocale:numberingSystem:autoScientificNotation:scientificNotationFormat:flexibleFractionDigits:isSimpleVerticalMath:minimumFractionDigits:hasStaleCurrencyData:" parseTree:v18 locales:0 numberFormatter:v40 unitsInfo:v41 unitType:unitsInfo unitExponent:v20 expression:v64 isTrivial:&stru_1F418FCD8 isPartialExpression:v66 variableLookups:0 variableResultTrees:0 variableResultTreesCount:v68 resolvedUnitFormats:&v79 forceResult:v70 assumeDegrees:v49 localizeUnit:v72 unitFormat:v47 matchLocale:v74 numberingSystem:v50 autoScientificNotation:v76 scientificNotationFormat:v78 flexibleFractionDigits:? isSimpleVerticalMath:? minimumFractionDigits:? hasStaleCurrencyData:?];
        v60 = v59;
        if (v59)
        {
          [v59 setParent:v13];
          [v13 _setInputValueAndUnit:v60];
          [v13 setParent:self];
          v61 = [v60 formattedResult];
          [v13 _setExpression:v61];
        }

        else
        {

          freeTree(v18);
          v13 = 0;
        }

        goto LABEL_22;
      }

      freeTree(v18);
    }

    freeTree(v16);
  }

  v13 = 0;
  v60 = 0;
LABEL_22:

LABEL_23:

  return v13;
}

- (TreeObject)convertedTree:(id)a3 from:(id)a4 needsUpdate:(BOOL *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if ([(CalculateResult *)self resultTree])
  {
    v10 = [(CalculateResult *)self unitType];
    v11 = v9 ? 0 : [v8 unitType];
    if (v10 == v11)
    {
      +[Calculate _lock];
      v12 = [v8 unitInfo];
      v13 = newUnitIDNode([v12 unitID]);

      if (v13)
      {
        if ([v8 exponent] == 1)
        {
          v14 = v13;
        }

        else
        {
          snprintf(__str, 0x28uLL, "%d", [v8 exponent]);
          if (my_rnd_mode)
          {
            v15 = 4;
          }

          else
          {
            v15 = 0;
          }

          v16 = __bid128_from_string(__str, v15, my_fpsf);
          v18 = newDecimalNode(v16, v17);
          if (!v18)
          {
LABEL_26:
            v14 = 0;
            goto LABEL_39;
          }

          v19 = v18;
          v14 = newTreeObject(functionPow, v13, v18);
          if (!v14)
          {
            freeTree(v19);
            goto LABEL_39;
          }
        }

        v20 = [(CalculateResult *)self resultTree];
        v21 = v20;
        if (v9)
        {
          v22 = 76;
          while (!*(&v20->var0 + v22))
          {
            v22 += 8;
            if (v22 == 204)
            {
              v23 = [v9 unitInfo];
              v24 = [v23 unitType];

              if (v24 <= 0xF)
              {
                v25 = copyTree(v21);
                if (v25)
                {
                  v13 = v25;
                  *(v25 + 201) = 1;
                  v26 = [v9 unitInfo];
                  v27 = &v13[v24];
                  *(v27 + 18) = [v26 unitID];

                  *(v27 + 19) = [v9 exponent];
                  v21 = v13;
                  goto LABEL_28;
                }
              }

              break;
            }
          }

          v13 = v14;
          goto LABEL_26;
        }

        v13 = 0;
LABEL_28:
        v28 = newTreeObject(functionConvert, v21, v14);
        if (v28)
        {
          v29 = v28;
          v30 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
          if (v30)
          {
            v14 = v30;
            evaluateTree(v29, v30);
            v29[2] = 0;
            freeTree(v29);
            if (a5 && g_currencyNeedsRefresh == 1)
            {
              *a5 = g_currencyNeedsRefresh;
            }

            if (!*(v14 + 51))
            {
              if (!v9)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else
          {
            v14 = v29;
          }
        }

        freeTree(v14);
        v14 = 0;
        if (v13)
        {
LABEL_39:
          freeTree(v13);
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_40:
      +[Calculate _unlock];
      goto LABEL_41;
    }
  }

  v14 = 0;
LABEL_41:

  v31 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)localizedConversions
{
  v2 = self;
  v86 = *MEMORY[0x1E69E9840];
  v3 = [(CalculateResult *)self typeInfo];
  if (!v3)
  {
    goto LABEL_38;
  }

  v4 = v3;
  v5 = [(CalculateResult *)v2 typeInfo];
  v6 = [v5 units];

  if (v6)
  {
    v7 = [(CalculateResult *)v2 locales];
    v8 = v7;
    if (!v7 || ![v7 count])
    {
      v9 = +[Localize systemLocales];

      v8 = v9;
    }

    v10 = [(NSNumberFormatter *)v2->_numberFormatter locale];
    v11 = [Localize locales:v8 withDefault:v10];

    if ([(CalculateResult *)v2 unitType]== 16)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__CalculateResult_localizedConversions__block_invoke;
      block[3] = &unk_1E815C940;
      block[4] = v2;
      if (localizedConversions_onceToken != -1)
      {
        dispatch_once(&localizedConversions_onceToken, block);
      }

      v12 = objc_opt_new();
      v13 = objc_opt_new();
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__CalculateResult_localizedConversions__block_invoke_2;
      aBlock[3] = &unk_1E815C370;
      v56 = v12;
      v79 = v56;
      v55 = v13;
      v80 = v55;
      v14 = _Block_copy(aBlock);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v57 = v11;
      obj = v11;
      v15 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v75;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v75 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v74 + 1) + 8 * i);
            v20 = [(CalculateResult *)v2 unitsInfo];
            v21 = [v19 currencyCode];
            v22 = [v20 objectForKeyedSubscript:v21];

            if (v22)
            {
              v23 = [v19 currencyCode];
              v14[2](v14, v23);
            }
          }

          v16 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v16);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v24 = [&unk_1F419A0A8 countByEnumeratingWithState:&v70 objects:v84 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v71;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v71 != v26)
            {
              objc_enumerationMutation(&unk_1F419A0A8);
            }

            v14[2](v14, *(*(&v70 + 1) + 8 * j));
          }

          v25 = [&unk_1F419A0A8 countByEnumeratingWithState:&v70 objects:v84 count:16];
        }

        while (v25);
      }

      v58 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v28 = v55;
      v29 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v67;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v66 + 1) + 8 * k);
            v34 = [(CalculateResult *)v2 unitsInfo];
            v35 = [v34 objectForKeyedSubscript:v33];

            if (v35)
            {
              v36 = [v35 unitID];
              if (v36 != [(CalculateResult *)v2 singleUnitID])
              {
                v37 = [(CalculateResult *)v2 inputValueAndUnit];
                if (!v37)
                {
                  goto LABEL_34;
                }

                v38 = v37;
                obja = [v35 unitID];
                [(CalculateResult *)v2 inputValueAndUnit];
                v39 = v14;
                v40 = v30;
                v41 = v2;
                v42 = v31;
                v44 = v43 = v28;
                v45 = [v44 singleUnitID];

                v28 = v43;
                v31 = v42;
                v2 = v41;
                v30 = v40;
                v14 = v39;

                if (obja != v45)
                {
LABEL_34:
                  v46 = [(CalculateResult *)v2 newUnit:v35];
                  [v58 addObject:v46];
                }
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
        }

        while (v30);
      }

      v11 = v57;
    }

    else
    {
      v65 = 0;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v47 = v11;
      v48 = [v47 countByEnumeratingWithState:&v61 objects:v82 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v62;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v62 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [(CalculateResult *)v2 enableMeasurementSystemsForLocale:*(*(&v61 + 1) + 8 * m) metric:0 US:&v65 + 1 UK:&v65];
          }

          v49 = [v47 countByEnumeratingWithState:&v61 objects:v82 count:16];
        }

        while (v49);
      }

      v52 = [(CalculateResult *)v2 conversionsForMetric:1 US:HIBYTE(v65) UK:v65];
      v58 = [v52 copy];
    }
  }

  else
  {
LABEL_38:
    v58 = MEMORY[0x1E695E0F0];
  }

  v53 = *MEMORY[0x1E69E9840];

  return v58;
}

void __39__CalculateResult_localizedConversions__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = localizedConversions_allCurrencies;
  localizedConversions_allCurrencies = v2;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) typeInfo];
  v5 = [v4 units];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = localizedConversions_allCurrencies;
        v11 = [*(*(&v13 + 1) + 8 * v9) name];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __39__CalculateResult_localizedConversions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)availableConversions
{
  v3 = [(CalculateResult *)self typeInfo];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(CalculateResult *)self typeInfo];
  v6 = [v5 units];

  if (v6)
  {
    v7 = [(CalculateResult *)self conversionsForMetric:1 US:1 UK:1];
    v8 = [v7 copy];
  }

  else
  {
LABEL_4:
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)bestConversion
{
  v2 = self;
  v165 = *MEMORY[0x1E69E9840];
  if (!-[CalculateResult resultTree](self, "resultTree") || (-[CalculateResult typeInfo](v2, "typeInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 units], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v6 = 0;
    goto LABEL_6;
  }

  if ([(CalculateResult *)v2 unitType]== 16)
  {
    v5 = [(CalculateResult *)v2 localizedConversions];
    v6 = [v5 objectAtIndexedSubscript:0];

    goto LABEL_6;
  }

  if ([(CalculateResult *)v2 singleUnitID])
  {
    v9 = [(CalculateResult *)v2 unitsInfo];
    v10 = [v9 objectAtIndexedSubscript:{-[CalculateResult singleUnitID](v2, "singleUnitID")}];
    v11 = [v10 bestEquivalent];

    if (v11)
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      obj = [(CalculateResult *)v2 localizedConversions];
      v12 = [obj countByEnumeratingWithState:&v157 objects:v164 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v158;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v158 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v157 + 1) + 8 * i);
            v17 = [v16 unitInfo];
            v18 = [v17 unitID];
            v19 = [v11 unitID];

            if (v18 == v19)
            {
              v6 = v16;

              goto LABEL_6;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v157 objects:v164 count:16];
        }

        while (v13);
      }
    }
  }

  v20 = [(CalculateResult *)v2 locales];
  v21 = v20;
  if (!v20 || ![v20 count])
  {
    v22 = +[Localize systemLocales];

    v21 = v22;
  }

  v23 = [(NSNumberFormatter *)v2->_numberFormatter locale];
  v24 = [Localize locales:v21 withDefault:v23];

  v156 = 0;
  v155 = 0;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v151 objects:v163 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v152;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v152 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(CalculateResult *)v2 enableMeasurementSystemsForLocale:*(*(&v151 + 1) + 8 * j) metric:&v156 + 1 US:&v156 UK:&v155];
      }

      v27 = [v25 countByEnumeratingWithState:&v151 objects:v163 count:16];
    }

    while (v27);
  }

  [(CalculateResult *)v2 conversionsForMetric:HIBYTE(v156) US:v156 UK:v155];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v30 = v150 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v147 objects:v162 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v148;
    while (2)
    {
      for (k = 0; k != v32; ++k)
      {
        v35 = v25;
        if (*v148 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = [*(*(&v147 + 1) + 8 * k) unitInfo];
        v37 = [v36 doNotSuggest];

        if (!v37)
        {
          v38 = 0;
          v25 = v35;
          goto LABEL_41;
        }

        v25 = v35;
      }

      v32 = [v30 countByEnumeratingWithState:&v147 objects:v162 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v38 = 1;
LABEL_41:

  v39 = [(CalculateResult *)v2 resultTree];
  v40 = *v39;
  if (*v39 == 1)
  {
    v41 = *(v39 + 32);
    if (my_rnd_mode)
    {
      v42 = 4;
    }

    else
    {
      v42 = 0;
    }

    v43 = __binary64_to_bid128(v42, my_fpsf, v41);
    v134 = v44;
    v135 = v43;
  }

  else if (v40 == 2)
  {
    v134 = *(v39 + 56);
    v135 = *(v39 + 48);
  }

  else
  {
    if (v40 == 4)
    {
      v135 = *(v39 + 64);
    }

    else
    {
      v135 = 0;
    }

    v134 = 0x3040000000000000;
  }

  v145 = 0;
  v146 = 0;
  v45 = [v25 firstObject];
  [CalculateResult preferMeasurementSystemsForLocale:v45 preferred:&v146 fallback:&v145];

  v46 = [(CalculateResult *)v2 inputValueAndUnit];
  if (v46)
  {
    v47 = [(CalculateResult *)v2 inputValueAndUnit];
    v48 = [v47 singleUnitID];
  }

  else
  {
    v48 = [(CalculateResult *)v2 singleUnitID];
  }

  if (v48)
  {
    v49 = [(CalculateResult *)v2 unitsInfo];
    v50 = [v49 objectAtIndexedSubscript:v48];
    v51 = [v50 measurementSystem];

    v137 = v146 != v51;
    if (v145)
    {
      v52 = v145 == v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = !v52;
  }

  else
  {
    v53 = 1;
    v137 = 1;
  }

  v136 = v53;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v54 = v30;
  v55 = [v54 countByEnumeratingWithState:&v141 objects:v161 count:16];
  if (!v55)
  {

    v108 = 0;
    goto LABEL_130;
  }

  v56 = v55;
  v109 = v25;
  v126 = 0;
  v127 = 0;
  v112 = 0;
  v113 = 0;
  v120 = 0;
  v121 = 0;
  v133 = 0;
  v116 = 0;
  v117 = 0;
  v128 = 0;
  v129 = 0;
  v114 = 0;
  v115 = 0;
  v122 = 0;
  v123 = 0;
  v57 = *v142;
  v124 = 0x3040000000000000;
  v125 = 0x3040000000000000;
  v110 = 0x3040000000000000;
  v111 = 0x3040000000000000;
  v118 = 0x3040000000000000;
  v119 = 0x3040000000000000;
  v132 = v38;
  v130 = *v142;
  v131 = v54;
  do
  {
    v58 = 0;
    obja = v56;
    do
    {
      if (*v142 != v57)
      {
        objc_enumerationMutation(v54);
      }

      v59 = *(*(&v141 + 1) + 8 * v58);
      if ((v38 & 1) != 0 || ([*(*(&v141 + 1) + 8 * v58) unitInfo], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "doNotSuggest"), v60, (v61 & 1) == 0))
      {
        v62 = [(CalculateResult *)v2 convertedTree:v59 needsUpdate:0, v109];
        if (v62)
        {
          v63 = v62;
          v140 = 0;
          v64 = *v62;
          if (*v62 == 1)
          {
            v67 = *(v62 + 32);
            if (my_rnd_mode)
            {
              v68 = 4;
            }

            else
            {
              v68 = 0;
            }

            v65 = __binary64_to_bid128(v68, my_fpsf, v67);
            v66 = v69;
          }

          else if (v64 == 2)
          {
            v65 = *(v62 + 48);
            v66 = *(v62 + 56);
          }

          else
          {
            if (v64 == 4)
            {
              v65 = *(v62 + 64);
            }

            else
            {
              v65 = 0;
            }

            v66 = 0x3040000000000000;
          }

          v70 = __bid128_sub(v135, v134, v65, v66, 4, &v140);
          v72 = v71 & 0x7FFFFFFFFFFFFFFFLL;
          if ([(CalculateResult *)v2 isAcceptableConversion:v63])
          {
            if ((v133 & 0x100000000) == 0 || __bid128_quiet_less(v70, v72, v127, v125, &v140))
            {
              v73 = v59;

              v127 = v70;
              v128 = v73;
              v125 = v72;
            }

            if (v137)
            {
              v74 = [v59 unitInfo];
              v75 = [v74 measurementSystem];
              v76 = v146;

              if (v75 == v76)
              {
                if ((v117 & 0x100000000) != 0 && !__bid128_quiet_less(v70, v72, v113, v111, &v140))
                {
                  BYTE4(v117) = 1;
                }

                else
                {
                  v77 = v59;

                  BYTE4(v117) = 1;
                  v113 = v70;
                  v114 = v77;
                  v111 = v72;
                }
              }
            }

            if (v145)
            {
              v78 = v136;
            }

            else
            {
              v78 = 0;
            }

            if (v78 == 1 && ([v59 unitInfo], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "measurementSystem"), v81 = v145, v79, v80 == v81))
            {
              if ((v116 & 0x100000000) != 0)
              {
                v82 = __bid128_quiet_less(v70, v72, v121, v119, &v140);
                BYTE4(v133) = 1;
                v84 = v122;
                v83 = v123;
                v85 = v70;
                v86 = v72;
                v70 = v120;
                v72 = v118;
                BYTE4(v116) = 1;
                v87 = v59;
                if (!v82)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                BYTE4(v133) = 1;
                v84 = v122;
                v83 = v123;
                v85 = v70;
                v86 = v72;
                v70 = v120;
                v72 = v118;
                BYTE4(v116) = 1;
                v87 = v59;
              }

LABEL_120:
              v123 = v83;
              v98 = v2;
              v99 = v86;
              v100 = v59;

              v120 = v70;
              v121 = v85;
              v118 = v72;
              v119 = v99;
              v2 = v98;
              v122 = v87;
            }

            else
            {
              BYTE4(v133) = 1;
            }
          }

          else
          {
            if ((v133 & 1) == 0 || __bid128_quiet_less(v70, v72, v126, v124, &v140))
            {
              v88 = v59;

              v126 = v70;
              v124 = v72;
              v129 = v88;
            }

            if (v137)
            {
              v89 = [v59 unitInfo];
              v90 = [v89 measurementSystem];
              v91 = v146;

              if (v90 == v91)
              {
                if ((v117 & 1) != 0 && !__bid128_quiet_less(v70, v72, v112, v110, &v140))
                {
                  LOBYTE(v117) = 1;
                }

                else
                {
                  v92 = v59;

                  LOBYTE(v117) = 1;
                  v112 = v70;
                  v110 = v72;
                  v115 = v92;
                }
              }
            }

            if (v145)
            {
              v93 = v136;
            }

            else
            {
              v93 = 0;
            }

            if (v93 == 1)
            {
              v94 = [v59 unitInfo];
              v95 = [v94 measurementSystem];
              v96 = v145;

              if (v95 == v96)
              {
                if (v116)
                {
                  v97 = __bid128_quiet_less(v70, v72, v120, v118, &v140);
                  LOBYTE(v133) = 1;
                  v87 = v122;
                  v84 = v123;
                  v85 = v121;
                  v86 = v119;
                  LOBYTE(v116) = 1;
                  v83 = v59;
                  if (!v97)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  LOBYTE(v133) = 1;
                  v87 = v122;
                  v84 = v123;
                  v85 = v121;
                  v86 = v119;
                  LOBYTE(v116) = 1;
                  v83 = v59;
                }

                goto LABEL_120;
              }
            }

            LOBYTE(v133) = 1;
          }

LABEL_121:
          freeTree(v63);
          v38 = v132;
          v57 = v130;
          v54 = v131;
          v56 = obja;
        }
      }

      v58 = v58 + 1;
    }

    while (v56 != v58);
    v101 = [v54 countByEnumeratingWithState:&v141 objects:v161 count:16];
    v56 = v101;
  }

  while (v101);

  if (v114)
  {
    v102 = v114;

    v103 = v102;
    v25 = v109;
    v104 = v129;
    v105 = v115;
    v107 = v122;
    v106 = v123;
    goto LABEL_137;
  }

  v25 = v109;
  if (v122)
  {
    v107 = v122;

    v102 = 0;
    v103 = v107;
    goto LABEL_135;
  }

  v103 = v128;
  if (!v128)
  {
    if (v115)
    {
      v105 = v115;
      v102 = 0;
      v107 = 0;
      v103 = v105;
      v104 = v129;
      goto LABEL_136;
    }

    if (v123)
    {
      v106 = v123;
      v102 = 0;
      v107 = 0;
      v105 = 0;
      v103 = v106;
      v104 = v129;
      goto LABEL_137;
    }

    v108 = v129;
LABEL_130:
    v104 = v108;
    v102 = 0;
    v107 = 0;
    v105 = 0;
    v106 = 0;
    v103 = v104;
    goto LABEL_137;
  }

  v102 = 0;
  v107 = 0;
LABEL_135:
  v104 = v129;
  v105 = v115;
LABEL_136:
  v106 = v123;
LABEL_137:
  v6 = v103;

LABEL_6:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isAcceptableConversion:(TreeObject *)a3
{
  if ([(CalculateResult *)self unitType]!= 12)
  {
    v18 = 0;
    v6 = 0x3040000000000000;
    v7 = __bid128_div(5uLL, 0x3040000000000000uLL, 0x64uLL, 0x3040000000000000uLL, 4, &v18);
    v9 = v8;
    var0 = a3->var0;
    if (a3->var0 == 1)
    {
      if (my_rnd_mode)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v11 = __binary64_to_bid128(v13, my_fpsf, a3->var4);
      v6 = v14;
    }

    else if (var0 == 2)
    {
      v12 = &a3->var5.var0[1];
      v11 = a3->var5.var0[1];
      v6 = v12[1];
    }

    else if (var0 == 4)
    {
      v11 = a3->var7[0];
    }

    else
    {
      v11 = 0;
    }

    if ([(CalculateResult *)self unitType]== 7)
    {
      v15 = __bid128_div(1uLL, 0x3040000000000000uLL, 0x400uLL, 0x3040000000000000uLL, 4, &v18);
      v5 = __bid128_quiet_greater_equal(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, v15, v16, &v18);
      if (!v5)
      {
        return v5;
      }

      v5 = __bid128_quiet_less(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, 0x100000uLL, 0x3040000000000000, &v18);
    }

    else
    {
      v5 = __bid128_quiet_greater_equal(v11, v6 & 0x7FFFFFFFFFFFFFFFLL, v7, v9, &v18);
    }

    LOBYTE(v5) = v5 != 0;
    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (id)conversionsForMetric:(BOOL)a3 US:(BOOL)a4 UK:(BOOL)a5
{
  v26 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v30 = objc_opt_new();
  v29 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(CalculateResult *)self typeInfo];
  v7 = [v6 units];

  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = [v12 unitID];
        if (v13 != [(CalculateResult *)self singleUnitID])
        {
          v14 = [(CalculateResult *)self inputValueAndUnit];
          if (!v14 || (v15 = v14, v16 = [v12 unitID], -[CalculateResult inputValueAndUnit](self, "inputValueAndUnit"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "singleUnitID"), v17, v15, v16 != v18))
          {
            v19 = [v12 typeInfo];
            v20 = [v19 isTemperature];

            if ((v20 & 1) == 0)
            {
              if ([v12 measurementSystem] == 2)
              {
                if (!a4)
                {
                  goto LABEL_14;
                }
              }

              else if ([v12 measurementSystem] == 3)
              {
                if (!a5)
                {
                  goto LABEL_14;
                }
              }

              else if ([v12 measurementSystem] == 1 && !v26)
              {
                goto LABEL_14;
              }
            }

            v21 = [(CalculateResult *)self newUnit:v12];
            if ([v12 doNotSuggest])
            {
              v22 = v29;
            }

            else
            {
              v22 = v30;
            }

            [v22 addObject:v21];
          }
        }

LABEL_14:
        ++v11;
      }

      while (v9 != v11);
      v23 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v9 = v23;
    }

    while (v23);
  }

  [v30 addObjectsFromArray:v29];
  if ([(CalculateResult *)self unitType]== 7)
  {
    [v30 sortUsingComparator:&__block_literal_global_675];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v30;
}

uint64_t __46__CalculateResult_conversionsForMetric_US_UK___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v22 = 0;
  v6 = [v4 unitInfo];
  v7 = [v6 baseNumerator];
  v9 = v8;
  v10 = [v5 unitInfo];
  v11 = [v10 baseNumerator];
  LODWORD(v7) = __bid128_quiet_less(v7, v9, v11, v12, &v22);

  if (v7)
  {
    v13 = -1;
  }

  else
  {
    v14 = [v5 unitInfo];
    v15 = [v14 baseNumerator];
    v17 = v16;
    v18 = [v4 unitInfo];
    v19 = [v18 baseNumerator];
    LODWORD(v15) = __bid128_quiet_less(v15, v17, v19, v20, &v22);

    v13 = v15;
  }

  return v13;
}

- (id)newUnit:(id)a3
{
  v4 = [a3 unitID];
  v5 = [(CalculateResult *)self unitsInfo];
  v6 = [CalculateUnit unitWithID:v4 unitsInfo:v5 exponent:[(CalculateResult *)self unitExponent]];

  return v6;
}

- (void)enableMeasurementSystemsForLocale:(id)a3 metric:(BOOL *)a4 US:(BOOL *)a5 UK:(BOOL *)a6
{
  v10 = [a3 objectForKey:*MEMORY[0x1E695D9B8]];
  if (v10)
  {
    v15 = v10;
    if ([v10 isEqualToString:*MEMORY[0x1E695D9D0]])
    {
      v10 = v15;
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_13;
    }

    if ([v15 isEqualToString:*MEMORY[0x1E695D9C8]])
    {
      if (a6)
      {
        *a6 = 1;
      }

      if (a5)
      {
        if ([(CalculateResult *)self singleUnitID])
        {
          v11 = [(CalculateResult *)self unitsInfo];
          v12 = [v11 objectAtIndexedSubscript:{-[CalculateResult singleUnitID](self, "singleUnitID")}];
          v13 = [v12 typeInfo];
          v14 = [v13 isVolume];

          if ((v14 & 1) == 0)
          {
            *a5 = 1;
          }
        }
      }

      v10 = v15;
LABEL_13:
      if (!a4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      *a4 = 1;
    }

    a4 = a5;
    v10 = v15;
    if (a5)
    {
LABEL_14:
      *a4 = 1;
    }
  }

LABEL_15:
}

- (NSString)formattedResult
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CalculateResult *)self terms];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) formattedResult];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:@" "];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CalculateResult *)self compare:v4]== 0;

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CalculateResult *)self terms];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v4 terms];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v6 compare:v8];

  if (!v9)
  {
    v10 = [(CalculateResult *)self terms];
    v11 = [v10 count];
    v12 = [v4 terms];
    v13 = [v12 count];
    v9 = v11 < v13 ? -1 : v11 > v13;

    if (!v9)
    {
      v14 = [(CalculateResult *)self terms];
      v15 = [v14 count];

      if (v15 < 2)
      {
LABEL_10:
        v9 = 0;
      }

      else
      {
        v16 = 1;
        while (1)
        {
          v17 = [(CalculateResult *)self terms];
          v18 = [v17 objectAtIndexedSubscript:v16];
          v19 = [v4 terms];
          v20 = [v19 objectAtIndexedSubscript:v16];
          v9 = [v18 compare:v20];

          if (v9)
          {
            break;
          }

          ++v16;
          v21 = [(CalculateResult *)self terms];
          v22 = [v21 count];

          if (v16 >= v22)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  parseTree = self->_parseTree;
  if (parseTree)
  {
    freeTree(parseTree);
    self->_parseTree = 0;
  }

  resultTree = self->_resultTree;
  if (resultTree)
  {
    freeTree(resultTree);
    self->_resultTree = 0;
  }

  variableResultTrees = self->_variableResultTrees;
  if (variableResultTrees)
  {
    if (self->_variableResultTreesCount >= 1)
    {
      v6 = 0;
      do
      {
        freeTree(&self->_variableResultTrees[v6++]->var0);
      }

      while (v6 < self->_variableResultTreesCount);
      variableResultTrees = self->_variableResultTrees;
    }

    free(variableResultTrees);
    self->_variableResultTrees = 0;
  }

  v7.receiver = self;
  v7.super_class = CalculateResult;
  [(CalculateResult *)&v7 dealloc];
}

- (CalculateResult)init
{
  v6.receiver = self;
  v6.super_class = CalculateResult;
  v2 = [(CalculateResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalculateResult *)v2 setParseTree:0];
    [(CalculateResult *)v3 setResultTree:0];
    conversions = v3->_conversions;
    v3->_conversions = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_setTerms:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_terms, a3);
  if ([v12 count] == 1 && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "units"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5, v7 == 1))
  {
    v8 = [v12 objectAtIndexedSubscript:0];
    v9 = [v8 units];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 unitInfo];
    self->_singleUnitID = [v11 unitID];
  }

  else
  {
    self->_singleUnitID = 0;
  }
}

- (void)_setInputValueAndUnit:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inputValueAndUnit, a3);
  if (v5)
  {
    self->_hasStaleCurrencyData |= v5[14];
  }
}

- (void)_setConversions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_conversions, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        self->_hasStaleCurrencyData |= *(*(*(&v12 + 1) + 8 * i) + 14);
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)preferMeasurementSystemsForLocale:(id)a3 preferred:(unint64_t *)a4 fallback:(unint64_t *)a5
{
  if (a4)
  {
    *a4 = 2;
  }

  if (a5)
  {
    *a5 = 1;
  }

  v8 = [a3 objectForKey:*MEMORY[0x1E695D9B8]];
  if ([v8 isEqualToString:*MEMORY[0x1E695D9C8]])
  {
    if (a4)
    {
      *a4 = 3;
    }

    if (a5)
    {
      v7 = 1;
LABEL_15:
      *a5 = v7;
    }
  }

  else if ([v8 isEqualToString:*MEMORY[0x1E695D9C0]])
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (a5)
    {
      v7 = 2;
      goto LABEL_15;
    }
  }

  MEMORY[0x1EEE66BB8]();
}

+ (CalculateResult)resultWithResultTree:(TreeObject *)a3 parseTree:(TreeObject *)a4 locales:(id)a5 numberFormatter:(id)a6 unitsInfo:(id)a7 unitType:(int)a8 unitExponent:(int)a9 expression:(id)a10 isTrivial:(BOOL)a11 isPartialExpression:(BOOL)a12 variableLookups:(id)a13 variableResultTrees:(TreeObject *)a14 variableResultTreesCount:(int)a15 resolvedUnitFormats:(id *)a16 forceResult:(BOOL)a17 assumeDegrees:(BOOL)a18 localizeUnit:(BOOL)a19 unitFormat:(unint64_t)a20 matchLocale:(BOOL)a21 numberingSystem:(id)a22 autoScientificNotation:(BOOL)a23 scientificNotationFormat:(unint64_t)a24 flexibleFractionDigits:(BOOL)a25 isSimpleVerticalMath:(BOOL)a26 minimumFractionDigits:(int)a27 hasStaleCurrencyData:(BOOL)a28
{
  v81[1] = *MEMORY[0x1E69E9840];
  v79 = a5;
  v78 = a6;
  obj = a7;
  v32 = a7;
  v77 = a10;
  v76 = a13;
  v75 = a22;
  var0 = a3->var0;
  if (a3->var0 == 1)
  {
    if (my_rnd_mode)
    {
      v36 = 4;
    }

    else
    {
      v36 = 0;
    }

    v34 = __binary64_to_bid128(v36, my_fpsf, a3->var4);
  }

  else if (var0 == 2)
  {
    v34 = a3->var5.var0[1];
    var6 = a3->var6;
  }

  else
  {
    if (var0 == 4)
    {
      v34 = a3->var7[0];
    }

    else
    {
      v34 = 0;
    }

    var6 = 0x3040000000000000;
  }

  v72 = var6;
  v73 = v34;
  v80 = [CalculateResult decimalNumberWithDecimal128:v34, var6];
  if (!a17)
  {
    v37 = [MEMORY[0x1E696AB90] notANumber];
    v38 = [v80 isEqual:v37];

    if (v38)
    {
      v39 = 0;
      v40 = v80;
      goto LABEL_39;
    }
  }

  v39 = objc_opt_new();
  objc_storeStrong((v39 + 56), a5);
  objc_storeStrong((v39 + 48), a6);
  *(v39 + 120) = a4;
  *(v39 + 128) = a3;
  objc_storeStrong((v39 + 40), a10);
  *(v39 + 12) = a11;
  *(v39 + 13) = a12;
  *(v39 + 11) = a18;
  *(v39 + 16) = a19;
  *(v39 + 72) = a20;
  *(v39 + 9) = a21;
  objc_storeStrong((v39 + 168), a22);
  *(v39 + 8) = a23;
  *(v39 + 64) = a24;
  *(v39 + 10) = a25;
  *(v39 + 17) = a26;
  *(v39 + 20) = a27;
  *(v39 + 14) = a28;
  objc_storeStrong((v39 + 136), obj);
  if (v32)
  {
    v41 = a8;
    v42 = [v32 infoForUnitType:a8];
  }

  else
  {
    v42 = 0;
    v41 = a8;
  }

  v43 = *(v39 + 144);
  *(v39 + 144) = v42;

  v44 = 0;
  v45 = 0;
  v46 = 0;
  p_exponent = &a3->var7[1].exponent;
  while (1)
  {
    v48 = *p_exponent;
    p_exponent += 2;
    if (v48)
    {
      break;
    }

LABEL_22:
    if (++v44 == 16)
    {
      goto LABEL_25;
    }
  }

  if (v46 <= 0)
  {
    v46 = 1;
    v45 = v44;
    goto LABEL_22;
  }

  v45 = 0;
LABEL_25:
  if (v41 < 1)
  {
    unitID = 0;
  }

  else
  {
    unitID = a3->var7[v45 + 1].unitID;
  }

  *(v39 + 28) = unitID;
  objc_storeStrong((v39 + 152), a13);
  *(v39 + 160) = a14;
  *(v39 + 32) = a15;
  *(v39 + 176) = *a16->var0;
  v50 = *&a16->var0[2];
  v51 = *&a16->var0[4];
  v52 = *&a16->var0[8];
  *(v39 + 224) = *&a16->var0[6];
  *(v39 + 240) = v52;
  *(v39 + 192) = v50;
  *(v39 + 208) = v51;
  v53 = *&a16->var0[10];
  v54 = *&a16->var0[12];
  v55 = *&a16->var0[14];
  *(v39 + 304) = a16->var0[16];
  *(v39 + 272) = v54;
  *(v39 + 288) = v55;
  *(v39 + 256) = v53;
  v56 = objc_opt_new();
  v57 = &a3->var7[1].exponent;
  v58 = 16;
  v40 = v80;
  do
  {
    if (*v57)
    {
      v59 = [CalculateUnit unitWithID:*(v57 - 1) unitsInfo:v32 exponent:?];
      [v56 addObject:v59];
    }

    v57 += 2;
    --v58;
  }

  while (v58);
  v60 = [v56 copy];
  v61 = [CalculateTerm termWithValue:v80 units:v60 result:v39];

  [v61 setDecimalValue:{v73, v72}];
  v81[0] = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
  v63 = *(v39 + 88);
  *(v39 + 88) = v62;

  if ([v56 count])
  {
    v64 = [v32 infoForUnitType:v41];
    v65 = [v64 name];
    v66 = [&unk_1F419A730 objectForKeyedSubscript:v65];

    if (v66)
    {
      v67 = [v66 intValue];
    }

    else
    {
      v67 = 1;
    }

    *(v39 + 80) = v67;
    *(v39 + 24) = a9;
  }

  else
  {
    *(v39 + 80) = 0;
    *(v39 + 24) = 0;
  }

LABEL_39:
  v68 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)decimalNumberWithDecimal128:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  __bid128_to_string(v8, a3.var0[0], a3.var0[1]);
  v3 = MEMORY[0x1E696AB90];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v5 = [v3 decimalNumberWithString:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)defaultNumberFormatter:(id)a3
{
  v3 = a3;
  if (defaultNumberFormatter__onceToken != -1)
  {
    dispatch_once(&defaultNumberFormatter__onceToken, &__block_literal_global_663);
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 localeIdentifier];
  v6 = [v3 groupingSeparator];
  v7 = [v3 decimalSeparator];
  v8 = [v4 stringWithFormat:@"%@%@%@", v5, v6, v7];

  v9 = [defaultNumberFormatter__numberFormatters objectForKey:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setUsesGroupingSeparator:1];
    [v9 setMaximumIntegerDigits:10];
    [v9 setMaximumFractionDigits:3];
    [v9 setNumberStyle:1];
    [v9 setRoundingMode:6];
    [v9 setLocale:v3];
    [defaultNumberFormatter__numberFormatters setObject:v9 forKey:v8];
  }

  return v9;
}

uint64_t __42__CalculateResult_defaultNumberFormatter___block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultNumberFormatter__numberFormatters;
  defaultNumberFormatter__numberFormatters = v0;

  v2 = defaultNumberFormatter__numberFormatters;

  return [v2 setCountLimit:20];
}

@end