void compile_shader(GLuint *a1, uint64_t *a2)
{
  v28[0] = a1 + 1;
  v28[1] = a1 + 2;
  if (!a2)
  {
    compile_shader_cold_7();
    return;
  }

  v2 = *a2;
  if (!*a2)
  {
    compile_shader_cold_6();
    return;
  }

  v3 = a2[1];
  if (!v3)
  {
    compile_shader_cold_5();
    return;
  }

  v5 = *v3;
  Shader_1 = gl_UtilsCreateShader_1(0x8B31u, *v2);
  if (!Shader_1)
  {
    compile_shader_cold_3();
LABEL_28:
    compile_shader_cold_4();
    return;
  }

  v7 = Shader_1;
  v8 = gl_UtilsCreateShader_1(0x8B30u, v5);
  if (!v8)
  {
    compile_shader_cold_2(v7);
    goto LABEL_28;
  }

  v9 = v8;
  params = 0;
  Program = glCreateProgram();
  v11 = Program;
  if (Program)
  {
    glAttachShader(Program, v7);
    glAttachShader(v11, v9);
    glLinkProgram(v11);
    glGetProgramiv(v11, 0x8B82u, &params);
    if (!params)
    {
      glDeleteProgram(v11);
      v11 = 0;
    }
  }

  else
  {
    compile_shader_cold_1();
  }

  glDeleteShader(v7);
  glDeleteShader(v9);
  if (!v11)
  {
    goto LABEL_28;
  }

  glUseProgram(v11);
  *a1 = v11;
  v12 = *(v2 + 16);
  v13 = *v12;
  if (*v12)
  {
    v14 = v12 + 2;
    do
    {
      glBindAttribLocation(v11, *(v14 - 2), v13);
      v15 = *v14;
      v14 += 2;
      v13 = v15;
    }

    while (v15);
    glLinkProgram(v11);
  }

  v16 = *(v2 + 8);
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = v16 + 2;
    do
    {
      AttribLocation = glGetAttribLocation(v11, v17);
      v21 = v28[v18];
      if (v21)
      {
        *v21 = AttribLocation;
        ++v18;
      }

      v22 = *v19;
      v19 += 2;
      v17 = v22;
    }

    while (v22);
  }

  v23 = *(v3 + 8);
  v24 = *v23;
  if (*v23)
  {
    v25 = v23 + 2;
    do
    {
      UniformLocation = glGetUniformLocation(v11, v24);
      glUniform1i(UniformLocation, *(v25 - 2));
      v27 = *v25;
      v25 += 2;
      v24 = v27;
    }

    while (v27);
  }
}

uint64_t gl_UtilsCreateShader_1(GLenum a1, GLchar *a2)
{
  string = a2;
  Shader = glCreateShader(a1);
  v3 = Shader;
  if (Shader)
  {
    params = 0;
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v3);
    glGetShaderiv(v3, 0x8B81u, &params);
    if (!params)
    {
      glDeleteShader(v3);
      return 0;
    }
  }

  else
  {
    gl_UtilsCreateShader_cold_1_1();
  }

  return v3;
}

void WaitForInitializationToFinish_0(uint64_t a1)
{
  if (*a1 != 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      block[5] = v1;
      block[6] = v2;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __WaitForInitializationToFinish_block_invoke_0;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v3, block);
    }
  }
}

void releasePixelBuffers(uint64_t a1)
{
  for (i = 240; i != 264; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      CVPixelBufferRelease(v3);
      *(a1 + i) = 0;
    }
  }

  releaseOutputPixelBuffers(a1);
}

uint64_t __WaitForInitializationToFinish_block_invoke_0(uint64_t result)
{
  v1 = *(result + 32);
  if (*v1 != 2)
  {
    *v1 = 1;
  }

  return result;
}

void releaseOutputPixelBuffers(uint64_t a1)
{
  if (*(a1 + 76) == 1)
  {
    v1 = 0;
    v2 = a1 + 272;
    do
    {
      v3 = *(v2 + v1);
      if (v3)
      {
        CVPixelBufferRelease(v3);
        *(v2 + v1) = 0;
      }

      v1 += 8;
    }

    while (v1 != 24);
  }
}

uint64_t BindLumaAndChromaTexturesToDualFbo(void *a1, IOSurfaceRef buffer, GLuint a3, __IOSurface *a4, GLuint a5, GLuint a6)
{
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, 0);
  glBindTexture(0xDE1u, a3);
  BYTE4(v19) = 0;
  LODWORD(v19) = 0;
  if ([a1 texImageIOSurface:buffer target:3553 internalFormat:33323 width:(WidthOfPlane / 2) height:HeightOfPlane format:33319 type:5121 plane:v19 invert:?])
  {
    v14 = IOSurfaceGetWidthOfPlane(a4, 1uLL);
    v15 = IOSurfaceGetHeightOfPlane(a4, 1uLL);
    glBindTexture(0xDE1u, a5);
    BYTE4(v20) = 0;
    LODWORD(v20) = 1;
    v16 = [a1 texImageIOSurface:a4 target:3553 internalFormat:6408 width:(v14 / 2) height:v15 format:6408 type:5121 plane:v20 invert:?];
    v17 = v16 ^ 1u;
    if (v16)
    {
      glBindFramebuffer(0x8D40u, a6);
      *bufs = 0x8CE100008CE0;
      glDrawBuffers(2, bufs);
      glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, a3, 0);
      glFramebufferTexture2D(0x8D40u, 0x8CE1u, 0xDE1u, a5, 0);
      if (glCheckFramebufferStatus(0x8D40u) == 36053)
      {
        return v17;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      BindLumaAndChromaTexturesToDualFbo_cold_2();
    }
  }

  else
  {
    BindLumaAndChromaTexturesToDualFbo_cold_1();
    return 1;
  }

  return v17;
}

atomic_uint *accelCompletionCallback(atomic_uint *result, int a2)
{
  if (!a2)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void m2m_filter_coefficients(int a1, unsigned int a2, char a3, int a4, unsigned int *a5, float a6)
{
  v6 = sqrt(a6) * a6;
  if (a6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (a2 >= 1)
  {
    v8 = a5;
    v11 = 0;
    v12 = (a1 - 1) / 2;
    v13 = a2;
    v14 = v12;
    if (a1 >= 15)
    {
      v15 = 15;
    }

    else
    {
      v15 = a1;
    }

    v16 = ~(-1 << (a4 + a3));
    v17 = 1 << a4;
    v18 = a2;
    v19 = &a5[v12 * a2];
    v20 = 4 * a2;
    do
    {
      if (a1 < 1)
      {
        v26 = 0.0;
      }

      else
      {
        v21 = 0;
        v22 = -((((v11 / v13) + 1.0) + v14) * v7);
        v23 = v33;
        v24 = v15;
        do
        {
          v25 = fabsf(v22);
          *v23++ = v25 <= 1.0;
          if (v25 <= 1.0)
          {
            ++v21;
          }

          v22 = v7 + v22;
          --v24;
        }

        while (v24);
        v26 = v21;
      }

      v27 = (ldexpf(1.0 / v26, a4) + 0.5) & v16;
      v28 = v27 + v17;
      if (a1 >= 1)
      {
        v29 = v33;
        v30 = v15;
        v31 = v8;
        do
        {
          if (*v29++)
          {
            *v31 = v27;
            v28 -= v27;
          }

          else
          {
            *v31 = 0;
          }

          v31 = (v31 + v20);
          --v30;
        }

        while (v30);
      }

      v19[v11++] = v28;
      ++v8;
    }

    while (v11 != v18);
  }
}

void bindVertexAttributes(uint64_t a1)
{
  glVertexAttribPointer(*(a1 + 4), 2, 0x1406u, 0, 16, &bindVertexAttributes_verts);
  glEnableVertexAttribArray(*(a1 + 4));
  glVertexAttribPointer(*(a1 + 8), 2, 0x1406u, 0, 16, &unk_1AD056848);
  v2 = *(a1 + 8);

  glEnableVertexAttribArray(v2);
}

void remix_denoise_luma_chroma_level(uint64_t a1, uint64_t a2, float *a3, unsigned int a4, GLfloat a5)
{
  if (a4 >= 3)
  {
    v8 = 372;
  }

  else
  {
    v8 = 384;
  }

  v9 = a4 - 1;
  v10 = a1 + 264;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(a1 + 264 + 8 * (a4 - 1)), 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(v10 + 8 * v9), 1uLL);
  v13 = CVPixelBufferGetWidthOfPlane(*(v10 + 8 * a4), 1uLL);
  v32 = CVPixelBufferGetHeightOfPlane(*(v10 + 8 * a4), 1uLL);
  bindVertexAttributes(a1 + v8);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 168 + 4 * v9));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 84 + 4 * a4));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(a1 + 168 + 4 * a4));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glActiveTexture(0x84C3u);
  glBindTexture(0xDE1u, *(a1 + 4 * a4 + 200));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  if (a4 <= 2)
  {
    glActiveTexture(0x84C4u);
    glBindTexture(0xDE1u, *(a1 + 84 + 4 * (a4 + 1)));
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
    glActiveTexture(0x84C5u);
    glBindTexture(0xDE1u, *(a1 + 4 * (a4 + 1) + 124));
    glTexParameterf(0xDE1u, 0x2802u, 33648.0);
    glTexParameterf(0xDE1u, 0x2803u, 33648.0);
    glTexParameterf(0xDE1u, 0x2800u, 9729.0);
    glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  }

  v14 = WidthOfPlane / 2;
  glBindFramebuffer(0x8D40u, *(a1 + 4 * a4 + 140));
  glViewport(0, 0, v14, HeightOfPlane);
  glUseProgram(*(a1 + v8));
  UniformLocation = glGetUniformLocation(*(a1 + v8), "luma_diff_remix");
  v16 = (a2 + 56 * a4);
  glUniform1f(UniformLocation, v16[6]);
  v17 = glGetUniformLocation(*(a1 + v8), "chroma_diff_remix");
  glUniform1f(v17, 1.0);
  v18 = glGetUniformLocation(*(a1 + v8), "pixel_pitch");
  glUniform2f(v18, 1.0 / (v13 / 2 - 1), 1.0 / (v32 - 1));
  v19 = glGetUniformLocation(*(a1 + v8), "luma_sigma_intercept");
  glUniform1f(v19, *v16);
  v20 = glGetUniformLocation(*(a1 + v8), "luma_sigma_max");
  glUniform1f(v20, v16[2]);
  v21 = glGetUniformLocation(*(a1 + v8), "luma_sigma_slope");
  glUniform1f(v21, v16[1]);
  v22 = glGetUniformLocation(*(a1 + v8), "luma_sigma_constant");
  glUniform1f(v22, v16[2]);
  v23 = glGetUniformLocation(*(a1 + v8), "chroma_sigma_r");
  v24 = a2 + 56 * v9;
  glUniform1f(v23, *(v24 + 16));
  v25 = glGetUniformLocation(*(a1 + v8), "chroma_sigma_b");
  glUniform1f(v25, *(v24 + 20));
  v26 = glGetUniformLocation(*(a1 + v8), "lens_shading_factors");
  glUniform2f(v26, *a3 + -1.0, a3[1] + -1.0);
  v27 = glGetUniformLocation(*(a1 + v8), "chroma_demoire_strength");
  glUniform1f(v27, a5);
  v28 = glGetUniformLocation(*(a1 + v8), "denoise_pixel_pitch");
  glUniform2f(v28, 1.0 / v14, 1.0 / HeightOfPlane);
  v29 = glGetUniformLocation(*(a1 + v8), "blue_boost_factor");
  glUniform1f(v29, v16[7]);
  v30 = glGetUniformLocation(*(a1 + v8), "flatness_boost_factor");
  glUniform1f(v30, v16[8]);
  v31 = glGetUniformLocation(*(a1 + v8), "flatness_threshold");
  glUniform1f(v31, v16[9]);
  glDrawArrays(5u, 0, 4);

  glFlush();
}

const UInt8 *get_device_parameters_for_fusion_type(uint64_t a1, const void *a2, const void *a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v7, 2, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(*(a1 + 472), result);
    CFRelease(v5);
    if (Value)
    {
      return CFDataGetBytePtr(Value);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float scan_entries(float *a1, int a2, float a3)
{
  result = 1.0;
  if (a2 >= 1)
  {
    if (*a1 >= a3)
    {
      return a1[1];
    }

    else
    {
      v5 = &a1[2 * a2];
      if (*(v5 - 2) <= a3)
      {
        return *(v5 - 1);
      }

      else
      {
        v6 = (a2 - 1);
        if (a2 != 1)
        {
          for (i = a1 + 2; ; i += 2)
          {
            v8 = *(i - 2);
            if (v8 <= a3 && *i > a3)
            {
              break;
            }

            if (!--v6)
            {
              return result;
            }
          }

          return *(i - 1) + (((a3 - v8) * (i[1] - *(i - 1))) / (*i - v8));
        }
      }
    }
  }

  return result;
}

void *nrasp_interpolateArrayOfValuesForGain(void *a1, float a2)
{
  v3 = a1;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [MEMORY[0x1E695DF70] array];
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v9 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v16;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(v3);
                }

                [v8 addObject:{nrasp_interpolateValueForGain(*(*(&v15 + 1) + 8 * j), a2)}];
              }

              v10 = [v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
            }

            while (v10);
          }

          return v8;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

uint64_t nrasp_interpolateValueForGain(void *a1, float a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a1;
  }

  v4 = [a1 count];
  v5 = v4;
  if (v4 < 1 || (v4 & 1) != 0)
  {
    nrasp_interpolateValueForGain_cold_1();
  }

  [objc_msgSend(a1 objectAtIndexedSubscript:{0), "floatValue"}];
  if (v6 >= a2)
  {
    v22 = a1;
    v23 = 1;
  }

  else
  {
    v7 = v5 - 2;
    [objc_msgSend(a1 objectAtIndexedSubscript:{v5 - 2), "floatValue"}];
    if (v8 > a2)
    {
      if (v5 < 3)
      {
        goto LABEL_15;
      }

      v9 = 0;
      v10 = 0;
      do
      {
        [objc_msgSend(a1 objectAtIndexedSubscript:{v9), "floatValue"}];
        v12 = v11;
        v13 = v9 + 2;
        [objc_msgSend(a1 objectAtIndexedSubscript:{v9 + 2), "floatValue"}];
        if (v12 <= a2 && v14 > a2)
        {
          v16 = v14;
          [objc_msgSend(a1 objectAtIndexedSubscript:{v9 + 1), "floatValue"}];
          v18 = v17;
          [objc_msgSend(a1 objectAtIndexedSubscript:{v9 + 3), "floatValue"}];
          LODWORD(v20) = llroundf(v18 + (((a2 - v12) * (v19 - v18)) / (v16 - v12)));
          v10 = [MEMORY[0x1E696AD98] numberWithInt:v20];
        }

        v9 += 2;
      }

      while (v7 > v13);
      if (!v10)
      {
LABEL_15:
        nrasp_interpolateValueForGain_cold_2();
        return 0;
      }

      return v10;
    }

    v23 = v5 - 1;
    v22 = a1;
  }

  return [v22 objectAtIndexedSubscript:v23];
}

uint64_t BWSignalErrorAt()
{
  FigSignalErrorAt();
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A768];

  return [v0 errorWithDomain:v1 code:-50 userInfo:0];
}

uint64_t gr_countOfBuffersRetainedOutsideEmitCallbackOfOutput(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = [a1 mediaType];
  v7 = [objc_msgSend(a1 "connection")];
  if ((gr_outputAndInputShareAPipelineStage(a1, a2, v7) & 1) == 0)
  {
    a3 += gr_outputOrInputIsStillImagePipelineStage(a1, a2, v7) ^ 1;
  }

  v8 = [objc_msgSend(v7 mediaConfigurationForAttachedMediaKey:{a2), "retainedBufferCount"}] + a3;
  if ([v7 _passthroughModeForAttachedMediaKey:a2] == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [objc_msgSend(v7 "node")];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = a3;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [v14 attachedMediaKeyDrivenByInputAttachedMediaKey:a2 inputIndex:{objc_msgSend(v7, "index")}];
          if (v15)
          {
            v16 = v15;
            if ([v14 mediaType] == v6 && objc_msgSend(v14, "_passthroughModeForAttachedMediaKey:", v16) == 1)
            {
              v17 = gr_countOfBuffersRetainedOutsideEmitCallbackOfOutput(v14, v16, v19);
              if (v17 <= v8)
              {
                v8 = v8;
              }

              else
              {
                v8 = v17;
              }
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

uint64_t gr_logStringForInput(void *a1)
{
  if ([a1 name])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@", '%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    v2 = &stru_1F216A3D0;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 index];
  [a1 mediaType];
  return [v3 stringWithFormat:@"<%p, %d, '%@'%@>", a1, v4, BWStringForOSType(), v2];
}

uint64_t gr_logStringForOutput(void *a1, uint64_t a2)
{
  if ([a1 name])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", '%@'", objc_msgSend(a1, "name")];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v5 = MEMORY[0x1E696AEC0];
  [a1 mediaType];
  return [v5 stringWithFormat:@"<%p, %d, '%@'%@>", a1, a2, BWStringForOSType(), v4];
}

uint64_t BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame(const void *a1, char *a2)
{
  v21 = NAN;
  if (!a1)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_5();
    return 4294954516;
  }

  if (!a2)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_4();
    return 4294954516;
  }

  v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v3)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_3();
    return 4294954516;
  }

  v4 = v3;
  if ([objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] != 1)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_1();
    return 4294954516;
  }

  [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B550), "floatValue"}];
  v5 = [v4 objectForKeyedSubscript:*off_1E798B540];
  if (!v5)
  {
    BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame_cold_2();
    goto LABEL_18;
  }

  v20 = -1;
  v6 = portIndexFromPortType(v5, &v20);
  if (v6)
  {
    v9 = v6;
    FigDebugAssert3();
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_25:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v9;
  }

  v15 = v4;
  v7 = FigMotionComputeBlurScores([MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
  if (v7)
  {
    v9 = v7;
    FigDebugAssert3();
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v19;
    if (os_log_type_enabled(v12, v18))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v16 = 136315138;
      v17 = "BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_25;
  }

  if (v21 > 127.0)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:
  v9 = 0;
  *a2 = v8;
  return v9;
}

uint64_t fvcd_handleAutofocusProcessorNotification(int a1, uint64_t a2, CFTypeRef cf2, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return fvcd_handleAutofocusProcessorNotification_cold_2();
  }

  if (!cf2)
  {
    return fvcd_handleAutofocusProcessorNotification_cold_1();
  }

  if (CFEqual(@"SubjectAreaChanged", cf2))
  {
    v8 = @"SubjectAreaChanged";
  }

  else if (CFEqual(@"DidStartFocusOperation", cf2))
  {
    v8 = @"DidStartFocusOperation";
  }

  else if (CFEqual(@"DidCompleteFocusOperation", cf2))
  {
    os_unfair_lock_lock((a2 + 1596));
    [*(a2 + 1616) focusScanDidComplete];
    [*(a2 + 1632) focusScanDidComplete];
    os_unfair_lock_unlock((a2 + 1596));
    if (*(a2 + 1416) && ([a2 depthDataDeliveryEnabled] & 1) == 0)
    {
      os_unfair_lock_lock((a2 + 1384));
      if (*(a2 + 1428) == 1)
      {
        [*(a2 + 1416) focusModeDidChange];
        *(a2 + 1428) = 0;
      }

      os_unfair_lock_unlock((a2 + 1384));
    }

    v8 = @"DidCompleteFocusOperation";
  }

  else
  {
    result = CFEqual(@"DidCancelFocusOperation", cf2);
    if (!result)
    {
      return result;
    }

    v8 = @"DidCancelFocusOperation";
  }

  return [a2 _postNotificationWithPayload:v8 notificationPayload:a5];
}

