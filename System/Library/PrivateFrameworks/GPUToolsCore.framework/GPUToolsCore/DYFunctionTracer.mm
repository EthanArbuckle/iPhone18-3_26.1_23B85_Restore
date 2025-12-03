@interface DYFunctionTracer
+ (void)initialize;
- (DYFunctionTracer)init;
- (id)_newNumberForScalarArgument:(const Argument *)argument;
- (id)_stringForScalar1DArrayArgument:(const Argument *)argument usingBlock:(id)block;
- (id)_stringForScalarArgument:(const Argument *)argument;
- (id)_stringWithIntegerNumber:(id)number coreType:(unsigned int)type;
- (id)_stringWithNumber:(id)number argument:(const Argument *)argument;
- (id)createArgument:(const Argument *)argument forFunction:(const Function *)function withValue:(id)value;
- (id)getCastForArgument:(const Argument *)argument inFunction:(const Function *)function;
- (id)getIndexFromURL:(id)l;
- (id)loadStringForURL:(id)l variableName:(id)name bufferType:(id)type;
- (id)nextArrayVariable;
- (id)rewriteArgument:(const Argument *)argument;
- (id)rewriteReceiver:(unint64_t)receiver;
- (id)rewriteURL:(const char *)l;
- (id)rewriteVariable:(const char *)variable;
- (id)traceFunction:(const Function *)function returnVariable:(id)variable error:(id *)error;
- (id)traceFunctionAsLines:(const Function *)lines returnVariable:(id)variable error:(id *)error;
- (id)typeStringForArgument:(const Argument *)argument;
- (id)unloadStringForURL:(id)l;
- (id)valueForArgument:(const Argument *)argument;
- (id)valueStringForArgument:(const Argument *)argument;
- (void)_appendReturnValueToTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:;
- (void)_appendTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:;
- (void)_enumerateScalar1DArrayArgumentValues:(const Argument *)values usingBlock:(id)block;
- (void)dealloc;
- (void)setCompilable:(BOOL)compilable;
@end

@implementation DYFunctionTracer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _floatFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);
    [_floatFormatter setNumberStyle:1];
    [_floatFormatter setMinimumFractionDigits:0];
    [_floatFormatter setMaximumFractionDigits:4];
    v2 = _floatFormatter;

    [v2 setUsesGroupingSeparator:0];
  }
}

