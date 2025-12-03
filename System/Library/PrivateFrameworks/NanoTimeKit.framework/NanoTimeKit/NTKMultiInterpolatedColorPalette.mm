@interface NTKMultiInterpolatedColorPalette
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (BOOL)isEqual:(id)equal;
- (NTKMultiInterpolatedColorPalette)initWithPalettes:(id)palettes;
- (id)_combineValue:(id)value and:(id)and with:(double)with onAxis:(unint64_t)axis;
- (id)interpolatedColorFromSelector:(SEL)selector parameter:(id)parameter;
- (id)valueForKey:(id)key;
- (void)setPalettes:(id)palettes;
- (void)setTransitionFractions:(id)fractions;
@end

@implementation NTKMultiInterpolatedColorPalette

- (NTKMultiInterpolatedColorPalette)initWithPalettes:(id)palettes
{
  palettesCopy = palettes;
  if (initWithPalettes__once != -1)
  {
    [NTKMultiInterpolatedColorPalette initWithPalettes:];
  }

  self->_arity = -1;
  v6 = 1;
  do
  {
    v7 = [palettesCopy count];
    if (exp2(v6) == v7)
    {
      self->_arity = v6;
      goto LABEL_9;
    }

    ++v6;
  }

  while (v6 != 8);
  if (self->_arity == -1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"invalid palette count: %lu (must be a power of two)", objc_msgSend(palettesCopy, "count")}];
  }

LABEL_9:
  [palettesCopy enumerateObjectsUsingBlock:&__block_literal_global_11_2];
  v23.receiver = self;
  v23.super_class = NTKMultiInterpolatedColorPalette;
  v8 = [(NTKMultiInterpolatedColorPalette *)&v23 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v8->_cache;
    v8->_cache = v9;

    objc_storeStrong(&v8->_palettes, palettes);
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8->_arity];
    freeAxes = v8->_freeAxes;
    v8->_freeAxes = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(palettesCopy, "count")}];
    paletteIndices = v8->_paletteIndices;
    v8->_paletteIndices = v13;

    [(NSMutableArray *)v8->_paletteIndices addObject:&unk_284185A10];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8->_arity];
    [(NTKMultiInterpolatedColorPalette *)v8 setColorInterpolators:v15];

    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8->_arity];
    [(NTKMultiInterpolatedColorPalette *)v8 setFloatInterpolators:v16];

    if (v8->_arity)
    {
      v17 = 0;
      do
      {
        v18 = _Block_copy(_defaultColorInterpolator);
        colorInterpolators = [(NTKMultiInterpolatedColorPalette *)v8 colorInterpolators];
        [colorInterpolators setObject:v18 atIndexedSubscript:v17];

        v20 = _Block_copy(_defaultFloatInterpolator);
        floatInterpolators = [(NTKMultiInterpolatedColorPalette *)v8 floatInterpolators];
        [floatInterpolators setObject:v20 atIndexedSubscript:v17];

        ++v17;
      }

      while (v8->_arity > v17);
    }
  }

  return v8;
}

void __53__NTKMultiInterpolatedColorPalette_initWithPalettes___block_invoke()
{
  v0 = _invalid;
  _invalid = &unk_28418BE48;

  v1 = _defaultColorInterpolator;
  _defaultColorInterpolator = &__block_literal_global_4_3;

  v2 = _defaultFloatInterpolator;
  _defaultFloatInterpolator = &__block_literal_global_7_1;
}

- (id)valueForKey:(id)key
{
  v4 = NSSelectorFromString(key);

  return [(NTKMultiInterpolatedColorPalette *)self interpolatedColorFromSelector:v4 parameter:0];
}