void sub_1ACC126D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACC13280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1ACC19600(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1ACC1A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_91_9()
{
  *(v1 - 176) = 0;
  *(v1 - 208) = 0;
  return *(v0 + 840);
}

uint64_t OUTLINED_FUNCTION_94_4()
{
  *(v1 - 104) = 0;
  *(v1 - 105) = 0;
  return *(v0 + 840);
}

uint64_t OUTLINED_FUNCTION_152_0()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_170()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_190()
{

  _Block_object_dispose((v0 - 48), 8);
}

void OUTLINED_FUNCTION_211(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{

  [(BWFigVideoCaptureDevice *)v44 _postManualControlRequestCompletedWithName:a2 requestID:a3 timeDictionary:v46 additionalPayloadItems:v45, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44];
}

__n128 OUTLINED_FUNCTION_227(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a39)
{
  result = a39;
  *&STACK[0x220] = a39;
  return result;
}

uint64_t OUTLINED_FUNCTION_273(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_281(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{

  return [a27 countByEnumeratingWithState:a3 objects:a4 count:16];
}

__n128 OUTLINED_FUNCTION_290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, __int128 a53, __int128 a54, __n128 a55)
{
  *(v55 - 256) = a53;
  *(v55 - 240) = a54;
  result = a55;
  *(v55 - 224) = a55;
  return result;
}

__n128 OUTLINED_FUNCTION_293()
{
  result = *(v1 - 256);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 240);
  return result;
}

void OUTLINED_FUNCTION_299(double a1, double a2, double a3, double a4)
{
  v4[230] = a1;
  v4[231] = a2;
  v4[232] = a3;
  v4[233] = a4;
}

__n128 OUTLINED_FUNCTION_302(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a16, unint64_t a17)
{
  result = a16;
  *v17 = a16;
  v17[1].n128_u64[0] = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_358(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 initWithPortType:a3 captureType:a4 captureFlags:v4 timeMachineFrameCount:v6 bracketSettings:v5 validBracketedCaptureSequenceNumbers:0];
}

CMTime *OUTLINED_FUNCTION_359@<X0>(uint64_t a1@<X8>, CMTime *lhs, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a11, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract((v13 - 80), &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_360(unint64_t a1)
{

  return [v1 setStreamingTime:a1 / 0xF4240];
}

BOOL OUTLINED_FUNCTION_364(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_366(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int16 a33, char a34, os_log_type_t type, int a36)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_368(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int16 a47, char a48, os_log_type_t type, int a50)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_369(NSObject *a1)
{
  v3 = *(v1 - 105);

  return os_log_type_enabled(a1, v3);
}

BOOL OUTLINED_FUNCTION_370(NSObject *a1)
{
  v2 = STACK[0x490];

  return os_log_type_enabled(a1, v2);
}

uint64_t OUTLINED_FUNCTION_373(void *a1, const char *a2, uint64_t a3)
{

  return [a1 infoWithBracketedCaptureSequenceNumber:a3 mainFlags:v3 sifrFlags:0];
}

uint64_t OUTLINED_FUNCTION_374()
{

  return [v0 portType];
}

uint64_t OUTLINED_FUNCTION_375(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 infoWithBracketedCaptureSequenceNumber:0 mainFlags:a4 sifrFlags:0];
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{

  return [a30 objectForKeyedSubscript:a1];
}

uint64_t FigCreateLazyFlatDictionaryWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [FigFlatToNSDictionaryWrapper alloc];

  return [(FigFlatToNSDictionaryWrapper *)v6 initLazilyWithFlatDictionaryBacking:a1 exportedKeySpec:a2 deallocatorBlock:a3];
}

void sub_1ACC28148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getReportMemoryExceptionFromTaskSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  v10 = libMemoryResourceExceptionLibraryCore_frameworkLibrary;
  if (!libMemoryResourceExceptionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __libMemoryResourceExceptionLibraryCore_block_invoke;
    v4[4] = &unk_1E798FC10;
    v5 = &v7;
    v6 = v4;
    v11 = xmmword_1E799CA20;
    v12 = 0;
    v8[3] = _sl_dlopen();
    libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(v5[1] + 24);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    __getReportMemoryExceptionFromTaskSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "ReportMemoryExceptionFromTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getReportMemoryExceptionFromTaskSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1ACC28318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMemoryResourceExceptionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMemoryResourceExceptionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float AEMatrix_FindQualityFromSums(uint64_t a1, _DWORD *a2, float *a3)
{
  v3 = 0;
  v14[0] = 0;
  do
  {
    v4 = 0;
    v5 = 0;
    v6 = -2;
    v7 = a2;
    do
    {
      if ((v3 + v6) <= 0xF)
      {
        v8 = *(a1 + 4 * v6) - *v7;
        if (v8 < 0)
        {
          v8 = *v7 - *(a1 + 4 * v6);
        }

        v4 += v8;
        v14[v3] = v4;
        ++v5;
      }

      ++v6;
      ++v7;
    }

    while (v6 != 14);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v14[v3++] = v4 / v5;
    a1 += 4;
  }

  while (v3 != 5);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v14[v9];
    if (v12 < v14[v11])
    {
      v11 = v9;
    }

    if (v12 > v14[v10])
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 5);
  result = 1.0 - (v14[v11] / v14[v10]);
  *a3 = result;
  return result;
}

uint64_t rqSenderRegister()
{
  sRemoteQueueSenderClass = 0;
  unk_1ED844880 = "FigRemoteQueueSender";
  qword_1ED844888 = rqSenderInit;
  unk_1ED844890 = 0;
  qword_1ED844898 = rqSenderFinalize;
  unk_1ED8448A0 = 0;
  qword_1ED8448A8 = 0;
  unk_1ED8448B0 = 0;
  qword_1ED8448B8 = rqSenderCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sRemoteQueueSenderID = result;
  return result;
}

uint64_t FigRemoteQueueSenderCreate(const __CFAllocator *a1, int a2, const void *a3, int *a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a7)
  {
    FigRemoteQueueSenderCreate_cold_20();
    return 4294950629;
  }

  if (!a3)
  {
    FigRemoteQueueSenderCreate_cold_19();
    return 4294950629;
  }

  v8 = a5;
  if (a5 >= 4)
  {
    FigRemoteQueueSenderCreate_cold_18();
    return 4294950629;
  }

  if (a2 <= 0)
  {
    FigRemoteQueueSenderCreate_cold_17();
    return 4294950629;
  }

  MEMORY[0x1B26F02D0](&FigRemoteQueueSenderGetTypeID_registerOnce, rqSenderRegister);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigRemoteQueueSenderCreate_cold_16();
    return 4294950630;
  }

  v14 = Instance;
  *(Instance + 52) = -1;
  v15 = (Instance + 52);
  *(Instance + 60) = -1;
  v16 = (Instance + 60);
  v17 = *(Instance + 40);
  if (v8)
  {
    v18 = a4;
    v19 = v8;
    do
    {
      v20 = *v18++;
      v17 += v20;
      *(Instance + 40) = v17;
      --v19;
    }

    while (v19);
  }

  if ((v17 - 257) <= 0xFFFFFEFF)
  {
    FigRemoteQueueSenderCreate_cold_15();
    v34 = 4294950629;
LABEL_57:
    CFRelease(v14);
    return v34;
  }

  v21 = CFRetain(a3);
  *(v14 + 16) = v21;
  v22 = FigSharedMemPoolAllocatorCreate(a1, v21);
  *(v14 + 24) = v22;
  if (!v22)
  {
    FigRemoteQueueSenderCreate_cold_14();
LABEL_53:
    v34 = 4294950630;
    goto LABEL_57;
  }

  v23 = 32 * *(v14 + 40);
  v24 = FigSharedMemBlockAllocate(*(v14 + 16), v23 + 32);
  *(v14 + 32) = v24;
  if (!v24)
  {
    FigRemoteQueueSenderCreate_cold_13();
    goto LABEL_53;
  }

  bzero(v24, v23 + 32);
  v25 = *(v14 + 32);
  *v25 = 1936223601;
  if (v8)
  {
    v26 = v25 + 2;
    do
    {
      v27 = *a4++;
      *v26++ = v27;
      --v8;
    }

    while (v8);
  }

  if (pipe(v15))
  {
    FigRemoteQueueSenderCreate_cold_1();
LABEL_44:
    v34 = *__error();
    goto LABEL_57;
  }

  if (pipe(v16))
  {
    FigRemoteQueueSenderCreate_cold_2();
    goto LABEL_44;
  }

  if (fcntl(*v15, 4, 4) == -1 || fcntl(*(v14 + 56), 4, 4) == -1)
  {
    FigRemoteQueueSenderCreate_cold_12(&port_info_out);
LABEL_47:
    v34 = port_info_out;
    goto LABEL_57;
  }

  if (fcntl(*v16, 4, 4) == -1)
  {
    FigRemoteQueueSenderCreate_cold_11(&port_info_out);
    goto LABEL_47;
  }

  if (fcntl(*(v14 + 56), 73, 1) == -1)
  {
    FigRemoteQueueSenderCreate_cold_10(&port_info_out);
    goto LABEL_47;
  }

  v28 = FigSimpleMutexCreate();
  *(v14 + 72) = v28;
  if (!v28)
  {
    FigRemoteQueueSenderCreate_cold_9();
    goto LABEL_53;
  }

  v29 = dispatch_semaphore_create(0);
  *(v14 + 96) = v29;
  if (!v29)
  {
    FigRemoteQueueSenderCreate_cold_8();
    goto LABEL_53;
  }

  v30 = dispatch_semaphore_create(0);
  *(v14 + 104) = v30;
  if (!v30)
  {
    FigRemoteQueueSenderCreate_cold_7();
    goto LABEL_53;
  }

  v31 = FigDispatchQueueCreateWithPriority();
  *(v14 + 88) = v31;
  if (!v31)
  {
    FigRemoteQueueSenderCreate_cold_6();
    goto LABEL_53;
  }

  v32 = dispatch_source_create(MEMORY[0x1E69E96F8], *(v14 + 60), 0, v31);
  *(v14 + 80) = v32;
  if (!v32)
  {
    FigRemoteQueueSenderCreate_cold_5();
    goto LABEL_53;
  }

  dispatch_set_context(v32, v14);
  dispatch_source_set_event_handler_f(*(v14 + 80), rqSenderHandleDequeue);
  dispatch_source_set_cancel_handler_f(*(v14 + 80), rqSenderCancelDequeues);
  *(v14 + 120) = voucher_copy();
  dispatch_resume(*(v14 + 80));
  *(v14 + 112) = 0;
  FigRemoteQueueSenderSetContext(v14, 0, 0, 0);
  *(v14 + 152) = a2;
  v33 = MEMORY[0x1E69E9A60];
  if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (v14 + 156)))
  {
    FigRemoteQueueSenderCreate_cold_3();
LABEL_56:
    v34 = 4294950634;
    goto LABEL_57;
  }

  *(v14 + 160) = 1;
  port_info_outCnt = 1;
  port_info_out = 0;
  if (mach_port_get_attributes(*v33, *(v14 + 156), 1, &port_info_out, &port_info_outCnt) || (port_info_out += 10, MEMORY[0x1B26F1EB0](*v33, *(v14 + 156), 1, &port_info_out, port_info_outCnt)) || mach_port_insert_right(*v33, *(v14 + 156), *(v14 + 156), 0x14u))
  {
    FigRemoteQueueSenderCreate_cold_4();
    goto LABEL_56;
  }

  v34 = 0;
  *(v14 + 168) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v14 + 176) = 0;
  *(v14 + 184) = 0;
  *(v14 + 192) = -1;
  *(v14 + 200) = -1;
  *(v14 + 208) = -1;
  *(v14 + 216) = 0;
  *a7 = v14;
  return v34;
}

void rqSenderHandleDequeue(uint64_t a1)
{
  v7 = 0;
  v2 = *(a1 + 120);
  voucher_adopt();
  v3 = read(*(a1 + 60), &v7, 2uLL);
  if (v3 < 0)
  {
LABEL_12:
    __error();
  }

  else
  {
    while (v3 == 2)
    {
      if (*(a1 + 40) > v7)
      {
        v4 = *(a1 + 32) + 32 * v7;
        v5 = *(v4 + 60);
        rqSenderCleanupQueueElement(v4 + 32);
        *(a1 + 44) = (v7 + 1) % *(a1 + 40);
        v6 = *(a1 + 32);
        if (*(v6 + 4 * v5 + 20) <= 0)
        {
          rqSenderHandleDequeue_cold_1((a1 + 32), &v8);
          v6 = v8;
        }

        if (*(v6 + 4) <= 0)
        {
          rqSenderHandleDequeue_cold_2((a1 + 32), &v8);
          v6 = v8;
        }

        atomic_fetch_add((v6 + 4 * v5 + 20), 0xFFFFFFFF);
        if (atomic_fetch_add_explicit((*(a1 + 32) + 4), 0xFFFFFFFF, memory_order_relaxed) == 1 && *(a1 + 114))
        {
          dispatch_semaphore_signal(*(a1 + 96));
        }
      }

      v3 = read(*(a1 + 60), &v7, 2uLL);
      if (v3 < 0)
      {
        goto LABEL_12;
      }
    }

    *(a1 + 113) = 1;
    if (*(a1 + 114))
    {
      dispatch_semaphore_signal(*(a1 + 96));
    }

    dispatch_suspend(*(a1 + 80));
    *(a1 + 112) = 1;
  }
}

void *FigRemoteQueueSenderSetContext(void *result, uint64_t a2, void *aBlock, const void *a4)
{
  if (result)
  {
    v7 = result;
    if (result[16])
    {
      v8 = result[17];
      if (v8)
      {
        (*(v8 + 16))();
      }
    }

    v7[16] = a2;
    v7[17] = _Block_copy(aBlock);
    result = _Block_copy(a4);
    v7[18] = result;
  }

  return result;
}

uint64_t FigRemoteQueueSenderEnqueue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = rqSenderEnqueue(a1, a2, 1uLL);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t rqSenderEnqueue(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a1 + 48);
  if (*(a1 + 113))
  {
    rqSenderEnqueue_cold_1();
    goto LABEL_52;
  }

  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 > a3)
  {
    if (*(*(a1 + 32) + 4) + a3 > v7)
    {
LABEL_57:
      v38 = 4294950627;
LABEL_53:
      v39 = *(a1 + 48);
      if (v5 != v39)
      {
        v40 = (v3 + 16);
        do
        {
          v41 = v39;
          rqSenderCleanupQueueElement(*(a1 + 32) + 32 * v39 + 32);
          v42 = *v40;
          v40 += 5;
          atomic_fetch_add_explicit((*(a1 + 32) + 4 * v42 + 20), 0xFFFFFFFF, memory_order_relaxed);
          atomic_fetch_add_explicit((*(a1 + 32) + 4), 0xFFFFFFFF, memory_order_relaxed);
          LODWORD(v39) = (v41 + 1) % *(a1 + 40);
        }

        while (v5 != v39);
      }

      return v38;
    }

    if (a3)
    {
      v8 = 0;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        v9 = v3 + 20 * v8;
        v10 = *(v9 + 16);
        if (v10 >= 3)
        {
          rqSenderEnqueue_cold_4();
          v38 = 4294950629;
          goto LABEL_53;
        }

        v11 = *(a1 + 32);
        if (*(v11 + 4 * v10 + 20) >= *(v11 + 4 * v10 + 8))
        {
          goto LABEL_57;
        }

        if (*v9)
        {
          RemoteAddress = FigSharedMemBlockGetRemoteAddress(*v9);
          if (!RemoteAddress)
          {
            v38 = 4294950632;
            goto LABEL_53;
          }

          v13 = RemoteAddress;
          v11 = *(a1 + 32);
        }

        else
        {
          v13 = 0;
        }

        if (*(v9 + 8))
        {
          v17 = rqSenderRegisterIOSurface(a1);
          if (v17)
          {
            v38 = v17;
            rqSenderEnqueue_cold_3();
            goto LABEL_53;
          }

          CFRetain(*(v9 + 8));
          IOSurfaceIncrementUseCount(*(v9 + 8));
          ID = IOSurfaceGetID(*(v9 + 8));
          if (*(a1 + 216))
          {
            v49 = *(a1 + 156);
            ContinuousUpTimeNanoseconds = FigGetContinuousUpTimeNanoseconds();
            v19 = *(a1 + 192);
            if (v19 != -1)
            {
              v20 = ContinuousUpTimeNanoseconds;
              v50 = ContinuousUpTimeNanoseconds - 1000000 * *(a1 + 216);
              v48 = ContinuousUpTimeNanoseconds;
              do
              {
                v21 = *(a1 + 176) + 32 * v19;
                if (v50 <= *(v21 + 8))
                {
                  break;
                }

                v22 = *(v21 + 16);
                valuePtr[0] = IOSurfaceGetID(*v21);
                v23 = CFRetain(*(*(a1 + 176) + 32 * v19));
                v24 = IOSurfaceIsInUse(v23);
                v25 = *(a1 + 216);
                if (v24)
                {
                  if (v25)
                  {
                    v26 = *(a1 + 176);
                    v27 = (v26 + 32 * v19);
                    v27[1] = v20;
                    v28 = *(a1 + 200);
                    if (v28 != v19)
                    {
                      v30 = v27[2];
                      v29 = v27[3];
                      if (v29 != -1)
                      {
                        *(v26 + 32 * v29 + 16) = v30;
                      }

                      if (v30 != -1)
                      {
                        *(v26 + 32 * v30 + 24) = v29;
                      }

                      if (v28 != -1)
                      {
                        *(v26 + 32 * v28 + 16) = v19;
                      }

                      v31 = *(a1 + 192);
                      if (v31 == v19)
                      {
                        v31 = v27[2];
                        *(a1 + 192) = v31;
                      }

                      v27[3] = v28;
                      v27[2] = -1;
                      *(a1 + 200) = v19;
                      if (v31 == -1)
                      {
                        *(a1 + 192) = v19;
                      }
                    }
                  }
                }

                else
                {
                  if (v25)
                  {
                    v32 = *(a1 + 176);
                    v33 = v32 + 32 * v19;
                    v34 = *(v33 + 16);
                    v35 = *(v33 + 24);
                    if (v35 != -1)
                    {
                      *(v32 + 32 * v35 + 16) = v34;
                    }

                    if (v34 != -1)
                    {
                      *(v32 + 32 * v34 + 24) = v35;
                    }

                    if (*(a1 + 192) == v19)
                    {
                      *(a1 + 192) = v34;
                    }

                    if (*(a1 + 200) == v19)
                    {
                      *(a1 + 200) = *(v33 + 24);
                    }

                    if (*v33)
                    {
                      CFRelease(*v33);
                      *v33 = 0;
                    }

                    *(v33 + 8) = 0;
                    *(v33 + 24) = -1;
                    *(v33 + 16) = *(a1 + 208);
                    *(a1 + 208) = v19;
                    v20 = v48;
                  }

                  v36 = CFNumberCreate(allocator, kCFNumberSInt32Type, valuePtr);
                  CFDictionaryRemoveValue(*(a1 + 168), v36);
                  CFRelease(v36);
                  LODWORD(v36) = IOSurfaceCreateMachPort(v23);
                  global_queue = dispatch_get_global_queue(0, 0);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __rqSurfacesReleaseAgedOut_block_invoke;
                  block[3] = &__block_descriptor_48_e5_v8__0l;
                  v53 = v49;
                  v54 = v36;
                  block[4] = a1;
                  dispatch_async(global_queue, block);
                }

                CFRelease(v23);
                v19 = v22;
              }

              while (v22 != -1);
            }
          }

          v6 = a3;
          v3 = a2;
          v14 = ID;
        }

        else
        {
          v14 = 0;
        }

        v15 = v11 + 32 * v5;
        *(v15 + 32) = FigSharedMemBlockRetain(*v9);
        *(v15 + 40) = v13;
        *(v15 + 48) = *(v9 + 8);
        *(v15 + 56) = v14;
        v16 = *(v9 + 16);
        *(v15 + 60) = v16;
        atomic_fetch_add((*(a1 + 32) + 4 * v16 + 20), 1u);
        atomic_fetch_add_explicit((*(a1 + 32) + 4), 1u, memory_order_relaxed);
        *(__buf + v8) = v5;
        v5 = ((v5 + 1) % *(a1 + 40));
        ++v8;
      }

      while (v8 != v6);
    }

    if (write(*(a1 + 56), __buf, 2 * v6) == 2 * v6)
    {
      v38 = 0;
      *(a1 + 48) = v5;
      return v38;
    }

    *(a1 + 113) = 1;
LABEL_52:
    v38 = 4294950631;
    goto LABEL_53;
  }

  if (!rqSenderEnqueue_cold_2(__buf))
  {
    v38 = __buf[0];
    goto LABEL_53;
  }

  return 0;
}

uint64_t FigRemoteQueueSenderEnqueueSequence(uint64_t a1, uint64_t a2, unint64_t a3)
{
  FigSimpleMutexLock();
  v6 = rqSenderEnqueue(a1, a2, a3);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigRemoteQueueSenderResetWithApplier(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = rqSenderReset(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t rqSenderReset(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  if (!*(*(a1 + 32) + 4))
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (a2)
  {
    v5 = malloc_type_calloc(*(a1 + 40), 0x20uLL, 0x1000040E0EAB150uLL);
    if (!v5)
    {
      rqSenderReset_cold_1();
      v6 = 4294950630;
      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = read(*(a1 + 52), __buf, 0x200uLL);
  v8 = (v7 >> 1) & ~(v7 >> 31);
  if (v8 > *(a1 + 40))
  {
    rqSenderReset_cold_2();
  }

  v9 = *v2;
  if (v8 > *(*v2 + 4))
  {
    rqSenderReset_cold_3(v2, &v33);
    v9 = v33;
  }

  atomic_fetch_add_explicit((v9 + 4), -v8, memory_order_relaxed);
  v10 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __rqSenderReset_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v10, block);
  if (*(a1 + 114))
  {
    dispatch_semaphore_wait(*(a1 + 96), 0xFFFFFFFFFFFFFFFFLL);
    *(a1 + 114) = 0;
  }

  if (*(a1 + 113))
  {
    v11 = *(a1 + 144);
    if (v11)
    {
      (*(v11 + 16))(v11, a1);
    }

    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 32;
      do
      {
        rqSenderCleanupQueueElement(*(a1 + 32) + v13);
        ++v12;
        v13 += 32;
      }

      while (v12 < *(a1 + 40));
    }

    if (a2)
    {
      v6 = 4294950631;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_23;
  }

  __src = v5;
  if (v8)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *v2;
      v18 = *v2 + 32 * __buf[v15];
      v35 = 0;
      v33 = 0;
      buffer = 0;
      v20 = *(v18 + 32);
      v19 = v18 + 32;
      v33 = v20;
      buffer = *(v19 + 16);
      v35 = *(v19 + 28);
      v21 = v35;
      if (*(v17 + 4 * v35 + 20) <= 0)
      {
        rqSenderReset_cold_4(v2, &v35, &v38, &v39);
        v17 = v38;
        v21 = v39;
      }

      atomic_fetch_add_explicit((v17 + 4 * v21 + 20), 0xFFFFFFFF, memory_order_relaxed);
      if (a2 && (*(a2 + 16))(a2, v8, v15, &v33))
      {
        v22 = v33;
        v23 = &__src[32 * v16];
        *v23 = v33;
        v24 = buffer;
        *(v23 + 2) = buffer;
        *(v23 + 7) = v35;
        if (v22)
        {
          *(v23 + 1) = FigSharedMemBlockGetRemoteAddress(v22);
          v24 = buffer;
        }

        if (v24)
        {
          *(v23 + 6) = IOSurfaceGetID(v24);
        }

        atomic_fetch_add_explicit((*v2 + 4 * v35 + 20), 1u, memory_order_relaxed);
        __buf[v16] = v16;
        ++v16;
      }

      else
      {
        v25 = *(a1 + 144);
        if (v25)
        {
          (*(v25 + 16))(v25, a1);
        }

        rqSenderCleanupQueueElement(v19);
      }

      ++v15;
    }

    while (v8 != v15);
  }

  else
  {
    v16 = 0;
  }

  v26 = *(a1 + 32);
  *(v26 + 4) = v16;
  v27 = *(a1 + 40);
  if (v16 >= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v16;
  }

  *(a1 + 44) = 0;
  *(a1 + 48) = v28;
  if (v16 < 1)
  {
    v6 = 0;
    v5 = __src;
    goto LABEL_23;
  }

  v5 = __src;
  memcpy((v26 + 32), __src, 32 * v27);
  __dmb(0xBu);
  if (write(*(a1 + 56), __buf, 2 * v16) == 2 * v16)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_23;
  }

  v29 = *(a1 + 144);
  if (v29)
  {
    (*(v29 + 16))(v29, a1);
  }

  if (*(a1 + 40))
  {
    v30 = 0;
    v31 = 32;
    do
    {
      rqSenderCleanupQueueElement(*(a1 + 32) + v31);
      ++v30;
      v31 += 32;
    }

    while (v30 < *(a1 + 40));
  }

  *(a1 + 113) = 1;
  v6 = 4294950631;
LABEL_23:
  free(v5);
  return v6;
}

uint64_t FigRemoteQueueSenderResetIfFullAndEnqueueSequence(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  v8 = rqSenderEnqueue(a1, a2, a3);
  if (v8 == -16669)
  {
    v8 = rqSenderReset(a1, a4);
    if (!v8)
    {
      v8 = rqSenderEnqueue(a1, a2, a3);
    }
  }

  v9 = v8;
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigRemoteQueueSenderCreateXPCObject(uint64_t a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    FigRemoteQueueSenderCreateXPCObject_cold_7();
    return 4294950629;
  }

  if (!a2)
  {
    FigRemoteQueueSenderCreateXPCObject_cold_6();
    return 4294950629;
  }

  SharedRegion = FigSharedMemPoolGetSharedRegion(*(a1 + 16));
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    FigSimpleMutexLock();
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      FigRemoteQueueSenderCreateXPCObject_cold_4();
      goto LABEL_20;
    }

    if ((*(a1 + 160) & 1) == 0)
    {
      FigRemoteQueueSenderCreateXPCObject_cold_1();
      goto LABEL_20;
    }

    RemoteAddress = FigSharedMemBlockGetRemoteAddress(*(a1 + 32));
    if (RemoteAddress)
    {
      if (FigSharedMemPoolSharedRegionGetOwner(SharedRegion))
      {
        FigRemoteQueueSenderCreateXPCObject_cold_2();
LABEL_20:
        v13 = 4294950629;
LABEL_21:
        FigSimpleMutexUnlock();
        xpc_release(v6);
        return v13;
      }
    }

    else
    {
      v8 = FigSharedMemPoolSharedRegionCreateXPCObject(SharedRegion, a1, &value);
      if (v8)
      {
        v13 = v8;
        FigRemoteQueueSenderCreateXPCObject_cold_3();
        goto LABEL_21;
      }
    }

    v9 = *(a1 + 52);
    v10 = *(a1 + 64);
    *(a1 + 64) = -1;
    xpc_dictionary_set_mach_recv();
    *(a1 + 160) = 0;
    FigSimpleMutexUnlock();
    if (value)
    {
      xpc_dictionary_set_value(v6, "SharedRegion", value);
      xpc_release(value);
    }

    v11 = *(a1 + 32);
    Address = FigSharedMemPoolSharedRegionGetAddress(SharedRegion);
    xpc_dictionary_set_uint64(v6, "QueueOffset", v11 - Address);
    xpc_dictionary_set_uint64(v6, "QueueData", RemoteAddress);
    xpc_dictionary_set_fd(v6, "RecvFd", v9);
    xpc_dictionary_set_fd(v6, "SendFd", v10);
    close(v10);
    v13 = 0;
    *a2 = v6;
  }

  else
  {
    FigRemoteQueueSenderCreateXPCObject_cold_5();
    return 4294950630;
  }

  return v13;
}