- (DYFunctionTracer)init
{
  v5.receiver = self;
  v5.super_class = DYFunctionTracer;
  v2 = [(DYFunctionTracer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 28) = 0;
    *(v2 + 16) = 0;
    v2[34] = 1;
    *(v2 + 35) = 0;
    v2[39] = 1;
    *(v2 + 41) = 0;
    v2[43] = 0;
    *(v2 + 11) = 8;
    *(v2 + 1) = objc_opt_new();
    v3->_nilString = @"nil";
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYFunctionTracer;
  [(DYFunctionTracer *)&v3 dealloc];
}

- (void)setCompilable:(BOOL)compilable
{
  self->_compilable = compilable;
  if (compilable)
  {
    compact = 0;
    prependReceiverArgument = 0;
  }

  else
  {
    compact = self->_compact;
    prependReceiverArgument = self->_prependReceiverArgument;
  }

  self->_compactEffective = compact;
  self->_prependReceiverEffective = prependReceiverArgument;
}

- (id)_stringWithIntegerNumber:(id)number coreType:(unsigned int)type
{
  result = [number stringValue];
  if (self->_emitTypeSuffixes)
  {
    if (type <= 0xC && ((1 << type) & 0x1154) != 0)
    {
      result = [result stringByAppendingString:@"u"];
    }

    v7 = type - 7;
    if (type - 7 <= 5 && ((0x33u >> v7) & 1) != 0)
    {
      v8 = off_27930C878[v7];

      return [result stringByAppendingString:v8];
    }
  }

  return result;
}

- (id)_stringWithNumber:(id)number argument:(const Argument *)argument
{
  var5 = argument->var5;
  if ((var5 & 8) != 0)
  {
    nilString = -[DYFunctionTracer rewriteURL:](self, "rewriteURL:", [number unsignedLongValue]);
    goto LABEL_12;
  }

  if ((var5 & 0x10) != 0)
  {
    nilString = -[DYFunctionTracer rewriteVariable:](self, "rewriteVariable:", [number unsignedLongValue]);
    goto LABEL_12;
  }

  var2 = argument->var2;
  if (var2 == 14)
  {
    unsignedLongValue = [number unsignedLongValue];
    if (!unsignedLongValue)
    {
LABEL_33:
      nilString = [(DYFunctionTracer *)self nilString];
      goto LABEL_12;
    }

    nilString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", unsignedLongValue)];
LABEL_12:
    v12 = nilString;
    goto LABEL_13;
  }

  if (var2 != 13)
  {
    goto LABEL_15;
  }

  unsignedLongLongValue = [number unsignedLongLongValue];
  if (!unsignedLongLongValue)
  {
    goto LABEL_33;
  }

  if (HIDWORD(unsignedLongLongValue))
  {
    if (self->_emitTypeSuffixes)
    {
      v10 = @"0x%llxl";
    }

    else
    {
      v10 = @"0x%llx";
    }
  }

  else
  {
    v10 = @"0x%08llx";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:v10, unsignedLongLongValue];
  if (self->_compilable)
  {
    nilString = [@"(void*)" stringByAppendingString:v12];
    goto LABEL_12;
  }

LABEL_13:
  if (v12)
  {
    return v12;
  }

LABEL_15:
  var1 = argument->var1;
  switch(var1)
  {
    case 0xDu:
      unsignedLongValue2 = [number unsignedLongValue];
      if (unsignedLongValue2)
      {
        if (self->_compilable)
        {
          v19 = @"(void*)0x%016lx";
        }

        else
        {
          v19 = @"0x%016lx";
        }

        return [MEMORY[0x277CCACA8] stringWithFormat:v19, unsignedLongValue2, v24];
      }

      else
      {

        return [(DYFunctionTracer *)self nilString];
      }

    case 0xAu:
      [number doubleValue];
      if (fabs(v17) == INFINITY)
      {
        v16 = v17 < 0.0;
LABEL_22:
        if (v16)
        {
          return @"-INFINITY";
        }

        else
        {
          return @"INFINITY";
        }
      }

      if (self->_compilable && self->_useHexadecimalFloatFormat)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%a /* %0.16F */", *&v17, *&v17];
      }

      if (!self->_compactFloats)
      {
        if (self->_emitTypeSuffixes)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"%0.16Ff", *&v17, v24];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"%0.16F", *&v17, v24];
        }
      }

      v21 = _floatFormatter;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      goto LABEL_47;
    case 9u:
      [number floatValue];
      if (fabsf(v15) == INFINITY)
      {
        v16 = v15 < 0.0;
        goto LABEL_22;
      }

      if (self->_compilable && self->_useHexadecimalFloatFormat)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%a /* %0.7F */", v15, v15];
      }

      if (!self->_compactFloats)
      {
        v23 = v15;
        if (self->_emitTypeSuffixes)
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"%0.7Ff", *&v23, v24];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"%0.7F", *&v23, v24];
        }
      }

      v21 = _floatFormatter;
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:?];
LABEL_47:

      return [v21 stringFromNumber:v22];
    default:

      return [(DYFunctionTracer *)self _stringWithIntegerNumber:number coreType:?];
  }
}

