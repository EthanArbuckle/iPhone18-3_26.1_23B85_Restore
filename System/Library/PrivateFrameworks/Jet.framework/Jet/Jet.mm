BOOL xglCompileShader(GLuint *a1, uint64_t type, GLchar *a3, uint64_t a4)
{
  string[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    size_4 = 0;
    Shader = glCreateShader(type);
    *a1 = Shader;
    string[0] = "    #extension GL_OES_standard_derivatives : enable\n    precision highp float;\n    precision highp int;\n    precision lowp sampler2D;\n    precision lowp samplerCube;\n    #line 0\n";
    string[1] = a3;
    glShaderSource(Shader, 2, string, 0);
    glCompileShader(*a1);
    size = 0;
    glGetShaderiv(*a1, 0x8B84u, &size);
    if (size >= 1)
    {
      v8 = malloc_type_malloc(size, 0x100004077774924uLL);
      glGetShaderInfoLog(*a1, size, &size, v8);
      if (a4)
      {
        operator new();
      }

      free(v8);
    }

    glGetShaderiv(*a1, 0x8B81u, &size_4);
    v9 = size_4 != 0;
    if (!size_4)
    {
      glDeleteShader(*a1);
    }
  }

  else
  {
    jet_log(&cfstr_ShaderSourceIs.isa, type);
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL xglLinkProgram(GLuint a1)
{
  params = 0;
  glLinkProgram(a1);
  glGetProgramiv(a1, 0x8B82u, &params);
  return params != 0;
}

BOOL xglValidateProgram(GLuint a1)
{
  *params = 0;
  glValidateProgram(a1);
  glGetProgramiv(a1, 0x8B84u, &params[1]);
  if (params[1] >= 1)
  {
    v2 = malloc_type_malloc(params[1], 0x100004077774924uLL);
    glGetProgramInfoLog(a1, params[1], &params[1], v2);
    jet_log(&cfstr_ProgramValidat.isa, v2);
    free(v2);
  }

  glGetProgramiv(a1, 0x8B83u, params);
  return params[0] != 0;
}

void xglPrintFramebufferStatus(void)
{
  v0 = glCheckFramebufferStatus(0x8D40u);
  if (v0 > 36054)
  {
    switch(v0)
    {
      case 0x8CD7:
        jet_log(&cfstr_GlFramebufferI_0.isa);
        goto LABEL_15;
      case 0x8CD9:
        jet_log(&cfstr_GlFramebufferI_1.isa);
        goto LABEL_15;
      case 0x8CDD:
        jet_log(&cfstr_GlFramebufferU.isa);
LABEL_15:

        xglPrintFramebuffer();
        return;
    }

    goto LABEL_14;
  }

  if (v0 != 36053)
  {
    if (v0 == 36054)
    {
      jet_log(&cfstr_GlFramebufferI.isa);
      goto LABEL_15;
    }

LABEL_14:
    jet_log(&cfstr_GlFramebufferS.isa, v0);
    goto LABEL_15;
  }

  jet_log(&cfstr_GlFramebufferC.isa);
}

void xglPrintFramebuffer(void)
{
  params = 0;
  glGetIntegerv(0x8CA6u, &params);
  jet_log(&cfstr_GlFramebufferB.isa, params);
  if (params)
  {
    jet_log(&stru_286782B30.isa);
    *v10 = 0;
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD1u, &v10[1]);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8CE0u, 0x8CD0u, v10);
    if (v10[0] == 5890)
    {
      jet_log(&cfstr_GlColorAttachm_0.isa, v10[1]);
    }

    else if (v10[0] == 36161)
    {
      v9 = 0;
      glGetIntegerv(0x8CA7u, &v9);
      glBindRenderbuffer(0x8D41u, v10[1]);
      v8 = 0;
      v7 = 0;
      glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &v8);
      glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &v7);
      glBindRenderbuffer(0x8D41u, v9);
      jet_log(&cfstr_GlColorAttachm.isa, v10[1], v8, v7);
    }

    else
    {
      jet_log(&cfstr_GlColorAttachm_1.isa, v0);
    }

    *v10 = 0;
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD1u, &v10[1]);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D00u, 0x8CD0u, v10);
    if (v10[0] == 5890)
    {
      jet_log(&cfstr_GlDepthAttachm_0.isa, v10[1], v3, v5);
    }

    else if (v10[0] == 36161)
    {
      v9 = 0;
      glGetIntegerv(0x8CA7u, &v9);
      glBindRenderbuffer(0x8D41u, v10[1]);
      v8 = 0;
      v7 = 0;
      glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &v8);
      glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &v7);
      glBindRenderbuffer(0x8D41u, v9);
      jet_log(&cfstr_GlDepthAttachm.isa, v10[1], v8, v7);
    }

    else
    {
      jet_log(&cfstr_GlDepthAttachm_1.isa, v1, v3, v5);
    }

    *v10 = 0;
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD1u, &v10[1]);
    glGetFramebufferAttachmentParameteriv(0x8D40u, 0x8D20u, 0x8CD0u, v10);
    if (v10[0] == 5890)
    {
      jet_log(&cfstr_GlStencilAttac_0.isa, v10[1], v4, v6);
    }

    else if (v10[0] == 36161)
    {
      v9 = 0;
      glGetIntegerv(0x8CA7u, &v9);
      glBindRenderbuffer(0x8D41u, v10[1]);
      v8 = 0;
      v7 = 0;
      glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &v8);
      glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, &v7);
      glBindRenderbuffer(0x8D41u, v9);
      jet_log(&cfstr_GlStencilAttac.isa, v10[1], v8, v7);
    }

    else
    {
      jet_log(&cfstr_GlStencilAttac_1.isa, v2, v4, v6);
    }

    jet_log(&stru_286782AD0.isa);
  }
}

void xglPrintInteger(const char *a1, GLenum pname)
{
  params = 0;
  glGetIntegerv(pname, &params);
  jet_log(&cfstr_SD.isa, a1, params);
}

void xglPrintFloat(const char *a1, GLenum pname)
{
  params = 0.0;
  glGetFloatv(pname, &params);
  jet_log(&cfstr_SF.isa, a1, params);
}

void xglPrintBoolean(const char *a1, GLenum pname)
{
  params = 0;
  glGetBooleanv(pname, &params);
  jet_log(&cfstr_SD.isa, a1, params);
}

void xglPrintVertexAttribInteger(const char *a1, GLuint index, GLenum pname)
{
  v8 = *MEMORY[0x277D85DE8];
  glGetVertexAttribiv(index, pname, params);
  if (pname != 34342)
  {
    if (pname == 34341)
    {
      if ((params[0] - 5120) > 0xC)
      {
        v5 = "GL_TYPE_UNKNOWN";
      }

      else
      {
        v5 = off_2797F1080[params[0] - 5120];
      }

      jet_log(&cfstr_SS.isa, a1, v5);
    }

    else
    {
      jet_log(&cfstr_SD.isa, a1, params[0]);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void xglPrintVertexAttrib(uint64_t a1)
{
  v1 = a1;
  v4 = *MEMORY[0x277D85DE8];
  jet_log(&cfstr_Xglprintvertex.isa, a1);
  glGetVertexAttribiv(v1, 0x889Fu, params);
  jet_log(&cfstr_SD.isa, "\t GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING: ", params[0]);
  glGetVertexAttribiv(v1, 0x8622u, params);
  jet_log(&cfstr_SD.isa, "\t GL_VERTEX_ATTRIB_ARRAY_ENABLED: ", params[0]);
  glGetVertexAttribiv(v1, 0x8623u, params);
  jet_log(&cfstr_SD.isa, "\t GL_VERTEX_ATTRIB_ARRAY_SIZE: ", params[0]);
  glGetVertexAttribiv(v1, 0x8624u, params);
  jet_log(&cfstr_SD.isa, "\t GL_VERTEX_ATTRIB_ARRAY_STRIDE: ", params[0]);
  xglPrintVertexAttribInteger("\t GL_VERTEX_ATTRIB_ARRAY_TYPE: ", v1, 0x8625u);
  glGetVertexAttribiv(v1, 0x886Au, params);
  jet_log(&cfstr_SD.isa, "\t GL_VERTEX_ATTRIB_ARRAY_NORMALIZED: ", params[0]);
  jet_log(&stru_286782AD0.isa);
  v2 = *MEMORY[0x277D85DE8];
}

void xglPrintState(void)
{
  jet_log(&cfstr_Xglprintstate.isa);
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  jet_log(&cfstr_SD.isa, "\t GL_CURRENT_PROGRAM: ", params);
  v1 = 0;
  glGetIntegerv(0x8894u, &v1);
  jet_log(&cfstr_SD.isa, "\t GL_ARRAY_BUFFER_BINDING: ", v1);
  v2 = 0;
  glGetIntegerv(0x8895u, &v2);
  jet_log(&cfstr_SD.isa, "\t GL_ELEMENT_ARRAY_BUFFER_BINDING: ", v2);
  jet_log(&stru_286782AD0.isa);
}

void xglPrintError(void)
{
  Error = glGetError();
  if (Error > 1281)
  {
    if (Error == 1282 || Error == 1285 || Error == 1286)
    {
      v1 = @"GL_INVALID_OPERATION\n";
      goto LABEL_13;
    }

LABEL_11:
    jet_log(&cfstr_GlErrorUnknown.isa, Error);
    return;
  }

  if (!Error)
  {
    v1 = @"GL_NO_ERROR\n";
    goto LABEL_13;
  }

  if (Error == 1280)
  {
    v1 = @"GL_INVALID_ENUM\n";
    goto LABEL_13;
  }

  if (Error != 1281)
  {
    goto LABEL_11;
  }

  v1 = @"GL_INVALID_VALUE\n";
LABEL_13:

  jet_log(&v1->isa);
}

void xglCheckError(void)
{
  Error = glGetError();
  if (Error > 1281)
  {
    if (Error == 1282 || Error == 1285 || Error == 1286)
    {
      v1 = @"GL_INVALID_OPERATION\n";
      goto LABEL_13;
    }

LABEL_10:
    jet_log(&cfstr_GlErrorUnknown.isa, Error);
    return;
  }

  if (!Error)
  {
    return;
  }

  if (Error == 1280)
  {
    v1 = @"GL_INVALID_ENUM\n";
    goto LABEL_13;
  }

  if (Error != 1281)
  {
    goto LABEL_10;
  }

  v1 = @"GL_INVALID_VALUE\n";
LABEL_13:

  jet_log(&v1->isa);
}

uint64_t xglAssertNoError(void)
{
  result = glGetError();
  if (result)
  {
    if (result <= 1284)
    {
      switch(result)
      {
        case 0x500:
          jet_log(&cfstr_GlInvalidEnum.isa);
          goto LABEL_14;
        case 0x501:
          jet_log(&cfstr_GlInvalidValue.isa);
          goto LABEL_14;
        case 0x502:
          jet_log(&cfstr_GlInvalidOpera.isa);
          goto LABEL_14;
      }
    }

    else
    {
      if (result == 1286)
      {
        xglAssertNoError();
        xglAssertNoError();
      }

      if (result == 1285)
      {
        jet_log(&cfstr_GlOutOfMemory.isa);
        goto LABEL_14;
      }
    }

    jet_log(&cfstr_GlErrorUnknown_0.isa, result);
LABEL_14:
    xglAssertNoError();
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797F1078, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void jet_context::jet_context(jet_context *this)
{
  *this = &unk_286781658;
  *(this + 1) = 0;
  *(this + 24) = xmmword_25562EA70;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 12) = 0;
}

void jet_context::~jet_context(jet_context *this)
{
  *this = &unk_286781658;
  v2 = this + 56;
  for (i = *(this + 9); i; i = *i)
  {
    v4 = i[2];
    v6 = v2;
    std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__erase_unique<std::unordered_set<jet_buffer *> *>((v4 + 56), &v6);
  }

  std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::~__hash_table(v2);
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

double jet_context::end_render_pass(jet_context *this)
{
  v2 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 8) = 0u;
  *&result = 3;
  *(this + 3) = 3;
  *(this + 8) = 0;
  return result;
}

void jet_context::submit_commands(jet_context *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    jet_command_buffer::jet_command_buffer(&v4, 0x64uLL);
    v3[2](v3, &v4);
    jet_context::execute_command_buffer(a1, &v4);
    v4 = &unk_2867817E0;
    v6 = &v5;
    std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](&v6);
  }
}

void jet_context::execute_command_buffer(jet_context *this, jet_command_buffer *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a2 + 2) - *(a2 + 1);
    if (v3)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 6);
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = 112;
      do
      {
        v8 = *(a2 + 1);
        switch(*(v8 + v7 - 104))
        {
          case 1:
            (*(*this + 200))(this, *(v8 + v7));
            break;
          case 2:
            (*(*this + 192))(this, *(v8 + v7));
            break;
          case 3:
            (*(*this + 232))(this, *(v8 + v7 + 16), *(v8 + v7 + 20), *(v8 + v7 + 24));
            break;
          case 4:
            (*(*this + 240))(this, *(v8 + v7 + 16), *(v8 + v7), *(v8 + v7 + 20), *(v8 + v7 + 24));
            break;
          case 5:
            jet_context::set_vertex_buffer(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 6:
            jet_context::set_vertex_texture(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 7:
            jet_context::set_vertex_constant(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 8:
            jet_context::set_fragment_texture(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 9:
            jet_context::set_fragment_constant(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 0xA:
            (*(*this + 216))(this, *(v8 + v7 + 16));
            break;
          case 0xB:
            (*(*this + 208))(this, *(v8 + v7 + 16), *(v8 + v7 + 20), *(v8 + v7 + 24), *(v8 + v7 + 28));
            break;
          case 0xC:
            (*(*this + 224))(this, *(v8 + v7 + 16), *(v8 + v7 + 20), *(v8 + v7 + 24), *(v8 + v7 + 28));
            break;
          case 0xD:
            std::function<void ()(jet_context *)>::operator()(v8 + v7 - 72, this);
            break;
          case 0xE:
            (**this)(&v18, this, *(v8 + v7));
            v9 = v19;
            if (v19)
            {
              goto LABEL_44;
            }

            break;
          case 0xF:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x10:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x11:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x12:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x13:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 24));
            break;
          case 0x14:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 32), *(v8 + v7 + 48));
            break;
          case 0x15:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 32), *(v8 + v7 + 48), *(v8 + v7 + 64));
            break;
          case 0x16:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x17:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x18:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x19:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x1A:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 24));
            break;
          case 0x1B:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 32), *(v8 + v7 + 48));
            break;
          case 0x1C:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16), *(v8 + v7 + 32), *(v8 + v7 + 48), *(v8 + v7 + 64));
            break;
          case 0x1D:
            jet_context::set_vertex_sampler(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 0x1E:
            jet_context::set_fragment_sampler(this, v8 + v7 - 96, *(v8 + v7));
            break;
          case 0x1F:
            v10 = v8 + v7;
            v11 = *(v10 + 32);
            v12 = *(v10 + 36);
            jet_context::change_render_mode(this, v12 & 1, *v10, (v12 >> 1) & 1, *(v10 + 16), (v12 & 4) != 0, *(v10 + 20), (v12 & 8) != 0, *(v10 + 24), (v12 & 0x10) != 0, *(v10 + 28), (v12 & 0x20) != 0, v11 & 1, (v11 & 2) != 0, (v11 & 4) != 0, (v11 & 8) != 0);
            break;
          case 0x20:
            (*(*this + 184))(this, *(v8 + v7));
            break;
          case 0x21:
            (*(*this + 168))(&v16, this, *(v8 + v7), *(v8 + v7 + 16));
            v9 = v17;
            if (v17)
            {
              goto LABEL_44;
            }

            break;
          case 0x22:
            jet_context::set_vertex_constant_value(this, v8 + v7 - 96, *(v8 + v7 + 16));
            break;
          case 0x23:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x24:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x25:
            jet_context::set_vertex_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x26:
            jet_context::set_fragment_constant_value(this, v8 + v7 - 96, *(v8 + v7 + 16));
            break;
          case 0x27:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x28:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x29:
            jet_context::set_fragment_constant_value(this, *(v8 + v7 + 16));
            break;
          case 0x2A:
            (*(*this + 160))(&v14, this, *(v8 + v7), *(v8 + v7 + 8), *(v8 + v7 + 16));
            v9 = v15;
            if (v15)
            {
LABEL_44:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }

            break;
          case 0x2B:
            std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v20, v8 + v7 - 40);
            (*(*this + 344))(this, v20);
            std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v20);
            break;
          default:
            break;
        }

        v7 += 192;
        --v6;
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25561A25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void jet_command_buffer::~jet_command_buffer(jet_command_buffer *this)
{
  *this = &unk_2867817E0;
  v1 = (this + 8);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867817E0;
  v2 = (this + 8);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x259C3ACA0](this, 0xA1C4030951706);
}

double jet_context::submit_command_buffer_impl@<D0>(jet_context *this@<X0>, jet_command_buffer *a2@<X1>, void *a3@<X8>)
{
  (*(*this + 352))(this);
  jet_context::execute_command_buffer(this, a2);
  v7 = (this + 40);
  v6 = *(this + 5);
  if (!v6)
  {
    (*(*this + 176))(&v13, this);
    v8 = v13;
    v13 = 0uLL;
    v9 = *(this + 6);
    *(this + 40) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    v6 = *v7;
  }

  v10 = *(this + 6);
  *a3 = v6;
  a3[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v11 = *(this + 6);
    *v7 = 0;
    *(this + 6) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    *v7 = 0;
    *(this + 6) = 0;
  }

  *(this + 8) = 0u;
  *&result = 3;
  *(this + 3) = 3;
  *(this + 8) = 0;
  return result;
}

