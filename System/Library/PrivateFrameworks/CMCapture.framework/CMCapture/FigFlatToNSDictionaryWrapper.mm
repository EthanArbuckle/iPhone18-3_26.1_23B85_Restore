@interface FigFlatToNSDictionaryWrapper
- (BOOL)_ensureFlatDictionaryIsInitialized;
- (FigFlatToNSDictionaryWrapper)initWithFlatDictionary:(OpaqueFigFlatDictionary *)dictionary keySpec:(OpaqueFigFlatDictionaryKeySpec *)spec;
- (id)initLazilyWithFlatDictionaryBacking:(void *)backing exportedKeySpec:(void *)spec deallocatorBlock:(id)block;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (uint64_t)arrayForFlatDictionaryArrayDataKey:(uint64_t)key;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation FigFlatToNSDictionaryWrapper

- (FigFlatToNSDictionaryWrapper)initWithFlatDictionary:(OpaqueFigFlatDictionary *)dictionary keySpec:(OpaqueFigFlatDictionaryKeySpec *)spec
{
  v4 = 0;
  if (dictionary)
  {
    if (spec)
    {
      v8.receiver = self;
      v8.super_class = FigFlatToNSDictionaryWrapper;
      v4 = [(FigFlatToNSDictionaryWrapper *)&v8 init];
      if (v4)
      {
        v4->_flatDictionary = CFRetain(dictionary);
        v4->_keySpec = CFRetain(spec);
        v4->_keySpace = FigFlatDictionaryKeySpecGetKeySpace(spec);
        v4->_lazyInitializationMutex._os_unfair_lock_opaque = 0;
      }
    }
  }

  return v4;
}

