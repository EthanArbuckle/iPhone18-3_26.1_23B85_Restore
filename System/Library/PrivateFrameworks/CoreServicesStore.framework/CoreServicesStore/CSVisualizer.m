@interface CSVisualizer
@end

@implementation CSVisualizer

void __57___CSVisualizer_enumerateReferencesToUnit_inTable_block___block_invoke(void *a1, unsigned int *a2, uint64_t a3)
{
  v5 = 4 * *a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57___CSVisualizer_enumerateReferencesToUnit_inTable_block___block_invoke_2;
  v9[3] = &unk_1E7ED3A70;
  v13 = v5;
  v14 = a1[8];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[5];
  v9[4] = a1[4];
  v11 = v6;
  v10 = v8;
  v12 = a3;
  CSStore2::Store::enumerateUnits(v7, a2, v9);
}

void __57___CSVisualizer_enumerateReferencesToUnit_inTable_block___block_invoke_2(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 64) != *(a1 + 68) || 4 * *a2 != *(a1 + 72))
  {
    v7 = [*(a1 + 32) descriptionOfUnit:(4 * *a2) inTable:?];
    if (v7 && [*(a1 + 48) unitDescription:v7 referencesUnit:*(a1 + 72) inTable:*(a1 + 68)])
    {
      v8 = *(a1 + 64);
      (*(*(a1 + 40) + 16))();
      *a3 = 0;
      **(a1 + 56) = 0;
    }
  }

  objc_autoreleasePoolPop(v6);
}