uint64_t FigRemoteQueueSenderGetSharedMemPoolAllocator(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t FigRemoteQueueSenderRegisterIOSurface(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = rqSenderRegisterIOSurface(a1);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigRemoteQueueSenderGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t FigRemoteQueueIOSurfaceReceiver_ShareIOSurface(unsigned int a1, mach_port_t port)
{
  if (port)
  {
    v3 = IOSurfaceLookupFromMachPort(port);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(rqSharedSurfaces, a1);
      if (!Value)
      {
        Value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        CFDictionaryAddValue(rqSharedSurfaces, a1, Value);
        CFRelease(Value);
      }

      CFArrayAppendValue(Value, v4);
      CFRelease(v4);
    }

    else
    {
      FigRemoteQueueIOSurfaceReceiver_ShareIOSurface_cold_1();
    }

    FigMachPortReleaseSendRight_();
  }

  else
  {
    FigRemoteQueueIOSurfaceReceiver_ShareIOSurface_cold_2();
  }

  return 0;
}

uint64_t FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface(unsigned int a1, mach_port_t port)
{
  if (port)
  {
    v3 = IOSurfaceLookupFromMachPort(port);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(rqSharedSurfaces, a1);
      if (Value)
      {
        v6 = Value;
        v9.length = CFArrayGetCount(Value);
        v9.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v9, v4);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
        }
      }

      CFRelease(v4);
    }

    else
    {
      FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface_cold_1();
    }

    FigMachPortReleaseSendRight_();
  }

  else
  {
    FigRemoteQueueIOSurfaceReceiver_ReleaseIOSurface_cold_2();
  }

  return 0;
}

uint64_t rqReceiverRegister()
{
  sRemoteQueueReceiverClass = 0;
  *algn_1ED844D28 = "FigRemoteQueueReceiver";
  qword_1ED844D30 = rqReceiverInit;
  unk_1ED844D38 = 0;
  qword_1ED844D40 = rqReceiverFinalize;
  unk_1ED844D48 = 0;
  qword_1ED844D50 = 0;
  unk_1ED844D58 = 0;
  qword_1ED844D60 = rqReceiverCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sRemoteQueueReceiverID = result;
  return result;
}

uint64_t FigRemoteQueueReceiverCreateFromXPCObject(uint64_t a1, xpc_object_t xdict, uint64_t *a3)
{
  cf = 0;
  if (!xdict)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_14();
LABEL_48:
    v20 = 4294950629;
    goto LABEL_22;
  }

  if (!a3)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_13();
    goto LABEL_48;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "QueueData");
  if (uint64)
  {
    goto LABEL_8;
  }

  value = xpc_dictionary_get_value(xdict, "SharedRegion");
  if (!value)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_12();
    goto LABEL_48;
  }

  v8 = FigSharedMemPoolSharedRegionCreateFromXPCObject(a1, value, &cf);
  if (v8)
  {
    v20 = v8;
    FigRemoteQueueReceiverCreateFromXPCObject_cold_1();
    goto LABEL_22;
  }

  v9 = xpc_dictionary_get_uint64(xdict, "QueueOffset");
  if (!v9)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_11();
    goto LABEL_48;
  }

  uint64 = v9 + FigSharedMemPoolSharedRegionGetAddress(cf);
LABEL_8:
  v10 = xpc_dictionary_dup_fd(xdict, "RecvFd");
  if (v10 < 0)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_10();
    v20 = 4294950629;
    goto LABEL_23;
  }

  v11 = xpc_dictionary_dup_fd(xdict, "SendFd");
  if (v11 < 0)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_9();
LABEL_37:
    v20 = 4294950629;
    goto LABEL_24;
  }

  mach_recv = xpc_dictionary_extract_mach_recv();
  if (!mach_recv)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_8();
    goto LABEL_37;
  }

  v13 = cf;
  if (rqSurfaceRegistrationOnce != -1)
  {
    FigRemoteQueueReceiverCreateFromXPCObject_cold_2();
  }

  MEMORY[0x1B26F02D0](&FigRemoteQueueReceiverGetTypeID_registerOnce, rqReceiverRegister);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v15 = Instance;
    if (v13)
    {
      v16 = CFRetain(v13);
    }

    else
    {
      v16 = 0;
    }

    *(v15 + 16) = v16;
    *(v15 + 24) = FigSharedMemBlockRetain(uint64);
    if (fcntl(v10, 4, 4) == -1 || fcntl(v11, 4, 4) == -1)
    {
      FigRemoteQueueReceiverCreateFromXPCObject_cold_5();
    }

    else
    {
      if (fcntl(v11, 73, 1) != -1)
      {
        v17 = FigSimpleMutexCreate();
        *(v15 + 40) = v17;
        if (v17)
        {
          *(v15 + 64) = 1;
          *(v15 + 32) = v10;
          *(v15 + 36) = v11;
          *(v15 + 80) = 0;
          *(v15 + 88) = 0;
          *(v15 + 96) = mach_recv;
          v18 = dispatch_source_create(MEMORY[0x1E69E96D8], mach_recv, 0, rqSurfaceRegistrationQueue);
          *(v15 + 104) = v18;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __rqReceiverCreate_block_invoke_2;
          handler[3] = &unk_1E7991CF0;
          v25 = mach_recv;
          handler[4] = v18;
          dispatch_source_set_cancel_handler(v18, handler);
          v19 = *(v15 + 104);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __rqReceiverCreate_block_invoke_3;
          v23[3] = &unk_1E798F870;
          v23[4] = v18;
          dispatch_source_set_event_handler(v19, v23);
          dispatch_resume(*(v15 + 104));
          v20 = 0;
          *a3 = v15;
LABEL_22:
          v10 = -1;
LABEL_23:
          v11 = -1;
          goto LABEL_24;
        }

        FigRemoteQueueReceiverCreateFromXPCObject_cold_3(v15);
        goto LABEL_43;
      }

      FigRemoteQueueReceiverCreateFromXPCObject_cold_4();
    }

    v20 = *__error();
    CFRelease(v15);
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  FigRemoteQueueReceiverCreateFromXPCObject_cold_6();
LABEL_43:
  v20 = 4294950630;
LABEL_44:
  FigRemoteQueueReceiverCreateFromXPCObject_cold_7();
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  FigMachPortReleaseReceiveRight_();
  return v20;
}

uint64_t FigRemoteQueueReceiverDequeue(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = rqReceiverDequeue(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t rqReceiverDequeue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 69))
  {
    rqReceiverDequeue_cold_1();
    return 4294950631;
  }

  __buf = 0;
  v4 = read(*(a1 + 32), &__buf, 2uLL);
  if (v4 < 0)
  {
    if (*__error() == 35)
    {
      return 4294950628;
    }

    else
    {
      return *__error();
    }
  }

  if (v4 != 2)
  {
    *(a1 + 69) = 1;
    return 4294950631;
  }

  v5 = *(a1 + 24) + 32 * __buf;
  if (!*(v5 + 48))
  {
    v7 = 0;
    goto LABEL_13;
  }

  v6 = IOSurfaceLookup(*(v5 + 56));
  if (v6)
  {
    v7 = v6;
    IOSurfaceIncrementUseCount(v6);
LABEL_13:
    v8 = 0;
    *a2 = FigSharedMemBlockRetain(*(v5 + 40));
    *(a2 + 8) = v7;
    *(a2 + 16) = *(v5 + 60);
    __dmb(0xBu);
    goto LABEL_15;
  }

  v8 = 4294950629;
LABEL_15:
  if (write(*(a1 + 36), &__buf, 2uLL) != 2)
  {
    *(a1 + 69) = 1;
  }

  return v8;
}

uint64_t FigRemoteQueueReceiverSetHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  FigSimpleMutexLock();
  ++*(a1 + 64);
  v6 = *(a1 + 56);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 56) = 0;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 69);
  v8 = _Block_copy(a3);
  v9 = v8;
  if (!v7)
  {
    *(a1 + 56) = v8;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = a1;
    v11 = 0;
    goto LABEL_10;
  }

  CFRetain(a1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FigRemoteQueueReceiverSetHandler_block_invoke;
  v14[3] = &unk_1E79903B8;
  v14[4] = v9;
  v14[5] = a1;
  dispatch_async(a2, v14);
  if (!*(a1 + 56))
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 32), 0, a2);
  if (!v10)
  {
    FigRemoteQueueReceiverSetHandler_cold_1();
    return FigSimpleMutexUnlock();
  }

  v11 = v10;
  v12 = a1;
LABEL_10:
  rqReceiverSetSource(v12, v11);
  return FigSimpleMutexUnlock();
}

void __FigRemoteQueueReceiverSetHandler_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = 0;
  v3 = 0;
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void rqReceiverSetSource(CFTypeRef cf, NSObject *a2)
{
  v4 = *(cf + 6);
  if (v4)
  {
    dispatch_source_cancel(v4);
    if (*(cf + 68))
    {
      *(cf + 68) = 0;
      dispatch_resume(*(cf + 6));
    }

    *(cf + 6) = 0;
  }

  if (a2)
  {
    CFRetain(cf);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __rqReceiverSetSource_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = cf;
    dispatch_source_set_event_handler(a2, handler);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __rqReceiverSetSource_block_invoke_2;
    v5[3] = &unk_1E7990178;
    v5[4] = a2;
    v5[5] = cf;
    dispatch_source_set_cancel_handler(a2, v5);
    *(cf + 6) = a2;
    if (!*(cf + 9))
    {
      *(cf + 9) = voucher_copy();
      a2 = *(cf + 6);
    }

    *(cf + 68) = 0;
    dispatch_resume(a2);
  }
}

uint64_t FigRemoteQueueReceiverGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

void *FigRemoteQueueReceiverSetContext(void *result, uint64_t a2, void *aBlock)
{
  if (result)
  {
    v5 = result;
    if (result[10])
    {
      v6 = result[11];
      if (v6)
      {
        (*(v6 + 16))();
      }
    }

    v5[10] = a2;
    result = _Block_copy(aBlock);
    v5[11] = result;
  }

  return result;
}

double rqSenderInit(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void rqSenderFinalize(uint64_t a1)
{
  if (*(a1 + 32))
  {
    rqSenderReset(a1, 0);
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __rqSenderFinalize_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v3, block);
    dispatch_semaphore_wait(*(a1 + 104), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(a1 + 80));
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 52);
  if ((v7 & 0x80000000) == 0)
  {
    close(v7);
  }

  v8 = *(a1 + 56);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  v9 = *(a1 + 60);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  v10 = *(a1 + 64);
  if ((v10 & 0x80000000) == 0)
  {
    close(v10);
  }

  FigRemoteQueueSenderSetContext(a1, 0, 0, 0);
  FigSimpleMutexDestroy();
  FigSharedMemBlockRelease(*(a1 + 32));
  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {

    *(a1 + 120) = 0;
  }

  if (*(a1 + 156))
  {
    v14 = *(a1 + 168);
    if (v14 && CFDictionaryGetCount(v14) && !*(a1 + 113))
    {
      if (*(a1 + 160) == 1)
      {
        FigMachPortReleaseReceiveRight_();
      }

      v19 = *(a1 + 152);
      v20 = *(a1 + 156);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __rqSenderFinalize_block_invoke_2;
      v21[3] = &__block_descriptor_36_e8_v12__0B8l;
      v22 = v20;
      FigRemoteQueueProcessAssertion_awakeClientAndRunCallback(v19, v21);
    }

    else
    {
      if (*(a1 + 160) == 1)
      {
        FigMachPortReleaseReceiveRight_();
      }

      FigMachPortReleaseSendRight_();
    }
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    CFDictionaryRemoveAllValues(v15);
    v16 = *(a1 + 184);
    if (v16 >= 1)
    {
      rqSenderFinalize_cold_1(a1, (a1 + 184), v16);
    }

    v17 = *(a1 + 176);
    if (v17)
    {
      *(a1 + 176) = 0;
      free(v17);
    }

    *(a1 + 184) = 0;
    *(a1 + 192) = -1;
    *(a1 + 200) = -1;
    *(a1 + 208) = -1;
    v18 = *(a1 + 168);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 168) = 0;
    }
  }
}

void __rqSenderFinalize_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 112))
  {
    dispatch_resume(*(v1 + 80));
    *(*(a1 + 32) + 112) = 0;
  }
}

uint64_t __rqSenderFinalize_block_invoke_2(uint64_t a1)
{
  FigRemoteQueueIOSurfaceSender_ReleaseIOSurfaces(*(a1 + 32));

  return FigMachPortReleaseSendRight_();
}

double rqSenderCleanupQueueElement(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOSurfaceDecrementUseCount(v2);
    CFRelease(*(a1 + 16));
  }

  FigSharedMemBlockRelease(*a1);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t __rqSurfacesReleaseAgedOut_block_invoke(uint64_t a1)
{
  if (FigRemoteQueueIOSurfaceSender_ReleaseIOSurface(*(a1 + 40), *(a1 + 44)))
  {
    bzero(buffer, 0x1000uLL);
    if (proc_name(*(*(a1 + 32) + 152), buffer, 0xFFFu) <= 0)
    {
      snprintf(buffer, 0xFFFuLL, "pid-%d", *(*(a1 + 32) + 152));
    }
  }

  return FigMachPortReleaseSendRight_();
}

uint64_t __rqSenderReset_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(*(v1 + 32) + 4) >= 1 && !*(v1 + 113))
  {
    *(v1 + 114) = 1;
  }

  return result;
}

double rqReceiverInit(_OWORD *a1)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  result = NAN;
  *(a1 + 4) = -1;
  return result;
}

void rqReceiverFinalize(uint64_t a1)
{
  if (*(a1 + 96))
  {
    dispatch_source_cancel(*(a1 + 104));
  }

  if (*(a1 + 56))
  {
    rqReceiverFinalize_cold_1();
  }

  if (*(a1 + 48))
  {
    rqReceiverFinalize_cold_2();
  }

  v2 = *(a1 + 36);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  FigRemoteQueueReceiverSetContext(a1, 0, 0);
  FigSimpleMutexDestroy();
  FigSharedMemBlockRelease(*(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {

    *(a1 + 72) = 0;
  }
}

CFMutableDictionaryRef __rqReceiverCreate_block_invoke()
{
  rqSurfaceRegistrationQueue = FigDispatchQueueCreateWithPriority();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  rqSharedSurfaces = result;
  return result;
}

void __rqReceiverCreate_block_invoke_2(uint64_t a1)
{
  FigMachPortReleaseReceiveRight_();
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = rqSharedSurfaces;

  CFDictionaryRemoveValue(v3, v2);
}

void __rqReceiverSetSource_block_invoke_2(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_1ACC2B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACCConnectionInfoClass_block_invoke(uint64_t a1)
{
  CoreAccessoriesLibrary();
  result = objc_getClass("ACCConnectionInfo");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getACCConnectionInfoClass_block_invoke_cold_1();
  }

  getACCConnectionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CoreAccessoriesLibrary()
{
  v2[0] = 0;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreAccessoriesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E799CA98;
    v4 = 0;
    CoreAccessoriesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreAccessoriesLibraryCore_frameworkLibrary;
  if (!CoreAccessoriesLibraryCore_frameworkLibrary)
  {
    CoreAccessoriesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreAccessoriesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAccessoriesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke_2;
  v10[3] = &unk_1E799CAD8;
  v8 = *(a1 + 40);
  v10[4] = v6;
  v10[5] = v8;
  v11 = *(a1 + 56);
  v10[6] = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
  return [*(a1 + 48) setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithDictionary:", v7), a2}];
}

uint64_t __fccp_fineTuneSDOFTuningParametersForContinuousZoom_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{a2), "floatValue"}];
  v7 = v6;
  [a3 floatValue];
  v9 = *&v8;
  if (*(a1 + 40))
  {
    v10 = [a2 hasPrefix:?];
    HIDWORD(v8) = 0;
    if (v10)
    {
      v9 = 0.0;
    }
  }

  *&v8 = (v9 * (1.0 - *(a1 + 56))) + (v7 * *(a1 + 56));
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v12 = *(a1 + 48);

  return [v12 setObject:v11 forKeyedSubscript:a2];
}

void sub_1ACC300D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 136), 8);
  objc_destroyWeak((v2 - 104));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

