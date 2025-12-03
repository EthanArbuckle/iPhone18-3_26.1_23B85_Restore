@interface ActivationMapTools
+ (BOOL)matchLabel:(int)label toModelCharacter:(unsigned __int16)character;
+ (id)characterCentroidsFromActivationMap:(const void *)map codeMap:(const int *)codeMap decodedSymbolIndexes:(id *)indexes;
+ (id)characterCentroidsFromActivationMap:(void *)map codeMap:(const int *)codeMap potentialPatterns:(id)patterns minWordLengthFractionForCorrelationPeak:(float)peak bestModelIndex:(int64_t *)index;
+ (id)decodeStringWithCentroids:(id)centroids activationMap:(const void *)map codeMap:(const int *)codeMap model:(id)model;
+ (id)fitSpacingModel:(id)model toActivationMap:(const void *)map codeMap:(const int *)codeMap minWordLengthFractionForCorrelationPeak:(float)peak cost:(float *)cost;
+ (id)textFromActivationMap:(void *)map codeMap:(const int *)codeMap invert:(BOOL)invert;
+ (void)extractActivationSignals:(void *)signals fromActivationMap:(const void *)map forModel:(id)model codeMap:(const int *)codeMap;
@end

@implementation ActivationMapTools

+ (id)characterCentroidsFromActivationMap:(const void *)map codeMap:(const int *)codeMap decodedSymbolIndexes:(id *)indexes
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (!map)
  {
    goto LABEL_50;
  }

  v10 = *map;
  v9 = *(map + 1);
  if (v9 == *map)
  {
    goto LABEL_50;
  }

  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = v11 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    while (codeMap[v12] != 103)
    {
      if (v13 == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = -1;
  }

  v14 = 0;
  v41 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    while (1)
    {
      v18 = &v10[3 * v14];
      v19 = *v18;
      v20 = &(*v18)[v12];
      if (v12)
      {
        v21 = v19 + 1;
        v22 = *v18;
        if (v19 + 1 != v20)
        {
          v23 = *v19;
          v22 = *v18;
          v24 = v19 + 1;
          do
          {
            v25 = *v24++;
            v26 = v25;
            if (v23 < v25)
            {
              v23 = v26;
              v22 = v21;
            }

            v21 = v24;
          }

          while (v24 != v20);
        }
      }

      else
      {
        v22 = *v18;
      }

      v27 = (v20 + 4);
      v28 = v18[1];
      v29 = (v20 + 8);
      if (v27 != v28 && v29 != v28)
      {
        v31 = *v27;
        v32 = v29;
        do
        {
          v33 = *v32++;
          v34 = v33;
          if (v31 < v33)
          {
            v31 = v34;
            v27 = v29;
          }

          v29 = v32;
        }

        while (v32 != v28);
      }

      if (*v22 <= *v27)
      {
        v22 = v27;
      }

      v35 = v22 - v19;
      v36 = *v22;
      v37 = *v22;
      if (v17 != 2)
      {
        break;
      }

      if (v37 >= 0.2)
      {
        if (v36 >= v41)
        {
          v15 = v35 >> 2;
          v41 = v36;
        }

        v17 = 2;
        goto LABEL_47;
      }

      if (v14 - v16 < 2)
      {
        goto LABEL_39;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v16 + v14) >> 1];
      [array addObject:v38];

      if (indexes)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
        [array2 addObject:v39];

        ++v14;
        v10 = *map;
        v9 = *(map + 1);
        v17 = 1;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((v9 - *map) >> 3))
        {
          goto LABEL_49;
        }
      }

      else
      {
        ++v14;
        v10 = *map;
        v9 = *(map + 1);
        v17 = 1;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((v9 - *map) >> 3))
        {
          goto LABEL_50;
        }
      }
    }

    if (v17 == 1)
    {
      if (v37 < 0.2)
      {
LABEL_39:
        v17 = 1;
        goto LABEL_47;
      }

      v15 = v35 >> 2;
      v41 = v36;
      v17 = 2;
    }

    else if (v37 < 0.2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v16 = v14;
LABEL_47:
    ++v14;
  }

  while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3));
  if (!indexes)
  {
    goto LABEL_50;
  }

LABEL_49:
  *indexes = array2;
LABEL_50:

  return array;
}