uint64_t jet_context::set_vertex_buffer(void **a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1[1] + 16))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    v6 = (*a1)[32];

    return v6(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_texture(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (*(*a3 + 88))(a3))
  {
    jet_context::set_vertex_texture();
  }

  result = (*(*a1[1] + 32))(a1[1], a2);
  if ((result & 0x80000000) == 0)
  {
    v7 = (*a1)[35];

    return v7(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant(void **a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    v6 = (*a1)[33];

    return v6(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_texture(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (*(*a3 + 88))(a3))
  {
    jet_context::set_fragment_texture();
  }

  result = (*(*a1[1] + 56))(a1[1], a2);
  if ((result & 0x80000000) == 0)
  {
    v7 = (*a1)[39];

    return v7(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant(void **a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    v6 = (*a1)[37];

    return v6(a1, a3, result);
  }

  return result;
}

uint64_t std::function<void ()(jet_context *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t jet_context::set_vertex_constant_value(void **a1, float a2)
{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 0, 1, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, double a2)
{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 0, 2, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 5, 2, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, __n128 a2)
{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 0, 3, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 0, 4, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 5, 3, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 5, 4, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, double a2, double a3)
{
  *v5 = a2;
  *&v5[1] = a3;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 6, 1, 1, v5, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 7, 1, 1, v6, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 8, 1, 1, v7, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_constant_value(void **a1, uint64_t a2, int a3)
{
  v5 = a3;
  result = (*(*a1[1] + 24))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[34])(a1, 5, 1, 1, &v5, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, float a2)
{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 0, 1, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, double a2)
{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 0, 2, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 5, 2, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, __n128 a2)
{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 0, 3, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 0, 4, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 5, 3, 1, &v4, result);
  }

  return result;
}

{
  v4 = a2;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 5, 4, 1, &v4, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, double a2, double a3)
{
  *v5 = a2;
  *&v5[1] = a3;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 6, 1, 1, v5, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 7, 1, 1, v6, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 8, 1, 1, v7, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_constant_value(void **a1, uint64_t a2, int a3)
{
  v5 = a3;
  result = (*(*a1[1] + 48))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    return ((*a1)[38])(a1, 5, 1, 1, &v5, result);
  }

  return result;
}

uint64_t jet_context::set_vertex_sampler(void **a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1[1] + 40))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    v6 = (*a1)[36];

    return v6(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::set_fragment_sampler(void **a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1[1] + 64))(a1[1]);
  if ((result & 0x80000000) == 0)
  {
    v6 = (*a1)[40];

    return v6(a1, a3, result);
  }

  return result;
}

uint64_t jet_context::change_render_mode(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7, char a8, unsigned int a9, char a10, unsigned int a11, char a12, char a13, char a14, char a15, char a16)
{
  v24 = a11;
  v25 = a9;
  v26 = *(a1 + 8);
  if (v26)
  {
    if (a2)
    {
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      a3 = *(v26 + 8);
      if (a4)
      {
LABEL_4:
        if (a6)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    a5 = *(v26 + 16);
    if (a6)
    {
LABEL_5:
      if (a8)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    a7 = *(a1 + 24);
    if (a8)
    {
LABEL_6:
      if (a10)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    v25 = *(a1 + 28);
    if (a10)
    {
LABEL_7:
      if (a12)
      {
        goto LABEL_26;
      }

LABEL_25:
      a13 = *(v26 + 32);
      a14 = *(v26 + 33);
      a15 = *(v26 + 34);
      a16 = *(v26 + 35);
      goto LABEL_26;
    }

LABEL_24:
    v24 = *(a1 + 32);
    if (a12)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (!a2)
  {
    a3 = 0;
  }

  if (a4)
  {
    a5 = a5;
  }

  else
  {
    a5 = 0;
  }

  if (a6)
  {
    if (a8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    a7 = *(a1 + 24);
    if (a8)
    {
LABEL_16:
      if (a10)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v25 = *(a1 + 28);
  if ((a10 & 1) == 0)
  {
LABEL_17:
    v24 = *(a1 + 32);
  }

LABEL_18:
  if ((a12 & 1) == 0)
  {
    a13 = 1;
    a14 = 1;
    a15 = 1;
    a16 = 1;
  }

LABEL_26:
  HIBYTE(v30) = a16 & 1;
  LOBYTE(v30) = a15 & 1;
  v27 = jet_context::lookup_render_mode(a1, a3, a5, a7, v25, v24, a13 & 1, a14 & 1, v30, *(a1 + 36));
  v28 = *(*a1 + 200);

  return v28(a1, v27);
}

uint64_t jet_context::create_texture_cube(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v15 = (*(*a1 + 248))(a1, 2, a4, a2, a3, 1, a11, 1, 0, 0);
  (*(*v15 + 56))(v15, a5, 0, 0, 0);
  (*(*v15 + 56))(v15, a6, 0, 1, 0);
  (*(*v15 + 56))(v15, a7, 0, 2, 0);
  (*(*v15 + 56))(v15, a8, 0, 3, 0);
  (*(*v15 + 56))(v15, a9, 0, 4, 0);
  (*(*v15 + 56))(v15, a10, 0, 5, 0);
  return v15;
}

uint64_t jet_context::lookup_render_mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, __int16 a9, int a10)
{
  if (!a2)
  {
    return 0;
  }

  v17 = a7 | 2;
  v22[0] = a3;
  if (!a8)
  {
    v17 = a7;
  }

  if (a9)
  {
    v17 |= 4u;
  }

  if (HIBYTE(a9))
  {
    v17 |= 8u;
  }

  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = v17;
  v22[5] = a10;
  v18 = std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::find<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(a2 + 8, v22);
  if (a2 + 16 == v18)
  {
    v23 = (*(*a1 + 88))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v19 = &v23;
    std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::__emplace_unique_key_args<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>&,jet_render_mode *&>(a2 + 8, v22);
  }

  else
  {
    v19 = (v18 + 56);
  }

  return *v19;
}

void *jet_context::add_fenced_buffer(jet_context *this, jet_buffer *a2)
{
  v5 = a2;
  *(a2 + 8) = 1;
  v2 = this + 56;
  std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__emplace_unique_key_args<jet_buffer *,jet_buffer * const&>(this + 7, &v5);
  v4 = v2;
  return std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__emplace_unique_key_args<std::unordered_set<jet_buffer *> *,std::unordered_set<jet_buffer *> *>(v5 + 7, &v4);
}

void *jet_context::clear_fenced_buffers(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 56);
  for (i = *(a1 + 72); i; i = *i)
  {
    v5 = i[2];
    v10 = v2;
    std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__erase_unique<std::unordered_set<jet_buffer *> *>((v5 + 56), &v10);
    v7 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v5 + 32);
    *(v5 + 24) = v7;
    *(v5 + 32) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    *(v5 + 8) = 0;
    if (*(v5 + 16))
    {
        ;
      }
    }
  }

  return std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::clear(v2);
}

void jet_command_buffer::jet_command_buffer(jet_command_buffer *this, unint64_t a2)
{
  *this = &unk_2867817E0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<jet_render_op>::reserve(this + 1, a2);
}

void sub_25561C0A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<jet_render_op>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(result, a2);
    }

    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25561C184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<jet_render_op>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7 * 8;
      *v8 = &unk_286781810;
      v9 = &v6[v7];
      *(v8 + 8) = v6[v7 + 1];
      if (SHIBYTE(v6[v7 + 4]) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), v9[2], v9[3]);
      }

      else
      {
        v10 = *(v9 + 1);
        *(v8 + 32) = v9[4];
        *(v8 + 16) = v10;
      }

      std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](a4 + v7 * 8 + 40, &v6[v7 + 5]);
      result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a4 + v7 * 8 + 72, &v6[v7 + 9]);
      v12 = (a4 + v7 * 8);
      v12[7] = *&v6[v7 + 14];
      v13 = *&v6[v7 + 16];
      v14 = *&v6[v7 + 18];
      v15 = *&v6[v7 + 22];
      v12[10] = *&v6[v7 + 20];
      v12[11] = v15;
      v12[8] = v13;
      v12[9] = v14;
      v7 += 24;
    }

    while (&v6[v7] != a3);
    if (v6 != a3)
    {
      v16 = v6;
      v17 = v6;
      do
      {
        v18 = *v17;
        v17 += 24;
        result = (*v18)(v6);
        v16 += 24;
        v6 = v17;
      }

      while (v17 != a3);
    }
  }

  return result;
}

void sub_25561C3D8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 192;
    v5 = -v2;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 -= 24;
      (*v8)(v6);
      v4 -= 192;
      v6 = v7;
      v5 += 192;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void jet_render_op::~jet_render_op(void **this)
{
  jet_render_op::~jet_render_op(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781810;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((this + 9));
  std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100]((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__split_buffer<jet_render_op>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 192);
    *(a1 + 16) = i - 192;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 192;
      v7 = v4 - 192;
      v8 = v4 - 192;
      do
      {
        v9 = *v8;
        v8 -= 192;
        (*v9)(v7);
        v6 -= 192;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__erase_unique<std::unordered_set<jet_buffer *> *>(void *a1, void *a2)
{
  result = std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::find<std::unordered_set<jet_buffer *> *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::find<std::unordered_set<jet_buffer *> *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::find<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(uint64_t a1, _DWORD *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(&v9, (v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(&v10, a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2 < *a3)
  {
    return 1;
  }

  if (*a3 < *a2)
  {
    return 0;
  }

  v6 = a2[1];
  v7 = a3[1];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  *&v8[1] = v3;
  v9 = v4;
  return std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(v8, a2, a3);
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[2];
  v4 = a3[2];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v6 = a2[3];
  v7 = a3[3];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  v8 = a2[4];
  v9 = a3[4];
  if (v8 < v9)
  {
    return 1;
  }

  if (v9 < v8)
  {
    return 0;
  }

  return a2[5] < a3[5];
}

uint64_t std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::__emplace_unique_key_args<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>&,jet_render_mode *&>(uint64_t a1, _DWORD *a2)
{
  v2 = *std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::__find_equal<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::__find_equal<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(&v9, a3, v4 + 8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__tuple_less<6ul>::operator()[abi:ne200100]<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>(&v10, v7 + 8, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::__map_value_compare<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>,std::less<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<jet_blend_mode,jet_texture_format,jet_texture_format,jet_texture_format,unsigned int,unsigned int>,jet_render_mode *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__emplace_unique_key_args<jet_buffer *,jet_buffer * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__emplace_unique_key_args<std::unordered_set<jet_buffer *> *,std::unordered_set<jet_buffer *> *>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void jet_context_OpenGL::jet_context_OpenGL(jet_context_OpenGL *this, EAGLContext *a2)
{
  v3 = a2;
  jet_context::jet_context(this);
  *this = &unk_286781840;
  v4 = v3;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  *(this + 15) = 0;
  *(this + 13) = v4;
  *(this + 14) = this + 120;
  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0x100000000;
  v5 = v4;
  if (!v4)
  {
    v6 = jet_createGLContext(0);
    v7 = *(this + 13);
    *(this + 13) = v6;

    v5 = *(this + 13);
  }

  glContextUse::glContextUse(v9, v5);
  glGenFramebuffers(1, this + 45);
  v8 = *(this + 45);
  *(this + 46) = v8;
  glBindFramebuffer(0x8D40u, v8);
  glEnable(0xC11u);
  glDisable(0xB71u);
  glDepthFunc(0x207u);
  glDepthMask(0);
  glDisable(0xB90u);
  glContextUse::~glContextUse(v9);
}

void sub_25561D9EC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v3, *(v1 + 144));
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v4, *(v1 + 120));

  jet_context::~jet_context(v1);
  _Unwind_Resume(a1);
}

id jet_createGLContext(EAGLContext *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277CD9388]);
  v3 = [(EAGLContext *)v1 sharegroup];
  v4 = [v2 initWithAPI:2 sharegroup:v3];

  return v4;
}

uint64_t getOpenGLCompareFunction(unsigned int a1)
{
  if (a1 > 7)
  {
    return 519;
  }

  else
  {
    return dword_25562ED28[a1];
  }
}

void jet_context_OpenGL::~jet_context_OpenGL(GLuint *framebuffers)
{
  *framebuffers = &unk_286781840;
  v2 = framebuffers + 45;
  if (framebuffers[45])
  {
    glDeleteFramebuffers(1, v2);
    *v2 = 0;
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy((framebuffers + 34), *(framebuffers + 18));
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy((framebuffers + 28), *(framebuffers + 15));

  jet_context::~jet_context(framebuffers);
}

void jet_context_OpenGL::~jet_context_OpenGL(GLuint *this)
{
  jet_context_OpenGL::~jet_context_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

uint64_t jet_context_OpenGL::get_max_texture_size(uint64_t a1, int a2)
{
  glContextUse::glContextUse(v6, *(a1 + 104));
  params = 0;
  if (a2 == 2)
  {
    glGetIntegerv(0x851Cu, &params);
  }

  else
  {
    glGetIntegerv(0xD33u, &params);
  }

  v3 = params;
  glContextUse::~glContextUse(v6);
  return v3;
}

void sub_25561DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

uint64_t jet_context_OpenGL::indexForTetxure(jet_context_OpenGL *this, unsigned int a2)
{
  v9 = a2;
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = (this + 120);
  do
  {
    v4 = v2[7];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[2 * v6];
  }

  while (v2);
  if (v3 != (this + 120) && v3[7] <= a2)
  {
    return v3[8];
  }

LABEL_9:
  v7 = *(this + 40);
  *(this + 40) = v7 + 1;
  v10 = &v9;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 112, &v9) + 8) = v7;
  return v7;
}

void jet_context_OpenGL::create_constant(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 7)
  {
    v2 = dword_25562ED90[a2 - 1];
  }

  operator new();
}

void jet_context_OpenGL::create_texture(uint64_t a1, unsigned int a2, int a3, GLsizei a4, GLsizei a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a6 == 1)
  {
    if (a8 == 1)
    {
      glContextUse::glContextUse(v19, *(a1 + 104));
      if ((a3 - 10) <= 3)
      {
        if (a7)
        {
          v16 = "mip_mapped == false";
          v17 = 393;
        }

        else if (a10)
        {
          v16 = "data == nullptr";
          v17 = 394;
        }

        else
        {
          if (a2 < 2)
          {
            renderbuffers = 0;
            glGenRenderbuffers(1, &renderbuffers);
            glBindRenderbuffer(0x8D41u, renderbuffers);
            glRenderbufferStorage(0x8D41u, dword_25562EAE0[a3 - 10], a4, a5);
            operator new();
          }

          v16 = "type == jet_texture_type_2D || type == jet_texture_type_Rect";
          v17 = 396;
        }

        __assert_rtn("create_texture", "jet_context_OpenGL.mm", v17, v16);
      }

      renderbuffers = 0;
      glGenTextures(1, &renderbuffers);
      if (a2 == 2)
      {
        v15 = 34067;
      }

      else
      {
        v15 = 3553;
      }

      glBindTexture(v15, renderbuffers);
      glTexParameteri(v15, 0x2801u, 9729);
      glTexParameteri(v15, 0x2800u, 9729);
      glTexParameteri(v15, 0x2802u, 33071);
      glTexParameteri(v15, 0x2803u, 33071);
      if (a2 != 2 || a4 == a5)
      {
        operator new();
      }

      __assert_rtn("create_texture", "jet_context_OpenGL.mm", 452, "width == height");
    }

    jet_context_OpenGL::create_texture();
  }

  jet_context_OpenGL::create_texture();
}

void sub_25561E1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x259C3ACA0](v3, 0x1081C4088E5EABBLL);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

unsigned int *jet_context_OpenGL::get_OpenGL_Tetxure(int a1, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
  if (result)
  {
    return result[4];
  }

  return result;
}

unsigned int *jet_context_OpenGL::get_OpenGL_Renderbuffer(int a1, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
  if (result)
  {
    return result[5];
  }

  return result;
}

void jet_context_OpenGL::create_texture_from_IOSurface(uint64_t a1, IOSurfaceID a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  glContextUse::glContextUse(v19, *(a1 + 104));
  textures = 0;
  glGenTextures(1, &textures);
  glBindTexture(0xDE1u, textures);
  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  v11 = IOSurfaceLookup(a2);
  if ((IOSurfaceGetBytesPerRowOfPlane(v11, a6) & 0xF) != 0)
  {
    jet_log(&cfstr_IosurfaceBytes.isa, 16);
    __assert_rtn("create_texture_from_IOSurface", "jet_context_OpenGL.mm", 584, "bytesPerRow % JET_IO_SURFACE_MIN_READ_ALIGNMENT == 0");
  }

  if (a5 <= 6)
  {
    v12 = 6408;
    if (a5 > 3)
    {
      if (a5 != 4)
      {
        if (a5 == 5)
        {
          goto LABEL_20;
        }

        v12 = 32993;
      }

      v13 = 32993;
      goto LABEL_33;
    }

    switch(a5)
    {
      case 1:
        v12 = 6403;
        v13 = 6403;
        goto LABEL_33;
      case 2:
        v13 = 33319;
        v12 = 33319;
        goto LABEL_33;
      case 3:
LABEL_20:
        v13 = 0;
        if (a5 <= 9)
        {
          if (a5 <= 4)
          {
            if (a5 != 3)
            {
              goto LABEL_33;
            }

LABEL_29:
            v13 = 6408;
            goto LABEL_33;
          }

          if (a5 == 5)
          {
            goto LABEL_29;
          }
        }

LABEL_33:
        v14 = [MEMORY[0x277CD9388] currentContext];
        v15 = 5121;
        if (a5 == 10)
        {
          v15 = 5126;
        }

        v16 = 33639;
        if ((a5 - 3) >= 2)
        {
          v16 = v15;
        }

        BYTE4(v17) = 0;
        LODWORD(v17) = a6;
        if ([v14 texImageIOSurface:v11 target:3553 internalFormat:v12 width:a3 height:a4 format:v13 type:v16 plane:v17 invert:?])
        {
          CFRelease(v11);
          operator new();
        }

        __assert_rtn("create_texture_from_IOSurface", "jet_context_OpenGL.mm", 595, "result");
    }
  }

  else if (a5 >= 10)
  {
    if (a5 <= 11)
    {
      if (a5 != 10)
      {
        v12 = 35056;
        v13 = 35056;
        goto LABEL_33;
      }

      v12 = 34842;
      goto LABEL_29;
    }

    if (a5 == 12)
    {
      v12 = 36168;
      v13 = 36168;
      goto LABEL_33;
    }

    if (a5 == 13)
    {
      v12 = 33189;
      v13 = 33189;
      goto LABEL_33;
    }
  }

  v12 = 0;
  goto LABEL_20;
}

void sub_25561E7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x259C3ACA0](v5, 0x1081C4088E5EABBLL);

  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

uint64_t jet_context_OpenGL::create_function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v12 = [v10 pathForResource:v11 ofType:0];

  v13 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v12 encoding:objc_msgSend(MEMORY[0x277CCACA8] error:{"defaultCStringEncoding"), 0}];
  v14 = (*(*a1 + 72))(a1, [v13 UTF8String], a3, a4, a5);

  return v14;
}

uint64_t jet_context_OpenGL::create_function_from_source(uint64_t a1, GLchar *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    glContextUse::glContextUse(v12, v6);
    v11 = 0;
    if (a4 == 2)
    {
      v9 = 35632;
    }

    else
    {
      v9 = 35633;
    }

    if (xglCompileShader(&v11, v9, a2, a5))
    {
      operator new();
    }

    glContextUse::~glContextUse(v12);
  }

  return 0;
}

void sub_25561EB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

void jet_context_OpenGL::create_program(uint64_t a1, char **a2, char **a3)
{
  glContextUse::glContextUse(&v8, *(a1 + 104));
  v5 = **a2;
  v6 = **a3;
  operator new();
}

void sub_25561ECB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x259C3ACA0](v9, 0x10A1C40FE1D3F04);
  glContextUse::~glContextUse(&a9);
  _Unwind_Resume(a1);
}