BOOL __msp_configureTextLocalizationNode_block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, const void *a3)
{
  v3 = a3;
  AttachedInference = BWInferenceGetAttachedInference(a3, 116, 0x1F219E730);
  if ([objc_loadWeak((a1 + 40)) logger])
  {
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(AttachedInference, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = [AttachedInference countByEnumeratingWithState:&v55 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v56;
      v11 = *off_1E798CD38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(AttachedInference);
          }

          [v7 addObject:{objc_msgSend(*(*(&v55 + 1) + 8 * i), "objectForKeyedSubscript:", v11)}];
        }

        v9 = [AttachedInference countByEnumeratingWithState:&v55 objects:v54 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = [AttachedInference count];
  if (![AttachedInference count])
  {
    v13 = *(*(*(a1 + 32) + 8) + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = [AttachedInference count];
  memset(&v53, 0, sizeof(v53));
  CMSampleBufferGetPresentationTimeStamp(&v53, a2);
  Weak = objc_loadWeak((a1 + 40));
  v15 = objc_loadWeak((a1 + 48));
  v16 = [AttachedInference count];
  *&v51.a = *&v53.value;
  *&v51.c = v53.epoch;
  [Weak node:v15 didEmitCodesCount:v16 emittedIdentifiers:v7 originalPTS:&v51];
  if ([AttachedInference count])
  {
    obj = AttachedInference;
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    v18 = [CMGetAttachment(ImageBuffer @"RotationDegrees"];
    v19 = [CMGetAttachment(ImageBuffer @"MirroredHorizontal"];
    v20 = [CMGetAttachment(ImageBuffer @"MirroredVertical"];
    v41 = *(MEMORY[0x1E695F050] + 16);
    v42 = *MEMORY[0x1E695F050];
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v41;
    v21 = CMGetAttachment(a2, *off_1E798A438, 0);
    CGRectMakeWithDictionaryRepresentation(v21, &rect);
    memset(&v51, 0, sizeof(v51));
    FigCaptureGetTransformForMirroringRotationAndCrop(v19, v20, v18, &v51, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    v50 = v51;
    if (CGAffineTransformIsIdentity(&v50))
    {
      if (!v13)
      {
        return v13 != 0;
      }

      goto LABEL_32;
    }

    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(AttachedInference, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = [AttachedInference countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (!v23)
    {
      AttachedInference = v22;
      if (!v13)
      {
        return v13 != 0;
      }

      goto LABEL_32;
    }

    v24 = v23;
    v37 = v13;
    v38 = v3;
    v40 = *v47;
    v25 = *off_1E798CD28;
    v26 = v19 ^ v20;
    v27 = *off_1E798CD18;
    v28 = *off_1E798CD20;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v46 + 1) + 8 * j);
        v31 = [v30 mutableCopy];
        v44.origin = v42;
        v44.size = v41;
        if (CGRectMakeWithDictionaryRepresentation([v30 objectForKeyedSubscript:v25], &v44))
        {
          v50 = v51;
          v59 = CGRectApplyAffineTransform(v44, &v50);
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v59);
          [v31 setObject:DictionaryRepresentation forKeyedSubscript:v25];
        }

        if (v26)
        {
          [objc_msgSend(v30 objectForKeyedSubscript:{v27), "floatValue"}];
          *&v34 = -v33;
          [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), v27}];
        }

        v43.origin = v42;
        v43.size = v41;
        if (CGRectMakeWithDictionaryRepresentation([v30 objectForKeyedSubscript:v28], &v43))
        {
          v50 = v51;
          v60 = CGRectApplyAffineTransform(v43, &v50);
          v35 = CGRectCreateDictionaryRepresentation(v60);
          [v31 setObject:v35 forKeyedSubscript:v28];
        }

        [v22 addObject:v31];
      }

      v24 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
    }

    while (v24);
    AttachedInference = v22;
    v13 = v37;
    v3 = v38;
  }

  if (v13)
  {
LABEL_32:
    CMSetAttachment(v3, *off_1E798A500, AttachedInference, 1u);
    CMSetAttachment(v3, *off_1E798A508, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(AttachedInference, "count")}], 1u);
    CMRemoveAttachment(v3, @"Inferences");
  }

  return v13 != 0;
}

uint64_t FigCaptureSourceServerStart()
{
  v10 = 1;
  v11 = captureSourceServer_handleReplyMessage;
  v12 = captureSourceServer_handleNoReplyMessage;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (captureSourceServer_initializeStatics_onceToken != -1)
  {
    FigCaptureSourceServerStart_cold_1();
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CelestialToCameraCaptureMigrationCompleted", @"com.apple.cameracapture", 0);
  v1 = CFPreferencesGetAppBooleanValue(@"VolatileDomainMigrationCompleted", @"com.apple.cameracapture.volatile", 0);
  if (AppBooleanValue)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    FigCaptureSourceServerStart_cold_2();
    goto LABEL_14;
  }

  v3 = v1;
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  if (AppBooleanValue)
  {
    if (v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CFPreferencesSetMultiple(0, &unk_1F2249C78, @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSetValue(@"CelestialToCameraCaptureMigrationCompleted", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture", v4, v5);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  CFPreferencesSetMultiple(0, &unk_1F2249C90, @"com.apple.cameracapture", v4, v5);
  CFPreferencesSetValue(@"VolatileDomainMigrationCompleted", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture.volatile", v4, v5);
LABEL_10:
  CFPreferencesSynchronize(@"com.apple.cameracapture", v4, v5);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v4, v5);
  CFPreferencesSynchronize(@"com.apple.celestial", v4, v5);
  if (dword_1ED843FB0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_14:
  FigCaptureSourceInitialize([FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider:v8], 1);
  if (FigCaptureAudiomxdSupportEnabled() && (FigCaptureCurrentProcessIsCameracaptured() || FigCaptureCurrentProcessIsMediaserverd()))
  {
    FigCaptureSpeakerSetInterferenceMitigationIsRequired(0, 1);
    FigCaptureMicrophoneSetInterferenceMitigationIsRequired(0, 1);
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capturesource", &v10, 0);
}

uint64_t captureSourceServer_handleNoReplyMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v1 = OpCode;
    captureSourceServer_handleNoReplyMessage_cold_1();
  }

  else
  {
    v1 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v1;
}

uint64_t captureSourceServer_handleSourceDestructionMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v2 = FigXPCServerDisassociateObjectWithConnection();
  if (v2)
  {
    captureSourceServer_handleSourceDestructionMessage_cold_1();
  }

  return v2;
}

uint64_t captureSourceServer_handleSourceInvalidateMessage(int a1, void *a2)
{
  v8 = 0;
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v2)
  {
    v5 = v2;
    captureSourceServer_handleSourceInvalidateMessage_cold_1(v2, &v8, &v9);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v7 = 0;
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3 && !v3(v8, 0x1F21A16D0, *MEMORY[0x1E695E480], &v7) && (v4 = [v7 BOOLValue], v7, (v4 & 1) != 0))
    {
      return 0;
    }

    else
    {
      v5 = 4294954516;
      captureSourceServer_handleSourceInvalidateMessage_cold_2();
    }
  }

  return v5;
}

uint64_t captureSourceServer_handleCopyProxySourceMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0;
  v33 = 0;
  v30 = 0u;
  v31 = 0u;
  xpc_connection_get_audit_token();
  v28 = 0u;
  v29 = 0u;
  if (FigCaptureClientHasEntitlement(&v28, @"com.apple.private.avfoundation.capture.proxy-devices.allow"))
  {
    v4 = FigXPCMessageCopyCFString();
    if (v4)
    {
      SerializedSource = v4;
      captureSourceServer_handleCopyProxySourceMessage_cold_2();
    }

    else
    {
      v5 = FigXPCMessageCopyCFData();
      if (v5)
      {
        SerializedSource = v5;
        captureSourceServer_handleCopyProxySourceMessage_cold_3();
      }

      else
      {
        [v32 getBytes:&v30 length:32];
        FigSimpleMutexLock();
        if (CFArrayGetCount(sSourceList) >= 1)
        {
          v21 = a3;
          v6 = 0;
          v7 = *MEMORY[0x1E695E480];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v6);
            v27 = 0;
            v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v9)
            {
              break;
            }

            v10 = v9(ValueAtIndex, 0x1F21A1990, v7, &v27);
            if (v10)
            {
              SerializedSource = v10;
              goto LABEL_28;
            }

            v11 = [v27 BOOLValue];

            v27 = 0;
            if (v11)
            {
              captureSourceServer_handleCopyProxySourceMessage_cold_7(&v28);
              SerializedSource = v28;
              goto LABEL_20;
            }

            v26 = 0;
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v12)
            {
              SerializedSource = 4294954514;
LABEL_19:
              FigDebugAssert3();
              goto LABEL_20;
            }

            v13 = v12(ValueAtIndex, @"AttributesDictionary", v7, &v26);
            if (v13)
            {
              SerializedSource = v13;
              goto LABEL_19;
            }

            v14 = [v26 objectForKeyedSubscript:@"UniqueID"];

            v26 = 0;
            if ([v33 isEqualToString:v14])
            {
              v25 = 0;
              v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v15)
              {
                v15(ValueAtIndex, 0x1F21863F0, v7, &v25);
              }

              v28 = 0u;
              v29 = 0u;
              [v25 getBytes:&v28 length:32];

              v25 = 0;
              v24[0] = v30;
              v24[1] = v31;
              *value = v28;
              v23 = v29;
              if (FigCaptureAuditTokenProcessesAreEqual(v24, value))
              {
                *&v24[0] = 0;
                v18 = FigCaptureSourceProxyCreate(v7, ValueAtIndex, &v36);
                if (v18)
                {
                  SerializedSource = v18;
                  captureSourceServer_handleCopyProxySourceMessage_cold_4();
                }

                else
                {
                  CFArrayAppendValue(sProxySourceList, v36);
                  v19 = FigXPCServerAssociateObjectWithConnection();
                  if (v19)
                  {
                    SerializedSource = v19;
                    captureSourceServer_handleCopyProxySourceMessage_cold_5();
                  }

                  else
                  {
                    value[0] = 0;
                    SerializedSource = captureSourceServer_createSerializedSource(ValueAtIndex, *&v24[0], value);
                    if (SerializedSource)
                    {
                      captureSourceServer_handleCopyProxySourceMessage_cold_6();
                    }

                    else
                    {
                      v20 = value[0];
                      xpc_dictionary_set_value(v21, *MEMORY[0x1E69615C8], value[0]);
                      xpc_release(v20);
                    }
                  }
                }

                goto LABEL_20;
              }
            }

            if (CFArrayGetCount(sSourceList) <= ++v6)
            {
              SerializedSource = 0;
              goto LABEL_20;
            }
          }

          SerializedSource = 4294954514;
LABEL_28:
          captureSourceServer_handleCopyProxySourceMessage_cold_8();
          goto LABEL_20;
        }

        SerializedSource = 0;
LABEL_20:
        FigSimpleMutexUnlock();
        if (v36)
        {
          CFRelease(v36);
        }
      }
    }
  }

  else
  {
    captureSourceServer_handleCopyProxySourceMessage_cold_1(&v28);
    SerializedSource = v28;
  }

  return SerializedSource;
}

uint64_t captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0;
  cf = 0;
  xpc_connection_get_audit_token();
  v3 = *MEMORY[0x1E695E480];
  memset(v10, 0, sizeof(v10));
  v4 = FigExternalSyncDeviceDiscoverySessionCreate(v3, v10, &cf);
  if (v4)
  {
    v8 = v4;
    captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage_cold_1();
  }

  else
  {
    v5 = FigXPCServerAssociateObjectWithConnection();
    if (v5)
    {
      v8 = v5;
      captureSourceServer_handleCopyExternalSyncDeviceDiscoverySessionSourceMessage_cold_2();
    }

    else
    {
      v6 = v11;
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_uint64(empty, kFigCaptureSourceServerCopySourcesMessagePayload_ObjectID, v6);
      xpc_dictionary_set_uint64(empty, kFigCaptureSourceServerCopySourcesMessagePayload_SourceType, 6uLL);
      xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], empty);
      xpc_release(empty);
      v8 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t captureSourceServer_handleCheckTCCAccessMessage(int a1, void *a2)
{
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v2)
  {
    captureSourceServer_handleCheckTCCAccessMessage_cold_1();
  }

  else
  {
    xpc_connection_get_audit_token();
    v5 = 0u;
    v6 = 0u;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureSourceServer_checkCameraAccessForClientAsync_block_invoke;
    block[3] = &__block_descriptor_64_e5_v8__0l;
    dispatch_async(sCameraAccessCheckQueue, block);
  }

  return v2;
}

void captureSourceServer_handleMaxStillImageJPEGDataSizeMessage(xpc_object_t xdict)
{
  if (captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_onceToken != -1)
  {
    captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_cold_1();
  }

  v2 = *MEMORY[0x1E69615C8];
  v3 = captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_maxDataSize;

  xpc_dictionary_set_uint64(xdict, v2, v3);
}

uint64_t captureSourceServer_handleShowSystemUserInterfaceMessage(void *a1)
{
  int64 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_SystemUserInterface);
  string = xpc_dictionary_get_string(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_BundleID);
  v4 = xpc_dictionary_get_string(a1, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_AppName);
  if (int64)
  {
    v5 = string == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    captureSourceServer_handleShowSystemUserInterfaceMessage_cold_1();
    return 4294954516;
  }

  else
  {
    v7 = v4;
    v8 = *MEMORY[0x1E695E480];
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
    v10 = CFStringCreateWithCString(v8, v7, 0x8000100u);
    FigCaptureSourceShowSystemUserInterface(int64, v9, v10);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }
}

uint64_t captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage(int a1, void *a2)
{
  v2 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v2)
  {
    v6 = v2;
    captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_1();
    return v6;
  }

  v3 = FigXPCMessageCopyCFString();
  if (v3)
  {
    v6 = v3;
    captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_2();
    return v6;
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 < 2uLL || (v5 = v4[7]) == 0)
  {
    v6 = 4294954514;
    goto LABEL_8;
  }

  v6 = v5(0, 0);
  if (v6)
  {
LABEL_8:
    captureSourceServer_handleUnregisterNotificationForProprietaryDefaultChangesMessage_cold_3();
  }

  return v6;
}

uint64_t captureSourceServer_handlePublishFrameSenderEndpointMessage(void *a1)
{
  value = xpc_dictionary_get_value(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_Endpoint);
  if (value)
  {
    v3 = value;
    v4 = FigXPCMessageCopyCFString();
    if (v4)
    {
      v9 = v4;
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_1();
      return v9;
    }

    v5 = FigXPCMessageCopyCFString();
    if (v5)
    {
      v9 = v5;
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_2();
      return v9;
    }

    int64 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointPID);
    if (int64)
    {
      v7 = xpc_dictionary_get_int64(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointProxyPID);
      v8 = FigXPCMessageCopyCFData();
      if (v8)
      {
        v9 = v8;
        captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_3();
        return v9;
      }

      FigXPCMessageCopyCFData();
      FigXPCMessageCopyCFString();
      if ([CMCaptureFrameSenderEndpointsServerSideSingleton addEndpoint:v3 endpointUniqueID:0 endpointType:0 endpointPID:int64 endpointProxyPID:v7 endpointAuditToken:0 endpointProxyAuditToken:0 endpointCameraUniqueID:@"unknown"])
      {
        [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
      }

      else
      {
        captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_4();
      }
    }

    else
    {
      captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_5();
    }
  }

  else
  {
    captureSourceServer_handlePublishFrameSenderEndpointMessage_cold_6();
  }

  return 0;
}

uint64_t captureSourceServer_handleSuppressFrameSenderEndpointMessage(_xpc_connection_s *a1)
{
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    captureSourceServer_handleSuppressFrameSenderEndpointMessage_cold_1();
    return v2;
  }

  pid = xpc_connection_get_pid(a1);
  if (![0 isEqualToString:@"all-endpoint-uids"])
  {
    if (![CMCaptureFrameSenderEndpointsServerSideSingleton removeEndpointWithUniqueID:0])
    {
      goto LABEL_4;
    }

LABEL_6:
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    return v2;
  }

  if ([CMCaptureFrameSenderEndpointsServerSideSingleton removeAllEndpointsWithPID:pid])
  {
    goto LABEL_6;
  }

LABEL_4:
  captureSourceServer_handleSuppressFrameSenderEndpointMessage_cold_2();
  return v2;
}

uint64_t captureSourceServer_handleCopyFrameSenderEndpointsMessage(void *a1)
{
  v2 = +[CMCaptureFrameSenderEndpointsServerSideSingleton createXPCArrayOfFrameSenderEndpoints];
  if (v2)
  {
    xpc_dictionary_set_value(a1, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointArray, v2);
    v3 = 0;
  }

  else
  {
    captureSourceServer_handleCopyFrameSenderEndpointsMessage_cold_1();
    v3 = 4294954516;
  }

  FigXPCRelease();
  return v3;
}

uint64_t captureSourceServer_handleUpdateCameraOverrideHistoryMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  v5 = a1;
  v14 = 0;
  cf = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  xpc_connection_get_pid(a1);
  v6 = captureSourceServer_getAndRetainSourceObjectFromMessage(v5, a2);
  if (v6)
  {
    v9 = v6;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_1();
LABEL_7:
    xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, v9);
    goto LABEL_8;
  }

  v7 = FigXPCMessageCopyCFString();
  if (v7)
  {
    v9 = v7;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_2();
    goto LABEL_7;
  }

  v8 = FigXPCMessageCopyCFDictionary();
  if (v8)
  {
    v9 = v8;
    captureSourceServer_handleUpdateCameraOverrideHistoryMessage_cold_3();
    goto LABEL_7;
  }

  xpc_dictionary_get_BOOL(a2, kFigCaptureSourceRemoteCameraOverrideHistoryMessageKey_SetOverride);
  xpc_dictionary_set_int64(a3, kFigCaptureSourceServerMessagePayload_ErrorStatus, 0);
  xpc_dictionary_set_BOOL(a3, kFigCaptureSourceRemoteCameraOverrideHistoryReplyMessageKey_OverrideChangedValue, v11 != 0);
  if (v11)
  {
    FigXPCMessageSetCFArray();
  }

  v9 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t captureSourceServer_handleSetPixelBufferPropertyMessage(int a1, void *a2)
{
  v15 = 0;
  cf = 0;
  pixelBufferOut = 0;
  v3 = captureSourceServer_getAndRetainSourceObjectFromMessage(a1, a2);
  if (v3)
  {
    v8 = v3;
    captureSourceServer_handleSetPixelBufferPropertyMessage_cold_1();
    goto LABEL_13;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    v8 = v4;
    captureSourceServer_handleSetPixelBufferPropertyMessage_cold_2();
    goto LABEL_13;
  }

  value = xpc_dictionary_get_value(a2, kFigCaptureSourceRemoteProprietaryDefaultMessagePayload_Value);
  if (value)
  {
    v6 = IOSurfaceLookupFromXPCObject(value);
    if (!v6)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_5();
      v8 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v6, 0, &pixelBufferOut);
    CFRelease(v7);
    if (v8)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_3();
      goto LABEL_13;
    }

    v8 = pixelBufferOut;
    if (!pixelBufferOut)
    {
      captureSourceServer_handleSetPixelBufferPropertyMessage_cold_4();
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v15;
  v9 = cf;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (*v11 >= 6uLL && (v12 = v11[13]) != 0)
  {
    v8 = v12(v9, v10, v8);
  }

  else
  {
    v8 = 4294954514;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v8;
}

void captureSourceServer_serializeActiveFormat(void *a1, void *a2)
{
  v3 = [a1 copyXPCEncoding];
  xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], v3);

  xpc_release(v3);
}

void captureSourceServer_servedObjectRefconDestructor(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    captureSourceServer_servedObjectRefconDestructor_cold_1();
  }

  CFRetain(v2);
  v51[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v2, 0x1F21A1970, v3, v51);
    v5 = v51[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v50 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v2, 0x1F21A16D0, v3, &v50);
  }

  v8 = [v50 BOOLValue];

  *&v9 = -1;
  *(&v9 + 1) = -1;
  v37 = v9;
  v38 = v9;
  xpc_connection_get_audit_token();
  if (!FigSimpleMutexLock())
  {
    if (v6)
    {
LABEL_13:
      if (CFArrayGetCount(sProxySourceList) >= 1)
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(sProxySourceList, v11);
          if (ValueAtIndex == v2)
          {
            CFArrayRemoveValueAtIndex(sProxySourceList, v11);
            goto LABEL_39;
          }

          if ((v6 & 1) == 0)
          {
            v13 = ValueAtIndex;
            if (FigCaptureSourceProxyRealSourceEqualsSource(ValueAtIndex, v2))
            {
              break;
            }
          }

          if (++v11 >= CFArrayGetCount(sProxySourceList))
          {
            goto LABEL_39;
          }
        }

        FigCaptureSourceProxyDetachFromRealSource(v13);
      }

LABEL_39:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"sSourceList(%d)", CFArrayGetCount(sSourceList)];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"sPrewarmingSourceList(%d)", objc_msgSend(sPrewarmingSourceList, "count")];
      FigSimpleMutexUnlock();
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_40:
      if (v2)
      {
        v22 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v22)
        {
          v22(v2);
        }
      }

      goto LABEL_43;
    }

    if (CFArrayGetCount(sSourceList) < 1)
    {
      goto LABEL_39;
    }

    v14 = 0;
    while (1)
    {
      v15 = CFArrayGetValueAtIndex(sSourceList, v14);
      if (v15 == v2)
      {
        break;
      }

      if (++v14 >= CFArrayGetCount(sSourceList))
      {
        goto LABEL_39;
      }
    }

    v16 = v15;
    v49 = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, 0x1F21A1990, v3, &v49);
      v18 = v49;
    }

    else
    {
      v18 = 0;
    }

    v36 = [v18 BOOLValue];
    if (v8)
    {
      v48 = 0;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(v16, 0x1F21863F0, v3, &v48);
        v20 = v48;
      }

      else
      {
        v20 = 0;
      }

      *&v21 = -1;
      *(&v21 + 1) = -1;
      *v47 = v21;
      *&v47[16] = v21;
      [v20 getBytes:v47 length:32];
      v45 = *v47;
      v46 = *&v47[16];
      if (FigCaptureAuditTokenIsValid(&v45))
      {
        v45 = v37;
        v46 = v38;
        v44[0] = *v47;
        v44[1] = *&v47[16];
        if (!FigCaptureAuditTokensAreEqual(&v45, v44))
        {

LABEL_38:
          if (!v36)
          {
            goto LABEL_39;
          }

          goto LABEL_13;
        }
      }

      [sPrewarmingSourceList addObject:v2];
    }

    CFArrayRemoveValueAtIndex(sSourceList, v14);
    goto LABEL_38;
  }

  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_11:
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *v47 = v10;
  *&v47[16] = v10;
  xpc_connection_get_audit_token();
  v45 = *v47;
  v46 = *&v47[16];
  FigCaptureSourceDetachFromClient(v2, &v45);
LABEL_43:
  CFRelease(v2);

  if (!FigSimpleMutexLock())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = [sPrewarmingAssociatedConnectionsByObjectID allKeys];
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v40 + 1) + 8 * i);
          v29 = [sPrewarmingAssociatedConnectionsByObjectID objectForKeyedSubscript:v28];
          v30 = [sPrewarmingAssociatedSourcesByObjectID objectForKeyedSubscript:v28];
          if (v29 == *a1 && v30 == *(a1 + 8))
          {
            [sPrewarmingAssociatedSourcesByObjectID setObject:0 forKeyedSubscript:v28];
            [sPrewarmingAssociatedConnectionsByObjectID setObject:0 forKeyedSubscript:v28];
            goto LABEL_61;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v40 objects:v39 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    if (dword_1ED843FB0)
    {
      LODWORD(v45) = 0;
      LOBYTE(v44[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v45;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v44[0]))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v34 = *(a1 + 8);
        pid = xpc_connection_get_pid(*a1);
        *v47 = 136315650;
        *&v47[4] = "captureSourceServer_servedObjectRefconDestructor";
        *&v47[12] = 2048;
        *&v47[14] = v34;
        *&v47[22] = 1024;
        *&v47[24] = pid;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_61:
    FigSimpleMutexUnlock();
  }

  free(a1);
}

void __captureSourceServer_handleCopySourcesMessage_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    if (CFArrayGetCount(sSourceList) >= 1)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v2);
        v17 = 0u;
        v18 = 0u;
        captureSourceServer_clientAuditTokenForCaptureSource(ValueAtIndex, 0, &v17);
        block = v17;
        v24 = v18;
        v4 = FigCameraUsageAllowedForClient(&block) != 0;
        FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, v4);
        ++v2;
      }

      while (v2 < CFArrayGetCount(sSourceList));
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    v5 = objc_opt_new();
    FigSimpleMutexLock();
    if (CFArrayGetCount(sSourceList) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(sSourceList, v6);
        *&v19 = 0;
        v17 = 0u;
        v18 = 0u;
        captureSourceServer_clientAuditTokenForCaptureSource(v7, &v19, &v17);
        block = v17;
        v24 = v18;
        PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&block);
        [v5 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", PIDFromAuditToken)}];

        ++v6;
      }

      while (v6 < CFArrayGetCount(sSourceList));
    }

    FigSimpleMutexUnlock();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v5 allValues];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:&v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = 0u;
          v16 = 0u;
          [v14 getBytes:&v15 length:32];
          v25 = v15;
          v26 = v16;
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          *&v24 = __captureSourceServer_checkCameraAccessForClientAsync_block_invoke;
          *(&v24 + 1) = &__block_descriptor_64_e5_v8__0l;
          dispatch_async(sCameraAccessCheckQueue, &block);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:&v17 count:16];
      }

      while (v11);
    }
  }
}

void captureSourceServer_clientAuditTokenForCaptureSource(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *a3 = v6;
  a3[1] = v6;
  v9 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(a1, 0x1F21863F0, *MEMORY[0x1E695E480], &v9);
    v8 = v9;
    if (v9)
    {
      if (a2)
      {
        *a2 = v9;
        v8 = v9;
      }

      [v8 getBytes:a3 length:32];
    }
  }
}

