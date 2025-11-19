@interface CBBacklightNode
- (BOOL)getGlobalScalarDisplayI:(float *)a3 andB:(float *)a4;
- (BOOL)getGlobalScalarTo:(id *)a3;
- (BOOL)getScalerFor:(id)a3 andIndex:(unint64_t)a4 scaledBy:(float)a5 toDestination:(float *)a6;
- (CBBacklightNode)initWithParser:(id)a3;
- (CBBacklightNode)initWithService:(unsigned int)a3;
- (id)copyAABCapDictionary;
- (id)copyAABConstraintDictionary;
- (id)copyRestrictionDictionary;
- (id)copyRestrictionDictionaryMultiPoint;
- (id)copyRestrictionDictionarySinglePoint;
- (id)copyTrueToneStrength;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)newMultiPointFactorsArray:(id)a3;
- (id)newMultiPointThresholdsArray:(id)a3;
- (int)createMultipointRestrictionArrayForThresholdsName:(id)a3 andFactorsName:(id)a4 andThresholds:(id *)a5 andFactors:(id *)a6;
- (unsigned)createMultipointArrayCommon:(id)a3 unitSize:(unint64_t *)a4 outputCount:(unint64_t *)a5;
- (void)dealloc;
@end

@implementation CBBacklightNode

- (CBBacklightNode)initWithService:(unsigned int)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (a3)
  {
    context = objc_autoreleasePoolPush();
    v14 = [(CBBacklightNode *)v13 initWithParser:[CBIORegistryParser parserWithReader:[[CBIORegistryReader alloc] initWithService:v11]]];
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
    v9 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Service is null", v8, 2u);
    }

    MEMORY[0x1E69E5920](v13);
    return 0;
  }

  return v14;
}

- (CBBacklightNode)initWithParser:(id)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14.receiver = self;
  v14.super_class = CBBacklightNode;
  v17 = [(CBBacklightNode *)&v14 init];
  if (!v17)
  {
    return v17;
  }

  v3 = os_log_create("com.apple.CoreBrightness.BacklightNode", "default");
  v17->_log = v3;
  if (v15)
  {
    v4 = MEMORY[0x1E69E5928](v15);
    v17->_parser = v4;
    v5 = [CBRTPLCParams alloc];
    v6 = [(CBRTPLCParams *)v5 initWithParser:v17->_parser];
    v17->_rtplc = v6;
    return v17;
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  oslog = inited;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v9 = type;
    __os_log_helper_16_0_0(v11);
    _os_log_error_impl(&dword_1DE8E5000, log, v9, "Parser is null", v11, 2u);
  }

  MEMORY[0x1E69E5920](v17);
  return 0;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  parser = self->_parser;
  if (objc_opt_respondsToSelector())
  {
    return self->_parser;
  }

  else
  {
    return 0;
  }
}

- (unsigned)createMultipointArrayCommon:(id)a3 unitSize:(unint64_t *)a4 outputCount:(unint64_t *)a5
{
  v14 = [(CBIORegInterface *)[(CBIORegistryParser *)self->_parser reader] copyProperty:a3];
  if (!v14)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = [v14 length];
  size = 0;
  count = 0;
  if (v13 == 12)
  {
    count = 6;
    size = 2;
    v5 = malloc_type_calloc(6uLL, 2uLL, 0x9BDD308uLL);
  }

  else
  {
    if (!(v13 % 4) && v13 >= 0x18)
    {
      count = v13 / 4;
      size = 4;
    }

    v5 = malloc_type_calloc(count, size, 0x9BDD308uLL);
  }

  v10 = v5;
  if (v5)
  {
    [v14 getBytes:v5 length:v13];
    MEMORY[0x1E69E5920](v14);
    v9 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    if (v9)
    {
      for (i = 0; i < count; ++i)
      {
        if (size == 2)
        {
          v7 = *(v10 + i);
        }

        else
        {
          v7 = v10[i];
        }

        v9[i] = v7;
      }

      free(v10);
      *a4 = size;
      *a5 = count;
      return v9;
    }

    else
    {
      free(v10);
      return 0;
    }
  }

  else
  {
LABEL_4:
    MEMORY[0x1E69E5920](v14);
    return 0;
  }
}