- (id)interpolatedColorFromSelector:(SEL)selector parameter:(id)parameter
{
  v45 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(selector);
  parameterCopy = [v7 stringWithFormat:@"%@-%@", v8, parameterCopy];

  v10 = [(NSCache *)self->_cache objectForKey:parameterCopy];
  if (v10)
  {
    v11 = v10;
    v12 = v11;
  }

  else
  {
    palettes = [(NTKMultiInterpolatedColorPalette *)self palettes];
    if ([(NSMutableArray *)self->_paletteIndices count]== 1)
    {
      v14 = [(NSMutableArray *)self->_paletteIndices objectAtIndexedSubscript:0];
      v15 = [palettes objectAtIndexedSubscript:{objc_msgSend(v14, "intValue")}];
      v11 = _PerformSelectorWithArgument(v15, selector, parameterCopy);
    }

    else
    {
      v41 = parameterCopy;
      v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_paletteIndices, "count")}];
      if ([(NSMutableArray *)self->_paletteIndices count])
      {
        v17 = 0;
        do
        {
          v18 = [(NSMutableArray *)self->_paletteIndices objectAtIndexedSubscript:v17];
          v19 = [palettes objectAtIndexedSubscript:{objc_msgSend(v18, "intValue")}];
          v20 = _PerformSelectorWithArgument(v19, selector, parameterCopy);

          if (v20)
          {
            v21 = v16;
            v22 = v20;
          }

          else
          {
            v22 = _invalid;
            v21 = v16;
          }

          [v21 addObject:v22];

          ++v17;
        }

        while ([(NSMutableArray *)self->_paletteIndices count]> v17);
      }

      v40 = palettes;
      v42 = parameterCopy;
      if ([(NSMutableArray *)self->_freeAxes count])
      {
        v23 = 0;
        do
        {
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count") >> 1}];
          transitionFractions = [(NTKMultiInterpolatedColorPalette *)self transitionFractions];
          v25 = [(NSMutableArray *)self->_freeAxes objectAtIndexedSubscript:v23];
          v26 = [transitionFractions objectAtIndexedSubscript:{objc_msgSend(v25, "intValue")}];
          [v26 floatValue];
          v28 = v27;

          if ([v16 count])
          {
            v29 = 0;
            v30 = v28;
            do
            {
              v31 = [v16 objectAtIndexedSubscript:v29];
              v32 = [v16 objectAtIndexedSubscript:v29 + 1];
              v33 = [(NSMutableArray *)self->_freeAxes objectAtIndexedSubscript:v23];
              v34 = -[NTKMultiInterpolatedColorPalette _combineValue:and:with:onAxis:](self, "_combineValue:and:with:onAxis:", v31, v32, [v33 intValue], v30);

              [v14 addObject:v34];
              v29 += 2;
            }

            while ([v16 count] > v29);
          }

          ++v23;
          v16 = v14;
        }

        while ([(NSMutableArray *)self->_freeAxes count]> v23);
      }

      else
      {
        v14 = v16;
      }

      parameterCopy = v41;
      if ([v14 count] != 1)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Expected one palette value to remain at this point"];
      }

      v11 = [v14 objectAtIndexedSubscript:0];
      parameterCopy = v42;
      palettes = v40;
    }

    if (v11 == _invalid)
    {
      v36 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromSelector(selector);
        v38 = v37 = parameterCopy;
        *buf = 138412290;
        v44 = v38;
        _os_log_impl(&dword_22D9C5000, v36, OS_LOG_TYPE_DEFAULT, "MultiInterpolatedPalette got invalid value for %@", buf, 0xCu);

        parameterCopy = v37;
      }

      systemCyanColor = [MEMORY[0x277D75348] systemCyanColor];
    }

    else
    {
      if (v11)
      {
        [(NSCache *)self->_cache setObject:v11 forKey:parameterCopy];
      }

      systemCyanColor = v11;
    }

    v12 = systemCyanColor;
  }

  return v12;
}

- (id)_combineValue:(id)value and:(id)and with:(double)with onAxis:(unint64_t)axis
{
  valueCopy = value;
  andCopy = and;
  v12 = _invalid;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      colorInterpolators = [(NTKMultiInterpolatedColorPalette *)self colorInterpolators];
      v14 = [colorInterpolators objectAtIndexedSubscript:axis];

      v15 = (v14)[2](v14, valueCopy, andCopy, with);
LABEL_7:
      v21 = v15;

      v12 = v21;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [valueCopy floatValue];
      v17 = v16;
      [andCopy floatValue];
      v19 = v18;
      floatInterpolators = [(NTKMultiInterpolatedColorPalette *)self floatInterpolators];
      v14 = [floatInterpolators objectAtIndexedSubscript:axis];

      (v14[2])(v14, v17, v19, with);
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      goto LABEL_7;
    }
  }