uint64_t __captureSourceServer_checkCameraAccessForClientAsync_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v2;
  HasAccessToCamera = FigCaptureClientHasAccessToCamera(&v14);
  FigSimpleMutexLock();
  if (CFArrayGetCount(sSourceList) >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(sSourceList, v4);
      v13 = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(ValueAtIndex, 0x1F21863F0, v5, &v13);
      }

      v14 = 0u;
      v15 = 0u;
      [v13 getBytes:&v14 length:32];
      v11 = v14;
      v12 = v15;
      FigCaptureGetPIDFromAuditToken(&v11);
      v8 = *(a1 + 48);
      v11 = *(a1 + 32);
      v12 = v8;
      v10[0] = v14;
      v10[1] = v15;
      if (FigCaptureAuditTokenProcessesAreEqual(&v11, v10))
      {
        FigVideoCaptureSourceSetClientProcessHasAccessToCamera(ValueAtIndex, HasAccessToCamera);
      }

      ++v4;
    }

    while (v4 < CFArrayGetCount(sSourceList));
  }

  return FigSimpleMutexUnlock();
}

uint64_t __captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_block_invoke()
{
  v0 = +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
  if (!v0)
  {
    result = __captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_block_invoke_cold_1();
    goto LABEL_13;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [objc_msgSend(objc_msgSend(v0 "sourceBackings")];
  result = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (!result)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v3 = result;
  v4 = 0;
  v5 = *v11;
  do
  {
    v6 = 0;
    do
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = [*(*(&v10 + 1) + 8 * v6) sensorDimensions];
      if (v7 * HIDWORD(v7) > v4)
      {
        v4 = v7 * HIDWORD(v7);
      }

      ++v6;
    }

    while (v3 != v6);
    result = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    v3 = result;
  }

  while (result);
  v8 = 2 * v4 / 3;
LABEL_14:
  captureSourceServer_handleMaxStillImageJPEGDataSizeMessage_maxDataSize = v8;
  return result;
}

uint64_t __captureSourceServer_initializeStatics_block_invoke()
{
  sSourceListLock = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9C0];
  sSourceList = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  sPrewarmingSourceList = objc_alloc_init(MEMORY[0x1E695DF70]);
  sProxySourceList = CFArrayCreateMutable(v0, 0, v1);
  sPrewarmingAssociatedSourcesByObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
  sPrewarmingAssociatedConnectionsByObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCameraAccessCheckQueue = FigDispatchQueueCreateWithPriority();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void FigRemoteQueueProcessAssertion_awakeClientAndRunCallback(int a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __FigRemoteQueueProcessAssertion_awakeClientAndRunCallback_block_invoke;
  v5[3] = &unk_1E799CB90;
  v6 = a1;
  v5[4] = a2;
  dispatch_async(global_queue, v5);
}

void dfp_addBuffer(void *a1, void *a2, void *a3)
{
  v6 = [a2 err];
  if (v6)
  {
    v15 = v6;
    if (dword_1EB58DF00)
    {
      v24 = 0;
      v23 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_36;
  }

  v7 = [a3 type];
  if (v7 <= 18)
  {
    if (v7 <= 9)
    {
      if (v7 == 8)
      {
        v8 = 0;
      }

      else
      {
        if (v7 != 9)
        {
          goto LABEL_42;
        }

        v8 = 1;
      }
    }

    else
    {
      switch(v7)
      {
        case 10:
          v8 = 2;
          break;
        case 11:
          v8 = 3;
          break;
        case 12:
          v8 = 4;
          break;
        default:
          goto LABEL_42;
      }
    }
  }

  else if (v7 > 23)
  {
    switch(v7)
    {
      case 24:
        v8 = 7;
        break;
      case 25:
        v8 = 9;
        break;
      case 27:
        v8 = 6;
        break;
      default:
        goto LABEL_42;
    }
  }

  else
  {
    switch(v7)
    {
      case 19:
        return;
      case 22:
        v8 = 8;
        break;
      case 23:
        v8 = 5;
        break;
      default:
        goto LABEL_42;
    }
  }

  v9 = [a2 expectedBufferTypes];
  if (([v9 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", objc_msgSend(a3, "type"))}] & 1) == 0)
  {
LABEL_42:
    v24 = 0;
    v23 = 0;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = 4294954516;
LABEL_36:
    if (![a2 err])
    {
      [a2 setErr:v15];
    }

    return;
  }

  if (dword_1EB58DF00)
  {
    v24 = 0;
    v23 = 0;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = [a3 buffer];
  v12 = *off_1E798A0B8;
  v13 = CVBufferCopyAttachment(v11, *off_1E798A0B8, 0);
  if (v13)
  {
    v14 = [a1 addInputResource:v13 type:v8];
  }

  else if ([a3 lscGainMap] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [a1 addBuffer:objc_msgSend(a3 metadata:"buffer") type:objc_msgSend(a3 lscGainMap:"metadata") lscGainMapParameters:{v8, objc_msgSend(a3, "lscGainMap"), objc_msgSend(a3, "lscGainMapParameters")}];
  }

  else
  {
    v14 = [a1 addBuffer:objc_msgSend(a3 metadata:"buffer") type:{objc_msgSend(a3, "metadata"), v8}];
  }

  v15 = v14;

  CVBufferRemoveAttachment([a3 buffer], v12);
  if (v15)
  {
    goto LABEL_36;
  }
}

void __dfp_createStateMachine_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    if (dword_1EB58DF00)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

__CFString *BWSmartFramingSceneMonitorFieldOfViewKeyFromType(int a1)
{
  result = @"None";
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_Portrait;
    }

    else
    {
      v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_None;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_ZoomedOutPortrait;
        break;
      case 3:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_Landscape;
        break;
      case 4:
        v3 = kFigCaptureSourceAttributeKeySmartFramingZoomFactorsByFieldOfViewKey_ZoomedOutLandscape;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

double sfsm_unpackFaceRectAndAdjustWithExpansionScaleFactor(double a1)
{
  v10 = *MEMORY[0x1E695F050];
  v11 = *(MEMORY[0x1E695F050] + 16);
  FigCFDictionaryGetCGRectIfPresent();
  v3 = FigCaptureMetadataUtilitiesScaleRect(*&v10, *(&v10 + 1), *&v11, *(&v11 + 1), a1);
  if (v2 <= 1.0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = fmax(v4, 0.0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 1.0;
  v12.size.height = 1.0;
  MinX = CGRectGetMinX(v12);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 1.0;
  v13.size.height = 1.0;
  v7 = CGRectGetMaxX(v13) - v5;
  if (v7 >= v3)
  {
    v7 = v3;
  }

  if (MinX >= v7)
  {
    v8 = MinX;
  }

  else
  {
    v8 = v7;
  }

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  CGRectGetMinY(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 1.0;
  v15.size.height = 1.0;
  CGRectGetMaxY(v15);
  return v8;
}

uint64_t BWSmartFramingSceneMonitorFieldOfViewTypeFromKey(void *a1)
{
  if ([a1 isEqualToString:@"FieldOfViewPortrait"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"FieldOfViewZoomedOutPortrait"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"FieldOfViewLandscape"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"FieldOfViewZoomedOutLandscape"])
  {
    return 4;
  }

  return 0;
}

uint64_t BWSmartFramingSceneMonitorAspectRatioFromFieldOfView(int a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a1 == 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (a1 == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 <= 2)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t BWSmartFramingSceneMonitorGetFieldOfView(int a1, int a2, void *a3, double a4)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v22;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

LABEL_8:
  v13 = 0;
  while (1)
  {
    if (*v22 != v10)
    {
      objc_enumerationMutation(a3);
    }

    v14 = *(*(&v21 + 1) + 8 * v13);
    v15 = BWSmartFramingSceneMonitorFieldOfViewTypeFromKey(v14);
    v16 = v15;
    if (v15 > 2)
    {
      v17 = v11;
      if (v15 != 3)
      {
        v17 = 0;
        if (v15 == 4)
        {
          v17 = v11;
        }
      }
    }

    else
    {
      v17 = v12;
      if (v15 != 1)
      {
        v17 = 0;
        if (v15 == 2)
        {
          v17 = v12;
        }
      }
    }

    if (v17 == a1)
    {
      [objc_msgSend(a3 objectForKeyedSubscript:{v14), "doubleValue"}];
      if (vabdd_f64(a4, v18) < 0.0001)
      {
        return v16;
      }
    }

    if (v9 == ++v13)
    {
      v9 = [a3 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v9)
      {
        goto LABEL_8;
      }

      return 0;
    }
  }
}

CGFloat BWSmartFramingSceneMonitorNormalizedFieldOfViewRectFromFieldOfView(int a1, void *a2, int a3)
{
  [objc_msgSend(a2 objectForKeyedSubscript:{BWSmartFramingSceneMonitorFieldOfViewKeyFromType(a1)), "doubleValue"}];
  v6 = v5;
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (a1 == 4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a1 != 3)
  {
    v7 = v8;
  }

  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (a1 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a1 != 1)
  {
    v9 = v10;
  }

  if (a1 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = BWAspectRatioValueFromAspectRatio(v11);
  v13 = FigCaptureMetadataUtilitiesRectWithAspectRatioInsideDimensions(1.0, 1.0, v12);

  return FigCaptureMetadataUtilitiesScaleRect(v13, v14, v15, v16, 1.0 / v6);
}

uint64_t FigExternalSyncDeviceDiscoverySessionCreate(uint64_t a1, _OWORD *a2, void *a3)
{
  v10 = 0;
  FigCaptureSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  v6 = v5;
  if (v5)
  {
    FigExternalSyncDeviceDiscoverySessionCreate_cold_1(v5, &v10);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = a2[1];
    *(DerivedStorage + 4) = *a2;
    *(DerivedStorage + 20) = v8;
    *(DerivedStorage + 40) = [[FigExternalSyncDeviceDiscoverySessionDelegateHandler alloc] initWithSource:v10];
    *(DerivedStorage + 48) = FigDispatchQueueCreateWithPriority();
    *a3 = v10;
  }

  return v6;
}

void __externalSyncDeviceDiscoverySession_postNotificationWithPayload_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t externalSyncDeviceDiscoverySession_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    [*(DerivedStorage + 40) forceCleanup];
    *v1 = 1;

    *(v1 + 40) = 0;
    v2 = *(v1 + 48);
    if (v2)
    {
      dispatch_release(v2);
      *(v1 + 48) = 0;
    }
  }

  return 0;
}

__CFString *externalSyncDeviceDiscoverySession_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigExternalSyncDevice %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t externalSyncDeviceDiscoverySession_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (CFEqual(a2, @"CurrentExternalSyncDevices"))
    {
      v7 = [+[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager](FigExternalSyncDeviceDiscoverySessionManager "sharedFigExternalSyncDeviceDiscoverySessionManager")];
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            [v8 setObject:objc_msgSend(v13 forKey:{"getDeviceInfoDict"), objc_msgSend(v13, "externalSyncDeviceDeviceIdentifer")}];
            [v8 setObject:objc_msgSend(v13 forKeyedSubscript:{"getDeviceInfoDict"), objc_msgSend(v13, "externalSyncDeviceDeviceIdentifer")}];
          }

          v10 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
        }

        while (v10);
      }

      *a4 = v8;
    }

    return 0;
  }
}

uint64_t externalSyncDeviceDiscoverySession_SetProperty()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return 0;
}

uint64_t BWOverlaidRectangleDrawRectanglesInBitmapContext(void *a1, CGContext *a2, __CVBuffer *a3)
{
  v4 = a1;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  result = [a1 countByEnumeratingWithState:&v98 objects:v97 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v99;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v85 = *(MEMORY[0x1E695F060] + 8);
    v86 = *MEMORY[0x1E695F060];
    __asm { FMOV            V0.2D, #1.0 }

    v83 = _Q0;
    v82 = xmmword_1AD056CC0;
    v91 = *v99;
    v92 = v4;
    v89 = v9;
    v90 = *MEMORY[0x1E695F058];
    v87 = v11;
    v88 = v10;
    do
    {
      v16 = 0;
      do
      {
        if (*v99 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v17 = *(*(&v98 + 1) + 8 * v16);
        [v17 bounds];
        x = v107.origin.x;
        y = v107.origin.y;
        width = v107.size.width;
        height = v107.size.height;
        if (!CGRectIsNull(v107))
        {
          v108.origin.x = x;
          v108.origin.y = y;
          v108.size.width = width;
          v108.size.height = height;
          v125.origin.x = v8;
          v125.origin.y = v9;
          v125.size.width = v10;
          v125.size.height = v11;
          if (!CGRectEqualToRect(v108, v125))
          {
            v22 = [v17 displayStyle];
            v23 = [v17 displayStyle];
            v24 = [v17 displayStyle];
            if (v24 == 4)
            {
              DeviceGray = CGColorSpaceCreateDeviceGray();
              components.a = 0.0;
              goto LABEL_11;
            }

            y = CGBitmapContextGetHeight(a2) - y - height;
            DeviceGray = CGColorSpaceCreateDeviceGray();
            components.a = 0.0;
            if (v23 == 3)
            {
LABEL_11:
              v26 = 1;
              v27 = 0.0;
              v29 = v85;
              v28 = v86;
            }

            else
            {
              [objc_msgSend(v17 "rampAnimation")];
              v26 = 0;
              v27 = v30;
              v29 = -1.0;
              v28 = 1.0;
            }

            components.b = v27;
            v31 = CGColorCreate(DeviceGray, &components.a);
            v106.width = v28;
            v106.height = v29;
            CGContextSetShadowWithColor(a2, v106, 0.0, v31);
            if (v31)
            {
              CFRelease(v31);
            }

            components.a = 0.04;
            v32 = 0.0;
            if ((v26 & 1) == 0)
            {
              if (v22 == 2)
              {
                v33 = 0.1;
              }

              else
              {
                v33 = 0.125;
              }

              [objc_msgSend(v17 "rampAnimation")];
              v32 = v33 * v34;
            }

            components.b = v32;
            v35 = CGColorCreate(DeviceGray, &components.a);
            v36 = 0.96;
            if (v22 == 2)
            {
              v36 = 1.0;
            }

            v104.a = v36;
            [objc_msgSend(v17 "rampAnimation")];
            v104.b = v37 * 0.94;
            if (v23 == 3 || v24 == 4)
            {
              v38 = vdup_n_s32(v23 == 3);
              v39.i64[0] = v38.u32[0];
              v39.i64[1] = v38.u32[1];
              *&v104.a = vbslq_s8(vcltzq_s64(vshlq_n_s64(v39, 0x3FuLL)), v82, v83);
            }

            v40 = CGColorCreate(DeviceGray, &v104.a);
            CGContextSetFillColorWithColor(a2, v35);
            CGContextSetStrokeColorWithColor(a2, v40);
            if (v35)
            {
              CFRelease(v35);
            }

            if (v40)
            {
              CFRelease(v40);
            }

            if (DeviceGray)
            {
              CFRelease(DeviceGray);
            }

            v41 = CGBitmapContextGetWidth(a2);
            if (v41 >= CGBitmapContextGetHeight(a2))
            {
              v42 = CGBitmapContextGetHeight(a2);
            }

            else
            {
              v42 = CGBitmapContextGetWidth(a2);
            }

            v43 = 7.0;
            if (v42 < 0x438)
            {
              v43 = 5.0;
            }

            if (v22 != 2)
            {
              v43 = 3.0;
            }

            if (v24 == 4)
            {
              v43 = 4.0;
            }

            if (v23 == 3)
            {
              v44 = 3.0;
            }

            else
            {
              v44 = v43;
            }

            CGContextSetLineWidth(a2, v44);
            if (width >= height)
            {
              v45 = height;
            }

            else
            {
              v45 = width;
            }

            v96 = v45;
            v46 = [v17 animationState] == 0;
            if (v22 == 2)
            {
              v46 = [v17 animationState] == 0;
              v47 = &unk_1AD056CB0;
            }

            else
            {
              v47 = &unk_1AD056CA8;
            }

            v48 = v47[v46];
            [objc_msgSend(v17 "rampAnimation")];
            v50 = v48 + (1.0 - v48) * v49;
            if (v23 == 3)
            {
              v51 = 1.0;
            }

            else
            {
              v51 = v50;
            }

            if (v51 != 1.0)
            {
              v109.origin.x = x;
              v109.origin.y = y;
              v109.size.width = width;
              v109.size.height = height;
              MidX = CGRectGetMidX(v109);
              v110.origin.x = x;
              v110.origin.y = y;
              v110.size.width = width;
              v110.size.height = height;
              MidY = CGRectGetMidY(v110);
              v95 = *(MEMORY[0x1E695EFD0] + 16);
              *&components.a = *MEMORY[0x1E695EFD0];
              v94 = *&components.a;
              *&components.c = v95;
              *&components.tx = *(MEMORY[0x1E695EFD0] + 32);
              v93 = *&components.tx;
              CGAffineTransformMakeTranslation(&v104, -MidX, -MidY);
              *&t1.a = v94;
              *&t1.c = v95;
              *&t1.tx = v93;
              CGAffineTransformConcat(&components, &t1, &v104);
              CGAffineTransformMakeScale(&t1, v51, v51);
              v102 = components;
              CGAffineTransformConcat(&v104, &v102, &t1);
              components = v104;
              CGAffineTransformMakeTranslation(&t1, MidX, MidY);
              v102 = components;
              CGAffineTransformConcat(&v104, &v102, &t1);
              components = v104;
              v111.origin.x = x;
              v111.origin.y = y;
              v111.size.width = width;
              v111.size.height = height;
              v112 = CGRectApplyAffineTransform(v111, &v104);
              x = v112.origin.x;
              y = v112.origin.y;
              width = v112.size.width;
              height = v112.size.height;
            }

            v113.origin.x = x;
            v113.origin.y = y;
            v113.size.width = width;
            v113.size.height = height;
            v114 = CGRectInset(v113, v44 * -0.5, v44 * -0.5);
            v54 = v114.origin.x;
            v55 = v114.origin.y;
            v56 = v114.size.width;
            v57 = v114.size.height;
            [objc_msgSend(v17 "rampAnimation")];
            if (v58 == 1.0)
            {
              v115.origin.x = v54;
              v115.origin.y = v55;
              v115.size.width = v56;
              v115.size.height = v57;
              v116 = CGRectIntegral(v115);
              v54 = v116.origin.x;
              v55 = v116.origin.y;
              v56 = v116.size.width;
              v57 = v116.size.height;
            }

            _ZF = v23 == 3 || v22 == 2;
            v60 = 7.0;
            if (!_ZF)
            {
              v60 = 24.0;
            }

            if (v23 == 3)
            {
              v60 = 1.6;
            }

            v61 = v60 * v51;
            if (v96 >= v61 + v61)
            {
              v62 = v61;
            }

            else
            {
              v62 = v96 * 0.5;
            }

            v117.origin.x = v54;
            v117.origin.y = v55;
            v117.size.width = v56;
            v117.size.height = v57;
            v63 = CGPathCreateWithRoundedRect(v117, v62, v62, 0);
            v64 = v63;
            if (v24 == 4)
            {
              v11 = v87;
              if (v63)
              {
                CFRelease(v63);
              }

              v118.origin.x = v54;
              v118.origin.y = v55;
              v118.size.width = v56;
              v118.size.height = v57;
              v64 = CGPathCreateWithRect(v118, 0);
            }

            else
            {
              v11 = v87;
            }

            CGContextBeginPath(a2);
            CGContextAddPath(a2, v64);
            if (v24 == 4)
            {
              v65.f64[0] = v55;
              v66 = FigCaptureMetadataUtilitiesRoundRectToEvenCoordinatesPreservingSquareness(1u, v54, v65, v56, v57, 0.0);
              v68 = v67;
              v70 = v69;
              v72 = v71;
              FigDraw420Rectangle(a3, v66, v67, v69, v71, 208, 58, 153);
              v119.origin.x = v66;
              v119.origin.y = v68;
              v119.size.width = v70;
              v119.size.height = v72;
              v120 = CGRectInset(v119, 1.0, 1.0);
              v73 = v120.origin.x;
              v74 = v120.origin.y;
              v75 = v120.size.width;
              v76 = v120.size.height;
              FigDraw420Rectangle(a3, v120.origin.x, v120.origin.y, v120.size.width, v120.size.height, 208, 58, 153);
              v121.origin.x = v73;
              v121.origin.y = v74;
              v121.size.width = v75;
              v121.size.height = v76;
              v122 = CGRectInset(v121, 1.0, 1.0);
              v77 = v122.origin.x;
              v78 = v122.origin.y;
              v79 = v122.size.width;
              v80 = v122.size.height;
              FigDraw420Rectangle(a3, v122.origin.x, v122.origin.y, v122.size.width, v122.size.height, 208, 58, 153);
              v123.origin.x = v77;
              v123.origin.y = v78;
              v123.size.width = v79;
              v123.size.height = v80;
              v124 = CGRectInset(v123, 1.0, 1.0);
              FigDraw420Rectangle(a3, v124.origin.x, v124.origin.y, v124.size.width, v124.size.height, 208, 58, 153);
            }

            else
            {
              if (v23 == 3)
              {
                v81 = kCGPathStroke;
              }

              else
              {
                v81 = kCGPathFillStroke;
              }

              CGContextDrawPath(a2, v81);
            }

            v7 = v91;
            v4 = v92;
            v9 = v89;
            v8 = v90;
            v10 = v88;
            CGContextResetClip(a2);
            if (v64)
            {
              CFRelease(v64);
            }
          }
        }

        ++v16;
      }

      while (v6 != v16);
      result = [v4 countByEnumeratingWithState:&v98 objects:v97 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t fillGDCParametersFromDistortionModels(float64x2_t *a1, double *a2, uint64_t a3, float a4, float a5)
{
  *&v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (!a1)
  {
    fillGDCParametersFromDistortionModels_cold_3();
    return 4294954516;
  }

  if (!a2)
  {
    fillGDCParametersFromDistortionModels_cold_2();
    return 4294954516;
  }

  if (!a3)
  {
    fillGDCParametersFromDistortionModels_cold_1();
    return 4294954516;
  }

  *&v31 = vcvt_f32_f64(a1[1]);
  *&v32 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = a1->f64[0];
  v6 = a1->f64[1];
  v7 = a1->f64[0];
  v8 = v6;
  *(&v32 + 2) = v7;
  *(&v40 + 1) = v8;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  *(&v41 + 1) = a4;
  v42 = a5;
  v9 = (a2 + 12);
  v10 = a1 + 6;
  v11 = vdupq_lane_s64(COERCE__INT64(a2[1] * *a2), 0);
  v12 = vdupq_lane_s64(COERCE__INT64(v5 * v6), 0);
  for (i = 32; i != 64; i += 8)
  {
    v14 = v9[-4];
    v15 = *v9++;
    v16 = (&v27 + i);
    v16[-4] = vcvt_f32_f64(vmlaq_f64(v14, v15, v11));
    v17 = v10[-4];
    v18 = *v10++;
    *v16 = vcvt_f32_f64(vmlaq_f64(v17, v18, v12));
  }

  result = 0;
  *(a3 + 240) = v42;
  v20 = v40;
  *(a3 + 192) = v39;
  *(a3 + 208) = v20;
  *(a3 + 224) = v41;
  v21 = v36;
  *(a3 + 128) = v35;
  *(a3 + 144) = v21;
  v22 = v38;
  *(a3 + 160) = v37;
  *(a3 + 176) = v22;
  v23 = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v23;
  v24 = v34;
  *(a3 + 96) = v33;
  *(a3 + 112) = v24;
  v25 = v28;
  *a3 = v27;
  *(a3 + 16) = v25;
  v26 = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = v26;
  return result;
}

uint64_t MediaAnalysisLibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = MediaAnalysisLibraryCore_frameworkLibrary;
  v5 = MediaAnalysisLibraryCore_frameworkLibrary;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E799D510;
    v7 = *off_1E799D520;
    v8 = 0;
    v3[3] = _sl_dlopen();
    MediaAnalysisLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACC3F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  MediaAnalysisLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaAnalysisLibrary()
{
  v1 = 0;
  result = MediaAnalysisLibraryCore();
  if (!result)
  {
    MediaAnalysisLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getVCPCaptureAnalysisSessionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__43;
  v0 = getVCPCaptureAnalysisSessionClass_softClass;
  v7 = __Block_byref_object_dispose__43;
  v8 = getVCPCaptureAnalysisSessionClass_softClass;
  if (!getVCPCaptureAnalysisSessionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVCPCaptureAnalysisSessionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVCPCaptureAnalysisSessionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC3F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPCaptureAnalysisSessionClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPCaptureAnalysisSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVCPCaptureAnalysisSessionClass_block_invoke_cold_1();
  }

  getVCPCaptureAnalysisSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr;
  v6 = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr;
  if (!getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr)
  {
    v1 = MediaAnalysisLibrary();
    v4[3] = dlsym(v1, "VCPCaptureAnalysisDispatchQueuePropertyKey");
    getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC3F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisDispatchQueuePropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVCPCaptureAnalysisDispatchQueuePropertyKey()
{
  VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc = getVCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc();
  if (!VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc)
  {
    getVCPCaptureAnalysisDispatchQueuePropertyKey_cold_1();
  }

  return *VCPCaptureAnalysisDispatchQueuePropertyKeySymbolLoc;
}

void *__getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisSubjectMotionScoreKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisSubjectMotionScoreKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPCaptureAnalysisMotionDivScoreKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPCaptureAnalysisMotionDivScoreKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigFlatDictionaryGetMakerNoteKeySpace()
{
  if (sKeySpaceRegisterOnceToken != -1)
  {
    FigFlatDictionaryGetMakerNoteKeySpace_cold_1();
  }

  return sMetadataKeySpace;
}

uint64_t fdek_registerKeySpaceAndPredefinedMetadataKeys()
{
  v0 = 0;
  sMetadataKeySpace = FigFlatDictionaryKeySpaceRegister(0x5Fu, 1702391150);
  do
  {
    result = FigFlatDictionaryKeyRegisterExistingKey(sMetadataKeySpace, *(&FigFlatDictionaryMakerNoteKeys + v0));
    v0 += 8;
  }

  while (v0 != 760);
  return result;
}

uint64_t FigExternalStorageDeviceManagerRemoteCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = remoteExternalStorageDeviceManagerClient_EnsureClientEstablished();
  if (v4)
  {
    v10 = v4;
    FigExternalStorageDeviceManagerRemoteCreate_cold_1();
  }

  else
  {
    FigExternalStorageDeviceManagerGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v10 = v5;
      FigExternalStorageDeviceManagerRemoteCreate_cold_2();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v7 = DerivedStorage;
        *DerivedStorage = FigSimpleMutexCreate();
        v8 = FigXPCCreateBasicMessage();
        if (v8)
        {
          v10 = v8;
          FigExternalStorageDeviceManagerRemoteCreate_cold_3();
        }

        else
        {
          v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (v9)
          {
            v10 = v9;
            FigExternalStorageDeviceManagerRemoteCreate_cold_4();
          }

          else
          {
            v7[1] = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
            v10 = FigXPCRemoteClientAssociateObject();
            if (v10)
            {
              FigExternalStorageDeviceManagerRemoteCreate_cold_5();
            }

            else
            {
              *a3 = 0;
            }
          }
        }
      }

      else
      {
        FigExternalStorageDeviceManagerRemoteCreate_cold_6(&v12);
        v10 = v12;
      }
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t remoteExternalStorageDeviceManagerClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E798FC38;
  block[4] = &v3;
  if (remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_gFigExternalStorageDeviceManagerRemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteExternalStorageDeviceManagerClient_EnsureClientEstablished_gFigExternalStorageDeviceManagerRemoteClientSetupOnce, block);
  }

  if (gFigExternalStorageDeviceManagerRemoteClient)
  {
    v0 = *(v4 + 6);
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v0 = FigSignalErrorAtGM();
    *(v4 + 6) = v0;
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t FigExternalStorageDeviceManagerRemoteSupported()
{
  if (!remoteExternalStorageDeviceManagerClient_EnsureClientEstablished())
  {
    return 1;
  }

  FigExternalStorageDeviceManagerRemoteSupported_cold_1();
  return 0;
}

uint64_t remoteExternalStorageDeviceManagerClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

uint64_t remoteExternalStorageDeviceManagerClient_handleServerMessage()
{
  if (CMBaseObjectGetDerivedStorage())
  {
    OpCode = FigXPCMessageGetOpCode();
    if (OpCode)
    {
      v1 = OpCode;
      remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_1();
    }

    else
    {
      return 4294948025;
    }
  }

  else
  {
    remoteExternalStorageDeviceManagerClient_handleServerMessage_cold_7(&cf);
    return cf;
  }

  return v1;
}

uint64_t remoteFigExternalStorageDeviceManager_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    remoteFigExternalStorageDeviceManager_Finalize_cold_3(&v3);
    goto LABEL_6;
  }

  v1 = DerivedStorage;
  FigXPCRemoteClientDisassociateObject();
  FigSimpleMutexLock();
  if (!*(v1 + 16))
  {
    if (FigXPCCreateBasicMessage())
    {
      remoteFigExternalStorageDeviceManager_Finalize_cold_1();
    }

    else
    {
      if (!FigXPCRemoteClientSendAsyncMessage())
      {
        goto LABEL_5;
      }

      remoteFigExternalStorageDeviceManager_Finalize_cold_2();
    }

    FigSimpleMutexUnlock();
    goto LABEL_6;
  }

LABEL_5:
  _Block_release(*(v1 + 40));
  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  return FigXPCRelease();
}

__CFString *remoteFigExternalStorageDeviceManager_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = CFGetRetainCount(a1);
    v7 = CFGetAllocator(a1);
    CFStringAppendFormat(Mutable, 0, @"<FigExternalStorageDeviceManagerRemote %p retainCount: %ld allocator: %p objectID %016llx", a1, v6, v7, *(v3 + 8));
  }

  else
  {
    remoteFigExternalStorageDeviceManager_CopyDebugDescription_cold_1();
    return 0;
  }

  return Mutable;
}

uint64_t remoteFigExternalStorageDeviceManager_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 0;
  if (!a2)
  {
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_4(&v8);
LABEL_9:
    v5 = v8;
    goto LABEL_6;
  }

  if (!a4)
  {
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_3(&v8);
    goto LABEL_9;
  }

  *a4 = 0;
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v7);
  if (ObjectID)
  {
    v5 = ObjectID;
    remoteFigExternalStorageDeviceManager_CopyProperty_cold_1();
  }

  else
  {
    v5 = FigXPCSendStdCopyPropertyMessage();
    if (v5)
    {
      remoteFigExternalStorageDeviceManager_CopyProperty_cold_2();
    }
  }

LABEL_6:
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t remoteExternalStorageDeviceManagerClient_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a1)
    {
      v5 = DerivedStorage;
      if (*(DerivedStorage + 16))
      {
        remoteExternalStorageDeviceManagerClient_GetObjectID_cold_1(&v7);
        return v7;
      }

      else
      {
        result = 0;
        *a2 = *(v5 + 8);
      }
    }

    else
    {
      remoteExternalStorageDeviceManagerClient_GetObjectID_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    remoteExternalStorageDeviceManagerClient_GetObjectID_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t remoteFigExternalStorageDeviceManager_beginMonitoring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    *(v8 + 24) = a4;
    *(v8 + 32) = a3;
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v13);
    if (ObjectID)
    {
      v11 = ObjectID;
      remoteFigExternalStorageDeviceManager_beginMonitoring_cold_1();
    }

    else
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        v11 = v10;
        remoteFigExternalStorageDeviceManager_beginMonitoring_cold_2();
      }

      else
      {
        v11 = FigXPCRemoteClientSendSyncMessage();
        if (v11)
        {
          remoteFigExternalStorageDeviceManager_beginMonitoring_cold_3();
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_beginMonitoring_cold_4(&v14);
    v11 = v14;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v11;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray(uint64_t a1)
{
  v9 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v9);
    if (ObjectID)
    {
      v7 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_1();
    }

    else
    {
      v3 = FigXPCCreateBasicMessage();
      if (v3)
      {
        v7 = v3;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_2();
      }

      else
      {
        v4 = FigXPCMessageSetCFString();
        if (v4)
        {
          v7 = v4;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_3();
        }

        else
        {
          v5 = FigXPCMessageSetCFArray();
          if (v5)
          {
            v7 = v5;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_4();
          }

          else
          {
            v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v6)
            {
              v7 = v6;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_5();
            }

            else
            {
              v7 = FigXPCMessageCopyCFArray();
              if (v7)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_6();
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableURLArray_cold_7(&v10);
    v7 = v10;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray(uint64_t a1)
{
  v9 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v9);
    if (ObjectID)
    {
      v7 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1();
    }

    else
    {
      v3 = FigXPCCreateBasicMessage();
      if (v3)
      {
        v7 = v3;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2();
      }

      else
      {
        v4 = FigXPCMessageSetCFString();
        if (v4)
        {
          v7 = v4;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3();
        }

        else
        {
          v5 = FigXPCMessageSetCFArray();
          if (v5)
          {
            v7 = v5;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4();
          }

          else
          {
            v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v6)
            {
              v7 = v6;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_5();
            }

            else
            {
              v7 = FigXPCMessageCopyCFArray();
              if (v7)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6();
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(&v10);
    v7 = v10;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty(uint64_t a1)
{
  v9 = 0;
  if (CMBaseObjectGetDerivedStorage())
  {
    FigSimpleMutexLock();
    ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v9);
    if (ObjectID)
    {
      v7 = ObjectID;
      remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_1();
    }

    else
    {
      v3 = FigXPCCreateBasicMessage();
      if (v3)
      {
        v7 = v3;
        remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_2();
      }

      else
      {
        v4 = FigXPCMessageSetCFString();
        if (v4)
        {
          v7 = v4;
          remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_3();
        }

        else
        {
          v5 = FigXPCMessageSetCFString();
          if (v5)
          {
            v7 = v5;
            remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_4();
          }

          else
          {
            v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v6)
            {
              v7 = v6;
              remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_5();
            }

            else
            {
              v7 = FigXPCMessageCopyCFObject();
              if (v7)
              {
                remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_6();
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    remoteFigExternalStorageDeviceManager_copyStorageDeviceProperty_cold_7(&v10);
    v7 = v10;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t remoteFigExternalStorageDeviceManager_checkAuthorizationStatus(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_6(&v11);
LABEL_12:
    v8 = v11;
    goto LABEL_9;
  }

  if (!a3)
  {
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_5(&v11);
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v10);
  if (ObjectID)
  {
    v8 = ObjectID;
    remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_1();
  }

  else
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6)
    {
      v8 = v6;
      remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_2();
    }

    else
    {
      v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (v7)
      {
        v8 = v7;
        remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_3();
      }

      else
      {
        v8 = FigXPCMessageCopyCFNumber();
        if (v8)
        {
          remoteFigExternalStorageDeviceManager_checkAuthorizationStatus_cold_4();
        }

        else
        {
          *a3 = FigCFNumberGetSInt32();
        }
      }
    }
  }

  FigSimpleMutexUnlock();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteFigExternalStorageDeviceManager_requestAuthorization(uint64_t a1, uint64_t a2, const void *a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_5(&v12);
LABEL_11:
    v9 = v12;
    goto LABEL_8;
  }

  if (!a3)
  {
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_4(&v12);
    goto LABEL_11;
  }

  v6 = DerivedStorage;
  FigSimpleMutexLock();
  *(v6 + 40) = _Block_copy(a3);
  ObjectID = remoteExternalStorageDeviceManagerClient_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    v9 = ObjectID;
    remoteFigExternalStorageDeviceManager_requestAuthorization_cold_1();
  }

  else
  {
    v8 = FigXPCCreateBasicMessage();
    if (v8)
    {
      v9 = v8;
      remoteFigExternalStorageDeviceManager_requestAuthorization_cold_2();
    }

    else
    {
      v9 = FigXPCRemoteClientSendSyncMessage();
      if (v9)
      {
        remoteFigExternalStorageDeviceManager_requestAuthorization_cold_3();
      }
    }
  }

  FigSimpleMutexUnlock();
LABEL_8:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

uint64_t localQueueRegister()
{
  sLocalQueueClass = 0;
  unk_1EB590830 = "FigLocalQueue";
  qword_1EB590838 = localQueueInit;
  unk_1EB590840 = 0;
  qword_1EB590848 = localQueueFinalize;
  unk_1EB590850 = 0;
  qword_1EB590858 = 0;
  unk_1EB590860 = 0;
  qword_1EB590868 = localQueueCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sLocalQueueID = result;
  return result;
}

uint64_t FigLocalQueueCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x1B26F02D0](&FigLocalQueueGetTypeID_registerOnce, localQueueRegister);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = FigSimpleMutexCreate();
      v5[2] = v6;
      if (v6)
      {
        v7 = FigDispatchQueueCreateWithPriority();
        v5[3] = v7;
        if (v7)
        {
          result = 0;
          *a3 = v5;
          return result;
        }

        FigLocalQueueCreate_cold_1();
      }

      else
      {
        FigLocalQueueCreate_cold_2();
      }

      CFRelease(v5);
    }

    else
    {
      FigLocalQueueCreate_cold_3();
    }

    return 4294949966;
  }

  else
  {
    FigLocalQueueCreate_cold_4();
    return 4294949967;
  }
}

uint64_t FigLocalQueueEnqueue(void *a1, int *a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if (!a1[5])
  {
    goto LABEL_16;
  }

  v6 = *a2;
  if (*a2 == 3 || v6 == 6)
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (v6 == 5)
  {
    v8 = 3;
LABEL_10:
    v9 = *&a2[v8];
    if (v9)
    {
      CFRetain(*&a2[v8]);
    }

    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  CFRetain(a1);
  v10 = a1[4];
  if (!v10)
  {
    v10 = a1[3];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __FigLocalQueueEnqueue_block_invoke;
  v12[3] = &unk_1E799DB60;
  v12[4] = a3;
  v12[5] = a1;
  v13 = *a2;
  v14 = a2[4];
  v12[6] = v9;
  dispatch_async(v10, v12);
LABEL_16:
  FigSimpleMutexUnlock();
  return 0;
}

void __FigLocalQueueEnqueue_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);
      v8 = *(a1 + 56);
      v9 = *(a1 + 72);
      v4(v3, &v8);
    }

    else
    {
      v5 = *(v2 + 16);
      v8 = *(a1 + 56);
      v9 = *(a1 + 72);
      v5(v2, &v8);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t FigLocalQueueSetReceiverHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 40) = 0;
  }

  if (a3)
  {
    *(a1 + 40) = _Block_copy(a3);
  }

  if (a2)
  {
    dispatch_retain(a2);
    *(a1 + 32) = a2;
  }

  return FigSimpleMutexUnlock();
}

double localQueueInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t localQueueFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t FigCaptureDeferredContainerManagerServerStart()
{
  v1[0] = 1;
  v1[1] = captureDeferredContainerManager_handleReplyMessage;
  v1[2] = captureDeferredContainerManager_handleNoReplyMessage;
  memset(&v1[3], 0, 24);
  if (captureDeferredContainerManager_initializeStatics_onceToken != -1)
  {
    FigCaptureDeferredContainerManagerServerStart_cold_1();
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capture.deferred.containermanager.xpc", v1, 0);
}

uint64_t captureDeferredContainerManager_handleReplyMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v1 = OpCode;
    captureDeferredContainerManager_handleReplyMessage_cold_1();
  }

  else
  {
    v1 = 4294951138;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v1;
}

uint64_t captureDeferredContainerManager_handleNoReplyMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v1 = OpCode;
    captureDeferredContainerManager_handleNoReplyMessage_cold_1();
  }

  else
  {
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    return 4294954514;
  }

  return v1;
}

uint64_t captureDeferredContainerManager_getAndRetainContainerObjectFromMessage(int a1, xpc_object_t xdict)
{
  xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  v2 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v2)
  {
    v4 = v2;
    captureDeferredContainerManager_getAndRetainContainerObjectFromMessage_cold_1();
  }

  else
  {
    captureDeferredContainerManager_getAndRetainContainerObjectFromMessage_cold_3();
    return 4294954513;
  }

  return v4;
}

uint64_t captureDeferredContainerManager_serializeNotification(int a1, int a2, int a3, CFDictionaryRef theDict)
{
  v5 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(theDict);
  MutableCopy = CFDictionaryCreateMutableCopy(v5, Count, theDict);
  if (FigXPCMessageSetCFDictionary())
  {
    captureDeferredContainerManager_serializeNotification_cold_1();
    v8 = 1;
    if (!MutableCopy)
    {
      return v8;
    }

    goto LABEL_3;
  }

  v8 = 2;
  if (MutableCopy)
  {
LABEL_3:
    CFRelease(MutableCopy);
  }

  return v8;
}

float bwvip_boundingBoxArea(void *a1)
{
  getVNDetectedObjectObservationClass();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0.0;
  if (isKindOfClass)
  {
    [a1 boundingBox];
    v5 = v4;
    v7 = v6;
    return v5 * v7;
  }

  return result;
}

BOOL FigCapturePixelFormatIsDemosaicedRaw(_BOOL8 result)
{
  if (result)
  {
    return FigCaptureUncompressedPixelFormatForPixelFormat(result) == 1751527984;
  }

  return result;
}

uint64_t FigCapturePixelFormatIsTenBitPacked(int a1)
{
  result = 1;
  if (a1 <= 1882468913)
  {
    if (a1 <= 1651587121)
    {
      if (a1 == 645424692)
      {
        return result;
      }

      v3 = 645428788;
      goto LABEL_14;
    }

    if (a1 == 1651587122)
    {
      return result;
    }

    v4 = 12848;
    goto LABEL_13;
  }

  if (a1 <= 1885745711)
  {
    if (a1 == 1882468914)
    {
      return result;
    }

    v4 = 13364;
LABEL_13:
    v3 = v4 | 0x70340000;
LABEL_14:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1885745712 && a1 != 1885745714)
  {
    v3 = 1885746228;
    goto LABEL_14;
  }

  return result;
}

uint64_t FigCaptureUnPackedPixelFormatForPixelFormat(uint64_t a1)
{
  v1 = a1;
  if (FigCapturePixelFormatGetCompressionType(a1))
  {
    FigCaptureUnPackedPixelFormatForPixelFormat_cold_1();
  }

  else
  {
    if (v1 == 1885745714)
    {
      v2 = 2019963442;
    }

    else
    {
      v2 = v1;
    }

    if (v1 == 1885746228)
    {
      v3 = 2019963956;
    }

    else
    {
      v3 = v2;
    }

    if (v1 == 1885745712)
    {
      v4 = 2019963440;
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 1882469428)
    {
      v5 = 2016687156;
    }

    else
    {
      v5 = v1;
    }

    if (v1 == 1882468914)
    {
      v6 = 2016686642;
    }

    else
    {
      v6 = v5;
    }

    if (v1 == 1882468912)
    {
      v7 = 2016686640;
    }

    else
    {
      v7 = v6;
    }

    if (v1 <= 1885745711)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  return v1;
}

uint64_t FigCapturePreferredSlimCodecFlavorAndTilesForPixelFormat(int a1, int *a2, int *a3)
{
  result = FigCapturePlatformIdentifier();
  if (result < 12)
  {
    goto LABEL_12;
  }

  v7 = 1;
  v8 = 5;
  if (a1 <= 1651925815)
  {
    if (a1 == 1278226488 || a1 == 1278226536)
    {
      goto LABEL_13;
    }

    v9 = 1651519798;
  }

  else if (a1 > 1652056887)
  {
    if (a1 == 1652056888)
    {
      goto LABEL_13;
    }

    v9 = 1751411059;
  }

  else
  {
    if (a1 == 1651925816)
    {
      goto LABEL_13;
    }

    v9 = 1651926376;
  }

  if (a1 != v9)
  {
LABEL_12:
    v7 = 2;
    v8 = 1;
  }

LABEL_13:
  *a2 = v8;
  *a3 = v7;
  return result;
}

uint64_t FigCapturePixelFormatTypeFromPlistValue(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return BWOSTypeForString(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a1 intValue];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t FigCapturePixelFormatHasRegroupedLayoutDownscale(int a1)
{
  result = 1;
  if (a1 <= 645161783)
  {
    if (a1 == 643970664)
    {
      return result;
    }

    v3 = 643970675;
    goto LABEL_7;
  }

  if (a1 != 645161784 && a1 != 645423928)
  {
    v3 = 1651926376;
LABEL_7:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigCapturePixelFormatHasRegroupedLayout(int a1)
{
  result = 1;
  if (a1 > 645161783)
  {
    if (a1 != 645161784 && a1 != 645423928)
    {
      v3 = 1651926376;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 642527336 && a1 != 643970664)
  {
    v3 = 643970675;
    goto LABEL_8;
  }

  return result;
}

uint64_t FigCapturePixelFormatEquivalentRegroupedLayoutPixelFormat(int a1)
{
  if (a1 <= 1651925815)
  {
    if (a1 == 1278226536)
    {
      return 642527336;
    }

    if (a1 == 1651519798)
    {
      return 643970675;
    }

    return 0;
  }

  result = 645161784;
  if (a1 == 1652056888)
  {
    return 645423928;
  }

  if (a1 == 1651926376)
  {
    return 643970664;
  }

  if (a1 != 1651925816)
  {
    return 0;
  }

  return result;
}

uint64_t CMCaptureGestaltGetExperimentalCFPreferenceNumberWithCFStringKeyAndDefault(uint64_t a1, uint64_t a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (!AVFBringupDefaultOverride)
  {
    return a2;
  }

  v4 = AVFBringupDefaultOverride;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  return [v4 intValue];
}

uint64_t cmcapturegestalt_getAVFBringupDefaultOverride(uint64_t a1)
{
  if (cmcapturegestalt_getAVFBringupDefaultOverride_sLoadBringupDefaultOverridesOnceToken != -1)
  {
    cmcapturegestalt_getAVFBringupDefaultOverride_cold_1();
  }

  v2 = cmcapturegestalt_getAVFBringupDefaultOverride_sAVFCaptureBringupDefaultOverrides;

  return [v2 objectForKeyedSubscript:a1];
}

double CMCaptureGestaltGetExperimentalCFPreferenceDoubleWithCFStringKeyAndDefault(uint64_t a1, double a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (!AVFBringupDefaultOverride)
  {
    return a2;
  }

  v4 = AVFBringupDefaultOverride;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  [v4 doubleValue];
  return result;
}

id CMCaptureGestaltGetExperimentalCFPreferenceStringWithCFStringKeyAndDefault(const __CFString *a1, uint64_t a2)
{
  AVFBringupDefaultOverride = cmcapturegestalt_getAVFBringupDefaultOverride(a1);
  if (AVFBringupDefaultOverride)
  {
    v5 = AVFBringupDefaultOverride;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = v5;
    }
  }

  v6 = CFPreferencesCopyAppValue(a1, @"com.apple.avfoundation");
  if (!v6)
  {
    return a2;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v7);
    return a2;
  }

  return v7;
}

void __cmcapturegestalt_getAVFBringupDefaultOverride_block_invoke()
{
  v0 = FigCaptureCFCreatePropertyList(@"BringupDefaultOverrides.plist");
  cmcapturegestalt_getAVFBringupDefaultOverride_sAVFCaptureBringupDefaultOverrides = [(FigCaptureFlatPlist *)v0 objectForKeyedSubscript:@"AVFCaptureBringupDefaultOverrides"];
}

uint64_t bwdcc_learnedFusionErrorRecoveryPossible(void *a1)
{
  if ([a1 captureType] != 13)
  {
    return 0;
  }

  v2 = [a1 captureStreamSettingsForPortType:{objc_msgSend(a1, "masterPortType")}];

  return [v2 hasCaptureFrameInfoWithMainFlags:512 sifrFlags:0];
}

void sub_1ACC4959C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSourceProxyCreate(uint64_t a1, const void *a2, void *a3)
{
  FigCaptureSourceGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v10 = v5;
    FigCaptureSourceProxyCreate_cold_1();
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    v10 = 4294954514;
LABEL_10:
    FigCaptureSourceProxyCreate_cold_2();
    return v10;
  }

  v8 = v7(a2, 0x1F21A1990, MEMORY[0x1E695E118]);
  if (v8)
  {
    v10 = v8;
    goto LABEL_10;
  }

  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 8) = v9;
  *(DerivedStorage + 16) = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 24) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v10 = 0;
  *a3 = 0;
  return v10;
}

uint64_t captureSourceProxy_handleRealCaptureSourceNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void FigCaptureSourceProxyDetachFromRealSource(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 24) = 0;
  v6[0] = @"OldPropertyValue";
  v6[1] = @"NewPropertyValue";
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (@"Connected")
    {
      v4 = DerivedStorage;
      CFRetain(@"Connected");
      if (v2)
      {
        CFRetain(v2);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v5 = *(v4 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSourceProxy_postNotificationWithPayload_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = @"Connected";
      block[5] = a1;
      block[6] = v2;
      dispatch_async(v5, block);
    }

    else
    {
      FigCaptureSourceProxyDetachFromRealSource_cold_1();
    }
  }

  else
  {
    FigCaptureSourceProxyDetachFromRealSource_cold_2();
  }
}

void __captureSourceProxy_postNotificationWithPayload_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t captureSourceProxy_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    v2 = *(DerivedStorage + 8);
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v2, 0x1F21A1990, *MEMORY[0x1E695E4C0]);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v4 = *(v1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 8) = 0;
    }
  }

  return 0;
}

void captureSourceProxy_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSourceProxy_Invalidate();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *captureSourceProxy_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSourceProxy %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t captureSourceProxy_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"IsProxy"))
  {
    v8 = *MEMORY[0x1E695E4D0];
    *a4 = *MEMORY[0x1E695E4D0];
    CFRetain(v8);
    return 0;
  }

  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"HasProxy"))
  {
    return 4294954516;
  }

  if (!CFEqual(a2, @"CurrentPropertyValues"))
  {
    v9 = FigCaptureSourceCopyProperty_0(*(DerivedStorage + 8), a2, a3, a4);
    if (v9)
    {
      captureSourceProxy_CopyProperty_cold_2();
    }

    return v9;
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v27[0] = @"VideoZoomFactor";
  v27[1] = @"ExposureTargetBias";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = *v24;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      v21 = 0;
      v18 = *(DerivedStorage + 8);
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v19)
      {
        v9 = 4294954514;
LABEL_26:
        captureSourceProxy_CopyProperty_cold_1();
        return v9;
      }

      v20 = v19(v18, v17, a3, &v21);
      if (v20)
      {
        v9 = v20;
        goto LABEL_26;
      }

      if (v21)
      {
        [v11 setObject:v21 forKeyedSubscript:v17];
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v9 = 0;
  *a4 = v11;
  return v9;
}

uint64_t captureSourceProxy_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, @"HasProxy"))
    {
      return 4294954516;
    }

    v12[0] = 0x1F21A19F0;
    v12[1] = 0x1F21A1A10;
    v13[0] = a2;
    v13[1] = a3;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = *(v7 + 1);
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v8 = v11(v10, 0x1F21A19D0, v9);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 4294954514;
    }

    captureSourceProxy_SetProperty_cold_1();
    return v8;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t captureSourceProxy_LockForConfiguration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = *(DerivedStorage + 8);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v4 = v3(v2);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 4294954514;
    }

    captureSourceProxy_LockForConfiguration_cold_1();
    return v4;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t captureSourceProxy_UnlockForConfiguration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = *(DerivedStorage + 8);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v4 = v3(v2);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 4294954514;
    }

    captureSourceProxy_UnlockForConfiguration_cold_1();
    return v4;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