- (id)newMultiPointThresholdsArray:(id)a3
{
  v9[3] = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = 0;
  v8 = 0;
  v7 = [(CBBacklightNode *)self createMultipointArrayCommon:a3 unitSize:v9 outputCount:&v8];
  if (!v7)
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    for (i = 0; i < v8; ++i)
    {
      *&v3 = v7[i];
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
    }

    free(v7);
    return v6;
  }

  else
  {
    free(v7);
    return 0;
  }
}

- (id)newMultiPointFactorsArray:(id)a3
{
  v9[3] = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = 0;
  v8 = 0;
  v7 = [(CBBacklightNode *)self createMultipointArrayCommon:a3 unitSize:v9 outputCount:&v8];
  if (!v7)
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    for (i = 0; i < v8; ++i)
    {
      if (v9[0] == 2)
      {
        v4 = v7[i] / 1000.0;
      }

      else
      {
        v4 = *&v7[i];
      }

      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", COERCE_DOUBLE(LODWORD(v4)))}];
    }

    free(v7);
    return v6;
  }

  else
  {
    free(v7);
    return 0;
  }
}

- (int)createMultipointRestrictionArrayForThresholdsName:(id)a3 andFactorsName:(id)a4 andThresholds:(id *)a5 andFactors:(id *)a6
{
  if (!a3 || !a4 || !a5 || !a6)
  {
    return 0;
  }

  v9 = [(CBBacklightNode *)self newMultiPointThresholdsArray:a3];
  if (v9)
  {
    v8 = [(CBBacklightNode *)self newMultiPointFactorsArray:a4];
    if (v8)
    {
      v7 = [v9 count];
      if (v7 == [v8 count])
      {
        *a5 = v9;
        *a6 = v8;
        return 1;
      }

      MEMORY[0x1E69E5920](v8);
    }

    MEMORY[0x1E69E5920](v9);
    return 0;
  }

  return 0;
}

- (id)copyRestrictionDictionaryMultiPoint
{
  v23 = self;
  v22 = a2;
  v21 = 0;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v20)
  {
    return 0;
  }

  v19 = 0;
  v18 = 0;
  if ([(CBBacklightNode *)v23 createMultipointRestrictionArrayForThresholdsName:@"max-restriction-thresholds" andFactorsName:@"max-restriction-factors" andThresholds:&v19 andFactors:&v18])
  {
    [v20 setObject:v19 forKey:@"max_thresholds"];
    [v20 setObject:v18 forKey:@"max_factors"];
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v18);
    v21 = 1;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    if ([(CBIORegistryParser *)v23->_parser loadFloat:@"max-restr-rise-time-fast-thr" toDestination:&v15])
    {
      LODWORD(v2) = v15;
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"max_rise_time_fast_threshold"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"max-restr-rise-time-fast" toDestination:&v17])
    {
      v3 = v17 / 1000.0;
      *&v3 = v3;
      v16 = LODWORD(v3);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v3), @"max_rise_time_fast"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"max-restriction-rise-time" toDestination:&v17])
    {
      v4 = v17 / 1000.0;
      *&v4 = v4;
      v16 = LODWORD(v4);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"max_rise_time"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"max-restriction-fall-time" toDestination:&v17])
    {
      v5 = v17 / 1000.0;
      *&v5 = v5;
      v16 = LODWORD(v5);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"max_fall_time"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"max-restriction-factor-aab-off" toDestination:&v17])
    {
      v6 = v17 / 1000.0;
      *&v6 = v6;
      v14[1] = LODWORD(v6);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v6), @"max_factor_aab_off"}];
    }
  }

  v19 = 0;
  v18 = 0;
  if ([(CBBacklightNode *)v23 createMultipointRestrictionArrayForThresholdsName:@"min-restriction-thresholds" andFactorsName:@"min-restriction-factors" andThresholds:&v19 andFactors:&v18])
  {
    [v20 setObject:v19 forKey:@"min_thresholds"];
    [v20 setObject:v18 forKey:@"min_factors"];
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v18);
    v21 = 1;
    v14[0] = 0;
    v13 = 0;
    if ([(CBIORegistryParser *)v23->_parser loadUint:@"min-restriction-rise-time" toDestination:v14])
    {
      v7 = v14[0] / 1000.0;
      *&v7 = v7;
      v13 = LODWORD(v7);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v7), @"min_rise_time"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"min-restriction-fall-time" toDestination:v14])
    {
      v8 = v14[0] / 1000.0;
      *&v8 = v8;
      v13 = LODWORD(v8);
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v8), @"min_fall_time"}];
    }
  }

  if (v21)
  {
    v12 = 0;
    if ([(CBIORegistryParser *)v23->_parser loadUint:@"restriction-pivoting-l" toDestination:&v12])
    {
      *&v9 = v12;
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v9), @"pivoting_L"}];
    }

    if ([(CBIORegistryParser *)v23->_parser loadUint:@"restriction-pivoting-l-2" toDestination:&v12])
    {
      *&v10 = v12;
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v10), @"pivoting_L_max"}];
    }

    [v20 setObject:&unk_1F59C8F58 forKey:@"multi_point"];
  }

  else
  {
    MEMORY[0x1E69E5920](v20);
    return 0;
  }

  return v20;
}

