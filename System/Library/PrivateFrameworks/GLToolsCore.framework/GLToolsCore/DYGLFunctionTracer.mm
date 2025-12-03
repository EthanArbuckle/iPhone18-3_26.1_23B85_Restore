@interface DYGLFunctionTracer
- (BOOL)_skipFirstArgumentForFunction:(const Function *)function;
- (DYGLFunctionTracer)init;
- (id).cxx_construct;
- (id)_stringForScalar1DArrayArgument:(const Argument *)argument usingBlock:(id)block;
- (id)_stringWithNumber:(id)number argument:(const Argument *)argument;
- (id)typeStringForArgument:(const Argument *)argument;
- (id)variableForGLSyncID:(unint64_t)d;
- (id)variableForGLSyncIDNumber:(id)number;
- (id)variableForPBufferID:(unint64_t)d;
- (id)variableForPBufferIDNumber:(id)number;
- (id)variableForPixelFormatID:(unint64_t)d;
- (id)variableForPixelFormatIDNumber:(id)number;
- (id)variableForReceiverID:(unint64_t)d;
- (id)variableForReceiverIDNumber:(id)number;
- (void)_appendTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:;
- (void)_emitErrors:(id)errors function:(const Function *)function;
- (void)_prependReceiver:(id)receiver function:(const Function *)function;
@end

@implementation DYGLFunctionTracer

- (DYGLFunctionTracer)init
{
  v3.receiver = self;
  v3.super_class = DYGLFunctionTracer;
  result = [(DYFunctionTracer *)&v3 init];
  if (result)
  {
    *(&result->super.super.isa + *MEMORY[0x277D0B000]) = @"NULL";
  }

  return result;
}