CFTypeRef FigCaptureDeferredContainerManagerCopyContainerManagerForPID(int a1)
{
  v3 = 0;
  if (a1)
  {
    if (containerManager_initializeStatics_onceToken != -1)
    {
      FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_1();
    }

    FigCaptureDeferredContainerManagerGetClassID();
    v1 = CMDerivedObjectCreate();
    if (v1)
    {
      FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_2(v1, &v3, &v4);
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    FigCaptureDeferredContainerManagerCopyContainerManagerForPID_cold_3();
    return 0;
  }
}

id captureDeferredContainerManager_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v5 = " (invalidated)";
  }

  else
  {
    v5 = "";
  }

  [v3 appendFormat:@"<FigCaptureDeferredContainerManager %p retainCount: %ld%s allocator: %p>", a1, v4, v5, CFGetAllocator(a1)];
  return v3;
}

uint64_t captureDeferredContainerManager_CopyProperty(uint64_t a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (a2)
  {
    return 4294954509;
  }

  else
  {
    captureDeferredContainerManager_CopyProperty_cold_1(&v4);
    return v4;
  }
}

uint64_t captureDeferredContainerManager_SetProperty(uint64_t a1, uint64_t a2)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (a2)
  {
    return 4294954509;
  }

  else
  {
    captureDeferredContainerManager_SetProperty_cold_1(&v4);
    return v4;
  }
}