- (id)copyRestrictionDictionarySinglePoint
{
  v25 = self;
  v24 = a2;
  v23 = 0.0;
  v22 = -1.0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0.0;
  v16 = -1.0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if ([(CBIORegistryParser *)self->_parser loadUint:@"min-restriction-factor" toDestination:&v21])
  {
    v23 = v21 / 1000.0;
    if (![(CBIORegistryParser *)v25->_parser loadUint:@"min-restriction-enableth" toDestination:&v20])
    {
      v23 = 0.0;
    }

    if (![(CBIORegistryParser *)v25->_parser loadUint:@"min-restriction-disableth" toDestination:&v19])
    {
      v23 = 0.0;
    }

    if (v23 > 0.0)
    {
      v12 = 3;
    }

    [(CBIORegistryParser *)v25->_parser loadUint:@"min-restriction-disableth2" toDestination:&v18, v23];
  }

  if ([(CBIORegistryParser *)v25->_parser loadUint:@"max-restriction-factor" toDestination:&v21])
  {
    v17 = v21 / 1000.0;
    if (![(CBIORegistryParser *)v25->_parser loadUint:@"max-restriction-enableth" toDestination:&v15])
    {
      v17 = 0.0;
    }

    if (![(CBIORegistryParser *)v25->_parser loadUint:@"max-restriction-disableth" toDestination:&v14])
    {
      v17 = 0.0;
    }

    if (v17 > 0.0)
    {
      v12 += 3;
    }

    [(CBIORegistryParser *)v25->_parser loadUint:@"max-restriction-disableth2" toDestination:&v13, v17];
  }

  if (v12 > 0)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v11)
    {
      v2 = v17;
      if (v17 > 0.0)
      {
        *&v2 = v17;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"max_Factor"}];
        *&v3 = v15;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v3), @"max_enableTh"}];
        *&v4 = v14;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"max_disableTh"}];
        if (v16 > 0.0)
        {
          *&v5 = v16;
          [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"max_Factor_AABOff"}];
        }

        if (v13)
        {
          *&v5 = v13;
          [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"max_disableTh_highbound"}];
        }
      }

      v6 = v23;
      if (v23 > 0.0)
      {
        *&v6 = v23;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v6), @"min_Factor"}];
        *&v7 = v20;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v7), @"min_enableTh"}];
        *&v8 = v19;
        [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v8), @"min_disableTh"}];
        if (v22 > 0.0)
        {
          *&v9 = v22;
          [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v9), @"min_Factor_AABOff"}];
        }

        if (v18)
        {
          *&v9 = v18;
          [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v9), @"min_disableTh_lowbound"}];
        }
      }
    }
  }

  return v11;
}

