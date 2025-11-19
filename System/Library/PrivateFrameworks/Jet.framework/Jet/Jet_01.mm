void jet_buffer::jet_buffer(jet_buffer *this)
{
  *this = &unk_286782800;
  *(this + 8) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 22) = 1065353216;
}

uint64_t jet_buffer::is_finished(jet_buffer *this)
{
  if (*(this + 8))
  {
    return 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    result = (**v3)(v3);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 4);
    *(this + 3) = 0;
    *(this + 4) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return 1;
}

uint64_t jet_buffer::wait(dispatch_semaphore_t *this)
{
  if (jet_buffer::is_finished(this))
  {
    return 1;
  }

  if (*(this + 8) == 1)
  {
    do
    {
        ;
      }

      v3 = dispatch_semaphore_create(0);
      v4 = this[2];
      this[2] = v3;

      dispatch_semaphore_wait(this[2], 0xFFFFFFFFFFFFFFFFLL);
    }

    while ((this[1] & 1) != 0);
  }

  result = jet_buffer::is_finished(this);
  v5 = this[3];
  if (v5)
  {
    result = (*(v5->isa + 1))(this[3]);
    if (result)
    {
      v6 = this[4];
      this[3] = 0;
      this[4] = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      return 1;
    }
  }

  return result;
}

void jet_buffer::~jet_buffer(dispatch_semaphore_t *this)
{
  *this = &unk_286782800;
  if (this[2])
  {
      ;
    }
  }

  for (i = this[9]; i; i = *i)
  {
    v3 = i[2];
    v5 = this;
    std::__hash_table<std::unordered_set<jet_buffer *> *,std::hash<std::unordered_set<jet_buffer *> *>,std::equal_to<std::unordered_set<jet_buffer *> *>,std::allocator<std::unordered_set<jet_buffer *> *>>::__erase_unique<std::unordered_set<jet_buffer *> *>(v3, &v5);
  }

  std::__hash_table<jet_buffer *,std::hash<jet_buffer *>,std::equal_to<jet_buffer *>,std::allocator<jet_buffer *>>::~__hash_table((this + 7));
  v4 = this[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void xglProgram::xglProgram(xglProgram *this, GLchar *a2, GLchar *a3, EAGLContext *a4)
{
  v7 = a4;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 1) = v7;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 8) = 0;
  v8 = v7;
  if (!v7)
  {
    v9 = [MEMORY[0x277CD9388] currentContext];
    v10 = *(this + 1);
    *(this + 1) = v9;

    v8 = *(this + 1);
  }

  glContextUse::glContextUse(v16, v8);
  *shader = 0;
  *(this + 4) = glCreateProgram();
  if (!xglCompileShader(&shader[1], 35633, a2, 0))
  {
    v13 = "xglCompileShader(&vertexShaderId, GL_VERTEX_SHADER, vertexShaderSource)";
    v14 = 34;
    goto LABEL_11;
  }

  if (!xglCompileShader(shader, 35632, a3, 0))
  {
    v13 = "xglCompileShader(&fragmentShaderId, GL_FRAGMENT_SHADER, fragmentShaderSource)";
    v14 = 35;
LABEL_11:
    __assert_rtn("xglProgram", "xglProgram.mm", v14, v13);
  }

  v11 = shader[1];
  if (shader[1] && shader[0])
  {
    Program = glCreateProgram();
    *(this + 4) = Program;
    glAttachShader(Program, shader[1]);
    glAttachShader(*(this + 4), shader[0]);
    xglLinkProgram(*(this + 4));
    glDetachShader(*(this + 4), shader[1]);
    glDetachShader(*(this + 4), shader[0]);
    v11 = shader[1];
  }

  glDeleteShader(v11);
  glDeleteShader(shader[0]);
  glContextUse::~glContextUse(v16);
}

void sub_25562CABC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v3, *(v1 + 56));
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v4, *(v1 + 32));

  _Unwind_Resume(a1);
}

void xglProgram::xglProgram(xglProgram *this, GLuint a2, GLuint a3, EAGLContext *a4)
{
  v7 = a4;
  *this = 0;
  v8 = v7;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 1) = v8;
  *(this + 4) = 0;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 8) = 0;
  v9 = v8;
  if (!v8)
  {
    v10 = [MEMORY[0x277CD9388] currentContext];
    v11 = *(this + 1);
    *(this + 1) = v10;

    v9 = *(this + 1);
  }

  glContextUse::glContextUse(v13, v9);
  if (a2 && a3)
  {
    Program = glCreateProgram();
    *(this + 4) = Program;
    glAttachShader(Program, a2);
    glAttachShader(*(this + 4), a3);
    xglLinkProgram(*(this + 4));
    glDetachShader(*(this + 4), a2);
    glDetachShader(*(this + 4), a3);
  }

  glContextUse::~glContextUse(v13);
}

