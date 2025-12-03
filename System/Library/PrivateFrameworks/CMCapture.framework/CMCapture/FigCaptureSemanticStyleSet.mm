@interface FigCaptureSemanticStyleSet
+ (FigCaptureSemanticStyleSet)semanticStyleSetWithSemanticStyles:(id)styles regions:(id)regions;
- (CGRect)regionAtIndex:(unint64_t)index;
- (FigCaptureSemanticStyleSet)initWithXPCEncoding:(id)encoding;
- (NSString)description;
- (double)_edgeOffsetForRegionAtIndex:(void *)index;
- (float)largestEdgeOffset;
- (float)leftmostRegionStartXOffset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)largestRegionSemanticStyle;
- (void)dealloc;
- (void)initWithSemanticStyles:(void *)styles regions:;
@end

@implementation FigCaptureSemanticStyleSet

+ (FigCaptureSemanticStyleSet)semanticStyleSetWithSemanticStyles:(id)styles regions:(id)regions
{
  v4 = [[FigCaptureSemanticStyleSet alloc] initWithSemanticStyles:styles regions:regions];

  return v4;
}

- (FigCaptureSemanticStyleSet)initWithXPCEncoding:(id)encoding
{
  v19.receiver = self;
  v19.super_class = FigCaptureSemanticStyleSet;
  v4 = [(FigCaptureSemanticStyleSet *)&v19 init];
  if (v4)
  {
    value = xpc_dictionary_get_value(encoding, "semanticStylesArray");
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (xpc_array_get_count(value))
    {
      v7 = 0;
      do
      {
        [(NSArray *)v6 addObject:[[FigCaptureSemanticStyle alloc] initWithXPCEncoding:xpc_array_get_value(value, v7++)]];
      }

      while (xpc_array_get_count(value) > v7);
    }

    v4->_semanticStyles = v6;
    v8 = xpc_dictionary_get_value(encoding, "regionsArray");
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (xpc_array_get_count(v8))
    {
      v10 = 0;
      do
      {
        v11 = xpc_array_get_value(v8, v10);
        v17 = 0u;
        v18 = 0u;
        v12 = xpc_dictionary_get_double(v11, "X");
        v13 = xpc_dictionary_get_double(v11, "Y");
        v14 = xpc_dictionary_get_double(v11, "W");
        v15 = xpc_dictionary_get_double(v11, "H");
        *&v17 = v12;
        *(&v17 + 1) = v13;
        *&v18 = v14;
        *(&v18 + 1) = v15;
        -[NSArray addObject:](v9, "addObject:", [MEMORY[0x1E696B098] valueWithBytes:&v17 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"]);
        ++v10;
      }

      while (xpc_array_get_count(v8) > v10);
    }

    v4->_regions = v9;
  }

  return v4;
}

- (id)copyXPCEncoding
{
  empty = xpc_array_create_empty();
  if ([(NSArray *)self->_semanticStyles count])
  {
    v4 = 0;
    do
    {
      v5 = [-[NSArray objectAtIndexedSubscript:](self->_semanticStyles objectAtIndexedSubscript:{v4), "copyXPCEncoding"}];
      xpc_array_append_value(empty, v5);

      ++v4;
    }

    while ([(NSArray *)self->_semanticStyles count]> v4);
  }

  v6 = xpc_array_create_empty();
  if ([(NSArray *)self->_regions count])
  {
    v7 = 0;
    do
    {
      v8 = xpc_dictionary_create_empty();
      [(FigCaptureSemanticStyleSet *)self regionAtIndex:v7];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      xpc_dictionary_set_double(v8, "X", v15);
      xpc_dictionary_set_double(v8, "Y", v10);
      xpc_dictionary_set_double(v8, "W", v12);
      xpc_dictionary_set_double(v8, "H", v14);
      xpc_array_append_value(v6, v8);

      ++v7;
    }

    while ([(NSArray *)self->_regions count]> v7);
  }

  v16 = xpc_dictionary_create_empty();
  xpc_dictionary_set_value(v16, "semanticStylesArray", empty);

  xpc_dictionary_set_value(v16, "regionsArray", v6);
  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSemanticStyleSet;
  [(FigCaptureSemanticStyleSet *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [(NSString *)[(NSArray *)self->_semanticStyles description] mutableCopy];
  [v3 appendString:{@", regions = {"}];
  if ([(NSArray *)self->_regions count])
  {
    v4 = 0;
    do
    {
      [(FigCaptureSemanticStyleSet *)self regionAtIndex:v4];
      [v3 appendFormat:@"(%f, %f, %f, %f)", v5, v6, v7, v8];
      if ([(NSArray *)self->_regions count]- 1 > v4)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while ([(NSArray *)self->_regions count]> v4);
  }

  [v3 appendString:@"}"];

  return v3;
}

- (float)leftmostRegionStartXOffset
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  regions = self->_regions;
  v3 = [(NSArray *)regions countByEnumeratingWithState:&v14 objects:v13 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *MEMORY[0x1E695F058];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(regions);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v12[0] = v11;
        v12[1] = v10;
        [v8 getValue:{v12, v10, v11}];
        if (*v12 > 0.0)
        {
          return *v12;
        }
      }

      v5 = [(NSArray *)regions countByEnumeratingWithState:&v14 objects:v13 count:16, *v12];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (id)largestRegionSemanticStyle
{
  v3 = [(NSArray *)self->_regions count];
  v4 = [(NSArray *)self->_semanticStyles count];
  v5 = 8;
  if (v3 > v4)
  {
    v5 = 16;
  }

  v6 = [*(&self->super.isa + v5) count];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  do
  {
    [(FigCaptureSemanticStyleSet *)self regionAtIndex:v8];
    if (v11 * v12 > v10)
    {
      v10 = v11 * v12;
      v9 = [(NSArray *)self->_semanticStyles objectAtIndexedSubscript:v8];
    }

    ++v8;
  }

  while (v7 != v8);
  return v9;
}

- (CGRect)regionAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_regions objectAtIndexedSubscript:index];
  v8 = 0u;
  v9 = 0u;
  [v3 getValue:&v8];
  v5 = *(&v8 + 1);
  v4 = *&v8;
  v7 = *(&v9 + 1);
  v6 = *&v9;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (float)largestEdgeOffset
{
  if (![(NSArray *)[(FigCaptureSemanticStyleSet *)self semanticStyles] count])
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = [(FigCaptureSemanticStyleSet *)self _edgeOffsetForRegionAtIndex:v3];
    if (*&v5 > v4)
    {
      v4 = *&v5;
    }

    ++v3;
  }

  while ([(NSArray *)[(FigCaptureSemanticStyleSet *)self semanticStyles] count]> v3);
  return v4;
}

- (void)initWithSemanticStyles:(void *)styles regions:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = FigCaptureSemanticStyleSet;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (OUTLINED_FUNCTION_2_88())
    {
      for (i = 0; [a2 count] > i; ++i)
      {
        [a2 objectAtIndexedSubscript:i];
        if (styles)
        {
          if ([styles count] <= i)
          {
            continue;
          }

          OUTLINED_FUNCTION_6_61();
          OUTLINED_FUNCTION_4_70();
          CGRectIntersection(v14, v12);
          OUTLINED_FUNCTION_4_70();
          if (CGRectIsEmpty(v15))
          {
            continue;
          }

          [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [OUTLINED_FUNCTION_28() addObject:?];
          v9 = OUTLINED_FUNCTION_5_67();
        }

        else
        {
          [OUTLINED_FUNCTION_5_67() addObject:?];
          [MEMORY[0x1E696B098] valueWithBytes:&v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          v9 = OUTLINED_FUNCTION_28();
        }

        [v9 addObject:?];
      }
    }

    v5[1] = v6;
    v5[2] = 0x1E695D000uLL;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FigCaptureSemanticStyleSet allocWithZone:zone];
  semanticStyles = self->_semanticStyles;
  regions = self->_regions;

  return [(FigCaptureSemanticStyleSet *)v4 initWithSemanticStyles:regions regions:?];
}

- (double)_edgeOffsetForRegionAtIndex:(void *)index
{
  if (!index)
  {
    return 0.0;
  }

  [index regionAtIndex:a2];
  OUTLINED_FUNCTION_7_54(v4);
  v2 = OUTLINED_FUNCTION_0_88();
  *&result = OUTLINED_FUNCTION_1_102(v2);
  return result;
}

@end