- (id)_stringWithNumber:(id)number argument:(const Argument *)argument
{
  switch(argument->var2)
  {
    case 0xFu:
      unsignedLongLongValue = [number unsignedLongLongValue];
      if (!unsignedLongLongValue)
      {
        goto LABEL_47;
      }

      return [(DYFunctionTracer *)self rewriteReceiver:unsignedLongLongValue];
    case 0x11u:
      v16 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      unsignedIntValue = [number unsignedIntValue];
      if (v16 == 1)
      {
        v18 = @"True";
        v19 = @"False";
      }

      else
      {
        v18 = @"GL_TRUE";
        v19 = @"GL_FALSE";
      }

      if (unsignedIntValue)
      {
        return v18;
      }

      else
      {
        return v19;
      }

    case 0x12u:
    case 0x1Fu:
      unsignedIntValue2 = [number unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      goto LABEL_27;
    case 0x14u:
      unsignedIntValue3 = [number unsignedIntValue];
      v14 = dy_string_from_attachment_mask(unsignedIntValue3, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x15u:
      unsignedIntValue4 = [number unsignedIntValue];
      v14 = dy_string_from_attrib_mask(unsignedIntValue4, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x16u:
      unsignedIntValue5 = [number unsignedIntValue];
      v14 = dy_string_from_client_attrib_mask(unsignedIntValue5, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x17u:
      unsignedIntValue6 = [number unsignedIntValue];
      v14 = dy_string_from_map_buffer_range_access(unsignedIntValue6, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x18u:
      unsignedIntValue7 = [number unsignedIntValue];
      v14 = dy_string_from_pipeline_stages(unsignedIntValue7, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x19u:
      unsignedIntValue8 = [number unsignedIntValue];
      v14 = dy_string_from_sync_flags(unsignedIntValue8, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
LABEL_34:
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v14 length:strlen(v14) encoding:1 freeWhenDone:1];

      return v29;
    case 0x1Au:
      if ([number unsignedLongLongValue] == -1)
      {
        v24 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
        v25 = @"GL_TIMEOUT_IGNORED";
        v26 = @"TimeoutIgnored";
        goto LABEL_61;
      }

      var1 = argument->var1;

      return [(DYFunctionTracer *)self _stringWithIntegerNumber:number coreType:var1];
    case 0x1Bu:
      unsignedIntValue2 = [number unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (unsignedIntValue2 == 1)
      {
        v9 = @"GL_LINES";
        v10 = @"Lines";
      }

      else
      {
        if (unsignedIntValue2)
        {
          goto LABEL_27;
        }

        v9 = @"GL_POINTS";
        v10 = @"Points";
      }

      goto LABEL_67;
    case 0x1Cu:
      unsignedIntValue2 = [number unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (unsignedIntValue2 == 1)
      {
        v9 = @"GL_ONE";
        v10 = @"One";
LABEL_67:
        if (v8)
        {
          return v10;
        }

        else
        {
          return v9;
        }
      }

      if (!unsignedIntValue2)
      {
        v9 = @"GL_ZERO";
        v10 = @"Zero";
        goto LABEL_67;
      }

LABEL_27:

      return dy_nsstring_from_enum_ex(unsignedIntValue2, v8);
    case 0x1Du:
      unsignedIntValue2 = [number unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (unsignedIntValue2)
      {
        goto LABEL_27;
      }

      v9 = @"GL_NONE";
      v10 = @"None";
      goto LABEL_67;
    case 0x1Eu:
      unsignedIntValue2 = [number unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (unsignedIntValue2)
      {
        goto LABEL_27;
      }

      v9 = @"GL_NO_ERROR";
      v10 = @"NoError";
      goto LABEL_67;
    case 0x20u:
      unsignedIntValue9 = [number unsignedIntValue];
      if (unsignedIntValue9 == 33984)
      {
        v24 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
        v25 = @"GL_TEXTURE0";
        v26 = @"Texture0";
LABEL_61:
        if (v24)
        {
          return v26;
        }

        else
        {
          return v25;
        }
      }

      else
      {
        if (*(&self->super.super.isa + *MEMORY[0x277D0AFE8]))
        {
          v33 = @"Texture%d";
        }

        else
        {
          v33 = @"GL_TEXTURE0+%d";
        }

        return [MEMORY[0x277CCACA8] stringWithFormat:v33, (unsignedIntValue9 - 33984)];
      }

    case 0x21u:
      unsignedLongLongValue2 = [number unsignedLongLongValue];
      if (!unsignedLongLongValue2)
      {
        goto LABEL_47;
      }

      v31 = unsignedLongLongValue2;
      if (*(&self->super.super.isa + *MEMORY[0x277D0AFF0]) != 1)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llx", v31];
      }

      return [(DYGLFunctionTracer *)self variableForGLSyncID:unsignedLongLongValue2];
    case 0x2Fu:
      unsignedLongLongValue3 = [number unsignedLongLongValue];
      if (unsignedLongLongValue3)
      {
        v31 = unsignedLongLongValue3;
        if (*(&self->super.super.isa + *MEMORY[0x277D0AFF0]) == 1)
        {

          return [(DYGLFunctionTracer *)self variableForPixelFormatID:unsignedLongLongValue3];
        }

        else
        {
          return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llx", v31];
        }
      }

      else
      {
LABEL_47:

        return [(DYFunctionTracer *)self nilString];
      }

    default:
      v34.receiver = self;
      v34.super_class = DYGLFunctionTracer;
      return [(DYFunctionTracer *)&v34 _stringWithNumber:number argument:argument];
  }
}

- (id)_stringForScalar1DArrayArgument:(const Argument *)argument usingBlock:(id)block
{
  if (argument->var0)
  {
    if (argument->var4)
    {
      v6.receiver = self;
      v6.super_class = DYGLFunctionTracer;
      return [DYFunctionTracer _stringForScalar1DArrayArgument:sel__stringForScalar1DArrayArgument_usingBlock_ usingBlock:?];
    }

    else
    {
      return @"{}";
    }
  }

  else
  {

    return [(DYFunctionTracer *)self nilString];
  }
}

- (id)typeStringForArgument:(const Argument *)argument
{
  var2 = argument->var2;
  if (var2 > 32)
  {
    if (var2 != 33)
    {
      if (var2 == 45)
      {
        return @"CGLPixelFormatAttribute";
      }

      goto LABEL_8;
    }

    return @"GLsync";
  }

  else
  {
    if (var2 != 17)
    {
      if (var2 == 18)
      {
        return @"GLenum";
      }

LABEL_8:
      v8 = v3;
      v9 = v4;
      v7.receiver = self;
      v7.super_class = DYGLFunctionTracer;
      return [(DYFunctionTracer *)&v7 typeStringForArgument:?];
    }

    return @"GLBOOLean";
  }
}

- (void)_prependReceiver:(id)receiver function:(const Function *)function
{
  v5[0] = function + 16;
  v5[1] = 0xF00000008;
  v5[2] = 0x100000008;
  [receiver appendString:{-[DYFunctionTracer valueStringForArgument:](self, "valueStringForArgument:", v5)}];
  [receiver appendString:@" "];
}

- (BOOL)_skipFirstArgumentForFunction:(const Function *)function
{
  if (*function < 0x418u)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = DYGLFunctionTracer;
  return [(DYFunctionTracer *)&v6 _skipFirstArgumentForFunction:?];
}

- (void)_appendTraceLine:(id)line withFunction:(const Function *)function iterArgument:(array_iterator<const GPUTools:(id)argument :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:
{
  v13 = *function;
  if (*function == 888)
  {
    goto LABEL_4;
  }

  if (v13 != 123)
  {
    if (v13 != 116)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_6;
    }

LABEL_4:
    LODWORD(v22) = GPUTools::FD::Argument::ViewAsGLObjectName((function + 24));
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&self->_programNames.__table_.__bucket_list_.__ptr_, &v22);
    goto LABEL_5;
  }

  LODWORD(v22) = GPUTools::FD::Argument::ViewAsGLObjectName((function + 72));
  v15 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(&self->_programNames.__table_.__bucket_list_.__ptr_, &v22);
  v14 = v15 != 0;
  if (v15)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&self->_programNames.__table_.__bucket_list_.__ptr_, v15);
    v13 = 834;
  }

  else
  {
    v13 = 123;
  }

LABEL_6:
  if (v13 > -8185)
  {
    if (v13 <= -8182)
    {
      if (v13 == -8184)
      {
        [line appendFormat:@"[EAGLContext setCurrentContext:%@]", objc_msgSend(argument, "objectAtIndex:", 0), v17, v18, v19];
      }

      else if (v13 == -8183)
      {
        [line appendFormat:@"[%@ setTransform:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), v18, v19];
      }

      else
      {
        [line appendFormat:@"[%@ setPosition:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), v18, v19];
      }

      return;
    }

    switch(v13)
    {
      case -8181:
        [line appendFormat:@"[%@ setAnchorPoint:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), v18, v19];
        return;
      case -8179:
        [line appendFormat:@"[%@ presentRenderbuffer:%@ atTime:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), objc_msgSend(argument, "objectAtIndex:", 2), v19];
        return;
      case -8178:
        [line appendFormat:@"[%@ presentRenderbuffer:%@ afterMinimumDuration:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), objc_msgSend(argument, "objectAtIndex:", 2), v19];
        return;
    }
  }

  else if (v13 > -8190)
  {
    switch(v13)
    {
      case -8189:
        [line appendFormat:@"[%@ renderbufferStorage:%@ fromDrawable:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), objc_msgSend(argument, "objectAtIndex:", 2), v19];
        return;
      case -8188:
        [line appendFormat:@"[%@ initWithAPI:%@ properties:%@ /* sharegroup:%@ */]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), objc_msgSend(argument, "objectAtIndex:", 2), objc_msgSend(argument, "objectAtIndex:", 3)];
        return;
      case -8185:
        [line appendFormat:@"[%@ dealloc]", objc_msgSend(argument, "objectAtIndex:", 0), v17, v18, v19];
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case -8192:
        [line appendFormat:@"[%@ initWithAPI:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), v18, v19];
        return;
      case -8191:
        [line appendFormat:@"[%@ initWithAPI:%@ sharegroup:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), objc_msgSend(argument, "objectAtIndex:", 2), v19];
        return;
      case -8190:
        [line appendFormat:@"[%@ presentRenderbuffer:%@]", objc_msgSend(argument, "objectAtIndex:", 0), objc_msgSend(argument, "objectAtIndex:", 1), v18, v19];
        return;
    }
  }

  v22 = 0;
  if (v14)
  {
    operator new();
  }

  var0 = a5.var0->var0;
  v20.receiver = self;
  v20.super_class = DYGLFunctionTracer;
  v21 = var0;
  [(DYFunctionTracer *)&v20 _appendTraceLine:line withFunction:function iterArgument:&v21 argumentStrings:argument returnVariable:a7];
}

- (void)_emitErrors:(id)errors function:(const Function *)function
{
  if (*(function + 241))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"    ERROR: %@ (0x%04x)", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", dy_string_from_enum(*(function + 241))), *(function + 241)];

    [errors addObject:v5];
  }
}

- (id)variableForReceiverID:(unint64_t)d
{
  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"ctx_%llx", d];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForReceiverIDNumber:(id)number
{
  unsignedLongLongValue = [number unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForReceiverID:unsignedLongLongValue];
}

- (id)variableForGLSyncID:(unint64_t)d
{
  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"sync_%llx", d];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForGLSyncIDNumber:(id)number
{
  unsignedLongLongValue = [number unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForGLSyncID:unsignedLongLongValue];
}

- (id)variableForPBufferID:(unint64_t)d
{
  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"pbuffer_%llx", d];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForPBufferIDNumber:(id)number
{
  unsignedLongLongValue = [number unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForPBufferID:unsignedLongLongValue];
}

- (id)variableForPixelFormatID:(unint64_t)d
{
  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"pf_%llx", d];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForPixelFormatIDNumber:(id)number
{
  unsignedLongLongValue = [number unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForPixelFormatID:unsignedLongLongValue];
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

@end