- (id)copyRestrictionDictionary
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = self;
  v7 = a2;
  v6 = 0;
  if ([(CBIORegistryParser *)self->_parser loadInt:@"multi-point-restriction" toDestination:&v6]&& v6)
  {
    v5 = [(CBBacklightNode *)v8 copyRestrictionDictionaryMultiPoint];
  }

  else
  {
    v5 = [(CBBacklightNode *)v8 copyRestrictionDictionarySinglePoint];
  }

  if (v8->_log)
  {
    log = v8->_log;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v9, v5);
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Loaded Restriction Dictionary (Dynamic Slider Configuration): %@", v9, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyAABConstraintDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v17 = -1;
  v16 = -1;
  v15 = -1;
  v14 = -1;
  v13 = -1;
  v12 = -1;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-emax" toDestination:&v17])
  {
    *&v2 = v17;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"EmaxAlgo"}];
  }

  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-lmax" toDestination:&v16])
  {
    *&v3 = v16;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v3), @"LmaxAlgo"}];
  }

  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-e2" toDestination:&v15])
  {
    *&v4 = v15;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"E2"}];
  }

  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-l2" toDestination:&v14])
  {
    *&v5 = v14;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"L2"}];
  }

  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-l0b" toDestination:&v13])
  {
    *&v6 = v13;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v6), @"L0b"}];
    [v11 setObject:&unk_1F59C96A8 forKey:@"E0b"];
  }

  if ([(CBIORegistryParser *)v19->_parser loadUint:@"aab-constraint-emax-threshold" toDestination:&v12])
  {
    *&v7 = v12;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v7), @"EmaxThreshold"}];
  }

  if (v19->_log)
  {
    log = v19->_log;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v20, v11);
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Loaded AAB Constraints: %@", v20, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)getGlobalScalarDisplayI:(float *)a3 andB:(float *)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  if (!a3 || !v7)
  {
    return 0;
  }

  v6 = 0;
  if (![(CBIORegistryParser *)v10->_parser loadUint:@"luminance-ratio" toDestination:&v6])
  {
    return 0;
  }

  v5 = 0;
  if (![(CBIORegistryParser *)v10->_parser loadUint:@"vbatt-current" toDestination:&v5])
  {
    return 0;
  }

  if (v5 == -1 || v6 == -1)
  {
    return 0;
  }

  v6 = ((v6 & 0xFF00) << 8) + (v6 << 24) + ((v6 & 0xFF0000) >> 8) + ((v6 & 0xFF000000) >> 24);
  v5 = ((v5 & 0xFF00) << 8) + (v5 << 24) + ((v5 & 0xFF0000) >> 8) + ((v5 & 0xFF000000) >> 24);
  *v8 = v5 / 16777000.0;
  *v7 = v6 / 16777000.0;
  return 1;
}

- (BOOL)getScalerFor:(id)a3 andIndex:(unint64_t)a4 scaledBy:(float)a5 toDestination:(float *)a6
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = 0;
  v8 = [(CBIORegistryParser *)self->_parser loadUintArray:a3 toDestination:&v9];
  if (!v8)
  {
    return 0;
  }

  if (v12 >= v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v12;
  }

  *v10 = *(v9 + v7) * v11;
  free(v9);
  return 1;
}