- (void)_enumerateScalar1DArrayArgumentValues:(const Argument *)values usingBlock:(id)block
{
  var0 = values->var0;
  if (values->var0)
  {
    if (values->var2 == 14 || (values->var5 & 0x18) != 0)
    {
      v7 = GPUTools::FD::Argument::ViewAsCStringArray(values);
      if (values->var4)
      {
        v8 = v7;
        v9 = 0;
        do
        {
          v10 = objc_alloc(MEMORY[0x277CCABB0]);
          v11 = *v8;
          if ((*(v8 + 22) & 0x40) != 0)
          {
            v12 = *(v11 + 4 * v9) + v11;
          }

          else
          {
            v12 = *(v11 + 8 * v9);
          }

          v13 = [v10 initWithUnsignedLong:v12];
          (*(block + 2))(block, v13, v9 == values->var4 - 1);

          ++v9;
        }

        while (v9 < values->var4);
      }
    }

    else
    {
      switch(values->var1)
      {
        case 1u:
          if (values->var4)
          {
            v15 = 0;
            do
            {
              v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithChar:*(var0 + v15)];
              (*(block + 2))(block, v16, v15 == values->var4 - 1);

              ++v15;
            }

            while (v15 < values->var4);
          }

          break;
        case 2u:
          if (values->var4)
          {
            v32 = 0;
            do
            {
              v33 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*(var0 + v32)];
              (*(block + 2))(block, v33, v32 == values->var4 - 1);

              ++v32;
            }

            while (v32 < values->var4);
          }

          break;
        case 3u:
          if (values->var4)
          {
            v26 = 0;
            do
            {
              v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:*(var0 + v26)];
              (*(block + 2))(block, v27, v26 == values->var4 - 1);

              ++v26;
            }

            while (v26 < values->var4);
          }

          break;
        case 4u:
          if (values->var4)
          {
            v28 = 0;
            do
            {
              v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:*(var0 + v28)];
              (*(block + 2))(block, v29, v28 == values->var4 - 1);

              ++v28;
            }

            while (v28 < values->var4);
          }

          break;
        case 5u:
          if (values->var4)
          {
            v20 = 0;
            do
            {
              v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*(var0 + v20)];
              (*(block + 2))(block, v21, v20 == values->var4 - 1);

              ++v20;
            }

            while (v20 < values->var4);
          }

          break;
        case 6u:
          if (values->var4)
          {
            v34 = 0;
            do
            {
              v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(var0 + v34)];
              (*(block + 2))(block, v35, v34 == values->var4 - 1);

              ++v34;
            }

            while (v34 < values->var4);
          }

          break;
        case 7u:
          if (values->var4)
          {
            v36 = 0;
            do
            {
              v37 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:var0[v36]];
              (*(block + 2))(block, v37, v36 == values->var4 - 1);

              ++v36;
            }

            while (v36 < values->var4);
          }

          break;
        case 8u:
          if (values->var4)
          {
            v30 = 0;
            do
            {
              v31 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:var0[v30]];
              (*(block + 2))(block, v31, v30 == values->var4 - 1);

              ++v30;
            }

            while (v30 < values->var4);
          }

          break;
        case 9u:
          if (values->var4)
          {
            v41 = 0;
            do
            {
              v42 = objc_alloc(MEMORY[0x277CCABB0]);
              LODWORD(v43) = *(var0 + v41);
              v44 = [v42 initWithFloat:v43];
              (*(block + 2))(block, v44, v41 == values->var4 - 1);

              ++v41;
            }

            while (v41 < values->var4);
          }

          break;
        case 0xAu:
          if (values->var4)
          {
            v24 = 0;
            do
            {
              v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*&var0[v24]];
              (*(block + 2))(block, v25, v24 == values->var4 - 1);

              ++v24;
            }

            while (v24 < values->var4);
          }

          break;
        case 0xBu:
          if (values->var4)
          {
            v38 = 0;
            do
            {
              if (self->_nativePointerSize == 4)
              {
                v39 = var0[v38];
              }

              else
              {
                v39 = var0[v38];
              }

              v40 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:v39];
              (*(block + 2))(block, v40, v38 == values->var4 - 1);

              ++v38;
            }

            while (v38 < values->var4);
          }

          break;
        case 0xCu:
          if (values->var4)
          {
            v17 = 0;
            do
            {
              if (self->_nativePointerSize == 4)
              {
                v18 = var0[v17];
              }

              else
              {
                v18 = var0[v17];
              }

              v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:v18];
              (*(block + 2))(block, v19, v17 == values->var4 - 1);

              ++v17;
            }

            while (v17 < values->var4);
          }

          break;
        case 0xDu:
          if (values->var4)
          {
            v22 = 0;
            do
            {
              v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:var0[v22]];
              (*(block + 2))(block, v23, v22 == values->var4 - 1);

              ++v22;
            }

            while (v22 < values->var4);
          }

          break;
        default:
          dy_abort("invalid core type: %u", values->var1);
      }
    }
  }
}

- (id)_stringForScalar1DArrayArgument:(const Argument *)argument usingBlock:(id)block
{
  v7 = [MEMORY[0x277CCAB68] stringWithString:@"{"];
  v8 = v7;
  if (!block)
  {
    block = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__DYFunctionTracer__stringForScalar1DArrayArgument_usingBlock___block_invoke;
    v10[3] = &unk_27930C7E0;
    v10[4] = v7;
    v10[5] = self;
    v10[6] = argument;
  }

  [(DYFunctionTracer *)self _enumerateScalar1DArrayArgumentValues:argument usingBlock:block];
  [v8 appendString:@"}"];
  return v8;
}

uint64_t __63__DYFunctionTracer__stringForScalar1DArrayArgument_usingBlock___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  result = [*(a1 + 32) appendString:{objc_msgSend(*(a1 + 40), "_stringWithNumber:argument:", a2, *(a1 + 48))}];
  if ((a3 & 1) == 0)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