void jet_context_OpenGL::begin_render_pass(jet_context_OpenGL *this, jet_framebuffer *lpsrc)
{
  if (!lpsrc)
  {
    return;
  }

  *(this + 2) = lpsrc;
  v4 = **lpsrc;
  if (v5)
  {
    v6 = v5[66];
    if ((v6 & 0x80000000) == 0)
    {
      if (*(this + 46) != v6)
      {
        (*(*this + 176))(&v31, this);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        glBindFramebuffer(0x8D40u, v6);
        *(this + 46) = v6;
      }

      if (*(lpsrc + 12) == 1)
      {
        glClearColor(COERCE_GLFLOAT(*(lpsrc + 2)), COERCE_GLFLOAT(HIDWORD(*(lpsrc + 4))), COERCE_GLFLOAT(*(lpsrc + 5)), COERCE_GLFLOAT(HIDWORD(*(lpsrc + 2))));
        v7 = 0x4000;
      }

      else
      {
        v7 = 0;
      }

      if (*(lpsrc + 55) == 1)
      {
        v17 = v7 | 0x100;
      }

      else
      {
        v17 = v7;
      }

      if (v17)
      {
        flag[0] = 1;
        if (v17 >= 0x4000)
        {
          glGetBooleanv(0xC23u, &params);
          glColorMask(1u, 1u, 1u, 1u);
        }

        if ((v17 & 0x100) != 0)
        {
          glGetBooleanv(0xB72u, flag);
          glDepthMask(1u);
        }

        glClear(v17);
        if (v17 >= 0x4000)
        {
          glColorMask(params, green, blue, alpha);
        }

        if ((v17 & 0x100) != 0)
        {
          glDepthMask(flag[0]);
        }
      }

      return;
    }
  }

  v8 = *(lpsrc + 2);
  v9 = *(lpsrc + 29);
  v10 = *(lpsrc + 26);
  if (v8 && ((*(*v8 + 96))(*(lpsrc + 2)) & 1) == 0)
  {
    jet_context_OpenGL::begin_render_pass();
  }

  if (v10 && ((*(*v10 + 104))(v10) & 1) == 0)
  {
    jet_context_OpenGL::begin_render_pass();
  }

  if (v9)
  {
    if (((*(*v9 + 112))(v9) & 1) == 0)
    {
      jet_context_OpenGL::begin_render_pass();
    }
  }

  else if (!(v8 | v10))
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_20;
  }

  v12 = 0;
  v11 = *(this + 45);
LABEL_20:
  if (*(this + 46) != v11)
  {
    glBindFramebuffer(0x8D40u, v11);
    *(this + 46) = v11;
  }

  if (v8)
  {
    *(this + 6) = (*(*v8 + 32))(v8);
    v13 = *(v8 + 16);
    v14 = *(v8 + 20);
    v15 = (*(*v8 + 24))(v8);
    if (v13)
    {
      if (v15 == 2)
      {
        v16 = 34067;
      }

      else
      {
        v16 = 3553;
      }

      glBindTexture(v16, v13);
      glFramebufferTexture2D(0x8D40u, 0x8CE0u, v16, v13, 0);
    }

    else if (v14)
    {
      glBindRenderbuffer(0x8D41u, v14);
      glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, v14);
    }

    v18 = (**v8)(v8);
    v19 = (*(*v8 + 8))(v8);
    glViewport(0, 0, v18, v19);
    glScissor(0, 0, v18, v19);
  }

  else
  {
    *(this + 6) = 3;
  }

  if (*(lpsrc + 12) == 1 && ((v12 & 1) != 0 || *(lpsrc + 2)))
  {
    glClearColor(COERCE_GLFLOAT(*(lpsrc + 2)), COERCE_GLFLOAT(HIDWORD(*(lpsrc + 4))), COERCE_GLFLOAT(*(lpsrc + 5)), COERCE_GLFLOAT(HIDWORD(*(lpsrc + 2))));
    v20 = 0x4000;
    if (!v11)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v20 = 0;
    if (!v11)
    {
      goto LABEL_54;
    }
  }

  if (v9)
  {
    LODWORD(v9) = v9[5];
  }

  glBindRenderbuffer(0x8D41u, v9);
  glFramebufferRenderbuffer(0x8D40u, 0x8D20u, 0x8D41u, v9);
LABEL_54:
  if (*(lpsrc + 61) == 1 && ((v12 & 1) != 0 || *(lpsrc + 29)))
  {
    glClearStencil(*(lpsrc + 240));
    v20 |= 0x400u;
  }

  if (v11)
  {
    if (v10)
    {
      LODWORD(v10) = *(v10 + 20);
    }

    glBindRenderbuffer(0x8D41u, v10);
    glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, v10);
  }

  if (*(lpsrc + 55) == 1 && ((v12 & 1) != 0 || *(lpsrc + 26)))
  {
    v20 |= 0x100u;
  }

  if (v8)
  {
    v21 = (**v8)(v8);
    v22 = (*(*v8 + 8))(v8);
    (*(*this + 208))(this, 0, 0, v21, v22);
    v23 = (**v8)(v8);
    v24 = (*(*v8 + 8))(v8);
    (*(*this + 224))(this, 0, 0, v23, v24);
  }

  if (v20)
  {
    v26 = 1;
    *flag = -1;
    if ((v20 & 0x4000) != 0)
    {
      glGetBooleanv(0xC23u, &params);
      glColorMask(1u, 1u, 1u, 1u);
      if ((v20 & 0x100) == 0)
      {
LABEL_71:
        if ((v20 & 0x400) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }
    }

    else if ((v20 & 0x100) == 0)
    {
      goto LABEL_71;
    }

    glGetBooleanv(0xB72u, &v26);
    glDepthMask(1u);
    if ((v20 & 0x400) == 0)
    {
LABEL_73:
      glClear(v20);
      if ((v20 & 0x4000) != 0)
      {
        glColorMask(params, green, blue, alpha);
        if ((v20 & 0x100) == 0)
        {
LABEL_75:
          if ((v20 & 0x400) == 0)
          {
            return;
          }

          goto LABEL_76;
        }
      }

      else if ((v20 & 0x100) == 0)
      {
        goto LABEL_75;
      }

      glDepthMask(v26);
      if ((v20 & 0x400) == 0)
      {
        return;
      }

LABEL_76:
      glStencilMask(*flag);
      return;
    }

LABEL_72:
    glGetIntegerv(0xB98u, flag);
    glStencilMask(0xFFFFFFFF);
    goto LABEL_73;
  }
}

void jet_context_OpenGL::set_stencil_reference_value(jet_context_OpenGL *this, unsigned __int8 a2)
{
  v2 = a2;
  *(this + 44) = a2;
  v3 = *(this + 21);
  if (v3)
  {
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    OpenGLCompareFunction = getOpenGLCompareFunction(*(v5 + 8));
    v8 = getOpenGLCompareFunction(*(v6 + 8));
    glStencilFuncSeparate(0x404u, OpenGLCompareFunction, v2, *(v5 + 24));
    v9 = *(this + 44);
    v10 = *(v6 + 24);

    glStencilFuncSeparate(0x405u, v8, v9, v10);
  }
}

void jet_context_OpenGL::use_depth_stencil_mode(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = a2;
  if (a2)
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    OpenGLCompareFunction = getOpenGLCompareFunction(*(v5 + 8));
    v7 = getOpenGLCompareFunction(*(v4 + 8));
    glEnable(0xB71u);
    v8 = getOpenGLCompareFunction(*(a2 + 12));
    glDepthFunc(v8);
    glDepthMask(*(a2 + 8));
    glEnable(0xB90u);
    v9 = *(v5 + 12);
    if (v9 > 4)
    {
      v10 = 7680;
    }

    else
    {
      v10 = dword_25562ED48[v9];
    }

    v11 = *(v5 + 16);
    if (v11 > 4)
    {
      v12 = 7680;
    }

    else
    {
      v12 = dword_25562ED48[v11];
    }

    v13 = *(v5 + 20);
    if (v13 > 4)
    {
      v14 = 7680;
    }

    else
    {
      v14 = dword_25562ED48[v13];
    }

    glStencilOpSeparate(0x404u, v10, v12, v14);
    v15 = *(v4 + 12);
    if (v15 > 4)
    {
      v16 = 7680;
    }

    else
    {
      v16 = dword_25562ED48[v15];
    }

    v17 = *(v4 + 16);
    if (v17 > 4)
    {
      v18 = 7680;
    }

    else
    {
      v18 = dword_25562ED48[v17];
    }

    v19 = *(v4 + 20);
    if (v19 > 4)
    {
      v20 = 7680;
    }

    else
    {
      v20 = dword_25562ED48[v19];
    }

    glStencilOpSeparate(0x405u, v16, v18, v20);
    glStencilFuncSeparate(0x404u, OpenGLCompareFunction, *(a1 + 176), *(v5 + 24));
    v21 = *(a1 + 176);
    v22 = *(v4 + 24);

    glStencilFuncSeparate(0x405u, v7, v21, v22);
  }

  else
  {
    glDisable(0xB71u);
    glDepthFunc(0x207u);
    glDepthMask(0);

    glDisable(0xB90u);
  }
}

void jet_context_OpenGL::set_blend_mode(uint64_t a1, int a2, char a3)
{
  v6 = *(a1 + 188);
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (v6 == 1 || (a3 & 1) == 0)
        {
          glEnable(0xBE2u);
          v6 = *(a1 + 188);
        }

        if (v6 == 3 || (a3 & 1) == 0)
        {
          glBlendEquation(0x8006u);
        }

        v7 = 774;
        v8 = 0;
      }

      else
      {
        if (v6 == 1 || (a3 & 1) == 0)
        {
          glEnable(0xBE2u);
          v6 = *(a1 + 188);
        }

        if (v6 == 3 || (a3 & 1) == 0)
        {
          glBlendEquation(0x8006u);
        }

        v7 = 774;
        v8 = 768;
      }

LABEL_45:
      v9 = 32771;
      v10 = 0;
LABEL_46:
      glBlendFuncSeparate(v7, v8, v9, v10);
      goto LABEL_62;
    }

    if (a2 == 6)
    {
      if (v6 == 1 || (a3 & 1) == 0)
      {
        glEnable(0xBE2u);
        v6 = *(a1 + 188);
      }

      if (v6 == 3 || (a3 & 1) == 0)
      {
        glBlendEquation(0x8006u);
      }

      v11 = 769;
      goto LABEL_61;
    }

    if (a2 == 7)
    {
      if (v6 == 1 || (a3 & 1) == 0)
      {
        glEnable(0xBE2u);
        v6 = *(a1 + 188);
      }

      if (v6 == 3 || (a3 & 1) == 0)
      {
        glBlendEquation(0x8006u);
      }

      v7 = 774;
      v8 = 771;
      goto LABEL_45;
    }

LABEL_31:
    if (v6 == 1 || (a3 & 1) == 0)
    {
      glEnable(0xBE2u);
      v6 = *(a1 + 188);
    }

    if (v6 == 3 || (a3 & 1) == 0)
    {
      glBlendEquation(0x8006u);
    }

    v11 = 771;
LABEL_61:
    glBlendFunc(1u, v11);
    goto LABEL_62;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (v6 == 1 || (a3 & 1) == 0)
      {
        glEnable(0xBE2u);
        v6 = *(a1 + 188);
      }

      if (v6 == 3 || (a3 & 1) == 0)
      {
        glBlendEquation(0x8006u);
      }

      v11 = 1;
      goto LABEL_61;
    }

    if (a2 == 3)
    {
      if (v6 == 1 || (a3 & 1) == 0)
      {
        glEnable(0xBE2u);
      }

      glBlendEquation(0x800Bu);
      v7 = 770;
      v8 = 1;
      v9 = 0;
      v10 = 32771;
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v6 == 3 || (a3 & 1) == 0)
  {
    glBlendEquation(0x8006u);
  }

  glDisable(0xBE2u);
LABEL_62:
  *(a1 + 188) = a2;
}

void jet_context_OpenGL::use_render_mode(jet_context_OpenGL *this, jet_render_mode *a2)
{
  v4 = this + 112;
  v5 = *(this + 14);
  *(this + 1) = a2;
  v6 = this + 120;
  if (v5 != this + 120)
  {
    do
    {
      glActiveTexture(*(v5 + 8) + 33984);
      glBindTexture(0xDE1u, 0);
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v4, *(this + 15));
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = v6;
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(this + 136, *(this + 18));
  *(this + 17) = this + 144;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 40) = 0;
  glUseProgram(*(*(*(a2 + 1) + 40) + 16));
  jet_context_OpenGL::set_blend_mode(this, *(a2 + 4), 1);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v12 = *(a2 + 34);
  v13 = *(a2 + 35);

  glColorMask(v10, v11, v12, v13);
}

void jet_context_OpenGL::set_vertex_buffer(jet_context_OpenGL *this, jet_buffer *a2, GLuint a3)
{
  jet_context::add_fenced_buffer(this, a2);
  if ((*(a2 + 112) & 1) == 0)
  {
    (*(*a2 + 24))(a2, 0, 0);
  }

  if ((a3 & 0x80000000) != 0)
  {
    jet_context_OpenGL::set_vertex_buffer();
  }

  v5 = *(a2 + 26);
  v6 = *(a2 + 11);
  OpenGLType = getOpenGLType(*(a2 + 10));
  glBindBuffer(0x8892u, v5);
  glEnableVertexAttribArray(a3);

  glVertexAttribPointer(a3, v6, OpenGLType, 1u, 0, 0);
}

uint64_t getOpenGLType(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 5126;
  }

  else
  {
    return dword_25562ED5C[a1 - 1];
  }
}

void jet_context_OpenGL::set_vertex_constant(jet_context_OpenGL *this, jet_constant *a2, GLint a3)
{
  if (a3 < 0)
  {
    jet_context_OpenGL::set_vertex_constant();
  }

  v5 = (*(*a2 + 8))(a2);
  v6 = (*(*a2 + 16))(a2);
  v7 = (*(*a2 + 24))(a2);
  if (v5 <= 5)
  {
    if (v5)
    {
      if (v5 == 5)
      {
        v9 = *(a2 + 3);
        if (v6 > 2)
        {
          if (v6 == 3)
          {

            glUniform3iv(a3, v7, v9);
          }

          else if (v6 == 4)
          {

            glUniform4iv(a3, v7, v9);
          }
        }

        else if (v6 == 1)
        {

          glUniform1iv(a3, v7, v9);
        }

        else if (v6 == 2)
        {

          glUniform2iv(a3, v7, v9);
        }
      }
    }

    else
    {
      v12 = *(a2 + 3);
      if (v6 > 2)
      {
        if (v6 == 3)
        {

          glUniform3fv(a3, v7, v12);
        }

        else if (v6 == 4)
        {

          glUniform4fv(a3, v7, v12);
        }
      }

      else if (v6 == 1)
      {

        glUniform1fv(a3, v7, v12);
      }

      else if (v6 == 2)
      {

        glUniform2fv(a3, v7, v12);
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 6:
        v10 = *(a2 + 3);

        glUniformMatrix2fv(a3, v7, 0, v10);
        break;
      case 7:
        v11 = *(a2 + 3);

        glUniformMatrix3fv(a3, v7, 0, v11);
        break;
      case 8:
        v8 = *(a2 + 3);

        glUniformMatrix4fv(a3, v7, 0, v8);
        break;
    }
  }
}

void jet_context_OpenGL::set_vertex_constant(uint64_t a1, int a2, int a3, int a4, const void *a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((a6 & 0x80000000) != 0)
  {
    jet_context_OpenGL::set_vertex_constant();
  }

  if (!a5)
  {
    jet_context_OpenGL::set_vertex_constant();
  }

  if ((a2 - 1) > 7)
  {
    v12 = 4;
  }

  else
  {
    v12 = dword_25562ED90[a2 - 1];
  }

  jet_constant::jet_constant(&v16);
  v16 = &unk_286781B18;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a4 * a3 * v12;
  MEMORY[0x28223BE20]();
  v21 = &v15 - ((v13 + 15) & 0x1FFFFFFF0);
  memcpy(v21, a5, v13);
  (*(*a1 + 264))(a1, &v16, a6);
  v21 = 0;
  jet_constant_OpenGL::~jet_constant_OpenGL(&v16);
  v14 = *MEMORY[0x277D85DE8];
}

void jet_context_OpenGL::set_vertex_texture(jet_context_OpenGL *this, jet_texture *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    jet_context_OpenGL::set_vertex_texture();
  }

  if (a2)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  v7 = jet_context_OpenGL::indexForTetxure(this, a3);
  glActiveTexture(v7 + 33984);
  if ((*(*a2 + 24))(a2) == 2)
  {
    v8 = 34067;
  }

  else
  {
    v8 = 3553;
  }

  glBindTexture(v8, v6);
  v9 = *(this + 18);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = this + 144;
  do
  {
    v11 = *(v9 + 8);
    v12 = v11 >= v7;
    v13 = v11 < v7;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *&v9[8 * v13];
  }

  while (v9);
  if (v10 != this + 144 && v7 >= *(v10 + 8))
  {
    v14 = *(v10 + 5);
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  (*(*this + 288))(this, v14, v7);

  glUniform1i(a3, v7);
}

void jet_context_OpenGL::set_vertex_sampler(jet_context_OpenGL *this, jet_sampler *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    jet_context_OpenGL::set_vertex_sampler();
  }

  v6 = jet_context_OpenGL::indexForTetxure(this, a3);
  v7 = &v6;
  std::__tree<std::__value_type<unsigned int,jet_sampler *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,jet_sampler *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,jet_sampler *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 136, &v6)[5] = a2;
  glActiveTexture(v6 + 33984);
  if (a2)
  {
    glTexParameteri(0xDE1u, 0x2802u, *(a2 + 7));
    glTexParameteri(0xDE1u, 0x2803u, *(a2 + 8));
    glTexParameteri(0xDE1u, 0x2801u, *(a2 + 9));
    v5 = *(a2 + 10);
  }

  else
  {
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    v5 = 9729;
    glTexParameteri(0xDE1u, 0x2801u, 9729);
  }

  glTexParameteri(0xDE1u, 0x2800u, v5);
}

uint64_t jet_context_OpenGL::set_fragment_constant(uint64_t a1)
{
  return (*(*a1 + 264))();
}

{
  return (*(*a1 + 272))();
}

void jet_context_OpenGL::draw(int a1, unsigned int a2, GLint first, GLsizei count)
{
  if (a2 > 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = dword_25562ED7C[a2];
  }

  glDrawArrays(v4, first, count);
}

void jet_context_OpenGL::draw_indexed(int a1, unsigned int a2, jet_buffer *this, unsigned int a4, GLsizei a5)
{
  if ((*(this + 10) - 5) <= 0xFFFFFFFD)
  {
    jet_context_OpenGL::draw_indexed();
  }

  element_size = jet_buffer::get_element_size(this);
  glBindBuffer(0x8893u, *(this + 26));
  if (a2 > 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = dword_25562ED7C[a2];
  }

  OpenGLType = getOpenGLType(*(this + 10));

  glDrawElements(v10, a5, OpenGLType, (element_size * a4));
}

uint64_t jet_buffer::get_element_size(jet_buffer *this)
{
  v1 = *(this + 10) - 1;
  if (v1 > 7)
  {
    v2 = 4;
  }

  else
  {
    v2 = dword_25562ED90[v1];
  }

  return (*(this + 11) * v2);
}

void jet_context_OpenGL::submit_commands(EAGLContext **a1, void *a2)
{
  v3 = a2;
  glContextUse::glContextUse(v4, a1[13]);
  jet_context::submit_commands(a1, v3);
  glContextUse::~glContextUse(v4);
}

void sub_2556205D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  glContextUse::~glContextUse(&a9);

  _Unwind_Resume(a1);
}