+ (id)characterCentroidsFromActivationMap:(void *)map codeMap:(const int *)codeMap potentialPatterns:(id)patterns minWordLengthFractionForCorrelationPeak:(float)peak bestModelIndex:(int64_t *)index
{
  v34 = *MEMORY[0x277D85DE8];
  patternsCopy = patterns;
  indexCopy = index;
  *index = -1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = patternsCopy;
  v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v15 = 0;
    v16 = 0;
    v17 = *v30;
    v18 = INFINITY;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v28 = 0.0;
        *&v14 = peak;
        v21 = [self fitSpacingModel:v20 toActivationMap:map codeMap:codeMap minWordLengthFractionForCorrelationPeak:&v28 cost:v14];
        v22 = v21;
        v23 = v28;
        if (v28 < v18)
        {
          v24 = v21;

          *indexCopy = v15;
          v16 = v24;
          v18 = v23;
        }

        ++v15;
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)decodeStringWithCentroids:(id)centroids activationMap:(const void *)map codeMap:(const int *)codeMap model:(id)model
{
  v61 = *MEMORY[0x277D85DE8];
  centroidsCopy = centroids;
  modelCopy = model;
  v9 = [modelCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
  v10 = [v9 length];
  if (v10 == [centroidsCopy count])
  {
    string = [MEMORY[0x277CCAB68] string];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = centroidsCopy;
    v12 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v12)
    {
      v48 = 0;
      v49 = v9;
      v46 = *v57;
      v50 = string;
      while (2)
      {
        v45 = v12;
        v13 = 0;
        do
        {
          if (*v57 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v56 + 1) + 8 * v13);
          v15 = [v9 characterAtIndex:v48];
          intValue = [v14 intValue];
          if (intValue <= 2)
          {
            v17 = 2;
          }

          else
          {
            v17 = intValue;
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
          v19 = v18 - 1;
          v20 = v18 - 1;
          if (v19 >= intValue + 2)
          {
            v21 = (intValue + 2);
          }

          else
          {
            v21 = v20;
          }

          v22 = (*(*map + 24 * intValue + 8) - *(*map + 24 * intValue)) >> 2;
          v53 = 0;
          std::vector<double>::vector[abi:ne200100](&__p, v22);
          string2 = [MEMORY[0x277CCAB68] string];
          v24 = (v17 - 2);
          v47 = v13;
          if (v24 <= v21)
          {
            v31 = (*map + 24 * v24);
            v32 = v31 + 1;
            if (v31[1] == *v31)
            {
              v25 = 0;
            }

            else
            {
              v25 = 0;
              while (1)
              {
                v33 = 0;
                v34 = -INFINITY;
                v35 = 0xFFFFFFFFLL;
                do
                {
                  v36 = [self matchLabel:codeMap[v33] toModelCharacter:v15];
                  v37 = *v31;
                  if (v36 && *(v37 + 4 * v33) > v34)
                  {
                    v35 = v33;
                    v34 = *(v37 + 4 * v33);
                  }

                  ++v33;
                }

                while (v33 < (*v32 - v37) >> 2);
                if ((v35 & 0x80000000) != 0)
                {
                  break;
                }

                *(__p + v35) = *(__p + v35) + v34;
                LOWORD(v53) = codeMap[v35];
                string = v50;
                v38 = [MEMORY[0x277CCACA8] stringWithCharacters:&v53 length:1];
                v9 = v49;
                [string2 appendString:v38];

                v25 = v24 >= v21;
                if (v21 + 1 == v24 + 1)
                {
                  goto LABEL_15;
                }

                v31 = (*map + 24 * (v24 + 1));
                v32 = v31 + 1;
                ++v24;
                if (v31[1] == *v31)
                {
                  goto LABEL_37;
                }
              }

              v9 = v49;
            }

LABEL_37:
            string = v50;
          }

          else
          {
            v25 = 1;
LABEL_15:
            if (__p == v55)
            {
              v27 = __p;
            }

            else
            {
              v26 = (__p + 8);
              v27 = __p;
              if (__p + 8 != v55)
              {
                v23 = *__p;
                v27 = __p;
                v28 = (__p + 8);
                do
                {
                  v29 = *v28++;
                  v30 = v29;
                  if (v23 < v29)
                  {
                    v23 = v30;
                    v27 = v26;
                  }

                  v26 = v28;
                }

                while (v28 != v55);
              }
            }

            LOWORD(v53) = *(codeMap + ((v27 - __p) << 29 >> 30));
            v39 = [MEMORY[0x277CCACA8] stringWithCharacters:&v53 length:{1, v23}];
            [string appendString:v39];

            ++v48;
          }

          if (__p)
          {
            v55 = __p;
            operator delete(__p);
          }

          if (!v25)
          {

            v40 = 0;
            goto LABEL_46;
          }

          v13 = v47 + 1;
        }

        while (v47 + 1 != v45);
        v12 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v40 = string;
LABEL_46:
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

+ (id)textFromActivationMap:(void *)map codeMap:(const int *)codeMap invert:(BOOL)invert
{
  v61[3] = *MEMORY[0x277D85DE8];
  v5 = *map;
  v6 = *(map + 1) - *map;
  if (v6)
  {
    codeMapCopy = codeMap;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v11 = v5;
    v10 = *v5;
    v12 = -1431655765 * ((v11[1] - v10) >> 3);
    if (v9 < 2)
    {
      std::vector<std::vector<float>>::resize(&v52, v12);
      if (v12 >= 1)
      {
        v27 = 0;
        v28 = v12 & 0x7FFFFFFF;
        do
        {
          v29 = **map;
          if (v52 != v29)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v52 + v27), *(v29 + v27), *(v29 + v27 + 8), (*(v29 + v27 + 8) - *(v29 + v27)) >> 2);
          }

          v27 += 24;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      v14 = *v10;
      v13 = v10[1];
      std::vector<std::vector<float>>::resize(&v52, v12);
      if (v12 >= 1)
      {
        v16 = 0;
        v17 = v13 - v14;
        v18 = (v13 - v14) >> 2;
        v19 = v12 & 0x7FFFFFFF;
        v20 = (v17 >> 2) & 0x7FFFFFFF;
        do
        {
          if (v18 >= 1)
          {
            v21 = 0;
            do
            {
              v22 = *map;
              v23 = 0.0;
              v24 = v9 & 0x7FFFFFFF;
              do
              {
                v25 = *v22;
                v22 += 3;
                v23 = v23 + *(*(v25 + 24 * v16) + 4 * v21);
                --v24;
              }

              while (v24);
              *&v55 = v23 / v9;
              std::vector<float>::push_back[abi:ne200100]((v52 + 24 * v16), &v55);
              ++v21;
            }

            while (v21 != v20);
          }

          ++v16;
        }

        while (v16 != v19);
      }
    }

    if (v53 == v52)
    {
      v26 = 0;
    }

    else
    {
      v55 = 0;
      LODWORD(v15) = 1060320051;
      v30 = codeMapCopy;
      v31 = [self characterCentroidsFromActivationMap:&v52 codeMap:codeMapCopy potentialPatterns:&unk_285976740 minWordLengthFractionForCorrelationPeak:&v55 bestModelIndex:v15];
      v32 = MEMORY[0x277CBEBF8];
      if (v31 && ([&unk_285976740 objectAtIndexedSubscript:v55], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "decodeStringWithCentroids:activationMap:codeMap:model:", v31, &v52, codeMapCopy, v33), v34 = objc_claimAutoreleasedReturnValue(), v33, v34))
      {
        v35 = [MEMORY[0x277CCACA8] _newZStringWithString:v34];
        v60[0] = v35;
        v60[1] = v31;
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3)];
        v60[2] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
      }

      else
      {
        v61[0] = &stru_2859636D0;
        v61[1] = v32;
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3), codeMapCopy}];
        v61[2] = v35;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
        v34 = 0;
      }

      v51 = 0;
      LODWORD(v38) = 1050253722;
      v39 = [self characterCentroidsFromActivationMap:&v52 codeMap:v30 potentialPatterns:&unk_285976758 minWordLengthFractionForCorrelationPeak:&v51 bestModelIndex:v38];
      if (v39 && ([&unk_285976758 objectAtIndexedSubscript:v51], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "decodeStringWithCentroids:activationMap:codeMap:model:", v39, &v52, v30, v40), v41 = objc_claimAutoreleasedReturnValue(), v40, v41))
      {
        v42 = [v39 mutableCopy];
        for (i = 0; i < [v39 count]; ++i)
        {
          v44 = MEMORY[0x277CCABB0];
          v45 = [v42 objectAtIndexedSubscript:i];
          v46 = [v44 numberWithInteger:{2 * objc_msgSend(v45, "integerValue")}];
          [v42 setObject:v46 atIndexedSubscript:i];
        }

        v58[0] = v41;
        v58[1] = v42;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0x5555555555555556 * ((v53 - v52) >> 3)];
        v58[2] = v48;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
      }

      else
      {
        v59[0] = &stru_2859636D0;
        v59[1] = v32;
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3), codeMapCopy}];
        v59[2] = v42;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
        v41 = 0;
      }

      v56[0] = @"CardNumber";
      v56[1] = @"Expiration";
      v57[0] = v37;
      v57[1] = v47;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    }

    v55 = &v52;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v55);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (void)extractActivationSignals:(void *)signals fromActivationMap:(const void *)map forModel:(id)model codeMap:(const int *)codeMap
{
  modelCopy = model;
  if (*(map + 1) != *map)
  {
    v40 = modelCopy;
    v10 = [modelCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
    v11 = 0;
    v41 = **map;
    v42 = *(*map + 8);
    v12 = (v42 - v41) >> 2;
    v13 = (signals + 8);
    while (v11 < [v10 length])
    {
      v14 = [v10 characterAtIndex:v11];
      v15 = v14;
      v16 = *v13;
      if (!*v13)
      {
        goto LABEL_11;
      }

      v17 = (signals + 8);
      do
      {
        if (*(v16 + 8) >= v14)
        {
          v17 = v16;
        }

        v16 = *&v16[8 * (*(v16 + 8) < v14)];
      }

      while (v16);
      if (v17 == v13 || *(v17 + 8) > v14)
      {
LABEL_11:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v44 = 0;
        if (v42 != v41)
        {
          v18 = 0;
          do
          {
            if ([self matchLabel:codeMap[v18] toModelCharacter:v15])
            {
              std::vector<unsigned int>::push_back[abi:ne200100](&v50, &v44);
            }

            v18 = ++v44;
          }

          while (v12 > v18);
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
        v44 = 0;
        std::vector<float>::vector[abi:ne200100](&v48, v19);
        v20 = *map;
        v21 = *(map + 1);
        v22 = v48;
        v23 = v21 - *map;
        if (v21 != *map)
        {
          v24 = 0;
          v25 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 3);
          v26 = v50;
          v27 = v51;
          if (v25 <= 1)
          {
            v25 = 1;
          }

          do
          {
            if (v26 != v27)
            {
              v28 = v20[3 * v24];
              v29 = v22[v24];
              v30 = v26;
              do
              {
                v31 = *v30++;
                v29 = v29 + *(v28 + 4 * v31);
                v22[v24] = v29;
              }

              while (v30 != v27);
            }

            ++v24;
          }

          while (v24 != v25);
        }

        v44 = v15;
        v46 = 0;
        v47 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v22, v49, (v49 - v22) >> 2);
        std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(signals, v44);
        if (__p)
        {
          v46 = __p;
          operator delete(__p);
        }

        if (v48)
        {
          v49 = v48;
          operator delete(v48);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }
      }

      ++v11;
    }

    if (v42 == v41)
    {
LABEL_36:
      v32 = 0;
    }

    else
    {
      v32 = 0;
      if (v12 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = (v42 - v41) >> 2;
      }

      while (codeMap[v32] != 103)
      {
        if (v33 == ++v32)
        {
          goto LABEL_36;
        }
      }
    }

    std::vector<float>::vector[abi:ne200100](&v50, 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3));
    v34 = *map;
    v35 = v50;
    v36 = *(map + 1) - *map;
    if (v36)
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
      if (v37 <= 1)
      {
        v37 = 1;
      }

      v38 = v50;
      do
      {
        v39 = *v34;
        v34 += 3;
        *v38++ = 1.0 - *(v39 + 4 * v32);
        --v37;
      }

      while (v37);
    }

    v44 = -1;
    v46 = 0;
    v47 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v35, v51, (v51 - v35) >> 2);
    std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(signals, v44);
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    modelCopy = v40;
  }
}

