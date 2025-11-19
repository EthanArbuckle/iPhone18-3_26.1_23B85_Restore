@interface DYGLFunctionTracer
- (BOOL)_skipFirstArgumentForFunction:(const Function *)a3;
- (DYGLFunctionTracer)init;
- (id).cxx_construct;
- (id)_stringForScalar1DArrayArgument:(const Argument *)a3 usingBlock:(id)a4;
- (id)_stringWithNumber:(id)a3 argument:(const Argument *)a4;
- (id)typeStringForArgument:(const Argument *)a3;
- (id)variableForGLSyncID:(unint64_t)a3;
- (id)variableForGLSyncIDNumber:(id)a3;
- (id)variableForPBufferID:(unint64_t)a3;
- (id)variableForPBufferIDNumber:(id)a3;
- (id)variableForPixelFormatID:(unint64_t)a3;
- (id)variableForPixelFormatIDNumber:(id)a3;
- (id)variableForReceiverID:(unint64_t)a3;
- (id)variableForReceiverIDNumber:(id)a3;
- (void)_appendTraceLine:(id)a3 withFunction:(const Function *)a4 iterArgument:(array_iterator<const GPUTools:(id)a6 :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:;
- (void)_emitErrors:(id)a3 function:(const Function *)a4;
- (void)_prependReceiver:(id)a3 function:(const Function *)a4;
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

- (id)_stringWithNumber:(id)a3 argument:(const Argument *)a4
{
  switch(a4->var2)
  {
    case 0xFu:
      v21 = [a3 unsignedLongLongValue];
      if (!v21)
      {
        goto LABEL_47;
      }

      return [(DYFunctionTracer *)self rewriteReceiver:v21];
    case 0x11u:
      v16 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      v17 = [a3 unsignedIntValue];
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

      if (v17)
      {
        return v18;
      }

      else
      {
        return v19;
      }

    case 0x12u:
    case 0x1Fu:
      v7 = [a3 unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      goto LABEL_27;
    case 0x14u:
      v13 = [a3 unsignedIntValue];
      v14 = dy_string_from_attachment_mask(v13, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x15u:
      v15 = [a3 unsignedIntValue];
      v14 = dy_string_from_attrib_mask(v15, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x16u:
      v20 = [a3 unsignedIntValue];
      v14 = dy_string_from_client_attrib_mask(v20, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x17u:
      v22 = [a3 unsignedIntValue];
      v14 = dy_string_from_map_buffer_range_access(v22, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x18u:
      v28 = [a3 unsignedIntValue];
      v14 = dy_string_from_pipeline_stages(v28, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
      goto LABEL_34;
    case 0x19u:
      v27 = [a3 unsignedIntValue];
      v14 = dy_string_from_sync_flags(v27, *(&self->super.super.isa + *MEMORY[0x277D0AFE8]), 0, 0);
LABEL_34:
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v14 length:strlen(v14) encoding:1 freeWhenDone:1];

      return v29;
    case 0x1Au:
      if ([a3 unsignedLongLongValue] == -1)
      {
        v24 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
        v25 = @"GL_TIMEOUT_IGNORED";
        v26 = @"TimeoutIgnored";
        goto LABEL_61;
      }

      var1 = a4->var1;

      return [(DYFunctionTracer *)self _stringWithIntegerNumber:a3 coreType:var1];
    case 0x1Bu:
      v7 = [a3 unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (v7 == 1)
      {
        v9 = @"GL_LINES";
        v10 = @"Lines";
      }

      else
      {
        if (v7)
        {
          goto LABEL_27;
        }

        v9 = @"GL_POINTS";
        v10 = @"Points";
      }

      goto LABEL_67;
    case 0x1Cu:
      v7 = [a3 unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (v7 == 1)
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

      if (!v7)
      {
        v9 = @"GL_ZERO";
        v10 = @"Zero";
        goto LABEL_67;
      }

LABEL_27:

      return dy_nsstring_from_enum_ex(v7, v8);
    case 0x1Du:
      v7 = [a3 unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (v7)
      {
        goto LABEL_27;
      }

      v9 = @"GL_NONE";
      v10 = @"None";
      goto LABEL_67;
    case 0x1Eu:
      v7 = [a3 unsignedIntValue];
      v8 = *(&self->super.super.isa + *MEMORY[0x277D0AFE8]);
      if (v7)
      {
        goto LABEL_27;
      }

      v9 = @"GL_NO_ERROR";
      v10 = @"NoError";
      goto LABEL_67;
    case 0x20u:
      v23 = [a3 unsignedIntValue];
      if (v23 == 33984)
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

        return [MEMORY[0x277CCACA8] stringWithFormat:v33, (v23 - 33984)];
      }

    case 0x21u:
      v32 = [a3 unsignedLongLongValue];
      if (!v32)
      {
        goto LABEL_47;
      }

      v31 = v32;
      if (*(&self->super.super.isa + *MEMORY[0x277D0AFF0]) != 1)
      {
        return [MEMORY[0x277CCACA8] stringWithFormat:@"0x%016llx", v31];
      }

      return [(DYGLFunctionTracer *)self variableForGLSyncID:v32];
    case 0x2Fu:
      v30 = [a3 unsignedLongLongValue];
      if (v30)
      {
        v31 = v30;
        if (*(&self->super.super.isa + *MEMORY[0x277D0AFF0]) == 1)
        {

          return [(DYGLFunctionTracer *)self variableForPixelFormatID:v30];
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
      return [(DYFunctionTracer *)&v34 _stringWithNumber:a3 argument:a4];
  }
}

- (id)_stringForScalar1DArrayArgument:(const Argument *)a3 usingBlock:(id)a4
{
  if (a3->var0)
  {
    if (a3->var4)
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

- (id)typeStringForArgument:(const Argument *)a3
{
  var2 = a3->var2;
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

- (void)_prependReceiver:(id)a3 function:(const Function *)a4
{
  v5[0] = a4 + 16;
  v5[1] = 0xF00000008;
  v5[2] = 0x100000008;
  [a3 appendString:{-[DYFunctionTracer valueStringForArgument:](self, "valueStringForArgument:", v5)}];
  [a3 appendString:@" "];
}

- (BOOL)_skipFirstArgumentForFunction:(const Function *)a3
{
  if (*a3 < 0x418u)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = DYGLFunctionTracer;
  return [(DYFunctionTracer *)&v6 _skipFirstArgumentForFunction:?];
}

- (void)_appendTraceLine:(id)a3 withFunction:(const Function *)a4 iterArgument:(array_iterator<const GPUTools:(id)a6 :(id)a7 FD::Argument>)a5 argumentStrings:returnVariable:
{
  v13 = *a4;
  if (*a4 == 888)
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
    LODWORD(v22) = GPUTools::FD::Argument::ViewAsGLObjectName((a4 + 24));
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&self->_programNames.__table_.__bucket_list_.__ptr_, &v22);
    goto LABEL_5;
  }

  LODWORD(v22) = GPUTools::FD::Argument::ViewAsGLObjectName((a4 + 72));
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
        [a3 appendFormat:@"[EAGLContext setCurrentContext:%@]", objc_msgSend(a6, "objectAtIndex:", 0), v17, v18, v19];
      }

      else if (v13 == -8183)
      {
        [a3 appendFormat:@"[%@ setTransform:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), v18, v19];
      }

      else
      {
        [a3 appendFormat:@"[%@ setPosition:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), v18, v19];
      }

      return;
    }

    switch(v13)
    {
      case -8181:
        [a3 appendFormat:@"[%@ setAnchorPoint:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), v18, v19];
        return;
      case -8179:
        [a3 appendFormat:@"[%@ presentRenderbuffer:%@ atTime:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), objc_msgSend(a6, "objectAtIndex:", 2), v19];
        return;
      case -8178:
        [a3 appendFormat:@"[%@ presentRenderbuffer:%@ afterMinimumDuration:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), objc_msgSend(a6, "objectAtIndex:", 2), v19];
        return;
    }
  }

  else if (v13 > -8190)
  {
    switch(v13)
    {
      case -8189:
        [a3 appendFormat:@"[%@ renderbufferStorage:%@ fromDrawable:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), objc_msgSend(a6, "objectAtIndex:", 2), v19];
        return;
      case -8188:
        [a3 appendFormat:@"[%@ initWithAPI:%@ properties:%@ /* sharegroup:%@ */]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), objc_msgSend(a6, "objectAtIndex:", 2), objc_msgSend(a6, "objectAtIndex:", 3)];
        return;
      case -8185:
        [a3 appendFormat:@"[%@ dealloc]", objc_msgSend(a6, "objectAtIndex:", 0), v17, v18, v19];
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case -8192:
        [a3 appendFormat:@"[%@ initWithAPI:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), v18, v19];
        return;
      case -8191:
        [a3 appendFormat:@"[%@ initWithAPI:%@ sharegroup:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), objc_msgSend(a6, "objectAtIndex:", 2), v19];
        return;
      case -8190:
        [a3 appendFormat:@"[%@ presentRenderbuffer:%@]", objc_msgSend(a6, "objectAtIndex:", 0), objc_msgSend(a6, "objectAtIndex:", 1), v18, v19];
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
  [(DYFunctionTracer *)&v20 _appendTraceLine:a3 withFunction:a4 iterArgument:&v21 argumentStrings:a6 returnVariable:a7];
}

- (void)_emitErrors:(id)a3 function:(const Function *)a4
{
  if (*(a4 + 241))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"    ERROR: %@ (0x%04x)", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", dy_string_from_enum(*(a4 + 241))), *(a4 + 241)];

    [a3 addObject:v5];
  }
}

- (id)variableForReceiverID:(unint64_t)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"ctx_%llx", a3];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForReceiverIDNumber:(id)a3
{
  v4 = [a3 unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForReceiverID:v4];
}

- (id)variableForGLSyncID:(unint64_t)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"sync_%llx", a3];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForGLSyncIDNumber:(id)a3
{
  v4 = [a3 unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForGLSyncID:v4];
}

- (id)variableForPBufferID:(unint64_t)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"pbuffer_%llx", a3];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForPBufferIDNumber:(id)a3
{
  v4 = [a3 unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForPBufferID:v4];
}

- (id)variableForPixelFormatID:(unint64_t)a3
{
  if (a3)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"pf_%llx", a3];
  }

  return [(DYFunctionTracer *)self nilString];
}

- (id)variableForPixelFormatIDNumber:(id)a3
{
  v4 = [a3 unsignedLongLongValue];

  return [(DYGLFunctionTracer *)self variableForPixelFormatID:v4];
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  return self;
}

@end