id captureDeferredContainerManager_CopySharedContainerIdentifiers(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager manifestsForApplicationID:"manifestsForApplicationID:err:" err:a2, &v4];
  if (v4)
  {
    captureDeferredContainerManager_CopySharedContainerIdentifiers_cold_1();
  }

  return v2;
}

uint64_t captureDeferredContainerManager_QueryContainerStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v7 queryContainerStatusForApplicationID:a2 captureRequestIdentifier:a3 status:a4];
}

uint64_t captureDeferredContainerManager_ReleaseRemoteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v5 releaseRemoteContainerForApplicationID:a2 captureRequestIdentifier:a3];
}

uint64_t captureDeferredContainerManager_DeleteContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[BWDeferredCaptureContainerManager sharedInstance];

  return [(BWDeferredCaptureContainerManager *)v5 deleteContainerForApplicationID:a2 captureRequestIdentifier:a3];
}

void __FigCaptureSourceInitialize_block_invoke(uint64_t a1)
{
  sVibeMitigation = [[FigCaptureSourceVibeMitigation alloc] initWithFigCaptureSourceBackings:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v46;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v46 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([objc_msgSend(objc_msgSend(*(*(&v45 + 1) + 8 * i) "attributes")])
          {
            [FigCaptureCalibrationMonitor initializeSharedInstanceWithCaptureSourceBackings:v2];
            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v45 objects:v44 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v33 = a1;
  v7 = *(a1 + 32);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = v7;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v45 + 1) + 8 * j) attributes];
        v14 = [objc_msgSend(v13 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        v15 = [objc_msgSend(v13 objectForKeyedSubscript:{@"Position", "intValue"}];
        if (v14 <= 0xF && ((1 << v14) & 0x84AC) != 0)
        {
          v17 = v15;
          [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v14)}];
          v18 = BWCaptureDevicePositionAndDeviceTypeToPortType(v17, v14);
          if (v18)
          {
            [v37 addObject:v18];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    }

    while (v10);
  }

  if (FigCapturePlatformSupportsExternalCameras() && ([v8 containsObject:&unk_1F22477D0] & 1) == 0)
  {
    [v37 addObject:*off_1E798A0E0];
    [v8 addObject:&unk_1F22477D0];
  }

  FigCaptureCameraStreamingPowerLogInitialize(v37, v8);

  sThermalMonitor = objc_alloc_init(FigCaptureThermalMonitor);
  sPowerMonitor = objc_alloc_init(FigCapturePowerMonitor);
  [sThermalMonitor setThermalHandler:&__block_literal_global_135];
  [sPowerMonitor setPowerHandler:&__block_literal_global_32_0];
  v38 = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obja = *(a1 + 32);
  v19 = [obja countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v34 = 0;
    v21 = *v41;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = [*(*(&v40 + 1) + 8 * k) attributes];
        v24 = [objc_msgSend(v23 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        if (v24 <= 0xC)
        {
          if (((1 << v24) & 0x4AC) != 0)
          {
            v25 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(v23 objectForKeyedSubscript:{@"Position", "intValue"}], v24);
            if (!v25)
            {
              __FigCaptureSourceInitialize_block_invoke_cold_1();
            }

            [v38 setObject:objc_msgSend(v23 forKeyedSubscript:{"objectForKeyedSubscript:", @"SensorThermalLevelsByTemperature", v25}];
          }

          else if (((1 << v24) & 0x1040) != 0)
          {
            v34 = [objc_msgSend(v23 objectForKeyedSubscript:{@"PearlModuleType", "intValue"}];
          }
        }
      }

      v20 = [obja countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v20);
  }

  else
  {
    v34 = 0;
  }

  qword_1ED8451C0 = -[FigCaptureSystemPressureMonitor initWithPearlModuleType:sensorThermalLevelsByTemperatureByPortType:fineGrainThermalMonitoringEnabled:]([FigCaptureSystemPressureMonitor alloc], "initWithPearlModuleType:sensorThermalLevelsByTemperatureByPortType:fineGrainThermalMonitoringEnabled:", v34, v38, [objc_msgSend(*(v33 + 40) "commonSettings")]);
  [qword_1ED8451C0 setSystemPressureLevelChangedHandler:&__block_literal_global_38_1];
  v49[0] = 0x1F216ED50;
  v49[1] = 0x1F2185210;
  v49[2] = 0x1F2185310;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  v27 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v28 = [v26 countByEnumeratingWithState:&v45 objects:v44 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    v31 = MEMORY[0x1E695E118];
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v26);
        }

        [v27 setObject:v31 forKeyedSubscript:*(*(&v45 + 1) + 8 * m)];
      }

      v29 = [v26 countByEnumeratingWithState:&v45 objects:v44 count:16];
    }

    while (v29);
  }

  CFPreferencesSetValue(@"systemstyle-enabled", v27, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

uint64_t __FigCaptureSourceInitialize_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 thermalLevel];
  v4 = [sPowerMonitor powerPressureLevel];
  [a2 maxTorchLevel];
  v6 = v5;
  [sPowerMonitor maxTorchLevel];
  if (v6 >= v7)
  {
    v8 = sPowerMonitor;
  }

  else
  {
    v8 = a2;
  }

  [v8 maxTorchLevel];

  return cs_handleThermalPressureOrPowerChange(v3, v4, v9);
}

uint64_t cs_handleThermalPressureOrPowerChange(int a1, unsigned int a2, float a3)
{
  FigSimpleMutexLock();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = qword_1ED8451D0;
  v7 = [qword_1ED8451D0 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __cs_handleThermalPressureOrPowerChange_block_invoke;
        v17[3] = &__block_descriptor_40_e200_i16__0__FigCaptureSourceStorage_qiCC____8I____OpaqueFigSimpleMutex__q____CFString__i______OpaqueFigCaptureSource_f___i__OpaqueFigFlashlight__iBBB__OpaqueFigSimpleMutex__BB__OpaqueFigCaptureSource____8l;
        v18 = a1;
        v19 = a3;
        captureSource_safelyAccessStorage(v11, v17);
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v8);
  }

  if (_MergedGlobals_13 == 1)
  {
    v12 = a1 > 1 || a2 > 0x1D;
    v13 = v12;
    if (HIBYTE(_MergedGlobals_13) != v13)
    {
      HIBYTE(_MergedGlobals_13) = v13;
      if (dword_1ED844030)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      cs_updateTimeOfFlightAFEnabledStatus();
    }
  }

  if (sStructuredLightAFEnabled == 1 && sStructuredLightAFSuspended != a1 > 1)
  {
    sStructuredLightAFSuspended = a1 > 1;
    if (dword_1ED844030)
    {
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cs_updateStructuredLightAFEnabledStatus();
  }

  return FigSimpleMutexUnlock();
}

uint64_t __FigCaptureSourceInitialize_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [sThermalMonitor thermalLevel];
  v4 = [a2 powerPressureLevel];
  [a2 maxTorchLevel];
  v6 = v5;
  [sThermalMonitor maxTorchLevel];
  if (v6 >= v7)
  {
    v8 = sThermalMonitor;
  }

  else
  {
    v8 = a2;
  }

  [v8 maxTorchLevel];

  return cs_handleThermalPressureOrPowerChange(v3, v4, v9);
}

void __FigCaptureSourceInitialize_block_invoke_4(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  FigSimpleMutexLock();
  v9 = [sAllVideoCaptureSources copy];
  FigSimpleMutexUnlock();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v47 = [v9 countByEnumeratingWithState:&v58 objects:v57 count:16];
  v10 = 0;
  if (!v47)
  {
    goto LABEL_60;
  }

  v46 = *v59;
  if (a2 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = a2 != 0;
  if (a2)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  if (a3)
  {
    v12 = v13;
  }

  v41 = v12;
  v42 = v11;
  if (v11 <= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = v11;
  }

  v39 = v12 | 4;
  v40 = v14;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  do
  {
    v15 = 0;
    do
    {
      if (*v59 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v58 + 1) + 8 * v15);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v18 = DerivedStorage;
        v48 = v10;
        FigSimpleMutexCheckIsNotLockedOnThisThread();
        FigSimpleMutexLock();
        v19 = [objc_msgSend(v18[13] objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        v20 = v19;
        v22 = v19 == 6 || v19 == 12;
        if (a4 != 0 && v22)
        {
          v23 = v39;
        }

        else
        {
          v23 = v41;
        }

        if (a4 != 0 && v22)
        {
          v24 = v40;
        }

        else
        {
          v24 = v42;
        }

        v25 = [v18[14] allKeys];
        if (v25 || (v25 = [v18[15] allKeys]) != 0)
        {
LABEL_34:
          v27 = v25;
        }

        else
        {
          v26 = BWCaptureDevicePositionAndDeviceTypeToPortType([objc_msgSend(v18[13] objectForKeyedSubscript:{@"Position", "intValue"}], v20);
          if (v26)
          {
            v56 = v26;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
            goto LABEL_34;
          }

          v27 = 0;
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v52 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v53;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [objc_msgSend(a5 objectForKeyedSubscript:{*(*(&v52 + 1) + 8 * i)), "intValue"}];
              if (v24 <= v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = v24;
              }

              if (v32)
              {
                v23 = v23 | 8;
              }

              else
              {
                v23 = v23;
              }

              if (v32)
              {
                v24 = v33;
              }

              else
              {
                v24 = v24;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v52 objects:v51 count:16];
          }

          while (v29);
        }

        v49[0] = @"Level";
        v34 = [MEMORY[0x1E696AD98] numberWithInt:v24];
        v49[1] = @"Factors";
        v50[0] = v34;
        v50[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
        [v18[18] setObject:v35 forKeyedSubscript:@"SystemPressureState"];
        [v18[10] setSystemPressureLevel:v24];
        [v18[10] setSystemPressureFactors:v23];
        [v18[10] setThermalSystemPressureLevel:v43];
        [v18[10] setPeakPowerSystemPressureLevel:v44];
        if (v24 == 4)
        {
          [v18[10] shutDownSystemPressuredDevice];
        }

        FigSimpleMutexUnlock();
        captureSource_postNotificationWithPayload(v16, @"SystemPressureState", v35);
        v10 = v48;
        if (v48 <= v24)
        {
          v10 = v24;
        }

        a4 = v45;
      }

      ++v15;
    }

    while (v15 != v47);
    v36 = [obj countByEnumeratingWithState:&v58 objects:v57 count:16];
    v47 = v36;
  }

  while (v36);
LABEL_60:

  if (sPreviousMaxSystemPressureLevel >= 4 && v10 <= 3)
  {
    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  }

  sPreviousMaxSystemPressureLevel = v10;
}

uint64_t FigCaptureSourceCreateFromBacking(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, CFTypeRef *a5)
{
  if ([a2 mediaType] == 1936684398)
  {
    v9 = a3[1];
    v12 = *a3;
    v13 = v9;
    return FigAudioCaptureSourceCreateFromBacking(a1, a2, &v12, a5);
  }

  else
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = v11;
    return FigVideoCaptureSourceCreateFromBacking(a1, a2, &v12, a5);
  }
}

uint64_t FigAudioCaptureSourceCreateFromBacking(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v18 = 0;
  v6 = [a2 attributes];
  if (cs_initializeStatics_onceToken != -1)
  {
    FigCaptureSourceInitialize_cold_1();
  }

  FigCaptureSourceGetClassID();
  v7 = CMDerivedObjectCreate();
  v8 = v7;
  if (v7)
  {
    FigAudioCaptureSourceCreateFromBacking_cold_2(v7, &v18);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = a3[1];
    *(DerivedStorage + 16) = *a3;
    *(DerivedStorage + 32) = v10;
    v11 = *(DerivedStorage + 32);
    *clockOut = *(DerivedStorage + 16);
    v17 = v11;
    if (FigCaptureAuditTokenIsValid(clockOut))
    {
      v12 = *(DerivedStorage + 32);
      *clockOut = *(DerivedStorage + 16);
      v17 = v12;
      *(DerivedStorage + 72) = FigCaptureCopyClientCodeSigningIdentifier(clockOut);
    }

    *DerivedStorage = FigAtomicAdd32();
    *(DerivedStorage + 48) = FigSimpleMutexCreate();
    *(DerivedStorage + 56) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 104) = v6;
    *(DerivedStorage + 8) = [objc_msgSend(v6 objectForKeyedSubscript:{@"SourceType", "intValue"}];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clockOut[0] = 0;
    if ((FigCaptureAudiomxdSupportEnabled() & 1) == 0)
    {
      CMAudioDeviceClockCreate(*MEMORY[0x1E695E480], @"VirtualAudioDevice_Default", clockOut);
      if (clockOut[0])
      {
        [v13 setObject:clockOut[0] forKeyedSubscript:@"Clock"];
        CFRelease(clockOut[0]);
      }
    }

    [v13 setObject:&unk_1F22477A0 forKeyedSubscript:0x1F21A0A30];
    [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Connected"];
    [v13 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"array"), @"Formats"}];
    *(DerivedStorage + 144) = v13;
    v15 = 0x1F21A16D0;
    *(DerivedStorage + 152) = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    *(DerivedStorage + 64) = 1;
    *(DerivedStorage + 13) = 1;
    *a4 = v18;
  }

  return v8;
}

void __FigProprietaryDefaultsCaptureSourceCreateWithSourceInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = @"ProprietaryDefaultKey";
  v7[1] = @"ProprietaryDefaultValue";
  v8[0] = a2;
  v8[1] = a3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [*(a1 + 32) retainReferencedObject];
  if (v5)
  {
    v6 = v5;
    captureSource_postNotificationWithPayload(v5, @"ProprietaryDefaultChanged", v4);
    CFRelease(v6);
  }
}