void jet_context_OpenGL::submit_command_buffer(EAGLContext **this@<X0>, jet_command_buffer *a2@<X1>, void *a3@<X8>)
{
  glContextUse::glContextUse(v6, this[13]);
  jet_context::submit_command_buffer_impl(this, a2, a3);
  glContextUse::~glContextUse(v6);
}

uint64_t jet_context_OpenGL::present@<X0>(jet_context_OpenGL *this@<X0>, jet_texture *a2@<X1>, double a3@<D0>, void *a4@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  (*(*this + 328))(a4, a3);
  v6 = *(a2 + 5);
  if (!v6)
  {
    __assert_rtn("present", "jet_context_OpenGL.mm", 1530, "glTex->_gl_RenderbufferId");
  }

  glBindRenderbuffer(0x8D41u, v6);
  v7 = *(this + 2);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = *(v7 + 208);
  if (v8)
  {
    if (*(v7 + 224) == 1)
    {
      v9 = 0;
      if (*(this + 46))
      {
        v10 = 36096;
      }

      else
      {
        v10 = 6145;
      }

      LODWORD(v14[0]) = v10;
      LODWORD(v8) = 1;
      goto LABEL_11;
    }

    LODWORD(v8) = 0;
  }

  v9 = 1;
LABEL_11:
  if (*(v7 + 232) && *(v7 + 248) == 1)
  {
    if (*(this + 46))
    {
      v11 = 36128;
    }

    else
    {
      v11 = 6146;
    }

    *(v14 + v8) = v11;
    goto LABEL_18;
  }

  if ((v9 & 1) == 0)
  {
LABEL_18:
    glDiscardFramebufferEXT();
  }

LABEL_19:
  result = [*(this + 13) presentRenderbuffer:{36161, v14[0]}];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2556207CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_255620838(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_255620944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

id jet_context_OpenGL::ensureCIContext(jet_context_OpenGL *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CBEB68] null];
    [v3 setValue:v4 forKey:*MEMORY[0x277CBF948]];

    v5 = [MEMORY[0x277CBEB68] null];
    [v3 setValue:v5 forKey:*MEMORY[0x277CBF930]];

    v6 = [objc_alloc(MEMORY[0x277CBF740]) initWithEAGLContext:*(this + 13) options:v3];
    v7 = *(this + 12);
    *(this + 12) = v6;

    v2 = *(this + 12);
  }

  return v2;
}

void jet_context_OpenGL::render_CIImage_to_texture(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = a2;
  v7 = (*(*a1 + 336))(a1);
  v8 = a4.n128_u32[0];
  v9 = a4.n128_u32[1];
  v10 = a4.n128_u32[2];
  v11 = a4.n128_u32[3];
  v20.origin.x = a4.n128_u32[0];
  v20.origin.y = a4.n128_u32[1];
  v20.size.width = a4.n128_u32[2];
  v20.size.height = a4.n128_u32[3];
  if (CGRectIsEmpty(v20))
  {
    [v6 extent];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  (*(*a1 + 176))(&v18, a1);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a3)
  {
    v16 = *(a3 + 16);
  }

  else
  {
    v16 = 0;
  }

  [v7 render:v6 toTexture:v16 bounds:0 colorSpace:{v8, v9, v10, v11, *&a4}];
  (*(*a1 + 176))(a1);
}

uint64_t jet_context_OpenGL::create_CIImage_from_texture(jet_context_OpenGL *this, jet_texture *a2)
{
  v3 = MEMORY[0x277CBF758];
  if (a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = (**a2)(a2);
  v6 = (*(*a2 + 8))(a2);

  return [v3 imageWithTexture:v4 size:0 flipped:0 colorSpace:{v5, v6}];
}

void jet_context_OpenGL::synchronize_OpenGL_state(jet_context_OpenGL *this)
{
  glContextUse::glContextUse(v2, *(this + 13));
  glGetError();
  glBindFramebuffer(0x8D40u, *(this + 46));
  glEnable(0xC11u);
  jet_context_OpenGL::set_blend_mode(this, *(this + 47), 0);
  (*(*this + 192))(this, *(this + 21));
  glContextUse::~glContextUse(v2);
}

uint64_t jet_context_OpenGL::create_texture_from_CIImage(jet_context_OpenGL *this, CIImage *a2)
{
  v3 = a2;
  [(CIImage *)v3 extent];
  texture_2d = jet_context::create_texture_2d(this, v4, v5, 3, 0, 0, 0);
  (*(*this + 160))(&v8, this, v3, texture_2d, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return texture_2d;
}

void glContextUse::glContextUse(glContextUse *this, EAGLContext *a2)
{
  v3 = a2;
  *this = [MEMORY[0x277CD9388] currentContext];
  v4 = v3;
  *(this + 1) = v4;
  if (*this != v4)
  {
    [MEMORY[0x277CD9388] setCurrentContext:v4];
  }
}

void glContextUse::~glContextUse(glContextUse *this)
{
  v2 = *(this + 1);
  if (*this != v2)
  {
    [MEMORY[0x277CD9388] setCurrentContext:?];
    v2 = *(this + 1);
  }
}

uint64_t jet_buffer_OpenGL::jet_buffer_OpenGL(uint64_t a1, void *a2, int a3, int a4, int a5, const GLvoid *a6)
{
  v11 = a2;
  jet_buffer::jet_buffer(a1);
  *a1 = &unk_286781A30;
  v12 = v11;
  *(a1 + 96) = v12;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  glContextUse::glContextUse(v19, v12);
  if ((a3 - 1) > 7)
  {
    v13 = 4;
  }

  else
  {
    v13 = dword_25562ED90[a3 - 1];
  }

  buffers = 0;
  glGenBuffers(1, &buffers);
  v14 = buffers;
  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  *(a1 + 48) = a5;
  v15 = (a5 * a4 * v13);
  *(a1 + 104) = v14;
  *(a1 + 108) = v15;
  if (a6)
  {
    if (a4 == 1 && (a3 - 2) <= 2)
    {
      v16 = 34963;
      glBindBuffer(0x8893u, v14);
    }

    else
    {
      v16 = 34962;
      glBindBuffer(0x8892u, v14);
    }

    glBufferData(v16, v15, a6, 0x88E0u);
    *(a1 + 112) = 1;
  }

  glContextUse::~glContextUse(v19);

  return a1;
}

void sub_2556210E8(_Unwind_Exception *a1)
{
  jet_buffer::~jet_buffer(v1);

  _Unwind_Resume(a1);
}

jet_buffer *jet_buffer_OpenGL::set_data(jet_buffer *this, const void *a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = this;
    v6 = *(this + 27);
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    if (v7 + a4 > v6)
    {
      jet_buffer_OpenGL::set_data();
    }

    v9 = (*(*this + 16))(this);
    jet_buffer::get_element_size(v5);
    memcpy((v9 + a4), a2, v7);
    v10 = *(*v5 + 24);

    return v10(v5, v7, a4);
  }

  return this;
}

void *jet_buffer_OpenGL::get_data(jet_buffer_OpenGL *this)
{
  result = *(this + 15);
  if (!result)
  {
    v3 = (**this)(this);
    result = malloc_type_malloc(v3, 0xC4817EB1uLL);
    *(this + 15) = result;
  }

  return result;
}

void jet_buffer_OpenGL::commit_data(jet_buffer_OpenGL *this, unsigned int a2, int a3)
{
  v6 = (*(*this + 16))(this);
  v7 = *(this + 27);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  if (v8 + a3 > v7)
  {
    jet_buffer_OpenGL::commit_data();
  }

  v9 = v6;
  glContextUse::glContextUse(v13, *(this + 12));
  if ((*(this + 10) & 0xFFFFFFFE) == 2)
  {
    v10 = 34963;
  }

  else
  {
    v10 = 34962;
  }

  glBindBuffer(v10, *(this + 26));
  if ((*(this + 112) & 1) == 0)
  {
    *(this + 112) = 1;
    v11 = *(this + 27);
    if (!a3 && v8 == v11)
    {
      glBufferData(v10, v8, v9, 0x88E8u);
      goto LABEL_18;
    }

    glBufferData(v10, v11, 0, 0x88E8u);
  }

  if (a3 || v8 != *(this + 27))
  {
    v12 = glMapBufferRangeEXT();
    memcpy(v12, &v9[a3], v8);
    glUnmapBufferOES();
  }

  else
  {
    glBufferData(v10, v8, v9, 0x88E8u);
  }

  glBindBuffer(v10, 0);
LABEL_18:
  glContextUse::~glContextUse(v13);
}

void jet_buffer_OpenGL::resize(jet_buffer_OpenGL *this, int a2)
{
  v4 = *(this + 10) - 1;
  if (v4 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_25562ED90[v4];
  }

  v6 = (v5 * a2 * *(this + 11));
  if (*(this + 15))
  {
    v7 = malloc_type_malloc(v6, 0xBF9CD06AuLL);
    v8 = v7;
    v9 = *(this + 27);
    if (v6 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    memcpy(v7, *(this + 15), v10);
    free(*(this + 15));
    *(this + 15) = v8;
  }

  *(this + 112) = 0;
  *(this + 27) = v6;
  *(this + 12) = a2;
}

void jet_buffer_OpenGL::~jet_buffer_OpenGL(jet_buffer_OpenGL *this)
{
  jet_buffer_OpenGL::~jet_buffer_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781A30;
  v2 = *(this + 12);
  if (v2 && *(this + 26))
  {
    glContextUse::glContextUse(v5, v2);
    buffers = *(this + 26);
    glDeleteBuffers(1, &buffers);
    *(this + 26) = 0;
    glContextUse::~glContextUse(v5);
  }

  v3 = *(this + 15);
  if (v3)
  {
    free(v3);
  }

  jet_buffer::~jet_buffer(this);
}

uint64_t jet_buffer_OpenGL::set_value(uint64_t a1, double a2)
{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

uint64_t jet_buffer_OpenGL::set_value(uint64_t a1, __n128 a2)
{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 16, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 16, 0);
}

void jet_buffer_pool_OpenGL::jet_buffer_pool_OpenGL(jet_buffer_pool *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  jet_buffer_pool::jet_buffer_pool(a1, a3, a4, a5);
  *a1 = &unk_286781AD0;
  *(a1 + 8) = v9;
  jet_buffer_pool::initialize_first_buffer(a1);
}

void sub_25562187C(_Unwind_Exception *a1)
{
  jet_buffer_pool::~jet_buffer_pool(v2);

  _Unwind_Resume(a1);
}

void jet_buffer_pool_OpenGL::~jet_buffer_pool_OpenGL(id *this)
{

  jet_buffer_pool::~jet_buffer_pool(this);
}

{

  jet_buffer_pool::~jet_buffer_pool(this);

  JUMPOUT(0x259C3ACA0);
}

uint64_t jet_constant_OpenGL::set_value(uint64_t a1, double a2)
{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

uint64_t jet_constant_OpenGL::set_value(uint64_t a1, __n128 a2)
{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 16);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 16);
}

void jet_constant_OpenGL::~jet_constant_OpenGL(jet_constant_OpenGL *this)
{
  jet_constant_OpenGL::~jet_constant_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781B18;
  v2 = *(this + 3);
  if (v2)
  {
    free(v2);
    *(this + 3) = 0;
  }

  jet_constant::~jet_constant(this);
}

void jet_texture_OpenGL::jet_texture_OpenGL(jet_texture_OpenGL *this, EAGLContext *a2)
{
  v3 = a2;
  jet_texture::jet_texture(this);
  *this = &unk_286781BD8;
  *(this + 1) = v3;
  *(this + 45) = 256;
}

void jet_texture_OpenGL::set_data(EAGLContext **this, const void *a2, GLint a3, unsigned int a4, GLint a5)
{
  if (((*this)[5]._private)(this))
  {
    jet_texture_OpenGL::set_data();
  }

  glContextUse::glContextUse(v20, this[1]);
  if (*(this + 7) == 2)
  {
    v10 = 34067;
  }

  else
  {
    v10 = 3553;
  }

  glBindTexture(v10, *(this + 4));
  if (a5)
  {
    glPixelStorei(0xCF2u, a5);
  }

  glPixelStorei(0xCF5u, 1);
  if (*(this + 7) != 2)
  {
    v13 = *(this + 6) - 1;
    if (v13 > 0xC)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_25562EDB0[v13];
    }

    v14 = ((*this)->super.isa)(this);
    v15 = ((*this)->_private)(this);
    v16 = *(this + 6);
    if (v16 <= 6)
    {
      if (v16 > 3)
      {
        if (v16 != 5)
        {
          v17 = 32993;
          goto LABEL_52;
        }

LABEL_39:
        v17 = 6408;
        goto LABEL_52;
      }

      switch(v16)
      {
        case 1:
          v17 = 6403;
          goto LABEL_52;
        case 2:
          v17 = 33319;
          goto LABEL_52;
        case 3:
          goto LABEL_39;
      }
    }

    else if (v16 >= 10)
    {
      if (v16 <= 11)
      {
        if (v16 != 10)
        {
          v17 = 35056;
LABEL_52:
          v18 = 3553;
          goto LABEL_53;
        }

        goto LABEL_39;
      }

      if (v16 == 12)
      {
        v17 = 36168;
        goto LABEL_52;
      }

      if (v16 == 13)
      {
        v17 = 33189;
        goto LABEL_52;
      }
    }

    v17 = 0;
    goto LABEL_52;
  }

  if (a4 >= 6)
  {
    __assert_rtn("set_data", "jet_types_OpenGL.h", 381, "slice_index <= 5");
  }

  v11 = *(this + 6) - 1;
  if (v11 > 0xC)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_25562EDB0[v11];
  }

  v14 = ((*this)->super.isa)(this);
  v15 = ((*this)->_private)(this);
  v18 = a4 + 34069;
  v16 = *(this + 6);
  if (v16 <= 6)
  {
    if (v16 > 3)
    {
      if (v16 != 5)
      {
        v17 = 32993;
        goto LABEL_53;
      }

      goto LABEL_40;
    }

    switch(v16)
    {
      case 1:
        v17 = 6403;
        goto LABEL_53;
      case 2:
        v17 = 33319;
        goto LABEL_53;
      case 3:
LABEL_40:
        v17 = 6408;
        goto LABEL_53;
    }

LABEL_48:
    v17 = 0;
    goto LABEL_53;
  }

  if (v16 < 10)
  {
    goto LABEL_48;
  }

  if (v16 <= 11)
  {
    if (v16 != 10)
    {
      v17 = 35056;
      goto LABEL_53;
    }

    goto LABEL_40;
  }

  if (v16 != 12)
  {
    if (v16 == 13)
    {
      v17 = 33189;
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  v17 = 36168;
LABEL_53:
  if (v16 == 10)
  {
    v19 = 5126;
  }

  else
  {
    v19 = 5121;
  }

  glTexImage2D(v18, a3, v12, v14, v15, 0, v17, v19, a2);
  if (a5)
  {
    glPixelStorei(0xCF2u, 0);
  }

  glContextUse::~glContextUse(v20);
}

void sub_2556221B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

void jet_texture_OpenGL::replace_region(EAGLContext **this, const void *a2, unsigned int a3, unsigned int a4, GLint a5, GLint a6, unsigned int a7, GLsizei a8, GLsizei height, unsigned int a10, GLint param, unsigned int a12)
{
  if (((*this)[5]._private)(this))
  {
    jet_texture_OpenGL::replace_region();
  }

  glContextUse::glContextUse(v23, this[1]);
  if (*(this + 7) == 2)
  {
    v18 = 34067;
  }

  else
  {
    v18 = 3553;
  }

  glBindTexture(v18, *(this + 4));
  if (param)
  {
    glPixelStorei(0xCF2u, param);
  }

  glPixelStorei(0xCF5u, 1);
  if (*(this + 7) != 2)
  {
    v20 = *(this + 6);
    if ((v20 - 1) > 0xC)
    {
      v21 = 0;
    }

    else
    {
      v21 = dword_25562EDE4[v20 - 1];
    }

    v19 = 3553;
    goto LABEL_33;
  }

  if (a4 >= 6)
  {
    __assert_rtn("replace_region", "jet_types_OpenGL.h", 431, "slice_index <= 5");
  }

  v19 = a4 + 34069;
  v20 = *(this + 6);
  if (v20 <= 6)
  {
    if (v20 > 3)
    {
      if (v20 != 5)
      {
        v21 = 32993;
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    switch(v20)
    {
      case 1:
        v21 = 6403;
        goto LABEL_33;
      case 2:
        v21 = 33319;
        goto LABEL_33;
      case 3:
LABEL_25:
        v21 = 6408;
        goto LABEL_33;
    }

LABEL_29:
    v21 = 0;
    goto LABEL_33;
  }

  if (v20 < 10)
  {
    goto LABEL_29;
  }

  if (v20 <= 11)
  {
    if (v20 != 10)
    {
      v21 = 35056;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v20 != 12)
  {
    if (v20 == 13)
    {
      v21 = 33189;
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v21 = 36168;
LABEL_33:
  if (v20 == 10)
  {
    v22 = 5126;
  }

  else
  {
    v22 = 5121;
  }

  glTexSubImage2D(v19, 0, a5, a6, a8, height, v21, v22, a2);
  if (param)
  {
    glPixelStorei(0xCF2u, 0);
  }

  glContextUse::~glContextUse(v23);
}

void sub_2556223F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

void jet_texture_OpenGL::copy_data(jet_texture_OpenGL *this, void *a2, GLint a3, unsigned int a4)
{
  glContextUse::glContextUse(v15, *(this + 1));
  *params = 0;
  glGetIntegerv(0x8CA6u, &params[1]);
  glGenFramebuffers(1, params);
  glBindFramebuffer(0x8D40u, params[0]);
  v8 = *(this + 5);
  if (v8)
  {
    glBindRenderbuffer(0x8D41u, v8);
    glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, *(this + 5));
  }

  else
  {
    if (*(this + 7) == 2)
    {
      v9 = 34067;
    }

    else
    {
      v9 = 3553;
    }

    glBindTexture(v9, *(this + 4));
    if (*(this + 7) == 2)
    {
      if (a4 >= 6)
      {
        abort();
      }

      v10 = a4 + 34069;
    }

    else
    {
      v10 = 3553;
    }

    glFramebufferTexture2D(0x8D40u, 0x8CE0u, v10, *(this + 4), a3);
  }

  glPixelStorei(0xCF5u, 1);
  v11 = *(this + 6);
  if ((v11 - 1) > 0xC)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_25562EDE4[v11 - 1];
  }

  if (v11 == 10)
  {
    v13 = 5126;
  }

  else
  {
    v13 = 5121;
  }

  glReadPixels(0, 0, *(this + 8), *(this + 9), v12, v13, a2);
  glBindFramebuffer(0x8D40u, params[1]);
  glDeleteFramebuffers(1, params);
  glContextUse::~glContextUse(v15);
}

void sub_25562256C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

BOOL jet_texture_OpenGL::generate_mip_map(EAGLContext **this)
{
  v2 = ((*this)->super.isa)(this);
  v3 = ((*this)->_private)(this);
  isPOT = jet_util_isPOT(v2, v3);
  if (isPOT)
  {
    glContextUse::glContextUse(v8, this[1]);
    if (*(this + 7) == 2)
    {
      v5 = 34067;
    }

    else
    {
      v5 = 3553;
    }

    glBindTexture(v5, *(this + 4));
    if (*(this + 7) == 2)
    {
      v6 = 34067;
    }

    else
    {
      v6 = 3553;
    }

    glGenerateMipmap(v6);
    glContextUse::~glContextUse(v8);
  }

  return isPOT;
}

uint64_t jet_texture_OpenGL::is_color_attachment_compatible(jet_texture_OpenGL *this)
{
  if (*(this + 45))
  {
    return 0;
  }

  else
  {
    return jet_texture::is_color_attachment_compatible(this);
  }
}

void jet_texture_OpenGL::~jet_texture_OpenGL(jet_texture_OpenGL *this)
{
  jet_texture_OpenGL::~jet_texture_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781BD8;
  v2 = *(this + 1);
  if (v2 && *(this + 46) == 1)
  {
    glContextUse::glContextUse(v3, v2);
    if (*(this + 4))
    {
      glDeleteTextures(1, this + 4);
      *(this + 4) = 0;
    }

    if (*(this + 5))
    {
      glDeleteRenderbuffers(1, this + 5);
      *(this + 5) = 0;
    }

    glContextUse::~glContextUse(v3);
    v2 = *(this + 1);
  }

  jet_texture::~jet_texture(this);
}

void jet_sampler_OpenGL::~jet_sampler_OpenGL(jet_sampler_OpenGL *this)
{
  jet_sampler::~jet_sampler(this);

  JUMPOUT(0x259C3ACA0);
}

void jet_function_OpenGL::~jet_function_OpenGL(jet_function_OpenGL *this)
{
  jet_function_OpenGL::~jet_function_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781CA8;
  v2 = *(this + 1);
  if (v2 && *(this + 4))
  {
    glContextUse::glContextUse(v3, v2);
    glDeleteShader(*(this + 4));
    *(this + 4) = 0;
    glContextUse::~glContextUse(v3);
    v2 = *(this + 1);
  }
}

void jet_program_OpenGL::jet_program_OpenGL(jet_program_OpenGL *this, EAGLContext *a2, xglProgram *a3)
{
  v5 = a2;
  jet_program::jet_program(this);
  *this = &unk_286781CF0;
  *(this + 4) = v5;
  *(this + 5) = a3;
}

void jet_program_OpenGL::~jet_program_OpenGL(jet_program_OpenGL *this)
{
  jet_program_OpenGL::~jet_program_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781CF0;
  v2 = *(this + 5);
  if (v2)
  {
    xglProgram::~xglProgram(v2);
    MEMORY[0x259C3ACA0]();
  }

  jet_program::~jet_program(this);
}

void jet_render_mode_OpenGL::~jet_render_mode_OpenGL(jet_render_mode_OpenGL *this)
{
  *this = &unk_286781D28;
  *(this + 1) = 0;
  *(this + 4) = 1;

  jet_render_mode::~jet_render_mode(this);
}

{
  *this = &unk_286781D28;
  *(this + 1) = 0;
  *(this + 4) = 1;

  jet_render_mode::~jet_render_mode(this);

  JUMPOUT(0x259C3ACA0);
}

uint64_t jet_render_mode_OpenGL::get_vertex_buffer_index(uint64_t a1, char *a2)
{
  glContextUse::glContextUse(v7, *(a1 + 40));
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  AttributeIndex = xglProgram::getAttributeIndex(*(*(a1 + 8) + 40), v4);
  glContextUse::~glContextUse(v7);
  return AttributeIndex;
}

uint64_t jet_render_mode_OpenGL::get_vertex_constant_index(uint64_t a1, char *a2)
{
  glContextUse::glContextUse(v7, *(a1 + 40));
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  UniformLocation = xglProgram::getUniformLocation(*(*(a1 + 8) + 40), v4);
  glContextUse::~glContextUse(v7);
  return UniformLocation;
}

uint64_t jet_render_mode_OpenGL::get_vertex_texture_index(uint64_t a1, char *a2)
{
  glContextUse::glContextUse(v7, *(a1 + 40));
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  UniformLocation = xglProgram::getUniformLocation(*(*(a1 + 8) + 40), v4);
  glContextUse::~glContextUse(v7);
  return UniformLocation;
}

uint64_t jet_render_mode_OpenGL::get_fragment_constant_index(uint64_t a1, char *a2)
{
  glContextUse::glContextUse(v7, *(a1 + 40));
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  UniformLocation = xglProgram::getUniformLocation(*(*(a1 + 8) + 40), v4);
  glContextUse::~glContextUse(v7);
  return UniformLocation;
}

uint64_t jet_render_mode_OpenGL::get_fragment_texture_index(uint64_t a1, char *a2)
{
  glContextUse::glContextUse(v7, *(a1 + 40));
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  UniformLocation = xglProgram::getUniformLocation(*(*(a1 + 8) + 40), v4);
  glContextUse::~glContextUse(v7);
  return UniformLocation;
}

void jet_stencil_mode_OpenGL::~jet_stencil_mode_OpenGL(jet_stencil_mode_OpenGL *this)
{
  jet_stencil_mode::~jet_stencil_mode(this);

  JUMPOUT(0x259C3ACA0);
}

void jet_depth_stencil_mode_OpenGL::~jet_depth_stencil_mode_OpenGL(jet_depth_stencil_mode_OpenGL *this)
{
  jet_depth_stencil_mode_OpenGL::~jet_depth_stencil_mode_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781DD8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  jet_depth_stencil_mode::~jet_depth_stencil_mode(this);
}

BOOL jet_fence_OpenGL::is_finished(jet_fence_OpenGL *this)
{
  if (!*(this + 2))
  {
    return 1;
  }

  glContextUse::glContextUse(v7, *(this + 1));
  v2 = *(this + 2);
  v3 = (glClientWaitSyncAPPLE() - 37146) & 0xFFFFFFFD;
  v4 = v3 == 0;
  if (!v3)
  {
    v5 = *(this + 2);
    glDeleteSyncAPPLE();
    *(this + 2) = 0;
  }

  glContextUse::~glContextUse(v7);
  return v4;
}

BOOL jet_fence_OpenGL::wait(jet_fence_OpenGL *this)
{
  if (!*(this + 2))
  {
    return 1;
  }

  glContextUse::glContextUse(v7, *(this + 1));
  v2 = *(this + 2);
  v3 = (glClientWaitSyncAPPLE() - 37146) & 0xFFFFFFFD;
  v4 = v3 == 0;
  if (!v3)
  {
    v5 = *(this + 2);
    glDeleteSyncAPPLE();
    *(this + 2) = 0;
  }

  glContextUse::~glContextUse(v7);
  return v4;
}

void jet_fence_OpenGL::~jet_fence_OpenGL(jet_fence_OpenGL *this)
{
  jet_fence_OpenGL::~jet_fence_OpenGL(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286781E10;
  v2 = *(this + 1);
  if (v2 && *(this + 2))
  {
    glContextUse::glContextUse(v4, v2);
    v3 = *(this + 2);
    glDeleteSyncAPPLE();
    *(this + 2) = 0;
    glContextUse::~glContextUse(v4);
    v2 = *(this + 1);
  }

  jet_fence::~jet_fence(this);
}

void jet_framebuffer_OpenGL::jet_framebuffer_OpenGL(jet_framebuffer_OpenGL *this)
{
  *(this + 54) = 1065353216;
  *(this + 220) = 0x100000001;
  *(this + 29) = 0;
  *(this + 30) = 0x100000000;
  *(this + 62) = 1;
  *(this + 2) = 0;
  *(this + 2) = xmmword_25562EA80;
  *(this + 6) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_25562EA80;
  *(this + 24) = 1;
  *(this + 100) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  *(this + 8) = xmmword_25562EA80;
  *(this + 36) = 1;
  *(this + 156) = 0;
  *(this + 148) = 0;
  *(this + 43) = 0;
  *(this + 164) = 0;
  *(this + 11) = xmmword_25562EA80;
  *(this + 24) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *this = &unk_286781E58;
  *(this + 32) = 0;
  *(this + 66) = -1;
}

void jet_framebuffer_OpenGL::~jet_framebuffer_OpenGL(id *this)
{
}

{

  JUMPOUT(0x259C3ACA0);
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,jet_sampler *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,jet_sampler *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,jet_sampler *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_255623540(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_fence_OpenGL>::shared_ptr[abi:ne200100]<jet_fence_OpenGL,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_fence_OpenGL *,std::shared_ptr<jet_fence_OpenGL>::__shared_ptr_default_delete<jet_fence_OpenGL,jet_fence_OpenGL>,std::allocator<jet_fence_OpenGL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3ACA0);
}

uint64_t std::__shared_ptr_pointer<jet_fence_OpenGL *,std::shared_ptr<jet_fence_OpenGL>::__shared_ptr_default_delete<jet_fence_OpenGL,jet_fence_OpenGL>,std::allocator<jet_fence_OpenGL>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_fence_OpenGL *,std::shared_ptr<jet_fence_OpenGL>::__shared_ptr_default_delete<jet_fence_OpenGL,jet_fence_OpenGL>,std::allocator<jet_fence_OpenGL>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t jet_context_Metal::jet_context_Metal(uint64_t a1, void *a2)
{
  v3 = a2;
  jet_context::jet_context(a1);
  *a1 = &unk_286781EF8;
  v4 = v3;
  v5 = 0;
  *(a1 + 104) = v4;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  if (!v4)
  {
    v6 = jet_choose_Metal_Device();
    v7 = *(a1 + 104);
    *(a1 + 104) = v6;

    v5 = *(a1 + 112);
  }

  *(a1 + 112) = 0;

  v8 = *(a1 + 120);
  *(a1 + 120) = 0;

  v9 = *(a1 + 128);
  *(a1 + 128) = 0;

  v10 = *(a1 + 136);
  *(a1 + 136) = 0;

  *(a1 + 16) = 0;
  return a1;
}

void sub_25562371C(_Unwind_Exception *a1)
{
  jet_context::~jet_context(v1);

  _Unwind_Resume(a1);
}

void jet_context_Metal::~jet_context_Metal(id *this)
{

  jet_context::~jet_context(this);
}

{
  jet_context_Metal::~jet_context_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

void jet_context_Metal::create_constant(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if ((a2 - 1) > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_25562F188[a2 - 1];
  }

  v6 = a4 * a3;
  v7 = (a4 * a3 * v5);
  v8 = *(a1 + 104);
  if (a5)
  {
    [v8 newBufferWithBytes:a5 length:v7 options:0];
  }

  else
  {
    [v8 newBufferWithLength:(v6 * v5) options:0];
  }

  operator new();
}

void sub_255623A14(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v2, 0x1081C40D47BEB4BLL);

  _Unwind_Resume(a1);
}

void jet_context_Metal::create_framebuffer_from_Metal_Encoder(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  operator new();
}

void sub_255623AC4(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v3, 0x10A1C40F8985CBBLL);

  _Unwind_Resume(a1);
}

uint64_t jet_context_Metal::create_texture(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  if (a6 != 1)
  {
    jet_context_Metal::create_texture();
  }

  if (a8 != 1)
  {
    jet_context_Metal::create_texture();
  }

  if (a3 == 11)
  {
    if (a7)
    {
      jet_context_Metal::create_texture();
    }

    if (a10)
    {
      jet_context_Metal::create_texture();
    }

    if (a2 >= 2)
    {
      jet_context_Metal::create_texture();
    }

    v11 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:260 width:a4 height:a5 mipmapped:0];
    [v11 pixelFormat];
    [v11 setStorageMode:0];
    [v11 setUsage:a9 & 7];
    v12 = [*(a1 + 104) newTextureWithDescriptor:v11];
    if (v12)
    {
      operator new();
    }
  }

  else
  {
    if (a2 == 2)
    {
      if (a4 != a5)
      {
        __assert_rtn("create_texture", "jet_context_Metal.mm", 614, "width == height");
      }

      v13 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:getMetalPixelFormat(a3) size:a4 mipmapped:a7 != 0];
    }

    else
    {
      v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:getMetalPixelFormat(a3) width:a4 height:a5 mipmapped:a7 != 0];
    }

    v11 = v13;
    [v13 pixelFormat];
    [v11 setStorageMode:0];
    [v11 setUsage:a9 & 7];
    v12 = [*(a1 + 104) newTextureWithDescriptor:v11];
    if (v12)
    {
      operator new();
    }
  }

  return 0;
}

void sub_255623DE4(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v3, 0x1081C40A7A185F6);

  _Unwind_Resume(a1);
}