void sub_25562CC08(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v3, *(v1 + 56));
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v4, *(v1 + 32));

  _Unwind_Resume(a1);
}

void xglProgram::~xglProgram(xglProgram *this)
{
  glContextUse::glContextUse(v2, *(this + 1));
  glDeleteProgram(*(this + 4));
  *(this + 4) = 0;
  glContextUse::~glContextUse(v2);
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this + 48, *(this + 7));
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this + 24, *(this + 4));
}

uint64_t xglProgram::getAttributeIndex(xglProgram *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(this + 48, __p);
  if ((this + 56) == v4)
  {
    AttribLocation = glGetAttribLocation(*(this + 4), a2);
  }

  else
  {
    AttribLocation = v4[14];
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return AttribLocation;
}

void sub_25562CD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xglProgram::getUniformLocation(xglProgram *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v9, a2);
  v4 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(this + 24, v9);
  if ((this + 32) == v4)
  {
    UniformLocation = glGetUniformLocation(*(this + 4), a2);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v11 = __p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 24, __p) + 56) = UniformLocation;
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    UniformLocation = v4[14];
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return UniformLocation;
}

void sub_25562CE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void xglProgram::setUniformInt(xglProgram *this, char *a2, GLint a3)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform1i(UniformLocation, a3);
}

void xglProgram::setUniformInt(xglProgram *this, char *a2, GLint a3, GLint a4)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform2i(UniformLocation, a3, a4);
}

void xglProgram::setUniformInt(xglProgram *this, char *a2, GLint a3, GLint a4, GLint a5)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform3i(UniformLocation, a3, a4, a5);
}

void xglProgram::setUniformInt(xglProgram *this, char *a2, GLint a3, GLint a4, GLint a5, GLint a6)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform4i(UniformLocation, a3, a4, a5, a6);
}

void xglProgram::setUniformInt(xglProgram *this, char *a2, int a3, const int *a4, GLsizei a5)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);
  if (a3 > 2)
  {
    if (a3 == 3)
    {

      glUniform3iv(UniformLocation, a5, a4);
    }

    else if (a3 == 4)
    {

      glUniform4iv(UniformLocation, a5, a4);
    }
  }

  else if (a3 == 1)
  {

    glUniform1iv(UniformLocation, a5, a4);
  }

  else if (a3 == 2)
  {

    glUniform2iv(UniformLocation, a5, a4);
  }
}

void xglProgram::setUniformFloat(xglProgram *this, char *a2, GLfloat a3)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform1f(UniformLocation, a3);
}

void xglProgram::setUniformFloat(xglProgram *this, char *a2, GLfloat a3, GLfloat a4)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform2f(UniformLocation, a3, a4);
}

void xglProgram::setUniformFloat(xglProgram *this, char *a2, GLfloat a3, GLfloat a4, GLfloat a5)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform3f(UniformLocation, a3, a4, a5);
}

void xglProgram::setUniformFloat(xglProgram *this, char *a2, GLfloat a3, GLfloat a4, GLfloat a5, GLfloat a6)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);

  glUniform4f(UniformLocation, a3, a4, a5, a6);
}

void xglProgram::setUniformFloat(xglProgram *this, char *a2, int a3, const float *a4, GLsizei a5)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);
  if (a3 > 2)
  {
    if (a3 == 3)
    {

      glUniform3fv(UniformLocation, a5, a4);
    }

    else if (a3 == 4)
    {

      glUniform4fv(UniformLocation, a5, a4);
    }
  }

  else if (a3 == 1)
  {

    glUniform1fv(UniformLocation, a5, a4);
  }

  else if (a3 == 2)
  {

    glUniform2fv(UniformLocation, a5, a4);
  }
}

void xglProgram::setUniformMatrix(xglProgram *this, char *a2, int a3, const float *a4, GLsizei a5)
{
  UniformLocation = xglProgram::getUniformLocation(this, a2);
  switch(a3)
  {
    case 4:

      glUniformMatrix4fv(UniformLocation, a5, 0, a4);
      break;
    case 3:

      glUniformMatrix3fv(UniformLocation, a5, 0, a4);
      break;
    case 2:

      glUniformMatrix2fv(UniformLocation, a5, 0, a4);
      break;
  }
}