- (id)_newNumberForScalarArgument:(const Argument *)argument
{
  switch(argument->var1)
  {
    case 1u:
      v4 = objc_alloc(MEMORY[0x277CCABB0]);
      v5 = *argument->var0;

      return [v4 initWithChar:v5];
    case 2u:
      v19 = objc_alloc(MEMORY[0x277CCABB0]);
      v20 = *argument->var0;

      return [v19 initWithUnsignedChar:v20];
    case 3u:
      v13 = objc_alloc(MEMORY[0x277CCABB0]);
      v14 = *argument->var0;

      return [v13 initWithShort:v14];
    case 4u:
      v15 = objc_alloc(MEMORY[0x277CCABB0]);
      v16 = *argument->var0;

      return [v15 initWithUnsignedShort:v16];
    case 5u:
      v9 = objc_alloc(MEMORY[0x277CCABB0]);
      v10 = *argument->var0;

      return [v9 initWithInt:v10];
    case 6u:
      v21 = objc_alloc(MEMORY[0x277CCABB0]);
      v22 = *argument->var0;

      return [v21 initWithUnsignedInt:v22];
    case 7u:
      v23 = objc_alloc(MEMORY[0x277CCABB0]);
      v24 = *argument->var0;

      return [v23 initWithLongLong:v24];
    case 8u:
      v17 = objc_alloc(MEMORY[0x277CCABB0]);
      v18 = *argument->var0;

      return [v17 initWithUnsignedLongLong:v18];
    case 9u:
      v27 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v28) = *argument->var0;

      return [v27 initWithFloat:v28];
    case 0xAu:
      v11 = objc_alloc(MEMORY[0x277CCABB0]);
      v12 = *argument->var0;

      return [v11 initWithDouble:v12];
    case 0xBu:
      v25 = objc_alloc(MEMORY[0x277CCABB0]);
      v26 = *argument->var0;

      return [v25 initWithLong:v26];
    case 0xCu:
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      var0 = *argument->var0;
      goto LABEL_10;
    case 0xDu:
      v7 = objc_alloc(MEMORY[0x277CCABB0]);
      var0 = argument->var0;
LABEL_10:

      return [v7 initWithUnsignedLong:var0];
    default:
      dy_abort("invalid core type: %u", argument->var1);
  }
}

- (id)_stringForScalarArgument:(const Argument *)argument
{
  v5 = [(DYFunctionTracer *)self _newNumberForScalarArgument:?];
  v6 = [(DYFunctionTracer *)self _stringWithNumber:v5 argument:argument];

  return v6;
}

- (id)typeStringForArgument:(const Argument *)argument
{
  if ((argument->var5 & 0x18) != 0)
  {
    p_var2 = &argument->var2;
  }

  else
  {
    p_var2 = &argument->var1;
  }

  v5 = *p_var2;
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [(DYFunctionTracerDelegate *)delegate typeStringForArgumentType:v5]) == 0)
  {
    if (v5 >= 0xE)
    {
      dy_abort("invalid core type: %u", v5);
    }

    v7 = off_27930C8A8[v5];
  }

  var2 = argument->var2;
  if (var2 == 14)
  {
    v9 = @"char*";
  }

  else if (var2 == 13)
  {
    v9 = @"void*";
  }

  else
  {
    v9 = v7;
  }

  if ((argument->var5 & 4) == 0)
  {
    return v9;
  }

  return [@"const " stringByAppendingString:v9];
}

- (id)valueStringForArgument:(const Argument *)argument
{
  if (argument->var2 == 16)
  {
    var0 = argument->var0;

    return [var0 description];
  }

  else
  {
    var5 = argument->var5;
    if ((var5 & 8) != 0)
    {
      if (var5)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __43__DYFunctionTracer_valueStringForArgument___block_invoke;
        v11[3] = &unk_27930C808;
        v11[4] = self;
        v11[5] = v9;
        [(DYFunctionTracer *)self _enumerateScalar1DArrayArgumentValues:argument usingBlock:v11];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", objc_msgSend(v9, "componentsJoinedByString:", @", ")];

        return v10;
      }

      else
      {
        v8 = argument->var0;

        return [(DYFunctionTracer *)self rewriteURL:v8];
      }
    }

    else if (var5)
    {

      return [DYFunctionTracer _stringForScalar1DArrayArgument:"_stringForScalar1DArrayArgument:usingBlock:" usingBlock:?];
    }

    else
    {
      if ((var5 & 2) != 0)
      {
        dy_abort("FIXME: 2D array of scalars are not implemented in the tracer", a2);
      }

      return [(DYFunctionTracer *)self _stringForScalarArgument:?];
    }
  }
}

uint64_t __43__DYFunctionTracer_valueStringForArgument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) rewriteURL:{objc_msgSend(a2, "unsignedLongValue")}];
  v4 = *(a1 + 40);

  return [v4 addObject:v3];
}

- (id)valueForArgument:(const Argument *)argument
{
  var5 = argument->var5;
  var1 = argument->var1;
  if (argument->var5)
  {
    v7 = 1;
  }

  else
  {
    v7 = var1 == 13;
  }

  if (!v7)
  {
    v13 = [(DYFunctionTracer *)self _newNumberForScalarArgument:argument];

    return v13;
  }

  if (var5)
  {
    if (argument->var0)
    {
      array = [MEMORY[0x277CBEB18] array];
      v15 = array;
      if (argument->var2 == 14 || (argument->var5 & 0x18) != 0)
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __37__DYFunctionTracer_valueForArgument___block_invoke;
        v26 = &unk_27930C830;
        v27 = array;
        v16 = &v23;
      }

      else
      {
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __37__DYFunctionTracer_valueForArgument___block_invoke_2;
        v21 = &unk_27930C830;
        v22 = array;
        v16 = &v18;
      }

      [(DYFunctionTracer *)self _enumerateScalar1DArrayArgumentValues:argument usingBlock:v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27];
      return v15;
    }
  }

  else
  {
    v7 = var1 == 13;
    v8 = (var5 >> 1) & 1;
    if (v7)
    {
      v8 = 1;
    }

    if (v8 != 1 || argument->var0 != 0)
    {
      if (argument->var5 || argument->var2 != 14)
      {

        return [(DYFunctionTracer *)self valueStringForArgument:?];
      }

      else
      {
        v10 = [-[DYFunctionTracer _newNumberForScalarArgument:](self _newNumberForScalarArgument:{argument), "unsignedLongValue"}];
        v11 = MEMORY[0x277CCACA8];

        return [v11 stringWithUTF8String:v10];
      }
    }
  }

  v17 = MEMORY[0x277CBEB68];

  return [v17 null];
}