- (id)initLazilyWithFlatDictionaryBacking:(void *)backing exportedKeySpec:(void *)spec deallocatorBlock:(id)block
{
  v5 = 0;
  if (backing)
  {
    if (spec)
    {
      if (block)
      {
        v11.receiver = self;
        v11.super_class = FigFlatToNSDictionaryWrapper;
        v9 = [(FigFlatToNSDictionaryWrapper *)&v11 init];
        v5 = v9;
        if (v9)
        {
          v9->_dictionaryBacking = backing;
          v9->_exportedKeySpec = spec;
          v9->_deallocatorBlock = [block copy];
          v5->_lazyInitializationMutex._os_unfair_lock_opaque = 0;
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  flatDictionary = self->_flatDictionary;
  if (flatDictionary)
  {
    CFRelease(flatDictionary);
  }

  keySpec = self->_keySpec;
  if (keySpec)
  {
    CFRelease(keySpec);
  }

  deallocatorBlock = self->_deallocatorBlock;
  if (deallocatorBlock)
  {
    if (self->_exportedKeySpec)
    {
      deallocatorBlock[2]();
      deallocatorBlock = self->_deallocatorBlock;
    }

    if (self->_dictionaryBacking)
    {
      deallocatorBlock[2]();
      deallocatorBlock = self->_deallocatorBlock;
    }
  }

  v6.receiver = self;
  v6.super_class = FigFlatToNSDictionaryWrapper;
  [(FigFlatToNSDictionaryWrapper *)&v6 dealloc];
}

- (BOOL)_ensureFlatDictionaryIsInitialized
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 56));
  if (*(self + 8))
  {
    v2 = 1;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = FigFlatDictionaryKeySpecReconstructFromBinary(*MEMORY[0x1E695E480], *(self + 40));
    *(self + 16) = v4;
    *(self + 8) = FigFlatDictionaryCreateFromBacking(v3, v3, v4, *(self + 32));
    *(self + 24) = FigFlatDictionaryKeySpecGetKeySpace(*(self + 16));
    v2 = *(self + 8) != 0;
  }

  os_unfair_lock_unlock((self + 56));
  return v2;
}

- (unint64_t)count
{
  if ([(FigFlatToNSDictionaryWrapper *)self _ensureFlatDictionaryIsInitialized])
  {
    return FigFlatDictionaryGetCountOfKeysWithValues(self->_flatDictionary, v3);
  }

  else
  {
    return 0;
  }
}

- (id)objectForKey:(id)key
{
  if (![(FigFlatToNSDictionaryWrapper *)self _ensureFlatDictionaryIsInitialized])
  {
    return 0;
  }

  [key fastestEncoding];
  result = [OUTLINED_FUNCTION_17() cStringUsingEncoding:?];
  if (result)
  {
    result = FigFlatDictionaryKeyLookupFromIdentifier(self->_keySpace, result);
    if (result)
    {
      v6 = result;
      switch(FigFlatDictionaryKeyGetValueType(result))
      {
        case 1u:
          v7 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetBool(v7, v8, v9);
          v10 = OUTLINED_FUNCTION_5_90();

          result = [v10 numberWithUnsignedChar:?];
          break;
        case 2u:
          v31 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetInt16(v31, v32, v33);
          v34 = OUTLINED_FUNCTION_5_90();

          result = [v34 numberWithShort:?];
          break;
        case 3u:
          v15 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetInt32(v15, v16, v17);
          v18 = OUTLINED_FUNCTION_5_90();

          result = [v18 numberWithInt:?];
          break;
        case 4u:
          v19 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetInt64(v19, v20, v21);
          v22 = OUTLINED_FUNCTION_5_90();

          result = [v22 numberWithLongLong:?];
          break;
        case 5u:
          v11 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetFloat32(v11, v12, v13);
          v14 = OUTLINED_FUNCTION_5_90();

          result = [v14 numberWithFloat:?];
          break;
        case 6u:
          v35 = OUTLINED_FUNCTION_1_134(8);
          FigFlatDictionaryGetFloat64(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_5_90();

          result = [v38 numberWithDouble:?];
          break;
        case 7u:
          v39 = OUTLINED_FUNCTION_6_83();
          FigFlatDictionaryGetStringSize(v39, v40, v41, v42);
          return 0;
        case 8u:
          v27 = OUTLINED_FUNCTION_6_83();
          FigFlatDictionaryGetDataSize(v27, v28, v29, v30);
          return 0;
        case 9u:

          result = [(FigFlatToNSDictionaryWrapper *)self arrayForFlatDictionaryArrayDataKey:v6];
          break;
        case 0xAu:
          memset(&v45, 0, sizeof(v45));
          FigFlatDictionaryGetCMTime(self->_flatDictionary, v6, 0, &v45);
          v43 = *MEMORY[0x1E695E480];
          time = v45;
          result = CMTimeCopyAsDictionary(&time, v43);
          break;
        case 0xBu:
          v23 = OUTLINED_FUNCTION_1_134(8);
          v48.origin.x = FigFlatDictionaryGetCGRect(v23, v24, v25);
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v48);

          result = DictionaryRepresentation;
          break;
        default:
          return 0;
      }
    }
  }

  return result;
}

- (uint64_t)arrayForFlatDictionaryArrayDataKey:(uint64_t)key
{
  if (!key)
  {
    return 0;
  }

  ArrayDataType = FigFlatDictionaryGetArrayDataType(*(key + 8), a2);
  v25 = 0;
  FigFlatDictionaryGetDataSize(*(key + 8), a2, &v25, 0);
  array = 0;
  switch(ArrayDataType)
  {
    case 1:
      v6 = v25;
      if (v25 < 1)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v7 = *ArrayDataType;
        ArrayDataType = (ArrayDataType + 1);
        [*(a2 + 3480) numberWithBool:v7];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v6;
      }

      while (v6);
      break;
    case 2:
      if (v25 < 2)
      {
        goto LABEL_28;
      }

      v10 = v25 >> 1;
      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v11 = *ArrayDataType++;
        [*(a2 + 3480) numberWithShort:v11];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v10;
      }

      while (v10);
      break;
    case 3:
      if (v25 < 4)
      {
        goto LABEL_28;
      }

      v16 = v25 >> 2;
      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v17 = *ArrayDataType;
        ArrayDataType += 2;
        [*(a2 + 3480) numberWithInt:v17];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v16;
      }

      while (v16);
      break;
    case 4:
      if (v25 < 8)
      {
        goto LABEL_28;
      }

      v18 = v25 >> 3;
      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v19 = *ArrayDataType;
        ArrayDataType += 4;
        [*(a2 + 3480) numberWithLongLong:v19];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v18;
      }

      while (v18);
      break;
    case 5:
      if (v25 < 4)
      {
        goto LABEL_28;
      }

      v20 = v25 >> 2;
      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v22 = *ArrayDataType;
        ArrayDataType += 2;
        LODWORD(v21) = v22;
        [*(a2 + 3480) numberWithFloat:v21];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v20;
      }

      while (v20);
      break;
    case 6:
      if (v25 < 8)
      {
        goto LABEL_28;
      }

      v8 = v25 >> 3;
      OUTLINED_FUNCTION_0_122(&time);
      [MEMORY[0x1E695DF70] array];
      OUTLINED_FUNCTION_4_99();
      do
      {
        v9 = *ArrayDataType;
        ArrayDataType += 4;
        [*(a2 + 3480) numberWithDouble:v9];
        [OUTLINED_FUNCTION_17() addObject:?];
        --v8;
      }

      while (v8);
      break;
    case 10:
      if (v25 < 0x18)
      {
LABEL_28:
        array = MEMORY[0x1E695E0F0];
      }

      else
      {
        v12 = v25 / 0x18;
        v13 = (&time - ((24 * v12 + 15) & 0x3FFFFFFF0));
        FigFlatDictionaryGetData(*(key + 8), a2, 0, v13, &v25);
        array = [MEMORY[0x1E695DF70] array];
        v14 = *MEMORY[0x1E695E480];
        do
        {
          time = *v13;
          v15 = CMTimeCopyAsDictionary(&time, v14);
          [OUTLINED_FUNCTION_17() addObject:?];
          ++v13;
          --v12;
        }

        while (v12);
      }

      break;
    default:
      return array;
  }

  return array;
}

- (id)keyEnumerator
{
  if (![(FigFlatToNSDictionaryWrapper *)self _ensureFlatDictionaryIsInitialized])
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  v3 = [[FigFlatToNSDictionaryWrapperKeyEnumerator alloc] initWithFlatDictionary:self->_flatDictionary];

  return v3;
}

@end