uint64_t getMetalPixelFormat(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return *&asc_25562F0B0[8 * (a1 - 1)];
  }
}

void jet_context_Metal::create_texture_from_IOSurface(uint64_t a1, IOSurfaceID csid, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  v11 = IOSurfaceLookup(csid);
  v12 = a6;
  if ((IOSurfaceGetBytesPerRowOfPlane(v11, a6) & 0xF) == 0)
  {
    v13 = objc_opt_new();
    [v13 setWidth:a3];
    [v13 setHeight:a4];
    [v13 setPixelFormat:getMetalPixelFormat(a5)];
    [v13 setUsage:0];
    [*(a1 + 104) newTextureWithDescriptor:v13 iosurface:v11 plane:v12];
    CFRelease(v11);
    operator new();
  }

  jet_context_Metal::create_texture_from_IOSurface();
}

void sub_255623F94(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v2, 0x1081C40A7A185F6);

  _Unwind_Resume(a1);
}

void jet_context_Metal::override_Metal_render_state(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v14 = a2;
  v7 = a3;
  if (v14)
  {
    v8 = v14;
    v9 = *(a1 + 120);
    *(a1 + 120) = v8;
  }

  else
  {
    v10 = [*(a1 + 104) newCommandQueue];
    v11 = *(a1 + 120);
    *(a1 + 120) = v10;

    v12 = *(a1 + 120);
    v9 = jet_getClientLabel();
    [v12 setLabel:v9];
  }

  jet_context_Metal::ensureCommandBuffer(a1, 1);
  v13 = *(a1 + 136);
  *(a1 + 136) = v7;

  *(a1 + 16) = a4;
}

uint64_t jet_context_Metal::ensureCommandBuffer(uint64_t this, int a2)
{
  if (*(this + 128))
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = this;
    v5 = [*(this + 120) commandBuffer];
    v6 = *(v4 + 128);
    *(v4 + 128) = v5;

    v7 = *(v4 + 128);

    return [v7 setLabel:@"SpriteKit Render"];
  }

  return this;
}

id *jet_context_Metal::get_Metal_Texture(jet_context_Metal *this, char **lpsrc)
{
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v4 = v4[1];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *jet_context_Metal::get_Metal_Drawable(jet_context_Metal *this, char **lpsrc)
{
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v4 = v4[3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void jet_context_Metal::create_texture_from_Metal_Drawable(uint64_t a1, void *a2)
{
  [a2 texture];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_255624324(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v3, 0x1081C40A7A185F6);

  _Unwind_Resume(a1);
}

uint64_t getJetTextureFormatFromMetalPixelFormat(uint64_t a1)
{
  if (a1 <= 252)
  {
    if (a1 <= 79)
    {
      switch(a1)
      {
        case 10:
          return 1;
        case 30:
          return 2;
        case 70:
          return 3;
      }
    }

    else if (a1 > 114)
    {
      if (a1 == 115)
      {
        return 10;
      }

      if (a1 == 252)
      {
        return 13;
      }
    }

    else
    {
      if (a1 == 80)
      {
        return 4;
      }

      if (a1 == 81)
      {
        return 6;
      }
    }

    return 5;
  }

  if (a1 <= 550)
  {
    switch(a1)
    {
      case 253:
        return 12;
      case 260:
        return 11;
      case 550:
        return 9;
    }
  }

  else
  {
    if (a1 <= 552)
    {
      if (a1 != 551)
      {
        return 7;
      }

      return 9;
    }

    if (a1 == 553)
    {
      return 8;
    }

    if (a1 == 555)
    {
      return 14;
    }
  }

  return 5;
}

void sub_255624514(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v2, 0x1081C40A7A185F6);

  _Unwind_Resume(a1);
}

void jet_context_Metal::create_sampler(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = objc_opt_new();
  v13 = v12;
  v14 = 3;
  if (a2 != 2)
  {
    v14 = 0;
  }

  if (a2 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14;
  }

  [v12 setSAddressMode:v15];
  v16 = 3;
  if (a3 != 2)
  {
    v16 = 0;
  }

  if (a3 == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16;
  }

  [v13 setTAddressMode:v17];
  [v13 setMinFilter:a4 != 0];
  [v13 setMagFilter:a5 != 0];
  if (a6 == 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2 * (a6 == 2);
  }

  [v13 setMipFilter:v18];
  [*(a1 + 104) newSamplerStateWithDescriptor:v13];
  operator new();
}

void sub_25562467C(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v3, 0x1081C40A4B734D1);

  _Unwind_Resume(a1);
}

uint64_t jet_context_Metal::create_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v8 = *(a1 + 104);
    v12 = 0;
    v9 = [v8 newLibraryWithFile:v7 error:&v12];
    v10 = v12;

    if (v10)
    {
      jet_log(&stru_286782DB0.isa, v10);
    }
  }

  else
  {
    v10 = 0;
    v9 = [*(a1 + 104) newDefaultLibrary];
  }

  if ([v9 newFunctionWithName:v6])
  {
    operator new();
  }

  jet_log(&cfstr_FailedToLoadFu.isa, a2, a3);

  return 0;
}

uint64_t jet_context_Metal::create_function_from_source(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v10 = *(a1 + 104);
  v15 = 0;
  v11 = [v10 newLibraryWithSource:v8 options:0 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v11)
  {
    if ([v11 newFunctionWithName:v9])
    {
      operator new();
    }
  }

  else if (v12)
  {
    jet_log(&stru_286782DB0.isa, v12);
    if (a5)
    {
      operator new();
    }
  }

  return 0;
}

void sub_2556249C4(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v5, 0x1012C40EC159624);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void jet_context_Metal::create_program(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v4 = *(a2 + 8);
      if (v4)
      {

        v5 = *(a3 + 8);
        if (v5)
        {

          operator new();
        }

        jet_context_Metal::create_program();
      }

      jet_context_Metal::create_program();
    }

    jet_context_Metal::create_program();
  }

  jet_context_Metal::create_program();
}