+ (BOOL)matchLabel:(int)label toModelCharacter:(unsigned __int16)character
{
  v4 = character == label;
  if (character == 64)
  {
    v4 = (label - 58) < 0xFFFFFFF6;
  }

  v5 = character == 63 || v4;
  if (character == 35)
  {
    v5 = (label - 48) < 0xA;
  }

  return label != 103 && v5;
}

+ (id)fitSpacingModel:(id)model toActivationMap:(const void *)map codeMap:(const int *)codeMap minWordLengthFractionForCorrelationPeak:(float)peak cost:(float *)cost
{
  v217 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v11 = [self characterCentroidsFromActivationMap:map codeMap:codeMap decodedSymbolIndexes:0];
  if ([v11 count] < 2)
  {
    v12 = 0;
    goto LABEL_234;
  }

  std::vector<int>::vector[abi:ne200100](&v209, [v11 count] - 1);
  v13 = 0;
  v187 = v11;
  while (v13 + 1 < [v11 count])
  {
    v14 = [v11 objectAtIndexedSubscript:v13];
    intValue = [v14 intValue];

    v16 = [v187 objectAtIndexedSubscript:v13 + 1];
    LODWORD(v14) = [v16 intValue];

    *(v209 + v13++) = v14 - intValue;
    v11 = v187;
  }

  v206 = 0;
  v207 = 0;
  v208 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v17 = v209;
  if (v210 == v209)
  {
    v18 = 0;
    v47 = 0;
  }

  else
  {
    codeMapCopy = codeMap;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = v17[v20];
      LODWORD(v200[0]) = v21;
      v22 = v204 - v19;
      if (v204 == v19)
      {
        goto LABEL_17;
      }

      v23 = 0;
      v24 = v21;
      v25 = v22 >> 2;
      if ((v22 >> 2) <= 1)
      {
        v25 = 1;
      }

      v26 = -1;
      v27 = INFINITY;
      do
      {
        v28 = vabds_f32(*&v19[4 * v23], v24);
        if (v28 < 4.0 && v28 < v27)
        {
          v27 = v28;
          v26 = v23;
        }

        ++v23;
      }

      while (v25 != v23);
      if (v26 < 0)
      {
LABEL_17:
        std::vector<int>::vector[abi:ne200100](&__p, 1uLL);
        v29 = v207;
        if (v207 >= v208)
        {
          v30 = 0xAAAAAAAAAAAAAAABLL * ((v207 - v206) >> 3);
          v31 = v30 + 1;
          if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v208 - v206) >> 3) > v31)
          {
            v31 = 0x5555555555555556 * ((v208 - v206) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v208 - v206) >> 3) >= 0x555555555555555)
          {
            v32 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v32 = v31;
          }

          v215 = &v206;
          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(&v206, v32);
          }

          v33 = (8 * ((v207 - v206) >> 3));
          *v33 = 0;
          v33[1] = 0;
          v33[2] = 0;
          *v33 = __p;
          v33[2] = v202;
          __p = 0uLL;
          v202 = 0;
          v34 = 24 * v30 + 24;
          v35 = (24 * v30 - (v207 - v206));
          memcpy(v33 - (v207 - v206), v206, v207 - v206);
          v36 = v206;
          v37 = v208;
          v206 = v35;
          v207 = v34;
          v208 = 0;
          v213 = v36;
          v214 = v37;
          __src = v36;
          v212 = v36;
          std::__split_buffer<std::vector<float>>::~__split_buffer(&__src);
          v207 = v34;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        else
        {
          *v207 = 0;
          *(v29 + 1) = 0;
          *(v29 + 2) = 0;
          *v29 = __p;
          *(v29 + 2) = v202;
          v207 = v29 + 24;
        }

        LODWORD(__src) = 0;
        std::vector<float>::push_back[abi:ne200100](&v203, &__src);
        v18 = v206;
        v26 = -1 - 1431655765 * ((v207 - v206) >> 3);
      }

      else
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v18[24 * v26], v200);
        v18 = v206;
      }

      v38 = &v18[24 * v26];
      v39 = *v38;
      v41 = v38[1] - *v38;
      v40 = v41 == 0;
      v42 = v41 >> 2;
      if (v40)
      {
        v44 = 0.0;
      }

      else
      {
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        v44 = 0.0;
        do
        {
          v45 = *v39++;
          v44 = v44 + v45;
          --v43;
        }

        while (v43);
      }

      v46 = v44 / v42;
      v19 = v203;
      *(v203 + v26) = v46;
      ++v20;
      v17 = v209;
    }

    while (v20 < (v210 - v209) >> 2);
    v47 = v207;
    codeMap = codeMapCopy;
    v11 = v187;
  }

  v48 = -1431655765 * ((v47 - v18) >> 3);
  if (v48 < 1)
  {
    v52 = 0.0;
  }

  else
  {
    v49 = v203;
    v50 = v48 & 0x7FFFFFFF;
    v51 = v18 + 8;
    v52 = 0.0;
    LODWORD(v53) = 0x80000000;
    do
    {
      if (v53 < ((*v51 - *(v51 - 1)) >> 2))
      {
        v52 = *v49;
        v53 = (*v51 - *(v51 - 1)) >> 2;
      }

      ++v49;
      v51 += 3;
      --v50;
    }

    while (v50);
  }

  *(&__p + 1) = 0;
  v202 = 0;
  *&__p = &__p + 8;
  [self extractActivationSignals:&__p fromActivationMap:map forModel:modelCopy codeMap:codeMap];
  if (!v202)
  {
    v12 = 0;
    goto LABEL_230;
  }

  v178 = [modelCopy componentsSeparatedByString:@" "];
  v54 = [v178 count];
  memset(v200, 0, sizeof(v200));
  __src = v200;
  LOBYTE(v212) = 0;
  if (v54)
  {
    if (v54 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(v200, v54);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v55 = [v178 count];
  memset(v199, 0, sizeof(v199));
  __src = v199;
  LOBYTE(v212) = 0;
  if (v55)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](v199, v55);
  }

  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v56 = v178;
  v57 = [v56 countByEnumeratingWithState:&v195 objects:v216 count:16];
  if (v57)
  {
    v183 = 0;
    v182 = *v196;
    do
    {
      v185 = 0;
      v181 = v57;
      do
      {
        if (*v196 != v182)
        {
          objc_enumerationMutation(v56);
        }

        v58 = 0;
        v59 = *(*(&v195 + 1) + 8 * v185);
        v194[0] = 0;
        v194[1] = 0;
        v193 = v194;
        while (v58 < [v59 length])
        {
          v60 = [v59 characterAtIndex:v58];
          v61 = v60;
          v62 = v194[0];
          if (!v194[0])
          {
            goto LABEL_68;
          }

          v63 = v194;
          do
          {
            if (*(v62 + 8) >= v60)
            {
              v63 = v62;
            }

            v62 = v62[*(v62 + 8) < v60];
          }

          while (v62);
          if (v63 == v194 || *(v63 + 8) > v60)
          {
LABEL_68:
            v64 = [v59 length];
            LODWORD(__src) = 0;
            std::vector<float>::vector[abi:ne200100](&v191, (((v64 + 1) * v52) + 1.0));
            for (i = 0; [v59 length] + 2 > i; ++i)
            {
              if (i)
              {
                if (i != [v59 length] + 1 && objc_msgSend(v59, "characterAtIndex:", i - 1) == v61)
                {
                  v66 = ((i * v52) + 0.0);
                  if ((v66 & 0x80000000) == 0 && v66 < (v192 - v191) >> 2)
                  {
                    *(v191 + v66) = 1065353216;
                  }
                }
              }
            }

            LODWORD(__src) = v61;
            v213 = 0;
            v214 = 0;
            v212 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v212, v191, v192, (v192 - v191) >> 2);
            std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(&v193, __src);
            if (v212)
            {
              v213 = v212;
              operator delete(v212);
            }

            if (v191)
            {
              v192 = v191;
              operator delete(v191);
            }
          }

          ++v58;
        }

        v67 = [v59 length];
        LODWORD(__src) = 0;
        std::vector<float>::vector[abi:ne200100](&v191, (((v67 + 1) * v52) + 1.0));
        if (v192 != v191)
        {
          *v191 = -1082130432;
        }

        v68 = ((([v59 length] + 1) * v52) + 0.0);
        v69 = v191;
        v70 = v192;
        if ((v68 & 0x80000000) != 0)
        {
          v71 = (v192 - v191) >> 2;
        }

        else
        {
          v71 = (v192 - v191) >> 2;
          if (v71 > v68)
          {
            *(v191 + v68) = -1082130432;
          }
        }

        LODWORD(__src) = -1;
        v213 = 0;
        v214 = 0;
        v212 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v212, v69, v70, v71);
        std::__tree<std::__value_type<int,std::vector<float>>,std::__map_value_compare<int,std::__value_type<int,std::vector<float>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<float>>>>::__emplace_unique_key_args<int,std::pair<int,std::vector<float>>>(&v193, __src);
        if (v212)
        {
          v213 = v212;
          operator delete(v212);
        }

        v72 = 0xAAAAAAAAAAAAAAABLL * ((*(map + 1) - *map) >> 3);
        LODWORD(v188) = 0;
        std::vector<float>::vector[abi:ne200100](&__src, v72);
        v73 = __p;
        if (__p == (&__p + 8))
        {
          v83 = 1;
        }

        else
        {
          do
          {
            v74 = v194[0];
            if (!v194[0])
            {
LABEL_99:
              operator new();
            }

            v75 = *(v73 + 8);
            while (1)
            {
              while (1)
              {
                v76 = v74;
                v77 = *(v74 + 8);
                if (v77 <= v75)
                {
                  break;
                }

                v74 = *v76;
                if (!*v76)
                {
                  goto LABEL_99;
                }
              }

              if (v77 >= v75)
              {
                break;
              }

              v74 = v76[1];
              if (!v74)
              {
                goto LABEL_99;
              }
            }

            v78 = *(v73 + 5);
            v79 = (*(v73 + 6) - v78) >> 2;
            v81 = v76[5];
            v80 = v76[6];
            v82 = v80 - v81;
            v83 = v79 >= v80 - v81;
            if (v79 < v80 - v81)
            {
              break;
            }

            v84 = v82 >> 2;
            v85 = v79 + 1;
            v86 = v85 - (v82 >> 2);
            if (v85 != v82 >> 2)
            {
              v87 = 0;
              v88 = __src + 4 * (v84 >> 1);
              if (v84 <= 1)
              {
                v84 = 1;
              }

              if (v86 <= 1)
              {
                v86 = 1;
              }

              do
              {
                v89 = 0.0;
                if (v80 != v81)
                {
                  v90 = v78;
                  v91 = v81;
                  v92 = v84;
                  do
                  {
                    v93 = *v90++;
                    v94 = v93;
                    v95 = *v91++;
                    v89 = v89 + (v94 * v95);
                    --v92;
                  }

                  while (v92);
                }

                *&v88[4 * v87] = v89 + *&v88[4 * v87];
                ++v87;
                ++v78;
              }

              while (v87 != v86);
            }

            v96 = *(v73 + 1);
            if (v96)
            {
              do
              {
                v97 = v96;
                v96 = *v96;
              }

              while (v96);
            }

            else
            {
              do
              {
                v97 = *(v73 + 2);
                v40 = *v97 == v73;
                v73 = v97;
              }

              while (!v40);
            }

            v73 = v97;
          }

          while (v97 != (&__p + 8));
        }

        v98 = (v199[0] + 24 * v183);
        v99 = __src;
        if (v98 != &__src)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v98, __src, v212, (v212 - __src) >> 2);
          v99 = __src;
        }

        if (v83)
        {
          v100 = v200[0] + 24 * v183;
          LODWORD(v188) = 3;
          if ((((v212 - v99) >> 2) - 7) <= 0xFFFFFFFFFFFFFFFBLL)
          {
            do
            {
              v101 = [v59 length];
              v102 = v188;
              v103 = __src;
              v104 = (__src + 4 * v188);
              v105 = *v104;
              if (*v104 > (v101 * peak) && v105 > *(v104 - 3) && v105 > *(__src + 3))
              {
                v106 = 0x3FFFFFFFFFFFFFFELL;
                while (v105 >= v104[v106])
                {
                  if (++v106 == 3)
                  {
                    std::vector<unsigned int>::push_back[abi:ne200100](v100, &v188);
                    v102 = v188;
                    v103 = __src;
                    break;
                  }
                }
              }

              LODWORD(v188) = v102 + 1;
            }

            while (((v212 - v103) >> 2) - 3 > (v102 + 1));
          }

          array = [MEMORY[0x277CBEB18] array];
          v108 = *v100;
          if (*(v100 + 8) != *v100)
          {
            v109 = 0;
            do
            {
              v110 = [MEMORY[0x277CCABB0] numberWithInt:v108[v109]];
              [array addObject:v110];

              ++v109;
              v108 = *v100;
            }

            while (v109 < (*(v100 + 8) - *v100) >> 2);
          }

          v111 = array;

          ++v183;
          v99 = __src;
          v187 = v111;
        }

        if (v99)
        {
          v212 = v99;
          operator delete(v99);
        }

        if (v191)
        {
          v192 = v191;
          operator delete(v191);
        }

        std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(v194[0]);
        if (!v83)
        {

          v12 = 0;
          goto LABEL_229;
        }

        ++v185;
      }

      while (v185 != v181);
      v57 = [v56 countByEnumeratingWithState:&v195 objects:v216 count:16];
    }

    while (v57);
  }

  v112 = [v56 count];
  LODWORD(v193) = 0;
  v113 = v187;
  std::vector<int>::vector[abi:ne200100](&__src, v112);
  v114 = [v56 count];
  LODWORD(v191) = -1082130432;
  std::vector<float>::vector[abi:ne200100](&v193, v114);
  date = [MEMORY[0x277CBEAA8] date];
  v115 = INFINITY;
  do
  {
    if ([v56 count] < 2)
    {
      v130 = 0.0;
      v131 = -1;
      goto LABEL_172;
    }

    std::vector<float>::vector[abi:ne200100](&v191, [v56 count] - 1);
    v116 = 0;
    v117 = 0;
    for (j = 0; [v56 count] - 1 > j; ++j)
    {
      v119 = (v200[0] + v117);
      if (*(v200[0] + v117 + 8) == *(v200[0] + v117) || v119[4] == v119[3])
      {
        *(v191 + j) = 2139095040;
      }

      else
      {
        v120 = [v56 count];
        v121 = *(*v119 + 4 * *(__src + 4 * v120 + v116 - 4));
        v122 = [v56 count];
        v123 = *(v119[3] + 4 * *(__src + 4 * v122 + v116 - 8));
        v124 = [v56 objectAtIndexedSubscript:j];
        v125 = [v56 objectAtIndexedSubscript:j + 1];
        v126 = [v124 length];
        v127 = [v125 length];
        v128 = v121 + (v52 * (v126 - 1)) * 0.5;
        v129 = v123 - (v52 * (v127 - 1)) * 0.5;
        *(v191 + j) = v129 - v128;
      }

      v117 += 24;
      v116 -= 4;
    }

    v132 = v191;
    v133 = v192;
    v134 = v192 - v191;
    if (((v192 - v191) >> 2) < 1)
    {
      v131 = -1;
      v113 = v187;
    }

    else
    {
      v135 = 0;
      v136 = -1;
      v113 = v187;
      while (1)
      {
        v137 = *(v191 + v135);
        if (v137 != INFINITY && (v137 < v52 || v137 > (v52 * 6.0)))
        {
          break;
        }

        ++v135;
        --v136;
        if (((v134 >> 2) & 0x7FFFFFFF) == v135)
        {
          v131 = -1;
          goto LABEL_162;
        }
      }

      v167 = [v56 count];
      v168 = v167 + v136;
      v131 = v167 + v136 - 1;
      v130 = 0.0;
      v132 = v191;
      if (v168 > 0)
      {
        goto LABEL_170;
      }

      v133 = v192;
      v134 = v192 - v191;
    }

LABEL_162:
    v188 = 0;
    v189 = 0;
    v190 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v188, v132, v133, v134 >> 2);
    std::__sort<std::__less<float,float> &,float *>();
    v139 = v189;
    v140 = v189 - v188;
    if (v189 == v188)
    {
LABEL_166:
      v130 = INFINITY;
    }

    else
    {
      v141 = (v189 - 4);
      while (*v141 == INFINITY)
      {
        v139 -= 4;
        v140 -= 4;
        --v141;
        if (v139 == v188)
        {
          goto LABEL_166;
        }
      }

      v163 = v191;
      if (((v192 - v191) >> 2) < 1)
      {
        v130 = INFINITY;
LABEL_168:
        v189 = v188;
        operator delete(v188);
        goto LABEL_169;
      }

      v164 = *&v188[(v140 >> 1) & 0xFFFFFFFFFFFFFFFCLL];
      v165 = ((v192 - v191) >> 2) & 0x7FFFFFFF;
      v130 = INFINITY;
      while (1)
      {
        if (*v163 != INFINITY)
        {
          v166 = 0.0;
          if (v130 != INFINITY)
          {
            v166 = v130;
          }

          v130 = v166 + ((*v163 - v164) * (*v163 - v164));
          if (v130 > v115)
          {
            break;
          }
        }

        ++v163;
        if (!--v165)
        {
          v130 = v130 + 0.0;
          break;
        }
      }
    }

    if (v188)
    {
      goto LABEL_168;
    }