void std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void jet_sampler::jet_sampler(jet_sampler *this)
{
  *this = &unk_286782898;
}

{
  *this = &unk_286782898;
}

void xglAssertNoError()
{
  jet_log(&cfstr_GlInvalidFrame.isa);

  xglPrintFramebufferStatus();
}

{
  __assert_rtn("xglAssertNoError", "xgl_utils.mm", 479, "code == GL_NO_ERROR");
}

void jet_context_OpenGL::create_texture()
{
  __assert_rtn("create_texture", "jet_context_OpenGL.mm", 380, "depth == 1");
}

{
  __assert_rtn("create_texture", "jet_context_OpenGL.mm", 381, "array_length == 1");
}

void jet_context_OpenGL::begin_render_pass()
{
  __assert_rtn("begin_render_pass", "jet_context_OpenGL.mm", 822, "colorTexture->is_color_attachment_compatible()");
}

{
  __assert_rtn("begin_render_pass", "jet_context_OpenGL.mm", 826, "depthTexture->is_depth_attachment_compatible()");
}

{
  __assert_rtn("begin_render_pass", "jet_context_OpenGL.mm", 830, "stencilTexture->is_stencil_attachment_compatible()");
}

void jet_context_OpenGL::set_vertex_constant()
{
  __assert_rtn("set_vertex_constant", "jet_context_OpenGL.mm", 1287, "index >= 0");
}

{
  __assert_rtn("set_vertex_constant", "jet_context_OpenGL.mm", 1384, "data");
}

{
  __assert_rtn("set_vertex_constant", "jet_context_OpenGL.mm", 1383, "index >= 0");
}

void jet_context_Metal::create_texture()
{
  __assert_rtn("create_texture", "jet_context_Metal.mm", 573, "depth == 1");
}

{
  __assert_rtn("create_texture", "jet_context_Metal.mm", 574, "array_length == 1");
}

{
  __assert_rtn("create_texture", "jet_context_Metal.mm", 579, "mip_mapped == false");
}

{
  __assert_rtn("create_texture", "jet_context_Metal.mm", 580, "data == nullptr");
}

{
  __assert_rtn("create_texture", "jet_context_Metal.mm", 582, "type == jet_texture_type_2D || type == jet_texture_type_Rect");
}

void jet_context_Metal::create_program()
{
  __assert_rtn("create_program", "jet_context_Metal.mm", 853, "getMetalFunction(fragmentFunction)");
}

{
  __assert_rtn("create_program", "jet_context_Metal.mm", 852, "getMetalFunction(vertexFunction)");
}

{
  __assert_rtn("create_program", "jet_context_Metal.mm", 850, "fragmentFunction");
}

{
  __assert_rtn("create_program", "jet_context_Metal.mm", 849, "vertexFunction");
}

void jet_context_Metal::begin_render_pass()
{
  __assert_rtn("begin_render_pass", "jet_context_Metal.mm", 1116, "colorTexture->is_color_attachment_compatible()");
}

{
  __assert_rtn("begin_render_pass", "jet_context_Metal.mm", 1120, "depthTexture->is_depth_attachment_compatible()");
}

{
  __assert_rtn("begin_render_pass", "jet_context_Metal.mm", 1124, "stencilTexture->is_stencil_attachment_compatible()");
}

void jet_context_Metal::set_vertex_constant()
{
  __assert_rtn("set_vertex_constant", "jet_context_Metal.mm", 1343, "index >= 0");
}

{
  __assert_rtn("set_vertex_constant", "jet_context_Metal.mm", 1354, "elementCount == 1");
}

{
  __assert_rtn("set_vertex_constant", "jet_context_Metal.mm", 1353, "data");
}

{
  __assert_rtn("set_vertex_constant", "jet_context_Metal.mm", 1352, "index >= 0");
}

void jet_context_Metal::set_fragment_constant()
{
  __assert_rtn("set_fragment_constant", "jet_context_Metal.mm", 1382, "index >= 0");
}

{
  __assert_rtn("set_fragment_constant", "jet_context_Metal.mm", 1394, "elementCount == 1");
}

{
  __assert_rtn("set_fragment_constant", "jet_context_Metal.mm", 1393, "data");
}

{
  __assert_rtn("set_fragment_constant", "jet_context_Metal.mm", 1392, "index >= 0");
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}