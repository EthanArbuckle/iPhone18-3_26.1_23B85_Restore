@interface _DPStringRandomizer
+ (id)numbersRandomizerWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 range:(unint64_t)a6;
+ (id)stringRandomizerWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 algorithmParameters:(id)a6 huffmanTableClass:(id)a7;
- (_DPStringRandomizer)initWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 algorithmParameters:(id)a6 huffmanTableClass:(id)a7;
- (_DPStringRandomizer)initWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 range:(unint64_t)a6;
- (id)description;
@end

@implementation _DPStringRandomizer

- (_DPStringRandomizer)initWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 algorithmParameters:(id)a6 huffmanTableClass:(id)a7
{
  v10 = a6;
  v42.receiver = self;
  v42.super_class = _DPStringRandomizer;
  v11 = [(_DPStringRandomizer *)&v42 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_56;
  }

  v13 = 0;
  v11->_algorithm = a4;
  if (a4 > 13)
  {
    if (a4 <= 16)
    {
      if (a4 == 14)
      {
        v13 = [v10 objectForKeyedSubscript:@"p"];
        if (!v13)
        {
          goto LABEL_62;
        }

        v17 = [v10 objectForKeyedSubscript:@"dynamicVectorSize"];
        v24 = +[_DPPrioPlusPlusMetadataValueRandomizer randomizerWithEpsilon:dimensionality:dynamicVectorSize:](_DPPrioPlusPlusMetadataValueRandomizer, "randomizerWithEpsilon:dimensionality:dynamicVectorSize:", -[_DPStringRandomizer unsignedIntValue](v13, "unsignedIntValue"), [v17 BOOLValue], a3);
        if (v24)
        {
          goto LABEL_41;
        }

        goto LABEL_59;
      }

      if (a4 == 15)
      {
        v13 = [v10 objectForKeyedSubscript:@"p"];
        v17 = [v10 objectForKeyedSubscript:@"prime"];
        v28 = [v10 objectForKeyedSubscript:@"alpha0"];
        v29 = [v10 objectForKeyedSubscript:@"alpha1"];
        v30 = v29;
        if (v13 && (v17 && v28 && v29 || !v17 && !v28 && !v29))
        {
          v41 = [v10 objectForKeyedSubscript:@"dynamicVectorSize"];
          v31 = [v41 BOOLValue];
          v32 = [(_DPStringRandomizer *)v13 unsignedIntegerValue];
          v33 = [v17 unsignedIntValue];
          [v28 doubleValue];
          v35 = v34;
          [v30 doubleValue];
          v37 = [_DPPrioPiRapporValueRandomizer randomizerWithEpsilon:v32 dimensionality:v31 dynamicVectorSize:v33 piRapporPrime:a3 piRapporAlpha0:v35 piRapporAlpha1:v36];
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
      if (a4 - 17 < 2)
      {
        v15 = _DPPINERandomizer;
LABEL_27:
        v19 = [(__objc2_class *)v15 randomizerWithMaxCentralEpsilon:v10 parameters:a3];
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

      if (a4 != 19)
      {
        if (a4 != 20)
        {
          goto LABEL_62;
        }

        v15 = _DPPreambleRandomizer;
        goto LABEL_27;
      }
    }

    v14 = _DPPrio3SumVectorRandomizer;
LABEL_21:
    v19 = [(__objc2_class *)v14 randomizerWithEpsilon:v10 parameters:a3];
    if (!v19)
    {
      goto LABEL_61;
    }

    goto LABEL_28;
  }

  if (a4 > 10)
  {
    if (a4 == 11)
    {
      v23 = [v10 objectForKeyedSubscript:@"p"];
      v13 = v23;
      if (!v23)
      {
        goto LABEL_62;
      }

      v21 = [_DPOHEBitValueRandomizer oheBitValueRandomizerWithDimensionality:[(_DPStringRandomizer *)v23 unsignedIntegerValue] epsilon:a3];
      if (v21)
      {
        goto LABEL_54;
      }

LABEL_60:

      goto LABEL_61;
    }

    if (a4 == 12)
    {
      v13 = [v10 objectForKeyedSubscript:@"n"];
      if (!v13)
      {
        goto LABEL_62;
      }

      v25 = [v10 objectForKeyedSubscript:@"delta"];
      if (!v25)
      {
        goto LABEL_60;
      }

      v17 = v25;
      v18 = _DPPrioPlusPlusValueRandomizer;
    }

    else
    {
      v13 = [v10 objectForKeyedSubscript:@"n"];
      if (!v13)
      {
        goto LABEL_62;
      }

      v16 = [v10 objectForKeyedSubscript:@"delta"];
      if (!v16)
      {
        goto LABEL_60;
      }

      v17 = v16;
      v18 = _DPPrioPlusPlusMetricsValueRandomizer;
    }

    [v17 doubleValue];
    v24 = [(__objc2_class *)v18 randomizerWithEpsilon:[(_DPStringRandomizer *)v13 unsignedIntValue] delta:a3 maxLength:v26];
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

  if (a4 - 5 < 2)
  {
    v20 = [v10 objectForKeyedSubscript:@"p"];
    v13 = v20;
    if (!v20)
    {
      goto LABEL_62;
    }

    v21 = [_DPBitValueRandomizer bitValueRandomizerWithDimensionality:[(_DPStringRandomizer *)v20 unsignedIntegerValue] epsilon:a3];
    if (!v21)
    {
      goto LABEL_60;
    }

LABEL_54:
    v39 = v12->_randomizer;
    v12->_randomizer = v21;

    goto LABEL_55;
  }

  if (a4 == 1)
  {
    v22 = [v10 objectForKeyedSubscript:@"p"];
    if (v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = [v10 objectForKeyedSubscript:@"sequenceP"];
      if (!v13)
      {
        goto LABEL_62;
      }
    }

    v21 = [_DPOBHRandomizer obhRandomizerWithDimensionality:[(_DPStringRandomizer *)v13 unsignedIntegerValue] epsilon:a3];
    if (v21)
    {
      goto LABEL_54;
    }

    goto LABEL_60;
  }

  if (a4 == 9)
  {
    v14 = _DPPrioValueRandomizer;
    goto LABEL_21;
  }

LABEL_62:

  return v13;
}

- (_DPStringRandomizer)initWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 range:(unint64_t)a6
{
  v16.receiver = self;
  v16.super_class = _DPStringRandomizer;
  v10 = [(_DPStringRandomizer *)&v16 init];
  v11 = v10;
  if (v10)
  {
    if (a5 != 1 || (v10->_algorithm = a4, a4 != 3) || ([_DPNumberRandomizer numberRandomizerWithRange:a6 epsilon:a3], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
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

+ (id)stringRandomizerWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 algorithmParameters:(id)a6 huffmanTableClass:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [[a1 alloc] initWithEpsilon:a4 privatizationAlgorithm:a5 dataAlgorithm:v13 algorithmParameters:v12 huffmanTableClass:a3];

  return v14;
}

+ (id)numbersRandomizerWithEpsilon:(double)a3 privatizationAlgorithm:(unint64_t)a4 dataAlgorithm:(unint64_t)a5 range:(unint64_t)a6
{
  v6 = [[a1 alloc] initWithEpsilon:a4 privatizationAlgorithm:a5 dataAlgorithm:a6 range:a3];

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