LABEL_169:
    v132 = v191;
LABEL_170:
    if (v132)
    {
      v192 = v132;
      operator delete(v132);
    }

LABEL_172:
    if (v131 < 0 && v130 != INFINITY)
    {
      v142 = 0;
      v143 = 0;
      v144 = -4;
      while (v143 < [v56 count])
      {
        v145 = (v200[0] + v142);
        if (*(v200[0] + v142 + 8) != *(v200[0] + v142))
        {
          v146 = [v56 count];
          v147 = *(*(v199[0] + v142) + 4 * *(*v145 + 4 * *(__src + 4 * v146 + v144)));
          v148 = [v56 objectAtIndexedSubscript:v143];
          v149 = [v148 length];

          v130 = v130 + (v149 - v147);
          v113 = v187;
        }

        ++v143;
        v142 += 24;
        v144 -= 4;
      }
    }

    if (v131 < 0 && v130 < v115)
    {
      v150 = 0;
      v151 = 0;
      v152 = -4;
      while ([v56 count] > v151)
      {
        v153 = (v200[0] + v150);
        if (*(v200[0] + v150 + 8) != *(v200[0] + v150))
        {
          v154 = [v56 count];
          *(v193 + v151) = *(*v153 + 4 * *(__src + 4 * v154 + v152));
        }

        ++v151;
        v150 += 24;
        v152 -= 4;
      }

      v115 = v130;
      v113 = v187;
    }

    v155 = __src;
    if (v131 >= 1)
    {
      v156 = v131;
      v157 = (v200[0] + 8);
      v158 = __src;
      do
      {
        *v158++ = ((*v157 - *(v157 - 1)) >> 2) - 1;
        v157 += 3;
        --v156;
      }

      while (v156);
    }

    v159 = 0;
    v160 = 0;
    ++*v155;
    v161 = 1;
    while ([v56 count] > v160)
    {
      if (*(__src + v160) >= ((*(v200[0] + v159 + 8) - *(v200[0] + v159)) >> 2))
      {
        *(__src + v160) = 0;
        if ([v56 count] - 1 <= v160)
        {
          v161 = 0;
        }

        else
        {
          ++*(__src + v160 + 1);
          v161 = 1;
        }
      }

      ++v160;
      v159 += 24;
    }

    if ((v161 & 1) == 0)
    {
      break;
    }

    [date timeIntervalSinceNow];
  }

  while (v162 > -0.1);
  if (v115 != INFINITY)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v171 = v193;
    v170 = v194[0];
    if (v194[0] != v193)
    {
      v172 = 0;
      do
      {
        v173 = v171[v172];
        if ((v173 & 0x80000000) == 0)
        {
          v174 = [v56 objectAtIndexedSubscript:v172];
          for (k = 0; [v174 length] > k; ++k)
          {
            v176 = [MEMORY[0x277CCABB0] numberWithInt:{(v173 + (v52 * (objc_msgSend(v174, "length") - 1)) * -0.5 + (v52 * k))}];
            [array2 addObject:v176];
          }

          v171 = v193;
          v170 = v194[0];
        }

        ++v172;
      }

      while (v172 < (v170 - v171) >> 2);
    }

    v113 = array2;
  }

  if (cost)
  {
    *cost = v115 / [modelCopy length];
  }

  v187 = v113;

  if (v193)
  {
    v194[0] = v193;
    operator delete(v193);
  }

  v12 = v187;
  if (__src)
  {
    v212 = __src;
    operator delete(__src);
  }

LABEL_229:
  __src = v199;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  __src = v200;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);

  v11 = v187;
LABEL_230:
  std::__tree<std::__value_type<unsigned long long,std::vector<unsigned int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<unsigned int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<unsigned int>>>>::destroy(*(&__p + 1));
  if (v203)
  {
    v204 = v203;
    operator delete(v203);
  }

  __src = &v206;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }

LABEL_234:

  return v12;
}

@end