uint64_t __37__DYFunctionTracer_valueForArgument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongValue];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:1];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  return [v4 addObject:v5];
}

- (id)traceFunction:(const Function *)function returnVariable:(id)variable error:(id *)error
{
  v5 = [(DYFunctionTracer *)self traceFunctionAsLines:function returnVariable:variable error:error];

  return [v5 componentsJoinedByString:@"\n"];
}

- (id)traceFunctionAsLines:(const Function *)lines returnVariable:(id)variable error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = *lines;
  linesCopy = lines;
  [(DYFunctionTracer *)self _setCurrentReceiver:lines];
  if ((self->_compilable || !self->_emitHiddenReceiverArgument) && [(DYFunctionTracer *)self _skipFirstArgumentForFunction:lines])
  {
    v9 = [(DYFunctionTracer *)self rewriteArgument:lines + 48];
    if (v9)
    {
      [v8 addObject:v9];
    }

    v10 = 72;
  }

  else
  {
    v10 = 48;
  }

  v49 = (lines + 24 * *(lines + 5) + 48);
  if ((lines + v10) != v49)
  {
    v11 = 0;
    v55 = v10 - 24 * *(lines + 5) - 48;
    linesCopy2 = lines;
    do
    {
      v13 = [(DYFunctionTracer *)self rewriteArgument:linesCopy2 + v10];
      v14 = [(DYFunctionTracer *)self getCastForArgument:linesCopy2 + v10 inFunction:linesCopy];
      if (v13)
      {
        [v8 addObject:v13];
      }

      else if (*(linesCopy2 + v10 + 12) == 16)
      {
        [v8 addObject:{objc_msgSend(*(linesCopy2 + v10), "description")}];
      }

      else if (v53 == -12272 && v10 + v11 == 72)
      {
        DYInternalDataTypeAsString(**(linesCopy2 + v10), &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        [v8 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", p_p, 1)}];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v15 = *(linesCopy2 + v10 + 22);
        if ((v15 & 8) != 0)
        {
          v16 = [(DYFunctionTracer *)self typeStringForArgument:linesCopy2 + v10];
          if (*(linesCopy2 + v10 + 22))
          {
            v51 = objc_opt_new();
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __62__DYFunctionTracer_traceFunctionAsLines_returnVariable_error___block_invoke;
            v65[3] = &unk_27930C858;
            v65[4] = self;
            v65[5] = v7;
            v65[6] = v16;
            v65[7] = v52;
            v65[8] = v51;
            [(DYFunctionTracer *)self _enumerateScalar1DArrayArgumentValues:linesCopy2 + v10 usingBlock:v65];
            if (self->_compilable)
            {
              nextArrayVariable = [(DYFunctionTracer *)self nextArrayVariable];
              [v7 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@* %@[%u] = {%@};", v16, nextArrayVariable, *(linesCopy2 + v10 + 20), objc_msgSend(v51, "componentsJoinedByString:", @", "))}];
            }

            else
            {
              nextArrayVariable = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", objc_msgSend(v51, "componentsJoinedByString:", @", ")];
            }

            [v8 addObject:nextArrayVariable];
          }

          else
          {
            v17 = [(DYFunctionTracer *)self rewriteURL:*(linesCopy2 + v10)];
            if (v17 == [(DYFunctionTracer *)self nilString])
            {
              [v8 addObject:{-[DYFunctionTracer nilString](self, "nilString")}];
            }

            else
            {
              if (self->_compilable)
              {
                v18 = MEMORY[0x277CCACA8];
                buffer_counter = self->buffer_counter;
                self->buffer_counter = buffer_counter + 1;
                buffer_counter = [v18 stringWithFormat:@"buffer%u", buffer_counter];
                if (self->_emitDataIndices)
                {
                  v21 = [(DYFunctionTracer *)self getIndexFromURL:v17];
                  [v7 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@* %@ = (%@*)DyGen::get_preloaded_data(%@);//d", v16, buffer_counter, v16, v21)}];
                }

                else
                {
                  [v7 addObject:{-[DYFunctionTracer loadStringForURL:variableName:bufferType:](self, "loadStringForURL:variableName:bufferType:", v17, buffer_counter, v16)}];
                  [v52 addObject:{-[DYFunctionTracer unloadStringForURL:](self, "unloadStringForURL:", v17)}];
                }
              }

              else
              {
                buffer_counter = v17;
              }

              [v8 addObject:buffer_counter];
            }
          }
        }

        else if (v15)
        {
          if (self->_compilable)
          {
            nextArrayVariable2 = [(DYFunctionTracer *)self nextArrayVariable];
            delegate = self->_delegate;
            if ((objc_opt_respondsToSelector() & 1) != 0 && (v24 = [(DYFunctionTracerDelegate *)delegate generateArrayVariable:nextArrayVariable2 ForArgument:linesCopy2 + v10]) != 0)
            {
              [v7 addObject:v24];
            }

            else
            {
              [v7 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@[%u] = %@;", -[DYFunctionTracer typeStringForArgument:](self, "typeStringForArgument:", linesCopy2 + v10), nextArrayVariable2, *(linesCopy2 + v10 + 20), -[DYFunctionTracer _stringForScalar1DArrayArgument:usingBlock:](self, "_stringForScalar1DArrayArgument:usingBlock:", linesCopy2 + v10, 0))}];
            }
          }

          else
          {
            nextArrayVariable2 = [(DYFunctionTracer *)self _stringForScalar1DArrayArgument:linesCopy2 + v10 usingBlock:0];
          }

          [v8 addObject:nextArrayVariable2];
        }

        else
        {
          if ((v15 & 2) != 0)
          {

            dy_abort("FIXME: 2D array of scalars are not implemented in the tracer");
          }

          [v8 addObject:{-[DYFunctionTracer _stringForScalarArgument:](self, "_stringForScalarArgument:", linesCopy2 + v10)}];
        }
      }

      if (v14 && ([objc_msgSend(v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1), "isEqualToString:", -[DYFunctionTracer nilString](self, "nilString")}] & 1) == 0)
      {
        [v8 setObject:objc_msgSend(v14 atIndexedSubscript:{"stringByAppendingString:", objc_msgSend(v8, "objectAtIndexedSubscript:", objc_msgSend(v8, "count") - 1)), objc_msgSend(v8, "count") - 1}];
      }

      [v8 setObject:-[DYFunctionTracer createArgument:forFunction:withValue:](self atIndexedSubscript:{"createArgument:forFunction:withValue:", linesCopy2 + v10, linesCopy, objc_msgSend(v8, "objectAtIndexedSubscript:", objc_msgSend(v8, "count") - 1)), objc_msgSend(v8, "count") - 1}];
      linesCopy2 = (linesCopy2 + 24);
      v11 += 24;
    }

    while (v55 + v11);
  }

  v27 = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v28 = [(DYFunctionTracerDelegate *)v27 constructTraceLinesWithFunction:linesCopy arguments:v8]) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v29 = -[DYFunctionTracerDelegate constructTraceLineWithFunction:arguments:](v27, "constructTraceLineWithFunction:arguments:", linesCopy, v8)) == 0 || (v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1], objc_msgSend(v28, "addObject:", v29), v29, !v28))
    {
      v30 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:200];
      if (self->_prependReceiverEffective)
      {
        [(DYFunctionTracer *)self _prependReceiver:v30 function:linesCopy];
      }

      __p.__r_.__value_.__r.__words[0] = v49;
      [(DYFunctionTracer *)self _appendTraceLine:v30 withFunction:linesCopy iterArgument:&__p argumentStrings:v8 returnVariable:variable];
      if (self->_compilable)
      {
        [v30 appendString:@";"];
      }

      v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      [v28 addObject:v30];
    }
  }

  if (self->_emitFunctionComments)
  {
    v31 = *(linesCopy + 1);
    if ((v31 & 0x40) != 0)
    {
      v32 = @" /* internal to GPUTools */";
    }

    else
    {
      if ((v31 & 4) == 0)
      {
        if ((v31 & 0x200) == 0)
        {
          if ((v31 & 0x80000) == 0)
          {
            if ((v31 & 0x40000) == 0)
            {
              goto LABEL_85;
            }

            goto LABEL_80;
          }

          goto LABEL_76;
        }

        goto LABEL_72;
      }

      v32 = @" /* inserted by GPUTools */";
    }

    v33 = [MEMORY[0x277CCAB68] stringWithFormat:v32];
    v34 = v33;
    if ((*(linesCopy + 5) & 2) == 0)
    {
      goto LABEL_73;
    }

    if (v33)
    {
      [v33 appendString:@" /* state mirror skip */"];
      goto LABEL_73;
    }

LABEL_72:
    v34 = [MEMORY[0x277CCAB68] stringWithFormat:@" /* state mirror skip */"];
LABEL_73:
    if ((*(linesCopy + 6) & 8) != 0)
    {
      if (!v34)
      {
LABEL_76:
        v34 = [MEMORY[0x277CCAB68] stringWithFormat:@" /* apple internal resource */"];
        goto LABEL_77;
      }

      [v34 appendString:@" /* apple internal resource */"];
    }

LABEL_77:
    if ((*(linesCopy + 6) & 4) == 0)
    {
      goto LABEL_81;
    }

    if (v34)
    {
      [v34 appendString:@" /* frame boundary */"];
LABEL_82:
      if ([v28 count])
      {
        v35 = 0;
        v36 = 1;
        do
        {
          [v28 replaceObjectAtIndex:v35 withObject:{objc_msgSend(objc_msgSend(v28, "objectAtIndex:", v35), "stringByAppendingString:", v34)}];
          v35 = v36++;
        }

        while ([v28 count] > v35);
      }

      goto LABEL_85;
    }

LABEL_80:
    v34 = [MEMORY[0x277CCAB68] stringWithFormat:@" /* frame boundary */"];
LABEL_81:
    if (!v34)
    {
      goto LABEL_85;
    }

    goto LABEL_82;
  }