LABEL_8:

  return v12;
}

- (void)setTransitionFractions:(id)fractions
{
  v43 = *MEMORY[0x277D85DE8];
  fractionsCopy = fractions;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([fractionsCopy count] != self->_arity)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"transitionFractions count must be %lu", self->_arity}];
  }

  if (([(NSArray *)self->_transitionFractions isEqual:fractionsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_transitionFractions, fractions);
    [(NSCache *)self->_cache removeAllObjects];
    [(NSMutableArray *)self->_freeAxes removeAllObjects];
    [(NSMutableArray *)self->_paletteIndices removeAllObjects];
    v7 = [fractionsCopy count] - 1;
    if (v7 >= 0)
    {
      do
      {
        v8 = [fractionsCopy objectAtIndexedSubscript:v7];
        [v8 floatValue];
        v10 = v9;

        if (fabs(v10) >= 0.00000011920929)
        {
          v16 = [(NSMutableArray *)self->_paletteIndices count];
          paletteIndices = self->_paletteIndices;
          if (fabs(v10 + -1.0) >= 0.00000011920929)
          {
            if (v16)
            {
              v20 = [(NSMutableArray *)paletteIndices count]- 1;
              if (v20 >= 0)
              {
                do
                {
                  v21 = v20;
                  v22 = [(NSMutableArray *)self->_paletteIndices objectAtIndexedSubscript:v20];
                  unsignedIntValue = [v22 unsignedIntValue];

                  v24 = self->_paletteIndices;
                  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(2 * unsignedIntValue) | 1];
                  [(NSMutableArray *)v24 insertObject:v25 atIndex:v21 + 1];

                  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2 * unsignedIntValue];
                  [(NSMutableArray *)self->_paletteIndices setObject:v26 atIndexedSubscript:v21];

                  v20 = v21 - 1;
                }

                while (v21);
              }
            }

            else
            {
              [(NSMutableArray *)paletteIndices addObject:&unk_284185A10];
              [(NSMutableArray *)self->_paletteIndices addObject:&unk_284185A28];
            }

            freeAxes = self->_freeAxes;
            v3 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
            [(NSMutableArray *)freeAxes insertObject:v3 atIndex:0];

            continue;
          }

          if (v16)
          {
            if ([(NSMutableArray *)paletteIndices count])
            {
              v17 = 0;
              do
              {
                v18 = MEMORY[0x277CCABB0];
                v19 = [(NSMutableArray *)self->_paletteIndices objectAtIndexedSubscript:v17];
                v3 = [v18 numberWithInt:{(2 * objc_msgSend(v19, "intValue")) | 1}];
                [(NSMutableArray *)self->_paletteIndices setObject:v3 atIndexedSubscript:v17];

                ++v17;
              }

              while ([(NSMutableArray *)self->_paletteIndices count]> v17);
            }

            continue;
          }

          v27 = &unk_284185A28;
        }

        else
        {
          v11 = [(NSMutableArray *)self->_paletteIndices count];
          paletteIndices = self->_paletteIndices;
          if (v11)
          {
            if ([(NSMutableArray *)paletteIndices count])
            {
              v13 = 0;
              do
              {
                v14 = MEMORY[0x277CCABB0];
                v15 = [(NSMutableArray *)self->_paletteIndices objectAtIndexedSubscript:v13];
                v3 = [v14 numberWithInt:{2 * objc_msgSend(v15, "intValue")}];
                [(NSMutableArray *)self->_paletteIndices setObject:v3 atIndexedSubscript:v13];

                ++v13;
              }

              while ([(NSMutableArray *)self->_paletteIndices count]> v13);
            }

            continue;
          }

          v27 = &unk_284185A10;
        }

        [(NSMutableArray *)paletteIndices addObject:v27];
      }

      while (v7-- > 0);
    }

    v30 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [fractionsCopy valueForKey:@"description"];
      v32 = [v31 componentsJoinedByString:{@", "}];
      v33 = [(NSMutableArray *)self->_freeAxes count];
      if (v33)
      {
        v3 = [(NSMutableArray *)self->_freeAxes valueForKey:@"description"];
        v34 = [v3 componentsJoinedByString:{@", "}];
      }

      else
      {
        v34 = @"(none)";
      }

      v35 = [(NSMutableArray *)self->_paletteIndices valueForKey:@"description"];
      v36 = [v35 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v38 = v32;
      v39 = 2112;
      v40 = v34;
      v41 = 2112;
      v42 = v36;
      _os_log_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_DEFAULT, "MultiInterpolatedPalette setTransitionFractions to %@ and have free axes %@ and palettes %@", buf, 0x20u);

      if (v33)
      {
      }
    }
  }
}