- (BOOL)getGlobalScalarTo:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23 = a3;
  memset(v22, 0, 28);
  if ([(CBBacklightNode *)self getGlobalScalarDisplayI:v22 andB:v22 + 4])
  {
    v21 = 0;
    [(CBIORegistryParser *)v25->_parser loadUint:@"pab-scaler-index" toDestination:&v21];
    v20 = 0;
    [(CBIORegistryParser *)v25->_parser loadUint:@"first-paneltype-pab-index" toDestination:&v20];
    if (v21 >= v20)
    {
      v16 = v21 - v20;
      if (v25->_log)
      {
        v11 = v25->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v11 = inited;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v28, v16);
        _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "PAB scaler index (after making it 0-based) = %u", v28, 8u);
      }

      if ([(CBBacklightNode *)v25 getScalerFor:@"gs-i-nominal" andIndex:v16 scaledBy:v22 + 8 toDestination:?]&& (LODWORD(v3) = 981668463, [(CBBacklightNode *)v25 getScalerFor:@"gs-i-threshold" andIndex:v16 scaledBy:v22 + 12 toDestination:v3]) && (LODWORD(v4) = 981668463, [(CBBacklightNode *)v25 getScalerFor:@"gs-b-min" andIndex:v16 scaledBy:&v22[1] toDestination:v4]) && (LODWORD(v5) = 981668463, [(CBBacklightNode *)v25 getScalerFor:@"gs-slope" andIndex:v16 scaledBy:&v22[1] + 4 toDestination:v5]))
      {
        if (v25->_log)
        {
          v9 = v25->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v8 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v8 = init_default_corebrightness_log();
          }

          v9 = v8;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_7_4_0_8_0_8_0_8_0_8_0_8_0_8_0(v27, v16, COERCE__INT64(*(v22 + 2)), COERCE__INT64(*(v22 + 3)), COERCE__INT64(*&v22[1]), COERCE__INT64(*(&v22[1] + 1)), COERCE__INT64(*(v22 + 1)), COERCE__INT64(*v22));
          _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "{ pab_scaler_index: %u, I_nominal: %.3f, I_threshold: %.3f, B-min: %.3f, Slope: %.3f, B_input: %.3f, I_input: %.3f }", v27, 0x44u);
        }

        v6 = v23;
        *&v23->var0 = v22[0];
        *&v6->var3 = *(v22 + 12);
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      if (v25->_log)
      {
        v15 = v25->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v14 = init_default_corebrightness_log();
        }

        v15 = v14;
      }

      oslog = v15;
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v13 = type;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_1DE8E5000, log, v13, "PAB scaler: incorrect first-paneltype-pab-index in EDT! Using a default scaler", v17, 2u);
      }

      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (id)copyAABCapDictionary
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20[1] = a2;
  context = objc_autoreleasePoolPush();
  v20[0] = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v17 = [(CBIORegistryParser *)v21->_parser loadInt16Array:@"aab-cap-e" toDestination:v20];
  v16 = [(CBIORegistryParser *)v21->_parser loadInt16Array:@"aab-cap-l" toDestination:&v19];
  if (v17 == 4 && 4 == v16)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
    for (i = 0; i < v17; ++i)
    {
      [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", *(v20[0] + i))}];
      [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v19[i])}];
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:v13 forKey:@"E"];
    [v18 setObject:v12 forKey:@"L"];
    v10 = 0;
    if ([(CBIORegistryParser *)v21->_parser loadFloat:@"aab-cap-reverttime" toDestination:&v10])
    {
      LODWORD(v2) = v10;
      [v18 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"revertTime"}];
    }

    if (v21->_log)
    {
      log = v21->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      log = inited;
    }

    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v22, v18);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Loaded AAB Capping Curve: %@", v22, 0xCu);
    }
  }

  else
  {
    if (v21->_log)
    {
      v8 = v21->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v15 = v8;
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_4_0_8_0_8_0(v23, 4, v17, v16);
      _os_log_impl(&dword_1DE8E5000, v15, v14, "AAB Capping Curve loading failed due to size mismatch (%u != %zu != %zu)", v23, 0x1Cu);
    }
  }

  free(v20[0]);
  free(v19);
  v4 = v18;
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyTrueToneStrength
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = 0;
  v7 = 0;
  v6 = [(CBBacklightNode *)self createMultipointArrayCommon:@"truetone-strength" unitSize:v8 outputCount:&v7];
  v5 = 0;
  if (v6)
  {
    if (v8[0] == 2)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 0; i < v7; ++i)
      {
        *&v2 = v6[i];
        *&v2 = LODWORD(v2) / 1000.0;
        [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v2)}];
      }
    }

    free(v6);
  }

  return v5;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_rtplc);
  v2 = MEMORY[0x1E69E5920](v5->_parser).n128_u64[0];
  if (v5->_log)
  {
    v2 = MEMORY[0x1E69E5920](v5->_log).n128_u64[0];
    v5->_log = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBBacklightNode;
  [(CBBacklightNode *)&v3 dealloc];
}

@end