LABEL_85:
  [v7 addObjectsFromArray:v28];

  [v7 addObjectsFromArray:v52];
  if ((*(linesCopy + 4) & 2) != 0 && self->_emitFunctionComments)
  {
    v37 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v38 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v38)
    {
      v39 = *v62;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(v7);
          }

          [v37 addObject:{objc_msgSend(@"//", "stringByAppendingString:", *(*(&v61 + 1) + 8 * i))}];
        }

        v38 = [v7 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v38);
    }
  }

  else
  {
    v37 = v7;
  }

  if (self->_emitErrors)
  {
    [(DYFunctionTracer *)self _emitErrors:v37 function:linesCopy];
  }

  if (self->_emitAssociatedFunctions && *(linesCopy + 65))
  {
    self->_emitAssociatedFunctions = 0;
    [v37 addObject:@"{"];
    v41 = *(linesCopy + 65);
    if (v41)
    {
      while (1)
      {
        v42 = [(DYFunctionTracer *)self traceFunctionAsLines:v41 returnVariable:0 error:error];
        v43 = v42;
        if (!v42)
        {
          break;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v44 = [v42 countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v44)
        {
          v45 = *v58;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v58 != v45)
              {
                objc_enumerationMutation(v43);
              }

              [v37 addObject:{objc_msgSend(@"    ", "stringByAppendingString:", *(*(&v57 + 1) + 8 * j))}];
            }

            v44 = [v43 countByEnumeratingWithState:&v57 objects:v67 count:16];
          }

          while (v44);
        }

        v41 = *(v41 + 520);
        if (!v41)
        {
          goto LABEL_112;
        }
      }

      v37 = 0;
    }