- (void)setPalettes:(id)palettes
{
  objc_storeStrong(&self->_palettes, palettes);
  palettesCopy = palettes;
  [(NSCache *)self->_cache removeAllObjects];
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = NSStringFromSelector(method);
  v6 = [v5 componentsSeparatedByString:@":"];
  v7 = [v6 count];

  if (v7 == 2)
  {
    v8 = "@@:@";
    v9 = NTKMultiInterpolatedColorPalette_singleArgumentMethodImplementation;
  }

  else
  {
    if (v7 != 1)
    {
      v13.receiver = self;
      v13.super_class = &OBJC_METACLASS___NTKMultiInterpolatedColorPalette;
      v10 = objc_msgSendSuper2(&v13, sel_resolveInstanceMethod_, method);
      goto LABEL_7;
    }

    v8 = "@@:";
    v9 = NTKMultiInterpolatedColorPalette_noArgumentMethodImplementation;
  }

  v10 = class_addMethod(self, method, v9, v8);
LABEL_7:
  v11 = v10;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self || ([(NTKMultiInterpolatedColorPalette *)equalCopy palettes], v6 = objc_claimAutoreleasedReturnValue(), [(NTKMultiInterpolatedColorPalette *)self palettes], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7))
  {
LABEL_14:
    v31 = 1;
    goto LABEL_17;
  }

  palettes = [(NTKMultiInterpolatedColorPalette *)v5 palettes];
  v9 = [palettes count];
  palettes2 = [(NTKMultiInterpolatedColorPalette *)self palettes];
  if (v9 != [palettes2 count])
  {

    goto LABEL_16;
  }

  transitionFractions = [(NTKMultiInterpolatedColorPalette *)self transitionFractions];
  v12 = [transitionFractions count];
  transitionFractions2 = [(NTKMultiInterpolatedColorPalette *)v5 transitionFractions];
  v14 = [transitionFractions2 count];

  if (v12 != v14)
  {
LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  transitionFractions3 = [(NTKMultiInterpolatedColorPalette *)self transitionFractions];
  v16 = [transitionFractions3 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      transitionFractions4 = [(NTKMultiInterpolatedColorPalette *)self transitionFractions];
      v19 = [transitionFractions4 objectAtIndexedSubscript:v17];
      transitionFractions5 = [(NTKMultiInterpolatedColorPalette *)v5 transitionFractions];
      v21 = [transitionFractions5 objectAtIndexedSubscript:v17];

      if (v19 != v21)
      {
        goto LABEL_16;
      }

      ++v17;
      transitionFractions6 = [(NTKMultiInterpolatedColorPalette *)self transitionFractions];
      v23 = [transitionFractions6 count];
    }

    while (v23 > v17);
  }

  palettes3 = [(NTKMultiInterpolatedColorPalette *)self palettes];
  v25 = [palettes3 count];

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = 0;
  do
  {
    palettes4 = [(NTKMultiInterpolatedColorPalette *)self palettes];
    v28 = [palettes4 objectAtIndexedSubscript:v26];
    palettes5 = [(NTKMultiInterpolatedColorPalette *)v5 palettes];
    v30 = [palettes5 objectAtIndexedSubscript:v26];
    v31 = [v28 isEqual:v30];

    if ((v31 & 1) == 0)
    {
      break;
    }

    ++v26;
    palettes6 = [(NTKMultiInterpolatedColorPalette *)self palettes];
    v33 = [palettes6 count];
  }

  while (v33 > v26);
LABEL_17:

  return v31;
}

@end