void jet_context_Metal::create_render_mode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, unsigned __int8 a10, unsigned int a11)
{
  v16 = *(a2 + 32);
  v113 = *(a2 + 40);
  v17 = objc_opt_new();
  [v17 setVertexFunction:v16];
  [v17 setFragmentFunction:v113];
  MetalPixelFormat = getMetalPixelFormat(a4);
  v19 = [v17 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 setPixelFormat:MetalPixelFormat];

  [v17 setSampleCount:a11];
  if (a5 == 11 || a6 == 11)
  {
    if (a6 != 11 || a5 != 11)
    {
      if (a6 == 11)
      {
        v108 = "destDepthFormat == jet_texture_format_DepthStencil";
      }

      else
      {
        v108 = "destStencilFormat == jet_texture_format_DepthStencil";
      }

      if (a6 == 11)
      {
        v109 = 895;
      }

      else
      {
        v109 = 894;
      }

      __assert_rtn("create_render_mode", "jet_context_Metal.mm", v109, v108);
    }

    v21 = 260;
    [v17 setDepthAttachmentPixelFormat:260];
  }

  else
  {
    [v17 setDepthAttachmentPixelFormat:getMetalPixelFormat(a5)];
    v21 = getMetalPixelFormat(a6);
  }

  [v17 setStencilAttachmentPixelFormat:v21];
  v22 = 8;
  if (!a7)
  {
    v22 = 0;
  }

  if (a8)
  {
    v22 |= 4uLL;
  }

  if (a9)
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v17 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setWriteMask:v23 | a10];

  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v64 = [v17 colorAttachments];
        v65 = [v64 objectAtIndexedSubscript:0];
        [v65 setBlendingEnabled:0];

        v66 = [v17 colorAttachments];
        v67 = [v66 objectAtIndexedSubscript:0];
        [v67 setAlphaBlendOperation:0];

        v38 = [v17 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setRgbBlendOperation:0];
        goto LABEL_31;
      case 2:
        v92 = [v17 colorAttachments];
        v93 = [v92 objectAtIndexedSubscript:0];
        [v93 setBlendingEnabled:1];

        v94 = [v17 colorAttachments];
        v95 = [v94 objectAtIndexedSubscript:0];
        [v95 setAlphaBlendOperation:0];

        v96 = [v17 colorAttachments];
        v97 = [v96 objectAtIndexedSubscript:0];
        [v97 setRgbBlendOperation:0];

        v98 = [v17 colorAttachments];
        v99 = [v98 objectAtIndexedSubscript:0];
        [v99 setSourceRGBBlendFactor:1];

        v100 = [v17 colorAttachments];
        v101 = [v100 objectAtIndexedSubscript:0];
        [v101 setDestinationRGBBlendFactor:1];

        v102 = [v17 colorAttachments];
        v103 = [v102 objectAtIndexedSubscript:0];
        [v103 setSourceAlphaBlendFactor:1];

        v38 = [v17 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setDestinationAlphaBlendFactor:1];
        goto LABEL_31;
      case 3:
        v40 = [v17 colorAttachments];
        v41 = [v40 objectAtIndexedSubscript:0];
        [v41 setBlendingEnabled:1];

        v42 = [v17 colorAttachments];
        v43 = [v42 objectAtIndexedSubscript:0];
        [v43 setAlphaBlendOperation:2];

        v44 = [v17 colorAttachments];
        v45 = [v44 objectAtIndexedSubscript:0];
        [v45 setRgbBlendOperation:2];

        v46 = [v17 colorAttachments];
        v47 = [v46 objectAtIndexedSubscript:0];
        [v47 setSourceRGBBlendFactor:4];

        v48 = [v17 colorAttachments];
        v49 = [v48 objectAtIndexedSubscript:0];
        [v49 setDestinationRGBBlendFactor:1];

        v50 = [v17 colorAttachments];
        v51 = [v50 objectAtIndexedSubscript:0];
        [v51 setSourceAlphaBlendFactor:0];

        v38 = [v17 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setDestinationAlphaBlendFactor:10];
        goto LABEL_31;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      v26 = [v17 colorAttachments];
      v27 = [v26 objectAtIndexedSubscript:0];
      [v27 setBlendingEnabled:1];

      v28 = [v17 colorAttachments];
      v29 = [v28 objectAtIndexedSubscript:0];
      [v29 setAlphaBlendOperation:0];

      v30 = [v17 colorAttachments];
      v31 = [v30 objectAtIndexedSubscript:0];
      [v31 setRgbBlendOperation:0];

      v32 = [v17 colorAttachments];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v33 setSourceRGBBlendFactor:6];

      v34 = [v17 colorAttachments];
      v35 = [v34 objectAtIndexedSubscript:0];
      if (a3 == 4)
      {
        [v35 setDestinationRGBBlendFactor:0];
      }

      else
      {
        [v35 setDestinationRGBBlendFactor:2];
      }

      v36 = [v17 colorAttachments];
      v37 = [v36 objectAtIndexedSubscript:0];
      [v37 setSourceAlphaBlendFactor:10];

      v38 = [v17 colorAttachments];
      v39 = [v38 objectAtIndexedSubscript:0];
      [v39 setDestinationAlphaBlendFactor:0];
LABEL_31:

      v104 = *(a1 + 104);
      v114 = 0;
      v115 = 0;
      v105 = [v104 newRenderPipelineStateWithDescriptor:v17 options:3 reflection:&v115 error:&v114];
      v106 = v115;
      v107 = v114;
      if (v107)
      {
        jet_log(&stru_286782DB0.isa, v107);
      }

      if (v105)
      {
        operator new();
      }

      __assert_rtn("create_render_mode", "jet_context_Metal.mm", 1032, "state");
    }

    if (a3 == 6)
    {
      v80 = [v17 colorAttachments];
      v81 = [v80 objectAtIndexedSubscript:0];
      [v81 setBlendingEnabled:1];

      v82 = [v17 colorAttachments];
      v83 = [v82 objectAtIndexedSubscript:0];
      [v83 setAlphaBlendOperation:0];

      v84 = [v17 colorAttachments];
      v85 = [v84 objectAtIndexedSubscript:0];
      [v85 setRgbBlendOperation:0];

      v86 = [v17 colorAttachments];
      v87 = [v86 objectAtIndexedSubscript:0];
      [v87 setSourceRGBBlendFactor:1];

      v88 = [v17 colorAttachments];
      v89 = [v88 objectAtIndexedSubscript:0];
      [v89 setDestinationRGBBlendFactor:3];

      v90 = [v17 colorAttachments];
      v91 = [v90 objectAtIndexedSubscript:0];
      [v91 setSourceAlphaBlendFactor:1];

      v38 = [v17 colorAttachments];
      v39 = [v38 objectAtIndexedSubscript:0];
      [v39 setDestinationAlphaBlendFactor:3];
      goto LABEL_31;
    }

    if (a3 == 7)
    {
      v52 = [v17 colorAttachments];
      v53 = [v52 objectAtIndexedSubscript:0];
      [v53 setBlendingEnabled:1];

      v54 = [v17 colorAttachments];
      v55 = [v54 objectAtIndexedSubscript:0];
      [v55 setAlphaBlendOperation:0];

      v56 = [v17 colorAttachments];
      v57 = [v56 objectAtIndexedSubscript:0];
      [v57 setRgbBlendOperation:0];

      v58 = [v17 colorAttachments];
      v59 = [v58 objectAtIndexedSubscript:0];
      [v59 setSourceRGBBlendFactor:6];

      v60 = [v17 colorAttachments];
      v61 = [v60 objectAtIndexedSubscript:0];
      [v61 setDestinationRGBBlendFactor:5];

      v62 = [v17 colorAttachments];
      v63 = [v62 objectAtIndexedSubscript:0];
      [v63 setSourceAlphaBlendFactor:10];

      v38 = [v17 colorAttachments];
      v39 = [v38 objectAtIndexedSubscript:0];
      [v39 setDestinationAlphaBlendFactor:5];
      goto LABEL_31;
    }
  }

  v68 = [v17 colorAttachments];
  v69 = [v68 objectAtIndexedSubscript:0];
  [v69 setBlendingEnabled:1];

  v70 = [v17 colorAttachments];
  v71 = [v70 objectAtIndexedSubscript:0];
  [v71 setAlphaBlendOperation:0];

  v72 = [v17 colorAttachments];
  v73 = [v72 objectAtIndexedSubscript:0];
  [v73 setRgbBlendOperation:0];

  v74 = [v17 colorAttachments];
  v75 = [v74 objectAtIndexedSubscript:0];
  [v75 setSourceRGBBlendFactor:1];

  v76 = [v17 colorAttachments];
  v77 = [v76 objectAtIndexedSubscript:0];
  [v77 setDestinationRGBBlendFactor:5];

  v78 = [v17 colorAttachments];
  v79 = [v78 objectAtIndexedSubscript:0];
  [v79 setSourceAlphaBlendFactor:1];

  v38 = [v17 colorAttachments];
  v39 = [v38 objectAtIndexedSubscript:0];
  [v39 setDestinationAlphaBlendFactor:5];
  goto LABEL_31;
}

void jet_render_mode_Metal::set_Metal_Reflection(id *this, MTLRenderPipelineReflection *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong(this + 6, a2);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [this[6] vertexArguments];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 index];
        v11 = [v9 name];
        v12 = v11;
        std::string::basic_string[abi:ne200100]<0>(__p, [v11 UTF8String]);
        v32 = __p;
        *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 7, __p) + 10) = v10;
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [this[6] fragmentArguments];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        v18 = [v17 index];
        v19 = [v17 name];
        v20 = v19;
        std::string::basic_string[abi:ne200100]<0>(__p, [v19 UTF8String]);
        v32 = __p;
        *(std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 12, __p) + 10) = v18;
        if (v27 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t jet_context_Metal::set_scheduled_handler(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 128);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZN17jet_context_Metal21set_scheduled_handlerENSt3__18functionIFvvEEE_block_invoke;
  v5[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvvEEE_e28_v16__0___MTLCommandBuffer__8l;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
  [v2 addScheduledHandler:v5];
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN17jet_context_Metal21set_scheduled_handlerENSt3__18functionIFvvEEE_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 56);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3);
}

void jet_context_Metal::begin_render_pass(jet_context_Metal *this, char **a2)
{
  (*(*this + 352))(this);
  if (a2)
  {
    *(this + 2) = a2;
    v4 = **a2;
    if (v5 && (v6 = v5, (v7 = v5[32]) != 0))
    {
      v8 = v7;
      if (v8 != *(this + 17))
      {
        (*(*this + 176))(&v73, this);
        if (v74)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v74);
        }

        objc_storeStrong(this + 17, v7);
        jet_context_Metal::ensureCommandBuffer(this, 1);
      }

      *(this + 1) = 0;
      objc_storeStrong(this + 18, v6[33]);
      v9 = *(this + 18);
      if (v9)
      {
        v10 = [v9 colorAttachments];
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 texture];

        if (v12)
        {
          *(this + 6) = getJetTextureFormatFromMetalPixelFormat([v12 pixelFormat]);
          v13 = [v12 sampleCount];
        }

        else
        {
          *(this + 6) = 0;
          v13 = 1;
        }

        *(this + 9) = v13;
        v62 = [*(this + 18) depthAttachment];
        v63 = [v62 texture];

        if (v63)
        {
          JetTextureFormatFromMetalPixelFormat = getJetTextureFormatFromMetalPixelFormat([v63 pixelFormat]);
        }

        else
        {
          JetTextureFormatFromMetalPixelFormat = 0;
        }

        *(this + 7) = JetTextureFormatFromMetalPixelFormat;
        v65 = [*(this + 18) stencilAttachment];
        v66 = [v65 texture];

        if (v66)
        {
          v67 = getJetTextureFormatFromMetalPixelFormat([v66 pixelFormat]);
        }

        else
        {
          v67 = 0;
        }

        *(this + 8) = v67;
      }

      [*(this + 17) setCullMode:0];
    }

    else
    {
      v14 = *(this + 17);
      if (v14)
      {
        [v14 endEncoding];
        v15 = *(this + 17);
        *(this + 17) = 0;
      }

      v16 = a2[2];
      v17 = a2[26];
      v18 = a2[29];
      if (v16 && ((*(*v16 + 12))(a2[2]) & 1) == 0)
      {
        jet_context_Metal::begin_render_pass();
      }

      if (v17 && ((*(*v17 + 13))(v17) & 1) == 0)
      {
        jet_context_Metal::begin_render_pass();
      }

      if (v18 && ((*(*v18 + 14))(v18) & 1) == 0)
      {
        jet_context_Metal::begin_render_pass();
      }

      if (v16)
      {
        v19 = (*(*v16 + 4))(v16);
      }

      else
      {
        v19 = 3;
      }

      *(this + 6) = v19;
      if (v17)
      {
        v20 = (*(*v17 + 4))(v17);
      }

      else
      {
        v20 = 0;
      }

      *(this + 7) = v20;
      if (v18)
      {
        v21 = (*(*v18 + 4))(v18);
      }

      else
      {
        v21 = 0;
      }

      *(this + 8) = v21;
      v72 = getMetalTexture(v16);
      if (v72)
      {
        *(this + 9) = [v72 sampleCount];
      }

      if (v17 && (*(*v17 + 4))(v17) == 11)
      {
        v22 = v17[1];
      }

      else
      {
        v22 = getMetalTexture(v17);
      }

      v23 = v22;
      if (v18 && (*(*v18 + 4))(v18) == 11)
      {
        v24 = v18[2];
      }

      else
      {
        v24 = getMetalTexture(v17);
      }

      v25 = v24;
      v26 = *(a2 + 60);
      v27 = *(a2 + 54);
      v28 = [MEMORY[0x277CD6F50] renderPassDescriptor];
      v29 = [v28 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript:0];
      [v30 setTexture:v72];

      v31 = [v28 colorAttachments];
      v32 = [v31 objectAtIndexedSubscript:0];
      [v32 setClearColor:{v68, v69, v70, v71}];

      v33 = *(a2 + 12);
      if (v33 == 1)
      {
        v34 = 2;
      }

      else
      {
        v34 = v33 == 0;
      }

      v35 = [v28 colorAttachments];
      v36 = [v35 objectAtIndexedSubscript:0];
      [v36 setLoadAction:v34];

      v37 = *(a2 + 13) != 1;
      v38 = [v28 colorAttachments];
      v39 = [v38 objectAtIndexedSubscript:0];
      [v39 setStoreAction:v37];

      v40 = [v28 stencilAttachment];
      [v40 setTexture:v25];

      v41 = [v28 stencilAttachment];
      [v41 setClearStencil:v26];

      v42 = *(a2 + 61);
      v43 = [v28 stencilAttachment];
      v44 = v43;
      if (v42 == 1)
      {
        v45 = 2;
      }

      else
      {
        v45 = v42 == 0;
      }

      [v43 setLoadAction:v45];

      v46 = *(a2 + 62);
      v47 = [v28 stencilAttachment];
      [v47 setStoreAction:v46 != 1];

      v48 = [v28 depthAttachment];
      [v48 setTexture:v23];

      v49 = [v28 depthAttachment];
      [v49 setClearDepth:v27];

      v50 = *(a2 + 55);
      v51 = [v28 depthAttachment];
      v52 = v51;
      if (v50 == 1)
      {
        v53 = 2;
      }

      else
      {
        v53 = v50 == 0;
      }

      [v51 setLoadAction:v53];

      v54 = *(a2 + 56);
      v55 = [v28 depthAttachment];
      [v55 setStoreAction:v54 != 1];

      jet_context_Metal::ensureCommandQueue(this);
      jet_context_Metal::ensureCommandBuffer(this, 0);
      v56 = [*(this + 16) renderCommandEncoderWithDescriptor:v28];
      v57 = *(this + 17);
      *(this + 17) = v56;

      [*(this + 17) setLabel:@"SpriteKit Render"];
      objc_storeStrong(this + 18, v28);
      if (v16)
      {
        v58 = (**v16)(v16);
        v59 = (*(*v16 + 1))(v16);
        (*(*this + 208))(this, 0, 0, v58, v59);
        v60 = (**v16)(v16);
        v61 = (*(*v16 + 1))(v16);
        (*(*this + 224))(this, 0, 0, v60, v61);
      }
    }
  }
}

jet_texture *getMetalTexture(id *a1)
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

void jet_context_Metal::ensureCommandQueue(jet_context_Metal *this)
{
  if (!*(this + 15))
  {
    v3 = jet_context_Metal::getNativeCommandQueue(this);
    v4 = *(this + 15);
    *(this + 15) = v3;
  }
}

void jet_context_Metal::create_stencil_mode(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_opt_new();
  [v13 setReadMask:a6];
  [v13 setWriteMask:a7];
  [v13 setStencilCompareFunction:getMetalCompareFunction(a2)];
  if (a3 > 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_25562F120[a3];
  }

  [v13 setStencilFailureOperation:v14];
  if (a4 > 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_25562F120[a4];
  }

  [v13 setDepthFailureOperation:v15];
  if (a5 > 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_25562F120[a5];
  }

  [v13 setDepthStencilPassOperation:v16];
  operator new();
}

void sub_255626B28(_Unwind_Exception *a1)
{
  MEMORY[0x259C3ACA0](v2, 0x81C40803F642BLL);

  _Unwind_Resume(a1);
}

uint64_t getMetalCompareFunction(unsigned int a1)
{
  if (a1 > 7)
  {
    return 7;
  }

  else
  {
    return qword_25562F148[a1];
  }
}

void jet_context_Metal::create_depth_stencil_mode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  v10 = objc_opt_new();
  [v10 setDepthCompareFunction:getMetalCompareFunction(a3)];
  [v10 setDepthWriteEnabled:a2];
  [v10 setFrontFaceStencil:*(a4 + 8)];
  [v10 setBackFaceStencil:*(v9 + 8)];
  if ([*(a1 + 104) newDepthStencilStateWithDescriptor:v10])
  {
    operator new();
  }

  __assert_rtn("create_depth_stencil_mode", "jet_context_Metal.mm", 1241, "state");
}

void sub_255626C9C(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x259C3ACA0](v4, 0x81C40D6874129);

  _Unwind_Resume(a1);
}

uint64_t jet_context_Metal::set_scissor_rect(jet_context_Metal *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v8 = a4;
  v9 = *(this + 2);
  v10 = a5;
  if (v9)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      v13 = (*(*v11 + 8))(v11);
      v14 = (***(*(this + 2) + 16))();
      a3 = (v13 - (a5 + a3)) & ~((v13 - (a5 + a3)) >> 31);
      v10 = v13;
      v8 = v14;
    }
  }

  v15 = *(this + 17);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = v8;
  v17[3] = v10;
  return [v15 setScissorRect:v17];
}

uint64_t jet_context_Metal::use_depth_stencil_mode(jet_context_Metal *this, jet_depth_stencil_mode *a2)
{
  if (a2)
  {
    v3 = *(this + 17);
    v4 = *(a2 + 2);

    return [v3 setDepthStencilState:v4];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN17jet_context_Metal22use_depth_stencil_modeEP22jet_depth_stencil_mode_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    if (jet_context_Metal::use_depth_stencil_mode(jet_depth_stencil_mode *)::onceToken != -1)
    {
      dispatch_once(&jet_context_Metal::use_depth_stencil_mode(jet_depth_stencil_mode *)::onceToken, block);
    }

    return [*(this + 17) setDepthStencilState:jet_context_Metal::use_depth_stencil_mode(jet_depth_stencil_mode *)::_defualtDepthStencilState];
  }
}

void ___ZN17jet_context_Metal22use_depth_stencil_modeEP22jet_depth_stencil_mode_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = objc_opt_new();
  v2 = [*(v1 + 104) newDepthStencilStateWithDescriptor:?];
  v3 = jet_context_Metal::use_depth_stencil_mode(jet_depth_stencil_mode *)::_defualtDepthStencilState;
  jet_context_Metal::use_depth_stencil_mode(jet_depth_stencil_mode *)::_defualtDepthStencilState = v2;
}