uint64_t cs_updateStructuredLightAFTargetStreamResources()
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v0 = qword_1ED8451D0;
  result = [qword_1ED8451D0 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v11;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v10 + 1) + 8 * v4);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          v7 = DerivedStorage;
          if ([objc_msgSend(*(DerivedStorage + 104) objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}])
          {
            sStructuredLightAFTargetStreamSource = v5;
            v8 = [objc_msgSend(*(v7 + 80) "captureStream")];
            sStructuredLightAFTargetStream = v8;
            sStructuredLightAFTargetStreamStreaming = 0;
            FigSimpleMutexCheckIsLockedOnThisThread();
            [v8 registerForNotification:*off_1E798B8C0 listener:v8 callback:cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification];
            return [v8 registerForNotification:*off_1E798B8C8 listener:v8 callback:cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification];
          }
        }

        ++v4;
      }

      while (v2 != v4);
      result = [v0 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v2 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigVideoCaptureSourceActivateAttachedCaptureSource(const void *a1, const void *a2, void *a3)
{
  FigSimpleMutexLock();
  if (!a1 || !a2)
  {
    FigVideoCaptureSourceActivateAttachedCaptureSource_cold_2();
    v20 = 4294954516;
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 12))
  {
    FigVideoCaptureSourceActivateAttachedCaptureSource_cold_1();
    v20 = 4294954511;
LABEL_22:
    FigSimpleMutexUnlock();
    FigDebugAssert3();
    goto LABEL_18;
  }

  if (*(DerivedStorage + 8) != 1)
  {
    v20 = 4294954516;
    goto LABEL_22;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __captureSourceRegisterWithHostSource_block_invoke;
  v28[3] = &unk_1E799DDE0;
  v28[4] = a3;
  captureSource_safelyAccessStorage(a2, v28);
  *(DerivedStorage + 224) = CFRetain(a2);
  *(DerivedStorage + 232) = a3;
  *(DerivedStorage + 13) = 1;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v7 = [sThermalMonitor thermalLevel];
  [sPowerMonitor maxTorchLevel];
  v9 = v8;
  [sThermalMonitor maxTorchLevel];
  if (v9 >= v10)
  {
    v11 = &sThermalMonitor;
  }

  else
  {
    v11 = &sPowerMonitor;
  }

  [*v11 maxTorchLevel];
  captureSource_setThermalLevelAndMaxTorchLevel(DerivedStorage, v7, v12);
  [qword_1ED8451C0 callSystemPressureLevelChangedHandler];
  v27 = @"ActiveMaxFrameRate";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [*(DerivedStorage + 144) objectForKeyedSubscript:v18];
        if (v19)
        {
          captureSource_setPropertyInternal(a1, v18, v19);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v15);
  }

  FigSimpleMutexUnlock();
  [qword_1ED8451D0 addObject:a1];
  v20 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  return v20;
}

void FigVideoCaptureSourcesDeactivateWithDevices(CFArrayRef theArray, const __CFArray *a2, char a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v7 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count != v7)
  {
    FigVideoCaptureSourcesDeactivateWithDevices_cold_1();
  }

  FigSimpleMutexLock();
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 8) == 1)
      {
        v11 = DerivedStorage;
        if (_MergedGlobals_13 == 1 && (a3 & 1) == 0)
        {
          _MergedGlobals_13 = 256;
          cs_updateTimeOfFlightAFEnabledStatus();
        }

        if (!*(v11 + 12) && CFArrayGetValueAtIndex(a2, i) == *(v11 + 80))
        {
          FigVideoCaptureSourcesDeactivateWithDevices_cold_2(ValueAtIndex, v20);
        }
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = qword_1ED8451D0;
  v13 = [qword_1ED8451D0 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
LABEL_20:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = CMBaseObjectGetDerivedStorage();
      if (v17)
      {
        if ([objc_msgSend(*(v17 + 104) objectForKeyedSubscript:{0x1F219F9F0), "BOOLValue"}])
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v14)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    v18 = sStructuredLightAFEnabled;
    if (sStructuredLightAFEnabled == 1)
    {
      sStructuredLightAFEnabled = 0;
      sStructuredLightAFSuspended = v18;
      sStructuredLightAFTargetStreamStreaming = 0;
      cs_updateStructuredLightAFEnabledStatus();
    }

    v19 = sStructuredLightAFTargetStream;
    if (sStructuredLightAFTargetStream)
    {
      FigSimpleMutexCheckIsLockedOnThisThread();
      [v19 unregisterForNotification:*off_1E798B8C0 listener:v19];
      [v19 unregisterForNotification:*off_1E798B8C8 listener:v19];

      sStructuredLightAFTargetStream = 0;
      sStructuredLightAFTargetStreamSource = 0;
    }
  }

  FigSimpleMutexUnlock();
}

void cs_updateStructuredLightAFEnabledStatus()
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v10 = 0;
  if (sStructuredLightAFTargetStreamStreaming == 1 && sStructuredLightAFEnabled == 1)
  {
    v0 = sStructuredLightAFSuspended ^ 1;
  }

  else
  {
    v0 = 0;
  }

  v1 = [sStructuredLightAFAssistStream streaming];
  v2 = cs_copyActiveCaptureDevice();
  v3 = +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  v4 = v3;
  if (v0)
  {
    if ((v1 & 1) == 0)
    {
      v5 = sStructuredLightAFAssistStream;
      if (!sStructuredLightAFAssistStream)
      {
        sStructuredLightAFAssistStream = [v3 copyStreamFromDevice:v2 position:2 deviceType:5 deviceClientPriority:1 allowsStreamControlLoss:1 error:&v10];
        v6 = v10;
        if (v10 == -12681)
        {
          LODWORD(v12[0]) = 0;
          FigSimpleMutexCheckIsLockedOnThisThread();
          sStructuredLightAFAssistStreamControlledByAnotherClient = [v4 copyStreamWithoutControlFromDevice:v2 position:2 deviceType:5 error:v12];
          if (sStructuredLightAFAssistStreamControlledByAnotherClient)
          {
            cs_structuredLightAFAssistRegisterForAssistStreamNotifications();
          }

          v6 = v10;
        }

        if (v6)
        {
          cs_updateStructuredLightAFEnabledStatus_cold_1();
          goto LABEL_24;
        }

        cs_structuredLightAFAssistRegisterForAssistStreamNotifications();
        v5 = sStructuredLightAFAssistStream;
      }

      v7 = *off_1E798AE28;
      v11[0] = *off_1E798AE20;
      v11[1] = v7;
      v12[0] = &unk_1F22477A0;
      v12[1] = &unk_1F22477E8;
      v11[2] = *off_1E798AE30;
      v12[2] = &unk_1F2247800;
      if ([v5 setProperty:*off_1E798BF10 value:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_2();
      }

      else if ([v5 setPropertyIfSupported:*off_1E798BE18 value:MEMORY[0x1E695E110]])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_3();
      }

      else if ([v5 setProperty:*off_1E798C1A8 value:MEMORY[0x1E695E118]])
      {
        cs_updateStructuredLightAFEnabledStatus_cold_4();
      }

      [sStructuredLightAFAssistStream start];
    }
  }

  else if (sStructuredLightAFAssistStream | sStructuredLightAFAssistStreamControlledByAnotherClient)
  {
    if (sStructuredLightAFAssistStream)
    {
      v8 = sStructuredLightAFAssistStream;
    }

    else
    {
      v8 = sStructuredLightAFAssistStreamControlledByAnotherClient;
    }

    [sStructuredLightAFAssistStream stop];
    FigSimpleMutexCheckIsLockedOnThisThread();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigSimpleMutexCheckIsLockedOnThisThread();
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, 0}];
    [v4 takeBackStreams:v9 device:v2 totalStreamingDuration:0];

    sStructuredLightAFAssistStream = 0;
    sStructuredLightAFAssistStreamControlledByAnotherClient = 0;
  }

LABEL_24:
}

uint64_t FigVideoCaptureSourcesEnableTimeOfFlightAFIfSupported()
{
  FigSimpleMutexLock();
  cs_updateTimeOfFlightAFEnabledStatus();

  return FigSimpleMutexUnlock();
}

uint64_t FigVideoCaptureSourcesNeedDeferredTimeOfFlightAFEnablement()
{
  FigSimpleMutexLock();
  [qword_1ED8451D0 firstObject];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && _MergedGlobals_13 == 1 && (_MergedGlobals_13 & 0x100) == 0)
  {
    v1 = [*(DerivedStorage + 80) timeOfFlightAFEnabled] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

void *FigCaptureSourceShowSystemUserInterface(int a1, const void *a2, const void *a3)
{
  if (FigCFEqual())
  {
    v30[0] = 0x1F2185490;
    v30[1] = 0x1F21852D0;
    v30[2] = @"com.apple.VideoConference.AVConferenceTestRunneriOS";
    v30[3] = @"com.apple.AVConferenceTestRunnertvOS";
    v5 = MEMORY[0x1E695DEC8];
    v6 = v30;
    v7 = 4;
  }

  else
  {
    v29 = a2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v29;
    v7 = 1;
  }

  v8 = [v5 arrayWithObjects:v6 count:v7];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  result = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v26;
    v12 = *MEMORY[0x1E699F9D0];
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      v23 = 0;
      result = [MEMORY[0x1E69C75D0] handleForPredicate:objc_msgSend(MEMORY[0x1E69C7610] error:{"predicateMatchingBundleIdentifier:", v14), &v23}];
      if (v23)
      {
        break;
      }

      v15 = [result currentState];
      if ([v15 taskState] == 4 && objc_msgSend(objc_msgSend(v15, "endowmentNamespaces"), "containsObject:", v12))
      {
        if (a1 == 1)
        {
          v16 = @"com.apple.replaykit.VideoConferenceControlCenterModule";
        }

        else
        {
          if (a1 != 2)
          {
            return FigDebugAssert3();
          }

          v16 = @"com.apple.replaykit.AudioConferenceControlCenterModule";
        }

        getCCSControlCenterServiceClass();
        if (!objc_opt_class())
        {
          return FigCaptureSourceShowSystemUserInterface_cold_1();
        }

        getCCSModulePresentationOptionsClass();
        if (!objc_opt_class())
        {
          return FigCaptureSourceShowSystemUserInterface_cold_1();
        }

        FigSimpleMutexLock();
        v17 = dispatch_semaphore_create(0);
        cs_updateShowSystemUserInterfaceDefaults(a2, a3);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __FigCaptureSourceShowSystemUserInterface_block_invoke;
        v22[3] = &unk_1E798F870;
        v22[4] = v17;
        v18 = [getCCSControlCenterServiceClass() sharedInstance];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __FigCaptureSourceShowSystemUserInterface_block_invoke_2;
        v21[3] = &unk_1E799DCA8;
        v21[4] = v22;
        v21[5] = v16;
        [v18 setVisibility:1 forModuleWithIdentifier:v16 completionHandler:v21];
        v19 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v17, v19);
        dispatch_release(v17);
        return FigSimpleMutexUnlock();
      }

      if (v10 == ++v13)
      {
        result = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
        v10 = result;
        if (result)
        {
          goto LABEL_6;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t getCCSControlCenterServiceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__44;
  v0 = getCCSControlCenterServiceClass_softClass;
  v7 = __Block_byref_object_dispose__44;
  v8 = getCCSControlCenterServiceClass_softClass;
  if (!getCCSControlCenterServiceClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCSControlCenterServiceClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getCCSControlCenterServiceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC4F1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getCCSModulePresentationOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__44;
  v0 = getCCSModulePresentationOptionsClass_softClass;
  v7 = __Block_byref_object_dispose__44;
  v8 = getCCSModulePresentationOptionsClass_softClass;
  if (!getCCSModulePresentationOptionsClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getCCSModulePresentationOptionsClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getCCSModulePresentationOptionsClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACC4F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t cs_updateShowSystemUserInterfaceDefaults(const void *a1, const void *a2)
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"show-system-ui-bundle-id", a1, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSetValue(@"show-system-ui-app-name", a2, @"com.apple.cameracapture.volatile", v4, v5);

  return CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v4, v5);
}

intptr_t __FigCaptureSourceShowSystemUserInterface_block_invoke(uint64_t a1)
{
  cs_updateShowSystemUserInterfaceDefaults(0, 0);
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

uint64_t __FigCaptureSourceShowSystemUserInterface_block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [getCCSControlCenterServiceClass() sharedInstance];
    v4 = *(a1 + 40);
    v5 = [getCCSModulePresentationOptionsClass() defaultOptions];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __FigCaptureSourceShowSystemUserInterface_block_invoke_3;
    v8[3] = &unk_1E799DC80;
    v8[4] = *(a1 + 32);
    return [v3 presentModuleWithIdentifier:v4 options:v5 completionHandler:v8];
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }
}

uint64_t FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType(const void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v19 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__44;
  v17 = __Block_byref_object_dispose__44;
  v18 = 0;
  v7 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(a1, a3, &v19);
  v8 = v7;
  if (v19)
  {
    FigDebugAssert3();
    if (v8)
    {
LABEL_7:
      CFRelease(v8);
    }
  }

  else
  {
    if (v7 || a1 && (v8 = CFRetain(a1)) != 0)
    {
      v9 = [objc_msgSend(objc_msgSend(a2 "formatDictionary")];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType_block_invoke;
      v12[3] = &unk_1E799DCF8;
      v12[4] = v9;
      v12[5] = &v13;
      v19 = captureSource_safelyAccessStorage(v8, v12);
      if (v19)
      {
        FigDebugAssert3();
      }

      goto LABEL_7;
    }

    FigDebugAssert3();
  }

  if (a4)
  {
    *a4 = v19;
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1ACC4F6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FigVideoCaptureSourceGetUnderlyingFastSwitchingFormatsForFormatAndPortType_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a2 + 96);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isFastSwitchingConfigurationRequired])
        {
          v9 = [objc_msgSend(objc_msgSend(v8 "formatDictionary")];
          v10 = *(a1 + 32);
          if ((!v10 || [v10 isEqualToString:v9]) && (!v9 || *(a1 + 32)))
          {
            v11 = *(*(*(a1 + 40) + 8) + 40);
            if (!v11)
            {
              *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DF70] array];
              v11 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v11 addObject:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }

  return 0;
}

uint64_t FigCaptureSourceDetachFromClient(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED844030)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v5 = a2[1];
  v17 = *a2;
  v18 = v5;
  v6 = *(DerivedStorage + 32);
  *v16 = *(DerivedStorage + 16);
  *&v16[16] = v6;
  if (FigCaptureAuditTokensAreEqual(&v17, v16))
  {
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *(DerivedStorage + 16) = v7;
    *(DerivedStorage + 32) = v7;
    v8 = *(DerivedStorage + 80);
    v9 = *(DerivedStorage + 32);
    v17 = *(DerivedStorage + 16);
    v18 = v9;
    [v8 updateClientAuditToken:&v17];
  }

  else if (dword_1ED844030)
  {
    v20 = 0;
    v19 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v20;
    if (os_log_type_enabled(v10, v19))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(DerivedStorage + 32);
      v17 = *(DerivedStorage + 16);
      v18 = v13;
      PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v17);
      *v16 = 136315394;
      *&v16[4] = "FigCaptureSourceDetachFromClient";
      *&v16[12] = 1024;
      *&v16[14] = PIDFromAuditToken;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  return 0;
}

const __CFArray *FigCaptureSourceCopySources(int a1)
{
  if (FigCaptureCurrentProcessIsCameracaptured() || FigCaptureCurrentProcessIsMediaserverd())
  {
    v5 = 0u;
    v6 = 0u;
    FigCaptureGetCurrentProcessAuditToken(&v5);
    v4[0] = v5;
    v4[1] = v6;
    return FigCaptureSourceCopySourcesForClientAuditToken(a1, v4, 0, 1);
  }

  else
  {
    v3 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v3);
  }
}

void __cs_initializeStatics_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigCaptureInitializeSingletons();
  qword_1ED8451D0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  qword_1ED8451C8 = FigSimpleMutexCreate();
  sAllVideoCaptureSourcesLock = FigSimpleMutexCreate();
  sAllProprietaryDefaultsCaptureSources = objc_alloc_init(MEMORY[0x1E695DF70]);
  sAllProprietaryDefaultsCaptureSourcesLock = FigSimpleMutexCreate();
  sShowSystemUserInterfaceLock = FigSimpleMutexCreate();
  sAllVideoCaptureSources = objc_alloc_init(MEMORY[0x1E695DF70]);
  sNewCaptureSourceToken = FigGetUpTimeNanoseconds() / 0xF4240uLL;
  if (cs_initializeCameraHistoryTemporaryItems_onceToken != -1)
  {
    __cs_initializeStatics_block_invoke_cold_1();
  }
}

id __cs_initializeCameraHistoryTemporaryItems_block_invoke()
{
  sServerUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [sServerUserDefaults objectForKey:@"boot-time"];
  v1 = mach_continuous_time();
  info = 0;
  if (mach_timebase_info(&info) || info.numer == 1 && info.denom == 1)
  {
    v2 = v1;
  }

  else
  {
    v2 = info.numer / info.denom * v1;
  }

  v3 = v2 / *"";
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 + v3;
  if (dword_1ED844030)
  {
    v40 = 0;
    v39 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v40;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v39))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      [v0 doubleValue];
      v10 = v9;
      [v0 doubleValue];
      v30 = 136315906;
      v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
      v32 = 2048;
      v33 = v10;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = vabdd_f64(v5, v11);
      LODWORD(v27) = 42;
      v24 = &v30;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v0 doubleValue];
  if (vabdd_f64(v5, v12) <= 1.0)
  {
    if (dword_1ED844030)
    {
      v40 = 0;
      v39 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v40;
      if (os_log_type_enabled(v13, v39))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v30 = 136315138;
        v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
        LODWORD(v28) = 12;
        v25 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [sServerUserDefaults setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v5), @"boot-time"}];
    [sServerUserDefaults setObject:0 forKey:@"tmp"];
  }

  v16 = [sServerUserDefaults objectForKey:{@"tmp", v25, v28}];
  if ([v16 count])
  {
    sTemporaryCameraHistoryItems = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
    if (dword_1ED844030)
    {
      v40 = 0;
      v39 = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v40;
      if (os_log_type_enabled(v17, v39))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v30 = 136315395;
        v31 = "cs_initializeCameraHistoryTemporaryItems_block_invoke";
        v32 = 2113;
        v33 = v16;
        LODWORD(v29) = 22;
        v26 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    sTemporaryCameraHistoryItems = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  sTemporaryCameraHistoryItemsLock = FigReentrantMutexCreate();
  v20 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:@"camera-history-downplay-override-list"];
  if ([v20 count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v20];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  sCameraHistoryDownplayOverrideList = v21;
  v22 = [sTemporaryCameraHistoryItems objectForKeyedSubscript:{@"camera-histories-updated-with-overriding-camera", v26, v29}];
  if ([v22 count])
  {
    result = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v22];
  }

  else
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  sCameraHistoriesUpdatedWithOverridingCamera = result;
  return result;
}

void captureSource_handleAttachedAccessoriesNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = [a5 objectForKeyedSubscript:0x1F21A1ED0];
  if ([a3 isEqualToString:0x1F21A82D0])
  {
    v8 = kFigCaptureSourceProperty_WalletAccessoryConnected;
  }

  else
  {
    if (![a3 isEqualToString:0x1F21A82F0])
    {
      return;
    }

    v8 = kFigCaptureSourceProperty_BatteryPackAccessoryConnected;
  }

  v9 = *v8;

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, v9, v7, 0, 0);
}

uint64_t captureSource_handleHostCaptureSourceNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t __captureSourceUnregisterWithHostSource_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a2 + 240) containsObject:*(a1 + 32)])
  {
    [*(a2 + 240) removeObject:*(a1 + 32)];
    if (![*(a2 + 240) count])
    {

      *(a2 + 240) = 0;
    }
  }

  return 0;
}

void captureSource_handleFlashlightNotification(uint64_t a1, const void *a2, void *a3, uint64_t a4, void *a5)
{
  if ([a3 isEqualToString:@"FlashlightLevel"])
  {
    v8 = [a5 objectForKeyedSubscript:@"FlashlightValue"];
    v9 = MEMORY[0x1E696AD98];
    [v8 floatValue];
    captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(a2, @"TorchActive", [v9 numberWithInt:v10 > 0.0], 0, 0);
    v11 = @"TorchLevel";
    v12 = a2;
    v13 = v8;
    v14 = 1;
  }

  else
  {
    if (![a3 isEqualToString:@"FlashlightOverheated"])
    {
      return;
    }

    v13 = [a5 objectForKeyedSubscript:@"FlashlightValue"];
    v11 = @"TorchOverheated";
    v12 = a2;
    v14 = 0;
  }

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v12, v11, v13, v14, 0);
}

uint64_t FigCaptureSourceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void __captureSource_setPropertyInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v2 + 198) = 0;
  if (*(v2 + 168) <= 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  captureSource_updateCachedPropertyAndNotifyWithForceBehaviorAndConfigurationMutexLockedState(v1, @"AdjustingFocus", *v3, 0, 0);
}

void __captureSource_handleThirdPartyTorchLevelCommand_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    FigSimpleMutexLock();
  }

  *(*(a1 + 40) + 192) = a3;
  if (a3 == 1)
  {
    captureSource_turnOffAndTeardownFigFlashlight(*(a1 + 48));
  }

  v5 = *(*(a1 + 32) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    FigSimpleMutexUnlock();
    v5 = *(*(a1 + 32) + 8);
  }

  *(v5 + 24) = 0;
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (sStructuredLightAFTargetStream == a2)
  {
    if ((sStructuredLightAFTargetStreamStreaming & 1) == 0)
    {
      sStructuredLightAFTargetStreamStreaming = 1;
      cs_updateStructuredLightAFEnabledStatus();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStartedNotification_cold_1();
  }

  return FigSimpleMutexUnlock();
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (sStructuredLightAFTargetStream == a2)
  {
    if (sStructuredLightAFTargetStreamStreaming == 1)
    {
      sStructuredLightAFEnabled = 0;
      sStructuredLightAFTargetStreamStreaming = 0;
      cs_updateStructuredLightAFEnabledStatus();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFTargetStreamStoppedNotification_cold_1();
  }

  return FigSimpleMutexUnlock();
}

uint64_t __captureSourceRegisterWithHostSource_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 240);
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    *(a2 + 240) = v4;
  }

  if (([v4 containsObject:*(a1 + 32)] & 1) == 0)
  {
    [*(a2 + 240) addObject:*(a1 + 32)];
  }

  return 0;
}

uint64_t cs_structuredLightAFAssistRegisterForAssistStreamNotifications()
{
  FigSimpleMutexCheckIsLockedOnThisThread();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  if (sStructuredLightAFTargetStreamSource == a2)
  {
    if (sStructuredLightAFAssistStream == a4)
    {
      if (!sStructuredLightAFAssistStreamControlledByAnotherClient)
      {
        sStructuredLightAFAssistStreamControlledByAnotherClient = sStructuredLightAFAssistStream;
        sStructuredLightAFAssistStream = 0;
      }
    }

    else
    {
      cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification_cold_2();
    }
  }

  else
  {
    cs_structuredLightAFAssistHandleStructuredLightAFAssistStreamControlTakenByAnotherClientNotification_cold_1();
  }

  return FigSimpleMutexUnlock();
}