LABEL_112:
    [v37 addObject:@"}"];
    self->_emitAssociatedFunctions = 1;
  }

  result = v37;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __62__DYFunctionTracer_traceFunctionAsLines_returnVariable_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) rewriteURL:{objc_msgSend(a2, "unsignedLongValue")}];
  if (v3 == [*(a1 + 32) nilString])
  {
    v13 = *(a1 + 64);
    v14 = [*(a1 + 32) nilString];
    v15 = v13;
  }

  else
  {
    v4 = *(a1 + 32);
    if (*(v4 + 56) == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = *(v4 + 28);
      *(v4 + 28) = v6 + 1;
      v7 = [v5 stringWithFormat:@"buffer%u", v6];
      v8 = *(a1 + 32);
      if (v8[38] == 1)
      {
        v9 = [v8 getIndexFromURL:v3];
        v10 = *(a1 + 40);
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@* %@ = (%@*)DyGen::get_preloaded_data(%@);//c", *(a1 + 48), v7, *(a1 + 48), v9];
        v12 = v10;
      }

      else
      {
        [*(a1 + 40) addObject:{objc_msgSend(v8, "loadStringForURL:variableName:bufferType:", v3, v7, *(a1 + 48))}];
        v16 = *(a1 + 56);
        v11 = [*(a1 + 32) unloadStringForURL:v3];
        v12 = v16;
      }

      [v12 addObject:v11];
    }

    else
    {
      v7 = v3;
    }

    v15 = *(a1 + 64);
    v14 = v7;
  }

  return [v15 addObject:v14];
}

- (id)loadStringForURL:(id)l variableName:(id)name bufferType:(id)type
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@* %@ = (%@*)DyGen::load_url(\"%@\"", type, name, type, l];
  }

  return [(DYFunctionTracerDelegate *)delegate loadStringForURL:l variableName:name bufferType:type];
}