uint64_t jet_context_Metal::set_viewport(jet_context_Metal *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = *(this + 2);
  if (v10 && ((*(**(v10 + 16) + 88))(*(v10 + 16)) & 1) == 0)
  {
    a3 += a5;
    v11 = -a5;
  }

  else
  {
    v11 = a5;
  }

  v12 = *(this + 17);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = v11;
  v15 = xmmword_25562EE30;
  return [v12 setViewport:v14];
}

void jet_context_Metal::set_vertex_buffer(jet_context_Metal *this, jet_buffer *a2, int a3)
{
  jet_context::add_fenced_buffer(this, a2);
  if (a3 < 0)
  {
    jet_context_Metal::set_vertex_buffer();
  }

  v6 = *(this + 17);
  v7 = getMetalBuffer(a2);
  [v6 setVertexBuffer:? offset:? atIndex:?];
}

jet_buffer *getMetalBuffer(id *a1)
{
  if (a1)
  {
    a1 = a1[12];
    v1 = vars8;
  }

  return a1;
}

void jet_context_Metal::set_vertex_constant(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_vertex_constant();
  }

  v3 = *(this + 17);
  v4 = getMetalBuffer(a2);
  [v3 setVertexBuffer:? offset:? atIndex:?];
}

jet_constant *getMetalBuffer(id *a1)
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

uint64_t jet_context_Metal::set_vertex_constant(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    jet_context_Metal::set_vertex_constant();
  }

  if (!a5)
  {
    jet_context_Metal::set_vertex_constant();
  }

  if (a4 != 1)
  {
    jet_context_Metal::set_vertex_constant();
  }

  if ((a2 - 1) > 7)
  {
    v6 = 4;
  }

  else
  {
    v6 = dword_25562F188[a2 - 1];
  }

  v7 = *(a1 + 136);

  return [v7 setVertexBytes:a5 length:(v6 * a3) atIndex:a6];
}

void jet_context_Metal::set_vertex_texture(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_vertex_texture();
  }

  v3 = *(this + 17);
  v4 = getMetalTexture(a2);
  [v3 setVertexTexture:? atIndex:?];
}

void jet_context_Metal::set_vertex_sampler(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_vertex_sampler();
  }

  v3 = *(this + 17);
  v4 = getMetalSampler(a2);
  [v3 setVertexSamplerState:? atIndex:?];
}

jet_sampler *getMetalSampler(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

void jet_context_Metal::set_fragment_texture(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_fragment_texture();
  }

  v3 = *(this + 17);
  v4 = getMetalTexture(a2);
  [v3 setFragmentTexture:? atIndex:?];
}

void jet_context_Metal::set_fragment_sampler(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_fragment_sampler();
  }

  v3 = *(this + 17);
  v4 = getMetalSampler(a2);
  [v3 setFragmentSamplerState:? atIndex:?];
}

void jet_context_Metal::set_fragment_constant(jet_context_Metal *this, id *a2, int a3)
{
  if (a3 < 0)
  {
    jet_context_Metal::set_fragment_constant();
  }

  v3 = *(this + 17);
  v4 = getMetalBuffer(a2);
  [v3 setFragmentBuffer:? offset:? atIndex:?];
}

uint64_t jet_context_Metal::set_fragment_constant(uint64_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    jet_context_Metal::set_fragment_constant();
  }

  if (!a5)
  {
    jet_context_Metal::set_fragment_constant();
  }

  if (a4 != 1)
  {
    jet_context_Metal::set_fragment_constant();
  }

  if ((a2 - 1) > 7)
  {
    v6 = 4;
  }

  else
  {
    v6 = dword_25562F188[a2 - 1];
  }

  v7 = *(a1 + 136);

  return [v7 setFragmentBytes:a5 length:(v6 * a3) atIndex:a6];
}

uint64_t jet_context_Metal::draw(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a4)
  {
    if (a2 >= 5)
    {
      v4 = 3;
    }

    else
    {
      v4 = a2;
    }

    return [*(result + 136) drawPrimitives:v4 vertexStart:a3 vertexCount:a4];
  }

  return result;
}

void jet_context_Metal::draw_indexed(uint64_t a1, unsigned int a2, jet_buffer *a3, unsigned int a4, unsigned int a5)
{
  if (a5)
  {
    if ((*(a3 + 10) - 5) <= 0xFFFFFFFD)
    {
      jet_context_Metal::draw_indexed();
    }

    if (a2 >= 5)
    {
      v9 = 3;
    }

    else
    {
      v9 = a2;
    }

    v10 = getMetalBuffer(a3);
    [*(a1 + 136) drawIndexedPrimitives:v9 indexCount:a5 indexType:*(a3 + 10) == 4 indexBuffer:v10 indexBufferOffset:jet_buffer::get_element_size(a3) * a4];
  }
}

void jet_context_Metal::present(jet_context_Metal *this, id *a2, double a3)
{
  v10 = a2[3];
  if (!v10)
  {
    __assert_rtn("present", "jet_context_Metal.mm", 1438, "drawable");
  }

  v6 = *(this + 16);
  if (a3 <= 0.0)
  {
    [v6 presentDrawable:v10];
  }

  else
  {
    [v6 presentDrawable:v10 atTime:a3];
  }

  (*(*this + 176))(this);
  v7 = a2[3];
  a2[3] = 0;

  v8 = a2[1];
  a2[1] = 0;

  v9 = a2[2];
  a2[2] = 0;
}

uint64_t jet_context_Metal::commit@<X0>(jet_context_Metal *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  {
    v10 = *(this + 17);
    goto LABEL_7;
  }

  v8 = jet_context_Metal::getNativeCommandQueue(this);
  v9 = *(this + 15);
  *(this + 15) = v8;

  v10 = *(this + 17);
  if (v7[32] != v10)
  {
LABEL_7:
    [v10 endEncoding];
  }

  *a2 = 0;
  a2[1] = 0;
  if (*(this + 17))
  {
    (*(*this + 328))(v14, this);
    v11 = v14[1];
    *a2 = v14[0];
    a2[1] = v11;
    v12 = *(this + 17);
    *(this + 17) = 0;

    [*(this + 16) commit];
  }

  jet_context_Metal::ensureCommandQueue(this);
  return jet_context_Metal::ensureCommandBuffer(this, 1);
}

void sub_255627880(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id jet_context_Metal::getNativeCommandQueue(jet_context_Metal *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v3 = [*(this + 13) newCommandQueue];
    v4 = *(this + 14);
    *(this + 14) = v3;

    v5 = *(this + 14);
    v6 = jet_getClientLabel();
    [v5 setLabel:v6];

    v2 = *(this + 14);
  }

  return v2;
}

void sub_255627A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jet_context_Metal::get_max_texture_size(uint64_t a1, unsigned int a2)
{
  v3 = [*(a1 + 104) featureProfile];
  if (a2 > 2)
  {
    return 0;
  }

  v4 = vdupq_n_s64(v3);
  v5.i64[0] = 0x400000004000;
  v5.i64[1] = 0x400000004000;
  return vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v4, xmmword_25562EE50), vceqq_s64(v4, xmmword_25562EE40)), xmmword_25562EE80), vandq_s8(vuzp1q_s32(vceqq_s64(v4, xmmword_25562EE70), vceqq_s64(v4, xmmword_25562EE60)), v5))) + ((v3 == 12) << 15) + (((v3 & 0xFFFFFFFFFFFFFFFELL) == 10) << 14);
}

id jet_context_Metal::ensureCIContext(jet_context_Metal *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:v4 forKey:*MEMORY[0x277CBF948]];

    v5 = [MEMORY[0x277CBEB68] null];
    [v3 setObject:v5 forKey:*MEMORY[0x277CBF930]];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setValue:v6 forKey:*MEMORY[0x277CBF938]];

    v7 = [MEMORY[0x277CBF740] contextWithMTLDevice:*(this + 13) options:v3];
    v8 = *(this + 12);
    *(this + 12) = v7;

    v2 = *(this + 12);
  }

  return v2;
}

void jet_context_Metal::render_CIImage_to_texture(uint64_t a1, void *a2, id *a3, __n128 a4)
{
  v6 = a2;
  v7 = *(a1 + 136);
  if (v7)
  {
    (*(*a1 + 176))(&v30, a1);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  v8 = (*(*a1 + 336))(a1);
  v9 = a4.n128_u32[0];
  v10 = a4.n128_u32[1];
  v11 = a4.n128_u32[2];
  v12 = a4.n128_u32[3];
  v32.origin.x = a4.n128_u32[0];
  v32.origin.y = a4.n128_u32[1];
  v32.size.width = a4.n128_u32[2];
  v32.size.height = a4.n128_u32[3];
  if (CGRectIsEmpty(v32))
  {
    [v6 extent];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = getMetalTexture(a3);
  [v8 render:v6 toMTLTexture:v18 commandBuffer:*(a1 + 128) bounds:DeviceRGB colorSpace:{v9, v10, v11, v12}];

  CGColorSpaceRelease(DeviceRGB);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = **v19;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (!v21)
  {
    if (*(a1 + 144))
    {
      jet_context_Metal::ensureCommandBuffer(a1, 0);
      v22 = [*(a1 + 128) renderCommandEncoderWithDescriptor:*(a1 + 144)];
      v23 = *(a1 + 136);
      *(a1 + 136) = v22;

      [*(a1 + 136) setLabel:@"SpriteKit Render"];
      v24 = *(*(a1 + 16) + 16);
      if (v24)
      {
        v25 = (**v24)(v24);
        v26 = (*(*v24 + 8))(v24);
        (*(*a1 + 208))(a1, 0, 0, v25, v26);
        v27 = (**v24)(v24);
        v28 = (*(*v24 + 8))(v24);
        (*(*a1 + 224))(a1, 0, 0, v27, v28);
      }
    }
  }

LABEL_14:
  (*(*a1 + 328))(a1);
}

id jet_context_Metal::create_CIImage_from_texture(jet_context_Metal *this, id *a2)
{
  v2 = MEMORY[0x277CBF758];
  v3 = getMetalTexture(a2);
  v4 = [v2 imageWithMTLTexture:v3 options:0];

  return v4;
}

uint64_t jet_context_Metal::create_texture_from_CIImage(jet_context_Metal *this, CIImage *a2)
{
  v3 = a2;
  [(CIImage *)v3 extent];
  texture_2d = jet_context::create_texture_2d(this, v4, v5, 3, 0, 0, 0);
  (*(*this + 160))(&v8, this, v3, texture_2d, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return texture_2d;
}

uint64_t jet_buffer_Metal::jet_buffer_Metal(uint64_t a1, void *a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = a2;
  jet_buffer::jet_buffer(a1);
  *a1 = &unk_286782148;
  *(a1 + 96) = 0;
  if ((a3 - 1) > 7)
  {
    v12 = 4;
  }

  else
  {
    v12 = dword_25562F188[a3 - 1];
  }

  if (a6)
  {
    v13 = [v11 newBufferWithBytes:a6 length:(a5 * a4 * v12) options:0];
  }

  else
  {
    v13 = [v11 newBufferWithLength:(a5 * a4 * v12) options:0];
  }

  v14 = *(a1 + 96);
  *(a1 + 96) = v13;

  *(a1 + 40) = a3;
  *(a1 + 44) = a4;
  *(a1 + 48) = a5;

  return a1;
}

void sub_2556281F0(_Unwind_Exception *a1)
{
  jet_buffer::~jet_buffer(v2);

  _Unwind_Resume(a1);
}

void *jet_buffer_Metal::set_data(id *this, const void *a2, unsigned int a3, unsigned int a4)
{
  v5 = a3;
  if (!a3)
  {
    v5 = [this[12] length];
  }

  v8 = ([this[12] contents] + a4);

  return memcpy(v8, a2, v5);
}

void jet_buffer_Metal::resize(jet_buffer_Metal *this, int a2)
{
  v4 = *(this + 10) - 1;
  if (v4 > 7)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_25562F188[v4];
  }

  v6 = (v5 * a2 * *(this + 11));
  v7 = [*(this + 12) device];
  v8 = [v7 newBufferWithLength:v6 options:0];

  v9 = v8;
  v10 = [v8 contents];
  v11 = [*(this + 12) contents];
  v12 = [*(this + 12) length];
  if (v12 >= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v12;
  }

  memcpy(v10, v11, v13);
  v14 = *(this + 12);
  *(this + 12) = v9;

  *(this + 12) = a2;
}

void jet_buffer_Metal::~jet_buffer_Metal(jet_buffer_Metal *this)
{
  jet_buffer_Metal::~jet_buffer_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286782148;
  v2 = *(this + 12);
  *(this + 12) = 0;

  jet_buffer::~jet_buffer(this);
}

void *jet_buffer_Metal::copy_data(id *this, void *a2, unsigned int a3)
{
  v5 = [this[12] contents];

  return memcpy(a2, v5, a3);
}

uint64_t jet_buffer_Metal::set_value(uint64_t a1, double a2)
{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 8, 0);
}

uint64_t jet_buffer_Metal::set_value(uint64_t a1, __n128 a2)
{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 16, 0);
}

{
  v3 = a2;
  return (*(*a1 + 8))(a1, &v3, 16, 0);
}

void jet_buffer_pool_Metal::jet_buffer_pool_Metal(jet_buffer_pool *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  jet_buffer_pool::jet_buffer_pool(a1, a3, a4, a5);
  *a1 = &unk_2867821F0;
  *(a1 + 8) = v9;
  jet_buffer_pool::initialize_first_buffer(a1);
}

void sub_25562878C(_Unwind_Exception *a1)
{
  jet_buffer_pool::~jet_buffer_pool(v2);

  _Unwind_Resume(a1);
}

void jet_buffer_pool_Metal::~jet_buffer_pool_Metal(id *this)
{

  jet_buffer_pool::~jet_buffer_pool(this);
}

{

  jet_buffer_pool::~jet_buffer_pool(this);

  JUMPOUT(0x259C3ACA0);
}

void *jet_constant_Metal::set_data(id *this, const void *a2, unsigned int a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = [this[3] length];
  }

  v6 = [this[3] contents];

  return memcpy(v6, a2, v3);
}

void *jet_constant_Metal::copy_data(id *this, void *a2, unsigned int a3)
{
  v5 = [this[3] contents];

  return memcpy(a2, v5, a3);
}

uint64_t jet_constant_Metal::set_value(uint64_t a1, double a2)
{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 8);
}

uint64_t jet_constant_Metal::set_value(uint64_t a1, __n128 a2)
{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 16);
}

{
  v3 = a2;
  return (*(*a1 + 32))(a1, &v3, 16);
}

void jet_constant_Metal::~jet_constant_Metal(jet_constant_Metal *this)
{
  jet_constant_Metal::~jet_constant_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286782238;
  v2 = *(this + 3);
  *(this + 3) = 0;

  jet_constant::~jet_constant(this);
}

void jet_framebuffer_Metal::jet_framebuffer_Metal(jet_framebuffer_Metal *this)
{
  *(this + 54) = 1065353216;
  *(this + 220) = 0x100000001;
  *(this + 29) = 0;
  *(this + 30) = 0x100000000;
  *(this + 62) = 1;
  *(this + 2) = 0;
  *(this + 2) = xmmword_25562EA80;
  *(this + 6) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_25562EA80;
  *(this + 24) = 1;
  *(this + 100) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  *(this + 8) = xmmword_25562EA80;
  *(this + 36) = 1;
  *(this + 156) = 0;
  *(this + 148) = 0;
  *(this + 43) = 0;
  *(this + 164) = 0;
  *(this + 11) = xmmword_25562EA80;
  *(this + 24) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *this = &unk_2867822F8;
  *(this + 32) = 0;
  *(this + 33) = 0;
}

void jet_framebuffer_Metal::~jet_framebuffer_Metal(id *this)
{
}

{

  JUMPOUT(0x259C3ACA0);
}

uint64_t jet_texture_Metal::set_data(jet_texture_Metal *this, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = (**this)(this);
  v11 = (*(*this + 8))(this);
  return (*(*this + 64))(this, a2, a3, a4, 0, 0, 0, v10, v11 | 0x100000000, a5);
}

uint64_t jet_texture_Metal::replace_region(jet_texture_Metal *this, const void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  result = (*(*this + 88))(this);
  if (result)
  {
    jet_texture_Metal::replace_region();
  }

  if (a2)
  {
    v21 = a11;
    v22 = a12;
    if (!a11)
    {
      bytes_per_element = jet_texture::get_bytes_per_element(this);
      v21 = (**this)(this) * bytes_per_element;
    }

    if (!a12)
    {
      v22 = (*(*this + 8))(this) * v21;
    }

    v24 = *(this + 1);
    v25[0] = a5;
    v25[1] = a6;
    v25[2] = a7;
    v25[3] = a8;
    v25[4] = a9;
    v25[5] = a10;
    return [v24 replaceRegion:v25 mipmapLevel:a3 slice:a4 withBytes:a2 bytesPerRow:v21 bytesPerImage:v22];
  }

  return result;
}

uint64_t jet_texture_Metal::copy_data(jet_texture_Metal *this, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = (**this)(this);
  v9 = (*(*this + 8))(this);
  v10 = (*(*this + 16))(this);
  v11 = *(this + 1);
  bytes_per_element = jet_texture::get_bytes_per_element(this);
  v13 = (**this)(this) * bytes_per_element;
  memset(v15, 0, 24);
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  return [v11 getBytes:a2 bytesPerRow:v13 bytesPerImage:jet_texture::get_bytes_per_image(this) fromRegion:v15 mipmapLevel:a3 slice:a4];
}

uint64_t jet_texture_Metal::generate_mip_map(jet_texture_Metal *this)
{
  if (!*(this + 1) || ((*(*this + 88))(this) & 1) != 0)
  {
    return 0;
  }

  v3 = [*(this + 1) device];
  v4 = [v3 newCommandQueue];

  v5 = jet_getClientLabel();
  [v4 setLabel:v5];

  v6 = [v4 commandBuffer];
  v7 = [v6 blitCommandEncoder];
  [v7 generateMipmapsForTexture:*(this + 1)];
  [v7 endEncoding];
  [v6 commit];

  return 1;
}

uint64_t jet_texture_Metal::is_color_attachment_compatible(jet_texture_Metal *this)
{
  if (*(this + 40))
  {
    return 0;
  }

  else
  {
    return jet_texture::is_color_attachment_compatible(this);
  }
}

void jet_texture_Metal::~jet_texture_Metal(jet_texture_Metal *this)
{
  jet_texture_Metal::~jet_texture_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  v2 = *(this + 1);
  *this = &unk_286782320;
  *(this + 1) = 0;

  v3 = *(this + 2);
  *(this + 2) = 0;

  v4 = *(this + 3);
  *(this + 3) = 0;

  jet_texture::~jet_texture(this);
}

uint64_t jet_texture::get_bytes_per_element(jet_texture *this)
{
  v2 = (*(*this + 32))(this) - 7;
  if (v2 > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_25562F1A8[v2];
  }

  v4 = (*(*this + 32))(this) - 1;
  if (v4 > 0xC)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_25562F1C4[v4];
  }

  return (v5 * v3);
}

