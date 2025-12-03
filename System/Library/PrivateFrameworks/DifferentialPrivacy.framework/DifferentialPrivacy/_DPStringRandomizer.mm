@interface _DPStringRandomizer
+ (id)numbersRandomizerWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm range:(unint64_t)range;
+ (id)stringRandomizerWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm algorithmParameters:(id)parameters huffmanTableClass:(id)class;
- (_DPStringRandomizer)initWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm algorithmParameters:(id)parameters huffmanTableClass:(id)class;
- (_DPStringRandomizer)initWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm range:(unint64_t)range;
- (id)description;
@end

@implementation _DPStringRandomizer

- (_DPStringRandomizer)initWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm algorithmParameters:(id)parameters huffmanTableClass:(id)class
{
  parametersCopy = parameters;
  v42.receiver = self;
  v42.super_class = _DPStringRandomizer;
  v11 = [(_DPStringRandomizer *)&v42 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_56;
  }

  v13 = 0;
  v11->_algorithm = algorithm;
  if (algorithm > 13)
  {
    if (algorithm <= 16)
    {
      if (algorithm == 14)
      {
        v13 = [parametersCopy objectForKeyedSubscript:@"p"];
        if (!v13)
        {
          goto LABEL_62;
        }

        v17 = [parametersCopy objectForKeyedSubscript:@"dynamicVectorSize"];
        v24 = +[_DPPrioPlusPlusMetadataValueRandomizer randomizerWithEpsilon:dimensionality:dynamicVectorSize:](_DPPrioPlusPlusMetadataValueRandomizer, "randomizerWithEpsilon:dimensionality:dynamicVectorSize:", -[_DPStringRandomizer unsignedIntValue](v13, "unsignedIntValue"), [v17 BOOLValue], epsilon);
        if (v24)
        {
          goto LABEL_41;
        }

        goto LABEL_59;
      }

      if (algorithm == 15)
      {
        v13 = [parametersCopy objectForKeyedSubscript:@"p"];
        v17 = [parametersCopy objectForKeyedSubscript:@"prime"];
        v28 = [parametersCopy objectForKeyedSubscript:@"alpha0"];
        v29 = [parametersCopy objectForKeyedSubscript:@"alpha1"];
        v30 = v29;
        if (v13 && (v17 && v28 && v29 || !v17 && !v28 && !v29))
        {
          v41 = [parametersCopy objectForKeyedSubscript:@"dynamicVectorSize"];
          bOOLValue = [v41 BOOLValue];
          unsignedIntegerValue = [(_DPStringRandomizer *)v13 unsignedIntegerValue];
          unsignedIntValue = [v17 unsignedIntValue];
          [v28 doubleValue];
          v35 = v34;
          [v30 doubleValue];
          v37 = [_DPPrioPiRapporValueRandomizer randomizerWithEpsilon:unsignedIntegerValue dimensionality:bOOLValue dynamicVectorSize:unsignedIntValue piRapporPrime:epsilon piRapporAlpha0:v35 piRapporAlpha1:v36];
          if (v37)
          {
            randomizer = v12->_randomizer;
            v12->_randomizer = v37;

            goto LABEL_51;
          }
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (algorithm - 17 < 2)
      {
        v15 = _DPPINERandomizer;
LABEL_27:
        v19 = [(__objc2_class *)v15 randomizerWithMaxCentralEpsilon:parametersCopy parameters:epsilon];
        if (v19)
        {
LABEL_28:
          v13 = v12->_randomizer;
          v12->_randomizer = v19;
LABEL_55:

LABEL_56:
          v13 = v12;
          goto LABEL_62;
        }

LABEL_61:
        v13 = 0;
        goto LABEL_62;
      }

      if (algorithm != 19)
      {
        if (algorithm != 20)
        {
          goto LABEL_62;
        }

        v15 = _DPPreambleRandomizer;
        goto LABEL_27;
      }
    }

    v14 = _DPPrio3SumVectorRandomizer;
LABEL_21:
    v19 = [(__objc2_class *)v14 randomizerWithEpsilon:parametersCopy parameters:epsilon];
    if (!v19)
    {
      goto LABEL_61;
    }

    goto LABEL_28;
  }

  if (algorithm > 10)
  {
    if (algorithm == 11)
    {
      v23 = [parametersCopy objectForKeyedSubscript:@"p"];
      v13 = v23;
      if (!v23)
      {
        goto LABEL_62;
      }

      v21 = [_DPOHEBitValueRandomizer oheBitValueRandomizerWithDimensionality:[(_DPStringRandomizer *)v23 unsignedIntegerValue] epsilon:epsilon];
      if (v21)
      {
        goto LABEL_54;
      }

LABEL_60:

      goto LABEL_61;
    }

    if (algorithm == 12)
    {
      v13 = [parametersCopy objectForKeyedSubscript:@"n"];
      if (!v13)
      {
        goto LABEL_62;
      }

      v25 = [parametersCopy objectForKeyedSubscript:@"delta"];
      if (!v25)
      {
        goto LABEL_60;
      }

      v17 = v25;
      v18 = _DPPrioPlusPlusValueRandomizer;
    }

    else
    {
      v13 = [parametersCopy objectForKeyedSubscript:@"n"];
      if (!v13)
      {
        goto LABEL_62;
      }

      v16 = [parametersCopy objectForKeyedSubscript:@"delta"];
      if (!v16)
      {
        goto LABEL_60;
      }

      v17 = v16;
      v18 = _DPPrioPlusPlusMetricsValueRandomizer;
    }

    [v17 doubleValue];
    v24 = [(__objc2_class *)v18 randomizerWithEpsilon:[(_DPStringRandomizer *)v13 unsignedIntValue] delta:epsilon maxLength:v26];
    if (v24)
    {
LABEL_41:
      v27 = v12->_randomizer;
      v12->_randomizer = v24;

LABEL_51:
      goto LABEL_55;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (algorithm - 5 < 2)
  {
    v20 = [parametersCopy objectForKeyedSubscript:@"p"];
    v13 = v20;
    if (!v20)
    {
      goto LABEL_62;
    }

    v21 = [_DPBitValueRandomizer bitValueRandomizerWithDimensionality:[(_DPStringRandomizer *)v20 unsignedIntegerValue] epsilon:epsilon];
    if (!v21)
    {
      goto LABEL_60;
    }

LABEL_54:
    v39 = v12->_randomizer;
    v12->_randomizer = v21;

    goto LABEL_55;
  }

  if (algorithm == 1)
  {
    v22 = [parametersCopy objectForKeyedSubscript:@"p"];
    if (v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = [parametersCopy objectForKeyedSubscript:@"sequenceP"];
      if (!v13)
      {
        goto LABEL_62;
      }
    }

    v21 = [_DPOBHRandomizer obhRandomizerWithDimensionality:[(_DPStringRandomizer *)v13 unsignedIntegerValue] epsilon:epsilon];
    if (v21)
    {
      goto LABEL_54;
    }

    goto LABEL_60;
  }

  if (algorithm == 9)
  {
    v14 = _DPPrioValueRandomizer;
    goto LABEL_21;
  }

LABEL_62:

  return v13;
}

- (_DPStringRandomizer)initWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm range:(unint64_t)range
{
  v16.receiver = self;
  v16.super_class = _DPStringRandomizer;
  v10 = [(_DPStringRandomizer *)&v16 init];
  v11 = v10;
  if (v10)
  {
    if (dataAlgorithm != 1 || (v10->_algorithm = algorithm, algorithm != 3) || ([_DPNumberRandomizer numberRandomizerWithRange:range epsilon:epsilon], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = 0;
      goto LABEL_8;
    }

    randomizer = v11->_randomizer;
    v11->_randomizer = v12;
  }

  v14 = v11;
LABEL_8:

  return v14;
}

+ (id)stringRandomizerWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm algorithmParameters:(id)parameters huffmanTableClass:(id)class
{
  classCopy = class;
  parametersCopy = parameters;
  v14 = [[self alloc] initWithEpsilon:algorithm privatizationAlgorithm:dataAlgorithm dataAlgorithm:parametersCopy algorithmParameters:classCopy huffmanTableClass:epsilon];

  return v14;
}

+ (id)numbersRandomizerWithEpsilon:(double)epsilon privatizationAlgorithm:(unint64_t)algorithm dataAlgorithm:(unint64_t)dataAlgorithm range:(unint64_t)range
{
  v6 = [[self alloc] initWithEpsilon:algorithm privatizationAlgorithm:dataAlgorithm dataAlgorithm:range range:epsilon];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { randomizer=%@ }", v5, self->_randomizer];

  return v6;
}

@end