- (id)unloadStringForURL:(id)l
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"DyGen::unload_url(\"%@\"", l];
  }

  return [(DYFunctionTracerDelegate *)delegate unloadStringForURL:l];
}

- (id)rewriteVariable:(const char *)variable
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(DYFunctionTracerDelegate *)delegate rewriteVariable:variable receiver:self->_currentReceiverID];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    return v6;
  }

  if (self->_emitVariables || self->_compilable)
  {
    v8 = MEMORY[0x277CCACA8];

    return [v8 stringWithUTF8String:variable];
  }

  else
  {
    v9 = [(DYFunctionTracer *)self _objectNameFromVariable:variable];
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v9];
  }
}

- (id)rewriteURL:(const char *)l
{
  if (l && *l)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      result = [(DYFunctionTracerDelegate *)delegate rewriteURL:l];
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    result = [(DYFunctionTracer *)self nilString];
    if (result)
    {
      return result;
    }
  }

  v6 = MEMORY[0x277CCACA8];

  return [v6 stringWithCString:l encoding:1];
}

- (id)rewriteReceiver:(unint64_t)receiver
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(DYFunctionTracerDelegate *)delegate rewriteReceiver:receiver]) == 0)
  {
    if (self->_compilable)
    {

      return [(DYFunctionTracer *)self variableForReceiverID:receiver];
    }

    else
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%llx", receiver];
    }
  }

  return result;
}

- (id)createArgument:(const Argument *)argument forFunction:(const Function *)function withValue:(id)value
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return value;
  }

  return [(DYFunctionTracerDelegate *)delegate createArgument:argument forFunction:function withValue:value];
}

- (id)getCastForArgument:(const Argument *)argument inFunction:(const Function *)function
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(DYFunctionTracerDelegate *)delegate getCastForArgument:argument inFunction:function];
}

- (id)rewriteArgument:(const Argument *)argument
{
  delegate = self->_delegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(DYFunctionTracerDelegate *)delegate rewriteArgument:argument];
}

- (id)nextArrayVariable
{
  v2 = MEMORY[0x277CCACA8];
  array_counter = self->array_counter;
  self->array_counter = array_counter + 1;
  return [v2 stringWithFormat:@"array%u", array_counter];
}

- (id)getIndexFromURL:(id)l
{
  v5 = [(NSMutableDictionary *)self->urlIndices objectForKey:?];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[NSMutableDictionary count](self->urlIndices, "count")}];
    [(NSMutableDictionary *)self->urlIndices setObject:v5 forKey:l];
  }

  return v5;
}

- (void)_appendReturnValueToTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:
{
  if (*(function + 8))
  {
    delegate = self->_delegate;
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v13 = [(DYFunctionTracerDelegate *)delegate rewriteArgument:function + 24]) == 0)
    {
      v13 = a7;
      if (!a7)
      {
        if (*(function + 9) == 16)
        {
          v14 = [*a5.var0->var0 description];
        }

        else
        {
          if (self->_compilable && (*(function + 23) & 0x10) == 0)
          {
            return;
          }

          v14 = [(DYFunctionTracer *)self valueStringForArgument:function + 24];
        }

        v13 = v14;
        if (!v14)
        {
          return;
        }
      }
    }

    [line appendString:v13];
    if (self->_compact)
    {
      v15 = @"=";
    }

    else
    {
      v15 = @" = ";
    }

    [line appendString:v15];
  }
}

- (void)_appendTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:
{
  v30 = *MEMORY[0x277D85DE8];
  var0 = a5.var0->var0;
  [(DYFunctionTracer *)self _appendReturnValueToTraceLine:line withFunction:function iterArgument:&var0 argumentStrings:argument returnVariable:a7];
  v11 = dy_fenum_to_function_name_nsstring(*function, *(function + 1), self->_compactEffective);
  if ([v11 containsString:@"%@"] && objc_msgSend(v11, "containsString:", @":") && objc_msgSend(v11, "containsString:", @" "))
  {
    v12 = [v11 length];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [argument countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v23 = *v25;
LABEL_6:
      v16 = 0;
      while (1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(argument);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = [v11 rangeOfString:@"%@" options:2 range:{v15, v12}];
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v20 = v18;
        v21 = v19;
        [line appendString:{objc_msgSend(v11, "substringWithRange:", v15, v18 - v15)}];
        [line appendString:v17];
        v15 = v20 + v21;
        v12 = [v11 length] - (v20 + v21);
        if (v14 == ++v16)
        {
          v14 = [argument countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    [line appendString:{objc_msgSend(v11, "substringWithRange:", v15, v12)}];
  }

  else
  {
    [line appendFormat:@"%@(%@)", v11, objc_msgSend(argument, "componentsJoinedByString:", @", ")];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end