uint64_t jet_texture::get_bytes_per_image(jet_texture *this)
{
  bytes_per_element = jet_texture::get_bytes_per_element(this);
  v3 = (**this)(this) * bytes_per_element;
  return v3 * (*(*this + 8))(this);
}

void jet_sampler_Metal::~jet_sampler_Metal(id *this)
{

  jet_sampler::~jet_sampler(this);
}

{

  jet_sampler::~jet_sampler(this);

  JUMPOUT(0x259C3ACA0);
}

void jet_function_Metal::~jet_function_Metal(jet_function_Metal *this)
{
  v2 = *(this + 1);
  *this = &unk_2867823F0;
  *(this + 1) = 0;
}

{
  v2 = *(this + 1);
  *this = &unk_2867823F0;
  *(this + 1) = 0;

  JUMPOUT(0x259C3ACA0);
}

void jet_program_Metal::~jet_program_Metal(jet_program_Metal *this)
{
  jet_program_Metal::~jet_program_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286782428;
  v2 = *(this + 4);
  *(this + 4) = 0;

  v3 = *(this + 5);
  *(this + 5) = 0;

  jet_program::~jet_program(this);
}

void jet_render_mode_Metal::~jet_render_mode_Metal(jet_render_mode_Metal *this)
{
  jet_render_mode_Metal::~jet_render_mode_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  *this = &unk_286782460;
  v2 = *(this + 5);
  *(this + 5) = 0;

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 56);

  jet_render_mode::~jet_render_mode(this);
}

uint64_t jet_render_mode_Metal::get_vertex_buffer_index(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 56), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t jet_render_mode_Metal::get_vertex_texture_index(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 56), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t jet_render_mode_Metal::get_vertex_sampler_index(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 8);
  if (v11 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "_sampler");
  v7 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 56), __p);
  if (v7)
  {
    v8 = *(v7 + 10);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_255629A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jet_render_mode_Metal::get_fragment_texture_index(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 96), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t jet_render_mode_Metal::get_fragment_sampler_index(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 8);
  if (v11 < 0)
  {
    v5 = __p[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "_sampler");
  v7 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 96), __p);
  if (v7)
  {
    v8 = *(v7 + 10);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_255629BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t jet_render_mode_Metal::get_fragment_buffer_index(uint64_t a1, const void **a2)
{
  v2 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>((a1 + 96), a2);
  if (v2)
  {
    return *(v2 + 10);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void jet_render_mode_Metal::jet_render_mode_Metal(jet_render_mode_Metal *this, const jet_render_mode_Metal *a2)
{
  *this = &unk_2867815E8;
  v4 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v4;
  *this = &unk_286782460;
  *(this + 5) = *(a2 + 5);
  *(this + 6) = *(a2 + 6);
  std::unordered_map<std::string,int>::unordered_map(this + 56, a2 + 56);
  std::unordered_map<std::string,int>::unordered_map(this + 96, a2 + 96);
}

void sub_25562A4D0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table((v1 + 7));

  jet_render_mode::~jet_render_mode(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::pair<std::string const,int> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25562A7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25562A880(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void jet_stencil_mode_Metal::~jet_stencil_mode_Metal(jet_stencil_mode_Metal *this)
{
  jet_stencil_mode_Metal::~jet_stencil_mode_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  v2 = *(this + 1);
  *this = &unk_2867824E0;
  *(this + 1) = 0;

  jet_stencil_mode::~jet_stencil_mode(this);
}

void jet_depth_stencil_mode_Metal::~jet_depth_stencil_mode_Metal(jet_depth_stencil_mode_Metal *this)
{
  jet_depth_stencil_mode_Metal::~jet_depth_stencil_mode_Metal(this);

  JUMPOUT(0x259C3ACA0);
}

{
  v2 = *(this + 1);
  *this = &unk_286782518;
  *(this + 1) = 0;

  jet_depth_stencil_mode::~jet_depth_stencil_mode(this);
}

uint64_t jet_fence_Metal::is_finished(jet_fence_Metal *this)
{
  if ([*(this + 2) status] == 4)
  {
    v2 = 1;
    *(this + 8) = 1;
  }

  else
  {
    v2 = *(this + 8);
  }

  return v2 & 1;
}

uint64_t jet_fence_Metal::wait(id *this)
{
  result = *(this + 8);
  if ((result & 1) == 0)
  {
    [this[2] waitUntilCompleted];
    result = 1;
    *(this + 8) = 1;
  }

  return result;
}

void jet_fence_Metal::~jet_fence_Metal(id *this)
{

  jet_fence::~jet_fence(this);
}

{

  jet_fence::~jet_fence(this);

  JUMPOUT(0x259C3ACA0);
}

void sub_25562AE30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_fence_OpenGL>::shared_ptr[abi:ne200100]<jet_fence_OpenGL,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_fence_Metal *,std::shared_ptr<jet_fence_Metal>::__shared_ptr_default_delete<jet_fence_Metal,jet_fence_Metal>,std::allocator<jet_fence_Metal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3ACA0);
}

uint64_t std::__shared_ptr_pointer<jet_fence_Metal *,std::shared_ptr<jet_fence_Metal>::__shared_ptr_default_delete<jet_fence_Metal,jet_fence_Metal>,std::allocator<jet_fence_Metal>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_fence_Metal *,std::shared_ptr<jet_fence_Metal>::__shared_ptr_default_delete<jet_fence_Metal,jet_fence_Metal>,std::allocator<jet_fence_Metal>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void jet_stencil_mode::jet_stencil_mode(jet_stencil_mode *this)
{
  *this = &unk_286782610;
}

{
  *this = &unk_286782610;
}

void jet_depth_stencil_mode::jet_depth_stencil_mode(jet_depth_stencil_mode *this)
{
  *this = &unk_286782630;
}

{
  *this = &unk_286782630;
}

uint64_t jet_isMetalSupported(void)
{
  if (jet_isMetalSupported(void)::onceToken != -1)
  {
    jet_isMetalSupported();
  }

  return jet_isMetalSupported(void)::_isMetalSupported;
}

void ___Z20jet_isMetalSupportedv_block_invoke()
{
  v0 = jet_choose_Metal_Device();
  if (v0)
  {
    jet_isMetalSupported(void)::_isMetalSupported = 1;
  }
}

void jet_createSharedContext(unsigned int (***a1)(jet_context *))
{
  if (a1)
  {
    v2 = (*a1)[17](a1);
    v3 = *a1;
    if (v2 == 1)
    {
      v4 = *v3;
      operator new();
    }

    if (!v3[17](a1))
    {
      v5 = **a1;
      (*(v6 + 360))();
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    jet_createSharedContext();
  }

  jet_createContext();
}

void sub_25562B248(_Unwind_Exception *a1)
{
  v4 = v3;

  MEMORY[0x259C3ACA0](v1, 0x10A1C40A090A19DLL);
  _Unwind_Resume(a1);
}

void jet_createContext(void)
{
  if (jet_isMetalSupported(void)::onceToken != -1)
  {
    jet_isMetalSupported();
  }

  if (jet_isMetalSupported(void)::_isMetalSupported == 1)
  {
    operator new();
  }

  operator new();
}

void jet_ensureClientLabel(void)
{
  if (jet_ensureClientLabel(void)::onceToken != -1)
  {
    jet_ensureClientLabel();
  }
}

void ___Z21jet_ensureClientLabelv_block_invoke()
{
  v0 = _clientLabel;
  _clientLabel = @"com.apple.Jet";
}

void jet_setClientLabel(NSString *a1)
{
  v1 = a1;
  if (jet_ensureClientLabel(void)::onceToken != -1)
  {
    jet_ensureClientLabel();
  }

  v2 = _clientLabel;
  _clientLabel = v1;
}

id jet_getClientLabel(void)
{
  if (jet_ensureClientLabel(void)::onceToken != -1)
  {
    jet_ensureClientLabel();
  }

  v1 = _clientLabel;

  return v1;
}

id jet_get_debug_options(void)
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 dictionaryForKey:@"JetDefaults"];
  v2 = [v1 mutableCopy];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = v3;

  return v4;
}

uint64_t jet_get_info_plist_flag_is_set(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];

  v4 = [v3 objectForKey:v1];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL jet_util_isPOT(unsigned int a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    v2 = vceqz_s32(vand_s8(__PAIR64__(a1, a2), vadd_s32(__PAIR64__(a1, a2), -1)));
    if (v2.i8[4] & 1) != 0 && a2 && (v2.i8[0])
    {
      return 1;
    }
  }

  return result;
}

void jet_log(NSString *a1, ...)
{
  va_start(va, a1);
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [@"Jet: " stringByAppendingString:v1];

    NSLogv(v3, va);
  }
}

void jet_assert(char a1, NSString *a2)
{
  v3 = a2;
  if (v3 && (a1 & 1) == 0)
  {
    jet_log(&stru_286782DB0.isa, v3);
  }

  if ((a1 & 1) == 0)
  {
    __assert_rtn("jet_assert", "jet_utils.mm", 75, "value");
  }
}

BOOL jet_debug_option_exists(NSString *a1)
{
  v1 = a1;
  v2 = jet_get_debug_options();
  v3 = [v2 objectForKey:v1];
  v4 = v3 != 0;

  return v4;
}

uint64_t jet_debug_option_get_BOOL(NSString *a1)
{
  v1 = a1;
  v2 = jet_get_debug_options();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t jet_debug_option_get_int(NSString *a1)
{
  v1 = a1;
  v2 = jet_get_debug_options();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id jet_debug_option_get_string(NSString *a1)
{
  v1 = a1;
  v2 = jet_get_debug_options();
  v3 = [v2 objectForKey:v1];

  return v3;
}

id jet_choose_Metal_Device(void)
{
  v0 = MTLCreateSystemDefaultDevice();

  return v0;
}

uint64_t jet_buffer_pool::jet_buffer_pool(uint64_t result, int a2, int a3, int a4)
{
  *result = &unk_2867826B0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 24) = result + 24;
  *(result + 32) = result + 24;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 3;
  return result;
}

uint64_t jet_buffer_pool::resize(uint64_t this, uint64_t a2)
{
  *(this + 16) = a2;
  v2 = *(this + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    this = jet_buffer::is_finished(*(v2 + 16));
    if (this)
    {
      v5 = *(*v3 + 32);

      return v5(v3, a2);
    }
  }

  return this;
}

uint64_t jet_buffer_pool::next_buffer(jet_buffer_pool *this, int a2)
{
  v4 = *(*(this + 6) + 8);
  *(this + 6) = v4;
  if (v4 == (this + 24))
  {
    v4 = *(this + 4);
    *(this + 6) = v4;
  }

  v5 = v4[2];
  if ((jet_buffer::is_finished(v5) & 1) == 0)
  {
    if (*(this + 5) < *(this + 14))
    {
      (*(*this + 24))(this);
      v6 = *(this + 6);
      operator new();
    }

    if (a2)
    {
      jet_buffer::wait(v5);
    }
  }

  if (*(v5 + 48) != *(this + 4))
  {
    (*(*v5 + 32))(v5);
  }

  return v5;
}

uint64_t jet_buffer_pool::set_max_buffer_count(uint64_t this, unsigned int a2)
{
  if (*(this + 56) > a2)
  {
    jet_buffer_pool::set_max_buffer_count();
  }

  *(this + 56) = a2;
  return this;
}

void jet_buffer_pool::~jet_buffer_pool(jet_buffer_pool *this)
{
  *this = &unk_2867826B0;
  v1 = (this + 24);
  for (i = *(this + 4); i != v1; i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      (*(*v3 + 48))(v3);
    }
  }

  std::__list_imp<jet_buffer *>::clear(v1);
  std::__list_imp<jet_buffer *>::clear(v1);
}

void *std::__list_imp<jet_buffer *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void jet_program::jet_program(jet_program *this)
{
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = &unk_2867826F0;
  *(this + 1) = this + 16;
}

{
  *(this + 3) = 0;
  *(this + 2) = 0;
  *this = &unk_2867826F0;
  *(this + 1) = this + 16;
}

void jet_program::~jet_program(jet_program *this)
{
  *this = &unk_2867826F0;
  v2 = this + 8;
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v2, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(v2, 0);
}

{
  jet_program::~jet_program(this);

  JUMPOUT(0x259C3ACA0);
}

BOOL jet_texture::is_framebuffer_only(jet_texture *this)
{
  v1 = (*(*this + 32))(this);

  return jet_texture_format_is_framebuffer_only(v1);
}

uint64_t floatToHalfFloat(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = LODWORD(a1) & 0x7F800000;
  v3 = LODWORD(a1) & 0x7FFFFF;
  if ((LODWORD(a1) >> 23) < 0x8Fu)
  {
    v4 = v1 | ((v2 + v3 + 0x8000000) >> 13);
    v1 |= v3 >> (((939524096 - v2) >> 23) + 14);
    if (v2 > 0x38000000)
    {
      LOWORD(v1) = v4;
    }
  }

  else if (v3 && v2 == 2139095040)
  {
    LOWORD(v1) = HIWORD(a1) | 0x7FFF;
  }

  else
  {
    LOWORD(v1) = v1 | 0x7C00;
  }

  return v1;
}

void jet_convert_pixel_data_rgba_fp32_to_rgb32_101010_a8(char *a1, int *a2, _BYTE *a3, int a4, int a5)
{
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            v7 = a5 * a4;
            if (a5 * a4)
            {
              v8 = (a1 + 12);
              do
              {
                v9 = *(v8 - 1);
                v10 = v9;
                if (v9 < 0.0)
                {
                  v10 = -v9;
                }

                if (v10 <= 0.003131)
                {
                  v11 = v10 * 12.92;
                }

                else
                {
                  v11 = pow(v10, 0.416666667) * 1.055 + -0.055;
                }

                v12 = -v11;
                if (v9 >= 0.0)
                {
                  v12 = v11;
                }

                v13 = -0.752941;
                if (v12 >= -0.752941)
                {
                  v13 = v12;
                  if (v12 > 1.252941)
                  {
                    v13 = 1.252941;
                  }
                }

                *v5++ = (llround(v13 * 510.0) + 384) & 0x3FF;
                v14 = *v8;
                v8 += 4;
                *v6++ = (v14 * 255.0);
                --v7;
              }

              while (v7);
            }
          }
        }
      }
    }
  }
}

uint64_t jet_convert_pixel_data_rgba_fp32_to_rgba_fp16(uint64_t result, _WORD *a2, int a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v5 = a4 * a3;
          if (a4 * a3)
          {
            v6 = result;
            do
            {
              v7 = -0.75294;
              if (*v6 >= -0.75294)
              {
                v7 = *v6;
                if (*v6 > 1.2529)
                {
                  v7 = 1.2529;
                }
              }

              *v4 = floatToHalfFloat(v7);
              v8 = *(v6 + 4);
              v9 = -0.75294;
              if (v8 >= -0.75294)
              {
                v9 = *(v6 + 4);
                if (v8 > 1.2529)
                {
                  v9 = 1.2529;
                }
              }

              v4[1] = floatToHalfFloat(v9);
              v10 = *(v6 + 8);
              v11 = -0.75294;
              if (v10 >= -0.75294)
              {
                v11 = *(v6 + 8);
                if (v10 > 1.2529)
                {
                  v11 = 1.2529;
                }
              }

              v4[2] = floatToHalfFloat(v11);
              v12 = *(v6 + 12);
              v13 = -0.75294;
              if (v12 >= -0.75294)
              {
                v13 = *(v6 + 12);
                if (v12 > 1.2529)
                {
                  v13 = 1.2529;
                }
              }

              result = floatToHalfFloat(v13);
              v4[3] = result;
              v6 += 16;
              v4 += 4;
              --v5;
            }

            while (v5);
          }
        }
      }
    }
  }

  return result;
}

float *jet_convert_pixel_data_rgba_fp32_to_argb64_xr10_srgb(float *result, unint64_t *a2, int a3, int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          for (i = a4 * a3; i; --i)
          {
            v5 = *result;
            v6 = -0.752941;
            if (v5 >= -0.752941)
            {
              v6 = *result;
              if (v5 > 1.252941)
              {
                v6 = 1.252941;
              }
            }

            v7 = result[1];
            v8 = -0.752941;
            if (v7 >= -0.752941)
            {
              v8 = result[1];
              if (v7 > 1.252941)
              {
                v8 = 1.252941;
              }
            }

            v9 = result[2];
            v10 = -0.752941;
            if (v9 >= -0.752941)
            {
              v10 = result[2];
              if (v9 > 1.252941)
              {
                v10 = 1.252941;
              }
            }

            v11 = result[3];
            v12 = -0.752941;
            if (v11 >= -0.752941)
            {
              v12 = result[3];
              if (v11 > 1.252941)
              {
                v12 = 1.252941;
              }
            }

            *a2++ = ((llround(v10 * 510.0) << 6) + 24576) & 0xFFC0 | (((llround(v6 * 510.0) + 384) & 0x3FF) << 38) | ((llround(v8 * 510.0) << 22) + 1610612736) | ((llround(v12 * 510.0) + 384) << 54);
            result += 4;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *jet_convert_pixel_data_rgba_5551_to_rgba_8888(unsigned __int16 *result, char *a2, int a3, int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          for (i = a4 * a3; i; --i)
          {
            *a2 = (2156535 * (*result >> 11)) >> 18;
            a2[1] = (2156535 * ((*result >> 6) & 0x1Fu)) >> 18;
            a2[2] = (2156535 * ((*result >> 1) & 0x1Fu)) >> 18;
            v5 = *result++;
            a2[3] = v5 << 31 >> 31;
            a2 += 4;
          }
        }
      }
    }
  }

  return result;
}

char *jet_convert_pixel_data_rgba_4444_to_rgba_8888(char *result, char *a2, int a3, int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          for (i = a4 * a3; i; --i)
          {
            *a2 = (*result >> 12) | (16 * (*result >> 12));
            a2[1] = result[1] & 0xF | (16 * result[1]);
            a2[2] = (*result >> 4) | (16 * (*result >> 4));
            v5 = *result;
            result += 2;
            a2[3] = v5 & 0xF | (16 * v5);
            a2 += 4;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *jet_convert_pixel_data_rgb_565_to_rgba_8888(unsigned __int16 *result, char *a2, int a3, int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          for (i = a4 * a3; i; --i)
          {
            *a2 = (2156535 * (*result >> 11)) >> 18;
            a2[1] = (4244475 * ((*result >> 5) & 0x3Fu)) >> 20;
            v5 = *result++;
            a2[2] = (2156535 * (v5 & 0x1Fu)) >> 18;
            a2[3] = -1;
            a2 += 4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t jet_convert_pixel_data_bgra_8888_to_rgba_8888(uint64_t result, char *a2, int a3, int a4)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v4 = a4 * a3;
          if (a4 * a3)
          {
            v5 = (result + 3);
            do
            {
              *a2 = *(v5 - 1);
              a2[1] = *(v5 - 2);
              a2[2] = *(v5 - 3);
              v6 = *v5;
              v5 += 4;
              a2[3] = v6;
              a2 += 4;
              --v4;
            }

            while (v4);
          }
        }
      }
    }
  }

  return result;
}