id __42___CSVisualizer_setStandardTableFunctions__block_invoke(uint64_t a1, int a2, int a3, unsigned int a4)
{
  CSStore2::Array::Get(v25, *(a1 + 32), a4);
  if (v28)
  {
    v4 = v26;
    v5 = v27;
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
    CSStore2::AttributedStringWriter::AttributedStringWriter(v25, v7, v8);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:(*v4 >> 29) & 1];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Packed.isa, v9);

    v10 = *v4 & 0x1FFFFFFF;
    if (v10 >= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Capacity.isa, v12);

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Count.isa, v13);

    v15 = v10 < v5 && (v5 - v11) > 4;
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    CSStore2::AttributedStringWriter::number(v25, &cfstr_Oversized.isa, v16);

    v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v18 = v17;
    if (v17)
    {
      [v17 appendString:@"{ "];
      v19 = v18;
      v20 = v4 + 4;
      if ((*(v4 + 3) & 0x20) != 0)
      {
        if (v11)
        {
          v23 = 0;
          do
          {
            if (v23)
            {
              [v19 appendString:{@", "}];
            }

            [v19 appendFormat:@"0x%llx", *(v20 + v23)];
            v23 += 2;
          }

          while (2 * v11 != v23);
        }
      }

      else if (v11)
      {
        v21 = 0;
        do
        {
          if (v21)
          {
            [v19 appendString:{@", "}];
          }

          [v19 appendFormat:@"0x%llx", *(v20 + v21)];
          v21 += 4;
        }

        while (4 * v11 != v21);
      }

      [v19 appendString:@" }"];
      CSStore2::AttributedStringWriter::string(v25, &cfstr_Values.isa, v19);
    }

    v22 = [(__CSStore *)v7 copy];
    CSStore2::AttributedStringWriter::~AttributedStringWriter(v25);

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id __42___CSVisualizer_setStandardTableFunctions__block_invoke_2(uint64_t a1, int a2, int a3, unsigned int a4)
{
  CSStore2::String::Get(v9, *(a1 + 32), a4);
  if (v10)
  {
    v7[0] = v9[0];
    v7[1] = v9[1];
    v8 = 1;
    v4 = CSStore2::String::getNSStringNoCopy(v7);
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __42___CSVisualizer_setStandardTableFunctions__block_invoke_3(uint64_t a1, int a2, int a3, unsigned int a4)
{
  CSStore2::String::Get(v19, *(a1 + 32), a4);
  if (v20)
  {
    *v15 = v19[0];
    *v16 = v19[1];
    v17 = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
    CSStore2::AttributedStringWriter::AttributedStringWriter(v19, v5, v6);
    if (v15[0])
    {
      if ((BYTE4(v15[1]) & 1) == 0)
      {
        StringCacheEntry = CSStore2::getStringCacheEntry(v15[0], LODWORD(v15[1]));
        if (StringCacheEntry && *StringCacheEntry)
        {
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
          CSStore2::AttributedStringWriter::number(v19, &cfstr_Retaincount.isa, v8);

LABEL_11:
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{LODWORD(v16[1]), v15[0]}];
          CSStore2::AttributedStringWriter::number(v19, &cfstr_Length_0.isa, v10);

          v11 = CSStore2::String::getNSStringNoCopy(v15);
          CSStore2::AttributedStringWriter::string(v19, &cfstr_Characters.isa, v11);

          if (BYTE4(v15[1]))
          {
            v12 = v16;
          }

          else
          {
            v12 = v16[0];
          }

          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{CSStore2::_StringFunctions::getHashCode(v12, LODWORD(v16[1]))}];
          CSStore2::AttributedStringWriter::number(v19, &cfstr_Hashcode.isa, v13);

          v9 = [(__CSStore *)v5 copy];
          CSStore2::AttributedStringWriter::~AttributedStringWriter(v19);

          objc_autoreleasePoolPop(v4);
          goto LABEL_15;
        }

LABEL_10:
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3321888768;
        v18[2] = ___ZNK8CSStore26String19getDebugDescriptionEv_block_invoke;
        v18[3] = &__block_descriptor_40_ea8_32c52_ZTSKZNK8CSStore26String19getDebugDescriptionEvE3__0_e5_v8__0l;
        v18[4] = v19;
        CSStore2::AttributedStringWriter::withAppliedAttribute(v19, @"_CSVNum", &unk_1F37D7F70, v18);
        goto LABEL_11;
      }
    }

    else if ((BYTE4(v15[1]) & 1) == 0)
    {
      goto LABEL_10;
    }

    CSStore2::AttributedStringWriter::string(v19, &cfstr_Retaincount.isa, &cfstr_NAPacked.isa);
    goto LABEL_11;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

id __42___CSVisualizer_setStandardTableFunctions__block_invoke_4(uint64_t a1, int a2, int a3, unsigned int a4)
{
  CSStore2::Dictionary::Get(&v14, *(a1 + 32), a4);
  if (v16)
  {
    v11 = v14;
    v12 = v15;
    v13 = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
    CSStore2::AttributedStringWriter::AttributedStringWriter(&v14, v5, v6);
    v7 = CSStore2::Dictionary::getDescriptionOfContents(&v11, 0);
    if (v7)
    {
      CSStore2::AttributedStringWriter::attributedString(&v14, @"values", v7);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{CSStore2::Dictionary::getCount(v11, *(*(&v11 + 1) + 4))}];
    CSStore2::AttributedStringWriter::number(&v14, &cfstr_Count.isa, v8);

    v9 = [(__CSStore *)v5 copy];
    CSStore2::AttributedStringWriter::~AttributedStringWriter(&v14);

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __41___CSVisualizer_getUnit_inTable_fromURL___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 name];
  if (![v3 isEqual:@"t"])
  {
    goto LABEL_5;
  }

  v4 = [v7 value];

  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (*(a1 + 48))
    {
      v3 = [v7 value];
      **(a1 + 48) = [v3 longLongValue];
LABEL_5:
    }
  }

  v5 = [v7 name];
  if (![v5 isEqual:@"u"])
  {
LABEL_10:

    goto LABEL_11;
  }

  v6 = [v7 value];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (*(a1 + 56))
    {
      v5 = [v7 value];
      **(a1 + 56) = [v5 longLongValue];
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t __56___CSVisualizer_unitDescription_referencesUnit_inTable___block_invoke(uint64_t result, int a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a2 && *(result + 44) == a3)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __67___CSVisualizer_enumerateReferencesToUnitsInUnitDescription_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___CSVisualizer_enumerateReferencesToUnitsInUnitDescription_block___block_invoke_2;
  v7[3] = &unk_1E7ED3AC0;
  v8 = *(a1 + 32);
  v9 = a5;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
}

void __67___CSVisualizer_enumerateReferencesToUnitsInUnitDescription_block___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
      if ([_CSVisualizer getUnit:&v9 inTable:&v9 + 4 fromURL:v8])
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  **(a1 + 40) = *a4;
}

void __47___CSVisualizer_breakDownTable_inStore_buffer___block_invoke(uint64_t a1, _DWORD *a2)
{
  v4 = 2 * (*(a1 + 48) & 0x1Fu);
  if (a2)
  {
    v5 = **(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = 0xFFFFFFFFLL;
    v8 = a2 >= v6;
    v9 = a2 - v6;
    if (v8 && !HIDWORD(v9))
    {
      if ((v9 + 1) > *(*(v5 + 8) + 12) || v9 == -1)
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v9;
      }
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  *(*(a1 + 40) + v7) = 0x101010101010101 * v4;
  v11 = a2 + 2;
  v12 = **(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xFFFFFFFFLL;
  v8 = v11 >= v13;
  v15 = v11 - v13;
  if (v8 && !HIDWORD(v15))
  {
    if ((v15 + 1) > *(*(v12 + 8) + 12) || v15 == -1)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v15;
    }
  }

  memset((*(a1 + 40) + v14), v4 | 0x40, a2[1]);
  if (*(a1 + 48) == 8)
  {
    CSStore2::Dictionary::Get(&v50, *(a1 + 32), 4 * *a2);
    if (v53)
    {
      v17 = *(v51 + 4);
      if (v17 != -1)
      {
        v18 = v50;
        v19 = *(*v50 + 8);
        v20 = *(v19 + 12);
        if (v20 > v17)
        {
          v21 = *(a1 + 40);
          v22 = (v19 + v17);
          *(v51 + 4);
          v23 = v19 + v17 < v19;
          *(v51 + 4);
          v24 = v17 + 1 > v20 || v17 == -1;
          if (v23 || v24)
          {
            v17 = 0xFFFFFFFFLL;
          }

          *(v21 + v17) = 269488144;
          v50 = MEMORY[0x1E69E9820];
          v51 = 3221225472;
          v52 = ___ZN8CSStore27HashMapIjjNS_10Dictionary10_FunctionsELy0EE14WriteBreakdownERKNS_5StoreEPKS3_hPh_block_invoke;
          v53 = &__block_descriptor_41_e21_v32__0I8I12B16B20_B24l;
          v55 = 8;
          v54 = v21;
          v25 = &v50;
          v26 = v25;
          v56 = 0;
          v27 = v22 + 1;
          v28 = *v18;
          if (*v18)
          {
            v29 = *(v28 + 8);
          }

          else
          {
            v29 = 0;
          }

          v30 = 0xFFFFFFFFLL;
          v8 = v27 >= v29;
          v31 = v27 - v29;
          if (v8 && !HIDWORD(v31))
          {
            if ((v31 + 1) > *(*(v28 + 8) + 12) || v31 == -1)
            {
              v30 = 0xFFFFFFFFLL;
            }

            else
            {
              v30 = v31;
            }
          }

          (v52)(v25, v30, (8 * *v22), 1, 1, &v56);
          v33 = *v22;
          if (v33 && (v56 & 1) == 0)
          {
            v34 = 0;
            v35 = 0;
            do
            {
              v36 = &v27[2 * v35];
              v37 = v36[1];
              if (v37 == -1)
              {
                v41 = 0;
              }

              else
              {
                v38 = *(*v18 + 8);
                v39 = *(v38 + 12) > v37;
                v40 = v38 + v37;
                if (v39)
                {
                  v41 = v40;
                }

                else
                {
                  v41 = 0;
                }
              }

              if (!((*v36 == 0) | v34 & 1))
              {
                v42 = (v41 + 4);
                v43 = 1;
                do
                {
                  if (*(v42 - 1))
                  {
                    v44 = *v42 != 0;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = *v18;
                  if (*v18)
                  {
                    v46 = *(v45 + 8);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = 0xFFFFFFFFLL;
                  v8 = v41 >= v46;
                  v48 = v41 - v46;
                  if (v8 && !HIDWORD(v48))
                  {
                    if ((v48 + 1) > *(*(v45 + 8) + 12) || v48 == -1)
                    {
                      v47 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v47 = v48;
                    }
                  }

                  (v52)(v26, v47, 8, 0, v44, &v56);
                  v34 = v56;
                  if (v43 >= *v36)
                  {
                    break;
                  }

                  ++v43;
                  v41 += 8;
                  v42 += 2;
                }

                while ((v56 & 1) == 0);
                v33 = *v22;
              }

              ++v35;
            }

            while (v35 < v33 && (v34 & 1) == 0);
          }
        }
      }
    }
  }
}

void __61___CSVisualizer_enumerateValuesForTitlesInDescription_block___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v19 = *MEMORY[0x1E69E9840];
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_1F37D7FE8;
  }

  if ([v9 unsignedLongLongValue] == 1)
  {
    v10 = [*(a1 + 32) attribute:@"_CSVIsRelated" atIndex:a3 effectiveRange:0];
    v11 = v10;
    if (v10 && (v12 = [v10 BOOLValue], v12))
    {
      v13 = CSStore2::GetLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v20.location = a3;
        v20.length = a4;
        v15 = NSStringFromRange(v20);
        *buf = 138543362;
        v18 = v15;
        _os_log_debug_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_DEBUG, "Skipping appearance of title in range %{public}@ because it's in a range marked as a related unit", buf, 0xCu);
      }
    }

    else
    {
      std::vector<_NSRange>::push_back[abi:nn200100](*(*(a1 + 40) + 8) + 48, &v16);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __61___CSVisualizer_enumerateValuesForTitlesInDescription_block___block_invoke_50(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v9 = [a2 objectForKeyedSubscript:@"_CSVOutputType"];
  if (!v9)
  {
    v9 = &unk_1F37D7FE8;
  }

  v13 = v9;
  v10 = [v9 unsignedLongLongValue];
  if (v10 == 1)
  {
    *a5 = 1;
  }

  else if (v10 == 3)
  {
    v11 = *(*(a1 + 32) + 8);
    v12.location = *(v11 + 48);
    if (v12.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v11 + 48) = a3;
      *(v11 + 56) = a4;
    }

    else
    {
      v12.length = *(v11 + 56);
      v15.location = a3;
      v15.length = a4;
      *(*(*(a1 + 32) + 8) + 48) = NSUnionRange(v12, v15);
    }
  }
}

uint64_t __52___CSVisualizer_rangeOfValueForTitle_inDescription___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    v13 = *(*(a1 + 40) + 8);
    *(v13 + 48) = a6;
    *(v13 + 56) = a7;
    *a8 = 1;
  }

  return result;
}

@end