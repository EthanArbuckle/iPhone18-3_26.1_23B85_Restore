@interface MTLTelemetryCommandBuffer
- (MTLTelemetryCommandBuffer)initWithCommandBuffer:(id)buffer commandQueue:(id)queue descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)descriptor;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)descriptor;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (void)dealloc;
- (void)initDistributions;
- (void)mergeDistributions;
- (void)postCompletionHandlers;
@end

@implementation MTLTelemetryCommandBuffer

- (void)dealloc
{
  free(self->encoderCount);
  free(self->parallellRenderEncoderDistribution);
  free(self->attachmentCount);
  free(self->textureBindCount);
  free(self->drawDistribution);
  free(self->dispatchDistribution);
  free(self->renderEncoderDrawCallDistribution);
  free(self->computeEncoderDispatchDistribution);
  free(self->blitEncoderBlitDistribution);
  free(self->renderTargetArrayLengthDistribution);
  free(self->viewportDistribution);
  free(self->scissorRectDistribution);
  free(self->anisoClippedCounts);
  v3.receiver = self;
  v3.super_class = MTLTelemetryCommandBuffer;
  [(MTLToolsCommandBuffer *)&v3 dealloc];
}

- (void)initDistributions
{
  self->encoderCount = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  self->parallellRenderEncoderDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->attachmentCount = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->textureBindCount = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->drawDistribution = malloc_type_calloc(1uLL, 0x9D8uLL, 0x100004010114EAEuLL);
  self->dispatchDistribution = malloc_type_calloc(1uLL, 0xF8uLL, 0x10000406AFDB319uLL);
  self->cbDraws = 0;
  self->cbDispatches = 0;
  self->cbBlits = 0;
  self->cbMemoryBarriers = 0;
  self->renderEncoderDrawCallDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->computeEncoderDispatchDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->blitEncoderBlitDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->renderTargetArrayLengthDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->viewportDistribution = malloc_type_calloc(1uLL, 0x58uLL, 0x100004038113C5CuLL);
  self->scissorRectDistribution = malloc_type_calloc(1uLL, 0x38uLL, 0x100004095CF6A33uLL);
  self->anisoClippedCounts = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);

  getKernelTelemetryState(&self->_initKernelState);
}

- (MTLTelemetryCommandBuffer)initWithCommandBuffer:(id)buffer commandQueue:(id)queue descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLTelemetryCommandBuffer;
  v5 = [(MTLToolsCommandBuffer *)&v8 initWithCommandBuffer:buffer parent:queue descriptor:descriptor];
  v6 = v5;
  if (v5)
  {
    v5->_telemetryDevice = [(MTLToolsObject *)v5 device];
    [(MTLTelemetryCommandBuffer *)v6 initDistributions];
  }

  return v6;
}

- (void)mergeDistributions
{
  selfCopy2 = self;
  encoderCount = self->encoderCount;
  var0 = encoderCount->var0;
  if (var0)
  {
    encoderDistribution = self->_telemetryDevice->encoderDistribution;
    if (encoderDistribution->var0.count)
    {
      if (var0 > encoderDistribution->var0.max)
      {
        encoderDistribution->var0.max = var0;
        encoderDistribution = self->_telemetryDevice->encoderDistribution;
      }

      if (var0 >= encoderDistribution->var0.min)
      {
        goto LABEL_9;
      }
    }

    else
    {
      encoderDistribution->var0.max = var0;
      encoderDistribution = self->_telemetryDevice->encoderDistribution;
    }

    encoderDistribution->var0.min = var0;
LABEL_9:
    self->_telemetryDevice->encoderDistribution->var0.total += var0;
    ++self->_telemetryDevice->encoderDistribution->var0.count;
  }

  var2 = encoderCount->var2;
  if (!var2)
  {
    goto LABEL_19;
  }

  v7 = self->_telemetryDevice->encoderDistribution;
  if (v7->var2.count)
  {
    if (var2 > v7->var2.max)
    {
      v7->var2.max = var2;
      v7 = self->_telemetryDevice->encoderDistribution;
    }

    min = v7->var2.min;
    p_var2 = &v7->var2;
    if (var2 >= min)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7->var2.max = var2;
    p_var2 = &self->_telemetryDevice->encoderDistribution->var2;
  }

  p_var2->min = var2;
LABEL_18:
  self->_telemetryDevice->encoderDistribution->var2.total += var2;
  ++self->_telemetryDevice->encoderDistribution->var2.count;
LABEL_19:
  var1 = encoderCount->var1;
  if (!var1)
  {
    goto LABEL_28;
  }

  v11 = self->_telemetryDevice->encoderDistribution;
  if (v11->var1.count)
  {
    if (var1 > v11->var1.max)
    {
      v11->var1.max = var1;
      v11 = self->_telemetryDevice->encoderDistribution;
    }

    v13 = v11->var1.min;
    p_var1 = &v11->var1;
    if (var1 >= v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11->var1.max = var1;
    p_var1 = &self->_telemetryDevice->encoderDistribution->var1;
  }

  p_var1->min = var1;
LABEL_27:
  self->_telemetryDevice->encoderDistribution->var1.total += var1;
  ++self->_telemetryDevice->encoderDistribution->var1.count;
LABEL_28:
  var3 = encoderCount->var3;
  if (!var3)
  {
    goto LABEL_37;
  }

  v15 = self->_telemetryDevice->encoderDistribution;
  if (v15->var3.count)
  {
    if (var3 > v15->var3.max)
    {
      v15->var3.max = var3;
      v15 = self->_telemetryDevice->encoderDistribution;
    }

    v17 = v15->var3.min;
    p_var3 = &v15->var3;
    if (var3 >= v17)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v15->var3.max = var3;
    p_var3 = &self->_telemetryDevice->encoderDistribution->var3;
  }

  p_var3->min = var3;
LABEL_36:
  self->_telemetryDevice->encoderDistribution->var3.total += var3;
  ++self->_telemetryDevice->encoderDistribution->var3.count;
LABEL_37:
  v18 = var2 + var0 + var1 + var3;
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = self->_telemetryDevice->encoderDistribution;
  if (v19->var4.count)
  {
    if (v18 > v19->var4.max)
    {
      v19->var4.max = v18;
      v19 = self->_telemetryDevice->encoderDistribution;
    }

    v21 = v19->var4.min;
    p_var4 = &v19->var4;
    if (v18 >= v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v19->var4.max = v18;
    p_var4 = &self->_telemetryDevice->encoderDistribution->var4;
  }

  p_var4->min = v18;
LABEL_45:
  self->_telemetryDevice->encoderDistribution->var4.total += v18;
  ++self->_telemetryDevice->encoderDistribution->var4.count;
LABEL_46:
  parallellRenderEncoderDistribution = self->parallellRenderEncoderDistribution;
  count = parallellRenderEncoderDistribution->count;
  if (count)
  {
    v24 = self->_telemetryDevice->parallellRenderEncoderDistribution;
    v25 = parallellRenderEncoderDistribution->min;
    if (v24->count)
    {
      if (v25 < v24->min)
      {
        v24->min = v25;
        v24 = self->_telemetryDevice->parallellRenderEncoderDistribution;
      }

      max = parallellRenderEncoderDistribution->max;
      if (max > v24->max)
      {
        v24->max = max;
      }
    }

    else
    {
      v24->min = v25;
      self->_telemetryDevice->parallellRenderEncoderDistribution->max = parallellRenderEncoderDistribution->max;
    }

    self->_telemetryDevice->parallellRenderEncoderDistribution->total += parallellRenderEncoderDistribution->total;
    self->_telemetryDevice->parallellRenderEncoderDistribution->count += count;
  }

  attachmentCount = self->attachmentCount;
  v28 = attachmentCount->count;
  if (v28)
  {
    v29 = self->_telemetryDevice->attachmentCount;
    v30 = attachmentCount->min;
    if (v29->count)
    {
      if (v30 < v29->min)
      {
        v29->min = v30;
        v29 = self->_telemetryDevice->attachmentCount;
      }

      v31 = attachmentCount->max;
      if (v31 > v29->max)
      {
        v29->max = v31;
      }
    }

    else
    {
      v29->min = v30;
      self->_telemetryDevice->attachmentCount->max = attachmentCount->max;
    }

    self->_telemetryDevice->attachmentCount->total += attachmentCount->total;
    self->_telemetryDevice->attachmentCount->count += v28;
  }

  textureBindCount = self->textureBindCount;
  v33 = textureBindCount->count;
  if (v33)
  {
    v34 = self->_telemetryDevice->textureBindCount;
    v35 = textureBindCount->min;
    if (v34->count)
    {
      if (v35 < v34->min)
      {
        v34->min = v35;
        v34 = self->_telemetryDevice->textureBindCount;
      }

      v36 = textureBindCount->max;
      if (v36 > v34->max)
      {
        v34->max = v36;
      }
    }

    else
    {
      v34->min = v35;
      self->_telemetryDevice->textureBindCount->max = textureBindCount->max;
    }

    self->_telemetryDevice->textureBindCount->total += textureBindCount->total;
    self->_telemetryDevice->textureBindCount->count += v33;
  }

  renderTargetArrayLengthDistribution = self->renderTargetArrayLengthDistribution;
  v38 = renderTargetArrayLengthDistribution->count;
  if (v38)
  {
    v39 = self->_telemetryDevice->renderTargetArrayLengthDistribution;
    v40 = renderTargetArrayLengthDistribution->min;
    if (v39->count)
    {
      if (v40 < v39->min)
      {
        v39->min = v40;
        v39 = self->_telemetryDevice->renderTargetArrayLengthDistribution;
      }

      v41 = renderTargetArrayLengthDistribution->max;
      if (v41 > v39->max)
      {
        v39->max = v41;
      }
    }

    else
    {
      v39->min = v40;
      self->_telemetryDevice->renderTargetArrayLengthDistribution->max = renderTargetArrayLengthDistribution->max;
    }

    self->_telemetryDevice->renderTargetArrayLengthDistribution->total += renderTargetArrayLengthDistribution->total;
    self->_telemetryDevice->renderTargetArrayLengthDistribution->count += v38;
  }

  viewportDistribution = self->viewportDistribution;
  v43 = viewportDistribution->var0.count;
  if (v43)
  {
    v44 = self->_telemetryDevice->viewportDistribution;
    v45 = viewportDistribution->var0.min;
    if (v44->var0.count)
    {
      if (v45 < v44->var0.min)
      {
        v44->var0.min = v45;
        v44 = self->_telemetryDevice->viewportDistribution;
      }

      v46 = viewportDistribution->var0.max;
      if (v46 > v44->var0.max)
      {
        v44->var0.max = v46;
      }
    }

    else
    {
      v44->var0.min = v45;
      self->_telemetryDevice->viewportDistribution->var0.max = viewportDistribution->var0.max;
    }

    self->_telemetryDevice->viewportDistribution->var0.total += viewportDistribution->var0.total;
    self->_telemetryDevice->viewportDistribution->var0.count += v43;
  }

  v47 = viewportDistribution->var1.var3;
  if (v47)
  {
    v48 = self->_telemetryDevice->viewportDistribution;
    v49 = viewportDistribution->var1.var0;
    if (v48->var1.var3)
    {
      if (v49 < v48->var1.var0)
      {
        v48->var1.var0 = v49;
        v48 = self->_telemetryDevice->viewportDistribution;
      }

      v50 = viewportDistribution->var1.var1;
      if (v50 <= v48->var1.var1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v48->var1.var0 = v49;
      v50 = viewportDistribution->var1.var1;
      v48 = self->_telemetryDevice->viewportDistribution;
    }

    v48->var1.var1 = v50;
LABEL_94:
    self->_telemetryDevice->viewportDistribution->var1.var2 = viewportDistribution->var1.var2 + self->_telemetryDevice->viewportDistribution->var1.var2;
    self->_telemetryDevice->viewportDistribution->var1.var3 += v47;
  }

  v51 = viewportDistribution->var2.var3;
  if (!v51)
  {
    goto LABEL_104;
  }

  v52 = self->_telemetryDevice->viewportDistribution;
  v53 = viewportDistribution->var2.var0;
  if (v52->var2.var3)
  {
    if (v53 < v52->var2.var0)
    {
      v52->var2.var0 = v53;
      v52 = self->_telemetryDevice->viewportDistribution;
    }

    v54 = viewportDistribution->var2.var1;
    if (v54 <= v52->var2.var1)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v52->var2.var0 = v53;
    v54 = viewportDistribution->var2.var1;
    v52 = self->_telemetryDevice->viewportDistribution;
  }

  v52->var2.var1 = v54;
LABEL_103:
  self->_telemetryDevice->viewportDistribution->var2.var2 = viewportDistribution->var2.var2 + self->_telemetryDevice->viewportDistribution->var2.var2;
  self->_telemetryDevice->viewportDistribution->var2.var3 += v51;
LABEL_104:
  v55 = viewportDistribution->var3.var3;
  if (!v55)
  {
    goto LABEL_113;
  }

  v56 = self->_telemetryDevice->viewportDistribution;
  v57 = viewportDistribution->var3.var0;
  if (v56->var3.var3)
  {
    if (v57 < v56->var3.var0)
    {
      v56->var3.var0 = v57;
      v56 = self->_telemetryDevice->viewportDistribution;
    }

    v58 = viewportDistribution->var3.var1;
    if (v58 <= v56->var3.var1)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v56->var3.var0 = v57;
    v58 = viewportDistribution->var3.var1;
    v56 = self->_telemetryDevice->viewportDistribution;
  }

  v56->var3.var1 = v58;
LABEL_112:
  self->_telemetryDevice->viewportDistribution->var3.var2 = viewportDistribution->var3.var2 + self->_telemetryDevice->viewportDistribution->var3.var2;
  self->_telemetryDevice->viewportDistribution->var3.var3 += v55;
LABEL_113:
  v59 = viewportDistribution->var4.var3;
  if (!v59)
  {
    goto LABEL_122;
  }

  v60 = self->_telemetryDevice->viewportDistribution;
  v61 = viewportDistribution->var4.var0;
  if (v60->var4.var3)
  {
    if (v61 < v60->var4.var0)
    {
      v60->var4.var0 = v61;
      v60 = self->_telemetryDevice->viewportDistribution;
    }

    v62 = viewportDistribution->var4.var1;
    if (v62 <= v60->var4.var1)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v60->var4.var0 = v61;
    v62 = viewportDistribution->var4.var1;
    v60 = self->_telemetryDevice->viewportDistribution;
  }

  v60->var4.var1 = v62;
LABEL_121:
  self->_telemetryDevice->viewportDistribution->var4.var2 = viewportDistribution->var4.var2 + self->_telemetryDevice->viewportDistribution->var4.var2;
  self->_telemetryDevice->viewportDistribution->var4.var3 += v59;
LABEL_122:
  scissorRectDistribution = self->scissorRectDistribution;
  v64 = scissorRectDistribution->var0.count;
  if (v64)
  {
    v65 = self->_telemetryDevice->scissorRectDistribution;
    v66 = scissorRectDistribution->var0.min;
    if (v65->var0.count)
    {
      if (v66 < v65->var0.min)
      {
        v65->var0.min = v66;
        v65 = self->_telemetryDevice->scissorRectDistribution;
      }

      v67 = scissorRectDistribution->var0.max;
      if (v67 > v65->var0.max)
      {
        v65->var0.max = v67;
      }
    }

    else
    {
      v65->var0.min = v66;
      self->_telemetryDevice->scissorRectDistribution->var0.max = scissorRectDistribution->var0.max;
    }

    self->_telemetryDevice->scissorRectDistribution->var0.total += scissorRectDistribution->var0.total;
    self->_telemetryDevice->scissorRectDistribution->var0.count += v64;
  }

  v68 = scissorRectDistribution->var1.var3;
  if (v68)
  {
    v69 = self->_telemetryDevice->scissorRectDistribution;
    v70 = scissorRectDistribution->var1.var0;
    if (v69->var1.var3)
    {
      if (v70 < v69->var1.var0)
      {
        v69->var1.var0 = v70;
        v69 = self->_telemetryDevice->scissorRectDistribution;
      }

      v71 = scissorRectDistribution->var1.var1;
      if (v71 <= v69->var1.var1)
      {
        goto LABEL_138;
      }
    }

    else
    {
      v69->var1.var0 = v70;
      v71 = scissorRectDistribution->var1.var1;
      v69 = self->_telemetryDevice->scissorRectDistribution;
    }

    v69->var1.var1 = v71;
LABEL_138:
    self->_telemetryDevice->scissorRectDistribution->var1.var2 = scissorRectDistribution->var1.var2 + self->_telemetryDevice->scissorRectDistribution->var1.var2;
    self->_telemetryDevice->scissorRectDistribution->var1.var3 += v68;
  }

  v72 = scissorRectDistribution->var2.var3;
  if (!v72)
  {
    goto LABEL_148;
  }

  v73 = self->_telemetryDevice->scissorRectDistribution;
  v74 = scissorRectDistribution->var2.var0;
  if (v73->var2.var3)
  {
    if (v74 < v73->var2.var0)
    {
      v73->var2.var0 = v74;
      v73 = self->_telemetryDevice->scissorRectDistribution;
    }

    v75 = scissorRectDistribution->var2.var1;
    if (v75 <= v73->var2.var1)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v73->var2.var0 = v74;
    v75 = scissorRectDistribution->var2.var1;
    v73 = self->_telemetryDevice->scissorRectDistribution;
  }

  v73->var2.var1 = v75;
LABEL_147:
  self->_telemetryDevice->scissorRectDistribution->var2.var2 = scissorRectDistribution->var2.var2 + self->_telemetryDevice->scissorRectDistribution->var2.var2;
  self->_telemetryDevice->scissorRectDistribution->var2.var3 += v72;
LABEL_148:
  next = self->renderTargetMap.__table_.__first_node_.__next_;
  if (!next)
  {
    goto LABEL_230;
  }

  do
  {
    v260 = (next + 3);
    telemetryDevice = selfCopy2->_telemetryDevice;
    *&v263.pbAlloc = next + 2;
    v78 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(&telemetryDevice->renderTargetMap.__table_.__bucket_list_.__ptr_, next + 2);
    v79 = 0;
    v259 = next;
    v262 = (next + 28515);
    v261 = (next + 25347);
    do
    {
      for (i = 0; i != 8; ++i)
      {
        for (j = 0; j != 3; ++j)
        {
          for (k = 0; k != 6; ++k)
          {
            v83 = 0;
            v84 = 1;
            do
            {
              v85 = v84;
              if (v79 != 9 && (v84 & 1) == 0)
              {
                break;
              }

              v86 = &v78[396 * i + 25347 + 132 * j + 22 * k];
              v87 = &v261[3168 * i + 1056 * j + 176 * k];
              if (v79 != 8)
              {
                if (v79 == 9)
                {
                  v88 = 352 * k + 176 * v83;
                  v87 = &v262[6336 * i + 2112 * j + v88];
                  v86 = &v78[792 * i + 28515 + 264 * j] + v88;
                }

                else
                {
                  v86 = &v78[3168 * v79 + 3 + 396 * i + 132 * j + 22 * k];
                  v87 = &v260[25344 * v79 + 3168 * i + 1056 * j + 176 * k];
                }
              }

              if (!*v87)
              {
                goto LABEL_224;
              }

              *v86 += *v87;
              v89 = *(v87 + 24);
              if (v89)
              {
                v90 = *(v86 + 24);
                v91 = *(v87 + 8);
                if (v90)
                {
                  if (v91 < *(v86 + 8))
                  {
                    *(v86 + 8) = v91;
                  }

                  v92 = *(v87 + 12);
                  if (v92 <= *(v86 + 12))
                  {
                    goto LABEL_169;
                  }
                }

                else
                {
                  *(v86 + 8) = v91;
                  v92 = *(v87 + 12);
                }

                *(v86 + 12) = v92;
LABEL_169:
                *(v86 + 16) += *(v87 + 16);
                *(v86 + 24) = v90 + v89;
              }

              v93 = *(v87 + 48);
              if (!v93)
              {
                goto LABEL_179;
              }

              v94 = *(v86 + 48);
              v95 = *(v87 + 32);
              if (v94)
              {
                if (v95 < *(v86 + 32))
                {
                  *(v86 + 32) = v95;
                }

                v96 = *(v87 + 36);
                if (v96 <= *(v86 + 36))
                {
                  goto LABEL_178;
                }
              }

              else
              {
                *(v86 + 32) = v95;
                v96 = *(v87 + 36);
              }

              *(v86 + 36) = v96;
LABEL_178:
              *(v86 + 40) += *(v87 + 40);
              *(v86 + 48) = v94 + v93;
LABEL_179:
              v97 = *(v87 + 72);
              if (!v97)
              {
                goto LABEL_188;
              }

              v98 = *(v86 + 72);
              v99 = *(v87 + 56);
              if (v98)
              {
                if (v99 < *(v86 + 56))
                {
                  *(v86 + 56) = v99;
                }

                v100 = *(v87 + 60);
                if (v100 <= *(v86 + 60))
                {
                  goto LABEL_187;
                }
              }

              else
              {
                *(v86 + 56) = v99;
                v100 = *(v87 + 60);
              }

              *(v86 + 60) = v100;
LABEL_187:
              *(v86 + 64) += *(v87 + 64);
              *(v86 + 72) = v98 + v97;
LABEL_188:
              v101 = *(v87 + 96);
              if (!v101)
              {
                goto LABEL_197;
              }

              v102 = *(v86 + 96);
              v103 = *(v87 + 80);
              if (v102)
              {
                if (v103 < *(v86 + 80))
                {
                  *(v86 + 80) = v103;
                }

                v104 = *(v87 + 84);
                if (v104 <= *(v86 + 84))
                {
                  goto LABEL_196;
                }
              }

              else
              {
                *(v86 + 80) = v103;
                v104 = *(v87 + 84);
              }

              *(v86 + 84) = v104;
LABEL_196:
              *(v86 + 88) += *(v87 + 88);
              *(v86 + 96) = v102 + v101;
LABEL_197:
              v105 = *(v87 + 120);
              if (!v105)
              {
                goto LABEL_206;
              }

              v106 = *(v86 + 120);
              v107 = *(v87 + 104);
              if (v106)
              {
                if (v107 < *(v86 + 104))
                {
                  *(v86 + 104) = v107;
                }

                v108 = *(v87 + 108);
                if (v108 <= *(v86 + 108))
                {
                  goto LABEL_205;
                }
              }

              else
              {
                *(v86 + 104) = v107;
                v108 = *(v87 + 108);
              }

              *(v86 + 108) = v108;
LABEL_205:
              *(v86 + 112) += *(v87 + 112);
              *(v86 + 120) = v106 + v105;
LABEL_206:
              v109 = *(v87 + 144);
              if (!v109)
              {
                goto LABEL_215;
              }

              v110 = *(v86 + 144);
              v111 = *(v87 + 128);
              if (v110)
              {
                if (v111 < *(v86 + 128))
                {
                  *(v86 + 128) = v111;
                }

                v112 = *(v87 + 132);
                if (v112 <= *(v86 + 132))
                {
                  goto LABEL_214;
                }
              }

              else
              {
                *(v86 + 128) = v111;
                v112 = *(v87 + 132);
              }

              *(v86 + 132) = v112;
LABEL_214:
              *(v86 + 136) += *(v87 + 136);
              *(v86 + 144) = v110 + v109;
LABEL_215:
              v113 = *(v87 + 168);
              if (v113)
              {
                v114 = *(v86 + 168);
                v115 = *(v87 + 152);
                if (v114)
                {
                  if (v115 < *(v86 + 152))
                  {
                    *(v86 + 152) = v115;
                  }

                  v116 = *(v87 + 156);
                  if (v116 <= *(v86 + 156))
                  {
                    goto LABEL_223;
                  }
                }

                else
                {
                  *(v86 + 152) = v115;
                  v116 = *(v87 + 156);
                }

                *(v86 + 156) = v116;
LABEL_223:
                *(v86 + 160) += *(v87 + 160);
                *(v86 + 168) = v114 + v113;
              }

LABEL_224:
              v84 = 0;
              v83 = 1;
            }

            while ((v85 & 1) != 0);
          }
        }
      }

      ++v79;
    }

    while (v79 != 10);
    selfCopy2 = self;
    next = *v259;
  }

  while (*v259);
LABEL_230:
  cbDraws = selfCopy2->cbDraws;
  if (!cbDraws)
  {
    goto LABEL_239;
  }

  commandBufferDrawCallDistribution = selfCopy2->_telemetryDevice->commandBufferDrawCallDistribution;
  if (!commandBufferDrawCallDistribution->count)
  {
    commandBufferDrawCallDistribution->max = cbDraws;
    commandBufferDrawCallDistribution = selfCopy2->_telemetryDevice->commandBufferDrawCallDistribution;
LABEL_237:
    commandBufferDrawCallDistribution->min = cbDraws;
    goto LABEL_238;
  }

  if (cbDraws > commandBufferDrawCallDistribution->max)
  {
    commandBufferDrawCallDistribution->max = cbDraws;
    commandBufferDrawCallDistribution = selfCopy2->_telemetryDevice->commandBufferDrawCallDistribution;
  }

  if (cbDraws < commandBufferDrawCallDistribution->min)
  {
    goto LABEL_237;
  }

LABEL_238:
  selfCopy2->_telemetryDevice->commandBufferDrawCallDistribution->total += cbDraws;
  ++selfCopy2->_telemetryDevice->commandBufferDrawCallDistribution->count;
LABEL_239:
  renderEncoderDrawCallDistribution = selfCopy2->renderEncoderDrawCallDistribution;
  v120 = renderEncoderDrawCallDistribution->count;
  if (v120)
  {
    v121 = selfCopy2->_telemetryDevice->renderEncoderDrawCallDistribution;
    v122 = renderEncoderDrawCallDistribution->min;
    if (v121->count)
    {
      if (v122 < v121->min)
      {
        v121->min = v122;
        v121 = selfCopy2->_telemetryDevice->renderEncoderDrawCallDistribution;
      }

      v123 = renderEncoderDrawCallDistribution->max;
      if (v123 > v121->max)
      {
        v121->max = v123;
      }
    }

    else
    {
      v121->min = v122;
      selfCopy2->_telemetryDevice->renderEncoderDrawCallDistribution->max = renderEncoderDrawCallDistribution->max;
    }

    selfCopy2->_telemetryDevice->renderEncoderDrawCallDistribution->total += renderEncoderDrawCallDistribution->total;
    selfCopy2->_telemetryDevice->renderEncoderDrawCallDistribution->count += v120;
  }

  cbDispatches = selfCopy2->cbDispatches;
  if (cbDispatches)
  {
    commandBufferDispatchDistribution = selfCopy2->_telemetryDevice->commandBufferDispatchDistribution;
    if (commandBufferDispatchDistribution->count)
    {
      if (cbDispatches > commandBufferDispatchDistribution->max)
      {
        commandBufferDispatchDistribution->max = cbDispatches;
        commandBufferDispatchDistribution = selfCopy2->_telemetryDevice->commandBufferDispatchDistribution;
      }

      if (cbDispatches >= commandBufferDispatchDistribution->min)
      {
LABEL_255:
        selfCopy2->_telemetryDevice->commandBufferDispatchDistribution->total += cbDispatches;
        ++selfCopy2->_telemetryDevice->commandBufferDispatchDistribution->count;
        goto LABEL_256;
      }
    }

    else
    {
      commandBufferDispatchDistribution->max = cbDispatches;
      commandBufferDispatchDistribution = selfCopy2->_telemetryDevice->commandBufferDispatchDistribution;
    }

    commandBufferDispatchDistribution->min = cbDispatches;
    goto LABEL_255;
  }

LABEL_256:
  computeEncoderDispatchDistribution = selfCopy2->computeEncoderDispatchDistribution;
  v127 = computeEncoderDispatchDistribution->count;
  if (v127)
  {
    v128 = selfCopy2->_telemetryDevice->computeEncoderDispatchDistribution;
    v129 = computeEncoderDispatchDistribution->min;
    if (v128->count)
    {
      if (v129 < v128->min)
      {
        v128->min = v129;
        v128 = selfCopy2->_telemetryDevice->computeEncoderDispatchDistribution;
      }

      v130 = computeEncoderDispatchDistribution->max;
      if (v130 > v128->max)
      {
        v128->max = v130;
      }
    }

    else
    {
      v128->min = v129;
      selfCopy2->_telemetryDevice->computeEncoderDispatchDistribution->max = computeEncoderDispatchDistribution->max;
    }

    selfCopy2->_telemetryDevice->computeEncoderDispatchDistribution->total += computeEncoderDispatchDistribution->total;
    selfCopy2->_telemetryDevice->computeEncoderDispatchDistribution->count += v127;
  }

  cbBlits = selfCopy2->cbBlits;
  if (cbBlits)
  {
    commandBufferBlitDistribution = selfCopy2->_telemetryDevice->commandBufferBlitDistribution;
    if (commandBufferBlitDistribution->count)
    {
      if (cbBlits > commandBufferBlitDistribution->max)
      {
        commandBufferBlitDistribution->max = cbBlits;
        commandBufferBlitDistribution = selfCopy2->_telemetryDevice->commandBufferBlitDistribution;
      }

      if (cbBlits >= commandBufferBlitDistribution->min)
      {
LABEL_272:
        selfCopy2->_telemetryDevice->commandBufferBlitDistribution->total += cbBlits;
        ++selfCopy2->_telemetryDevice->commandBufferBlitDistribution->count;
        goto LABEL_273;
      }
    }

    else
    {
      commandBufferBlitDistribution->max = cbBlits;
      commandBufferBlitDistribution = selfCopy2->_telemetryDevice->commandBufferBlitDistribution;
    }

    commandBufferBlitDistribution->min = cbBlits;
    goto LABEL_272;
  }

LABEL_273:
  blitEncoderBlitDistribution = selfCopy2->blitEncoderBlitDistribution;
  v134 = blitEncoderBlitDistribution->count;
  if (v134)
  {
    v135 = selfCopy2->_telemetryDevice->blitEncoderBlitDistribution;
    v136 = blitEncoderBlitDistribution->min;
    if (v135->count)
    {
      if (v136 < v135->min)
      {
        v135->min = v136;
        v135 = selfCopy2->_telemetryDevice->blitEncoderBlitDistribution;
      }

      v137 = blitEncoderBlitDistribution->max;
      if (v137 > v135->max)
      {
        v135->max = v137;
      }
    }

    else
    {
      v135->min = v136;
      selfCopy2->_telemetryDevice->blitEncoderBlitDistribution->max = blitEncoderBlitDistribution->max;
    }

    selfCopy2->_telemetryDevice->blitEncoderBlitDistribution->total += blitEncoderBlitDistribution->total;
    selfCopy2->_telemetryDevice->blitEncoderBlitDistribution->count += v134;
  }

  cbMemoryBarriers = selfCopy2->cbMemoryBarriers;
  if (cbMemoryBarriers)
  {
    commandBufferMemoryBarrierDistribution = selfCopy2->_telemetryDevice->commandBufferMemoryBarrierDistribution;
    if (commandBufferMemoryBarrierDistribution->count)
    {
      if (cbMemoryBarriers > commandBufferMemoryBarrierDistribution->max)
      {
        commandBufferMemoryBarrierDistribution->max = cbMemoryBarriers;
        commandBufferMemoryBarrierDistribution = selfCopy2->_telemetryDevice->commandBufferMemoryBarrierDistribution;
      }

      if (cbMemoryBarriers >= commandBufferMemoryBarrierDistribution->min)
      {
LABEL_289:
        selfCopy2->_telemetryDevice->commandBufferMemoryBarrierDistribution->total += cbMemoryBarriers;
        ++selfCopy2->_telemetryDevice->commandBufferMemoryBarrierDistribution->count;
        goto LABEL_290;
      }
    }

    else
    {
      commandBufferMemoryBarrierDistribution->max = cbMemoryBarriers;
      commandBufferMemoryBarrierDistribution = selfCopy2->_telemetryDevice->commandBufferMemoryBarrierDistribution;
    }

    commandBufferMemoryBarrierDistribution->min = cbMemoryBarriers;
    goto LABEL_289;
  }

LABEL_290:
  v140 = 0;
  v141 = 0;
  drawDistribution = selfCopy2->drawDistribution;
  while (2)
  {
    v143 = 0;
    v144 = drawDistribution;
    v145 = v140;
    while (2)
    {
      v146 = 0;
      while (2)
      {
        v147 = v144->var0[0][0][v146 / 0x38].var0;
        if (v147)
        {
          v148 = selfCopy2->_telemetryDevice->drawDistribution + v145;
          *&v148[v146] += v147;
          v149 = (v144 + v146);
          v150 = v144->var0[0][0][v146 / 0x38].var1.count;
          if (v150)
          {
            v151 = selfCopy2->_telemetryDevice->drawDistribution;
            v152 = v151 + v145 + v146;
            v153 = v149->var0[0][0][0].var1.min;
            if (*(v152 + 6))
            {
              if (v153 < *(v152 + 2))
              {
                *(v152 + 2) = v153;
                v151 = selfCopy2->_telemetryDevice->drawDistribution;
              }

              v154 = v144->var0[0][0][v146 / 0x38].var1.max;
              v155 = v151 + v145 + v146;
              if (v154 > *(v155 + 3))
              {
                *(v155 + 3) = v154;
              }
            }

            else
            {
              *(v152 + 2) = v153;
              *(&selfCopy2->_telemetryDevice->drawDistribution->var0[0][0][0].var1.max + v145 + v146) = v144->var0[0][0][v146 / 0x38].var1.max;
            }

            v156 = selfCopy2->_telemetryDevice->drawDistribution + v145 + v146;
            *(v156 + 2) += v144->var0[0][0][v146 / 0x38].var1.total;
            v157 = selfCopy2->_telemetryDevice->drawDistribution + v145 + v146;
            *(v157 + 6) += v150;
          }

          v158 = v149->var0[0][0][0].var2.count;
          if (v158)
          {
            v159 = selfCopy2->_telemetryDevice->drawDistribution;
            v160 = v159 + v145 + v146;
            v161 = v149->var0[0][0][0].var2.min;
            if (*(v160 + 12))
            {
              if (v161 < *(v160 + 8))
              {
                *(v160 + 8) = v161;
                v159 = selfCopy2->_telemetryDevice->drawDistribution;
              }

              v162 = v144->var0[0][0][v146 / 0x38].var2.max;
              v163 = v159 + v145 + v146;
              if (v162 <= *(v163 + 9))
              {
LABEL_310:
                v164 = selfCopy2->_telemetryDevice->drawDistribution + v145 + v146;
                *(v164 + 5) += v144->var0[0][0][v146 / 0x38].var2.total;
                v165 = selfCopy2->_telemetryDevice->drawDistribution + v145 + v146;
                *(v165 + 12) += v158;
                goto LABEL_311;
              }
            }

            else
            {
              *(v160 + 8) = v161;
              v162 = v144->var0[0][0][v146 / 0x38].var2.max;
              v163 = selfCopy2->_telemetryDevice->drawDistribution + v145 + v146;
            }

            *(v163 + 9) = v162;
            goto LABEL_310;
          }
        }

LABEL_311:
        v146 += 56;
        if (v146 != 168)
        {
          continue;
        }

        break;
      }

      ++v143;
      v145 += 168;
      v144 = (v144 + 168);
      if (v143 != 3)
      {
        continue;
      }

      break;
    }

    ++v141;
    v140 += 504;
    drawDistribution = (drawDistribution + 504);
    if (v141 != 5)
    {
      continue;
    }

    break;
  }

  dispatchDistribution = selfCopy2->dispatchDistribution;
  if (dispatchDistribution->var0)
  {
    selfCopy2->_telemetryDevice->dispatchDistribution->var0 += dispatchDistribution->var0;
    v167 = dispatchDistribution->var1.count;
    if (v167)
    {
      v168 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v169 = dispatchDistribution->var1.min;
      if (v168->var1.count)
      {
        if (v169 < v168->var1.min)
        {
          v168->var1.min = v169;
          v168 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v170 = dispatchDistribution->var1.max;
        if (v170 > v168->var1.max)
        {
          v168->var1.max = v170;
        }
      }

      else
      {
        v168->var1.min = v169;
        selfCopy2->_telemetryDevice->dispatchDistribution->var1.max = dispatchDistribution->var1.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var1.total += dispatchDistribution->var1.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var1.count += v167;
    }

    v171 = dispatchDistribution->var2.count;
    if (v171)
    {
      v172 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v173 = dispatchDistribution->var2.min;
      if (v172->var2.count)
      {
        if (v173 < v172->var2.min)
        {
          v172->var2.min = v173;
          v172 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v174 = dispatchDistribution->var2.max;
        if (v174 > v172->var2.max)
        {
          v172->var2.max = v174;
        }
      }

      else
      {
        v172->var2.min = v173;
        selfCopy2->_telemetryDevice->dispatchDistribution->var2.max = dispatchDistribution->var2.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var2.total += dispatchDistribution->var2.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var2.count += v171;
    }

    v175 = dispatchDistribution->var3.count;
    if (v175)
    {
      v176 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v177 = dispatchDistribution->var3.min;
      if (v176->var3.count)
      {
        if (v177 < v176->var3.min)
        {
          v176->var3.min = v177;
          v176 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v178 = dispatchDistribution->var3.max;
        if (v178 > v176->var3.max)
        {
          v176->var3.max = v178;
        }
      }

      else
      {
        v176->var3.min = v177;
        selfCopy2->_telemetryDevice->dispatchDistribution->var3.max = dispatchDistribution->var3.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var3.total += dispatchDistribution->var3.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var3.count += v175;
    }

    v179 = dispatchDistribution->var4.count;
    if (v179)
    {
      v180 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v181 = dispatchDistribution->var4.min;
      if (v180->var4.count)
      {
        if (v181 < v180->var4.min)
        {
          v180->var4.min = v181;
          v180 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v182 = dispatchDistribution->var4.max;
        if (v182 > v180->var4.max)
        {
          v180->var4.max = v182;
        }
      }

      else
      {
        v180->var4.min = v181;
        selfCopy2->_telemetryDevice->dispatchDistribution->var4.max = dispatchDistribution->var4.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var4.total += dispatchDistribution->var4.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var4.count += v179;
    }

    v183 = dispatchDistribution->var5.count;
    if (v183)
    {
      v184 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v185 = dispatchDistribution->var5.min;
      if (v184->var5.count)
      {
        if (v185 < v184->var5.min)
        {
          v184->var5.min = v185;
          v184 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v186 = dispatchDistribution->var5.max;
        if (v186 > v184->var5.max)
        {
          v184->var5.max = v186;
        }
      }

      else
      {
        v184->var5.min = v185;
        selfCopy2->_telemetryDevice->dispatchDistribution->var5.max = dispatchDistribution->var5.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var5.total += dispatchDistribution->var5.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var5.count += v183;
    }

    v187 = dispatchDistribution->var6.count;
    if (v187)
    {
      v188 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v189 = dispatchDistribution->var6.min;
      if (v188->var6.count)
      {
        if (v189 < v188->var6.min)
        {
          v188->var6.min = v189;
          v188 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v190 = dispatchDistribution->var6.max;
        if (v190 > v188->var6.max)
        {
          v188->var6.max = v190;
        }
      }

      else
      {
        v188->var6.min = v189;
        selfCopy2->_telemetryDevice->dispatchDistribution->var6.max = dispatchDistribution->var6.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var6.total += dispatchDistribution->var6.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var6.count += v187;
    }

    v191 = dispatchDistribution->var7.count;
    if (v191)
    {
      v192 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v193 = dispatchDistribution->var7.min;
      if (v192->var7.count)
      {
        if (v193 < v192->var7.min)
        {
          v192->var7.min = v193;
          v192 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v194 = dispatchDistribution->var7.max;
        if (v194 > v192->var7.max)
        {
          v192->var7.max = v194;
        }
      }

      else
      {
        v192->var7.min = v193;
        selfCopy2->_telemetryDevice->dispatchDistribution->var7.max = dispatchDistribution->var7.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var7.total += dispatchDistribution->var7.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var7.count += v191;
    }

    v195 = dispatchDistribution->var8.count;
    if (v195)
    {
      v196 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v197 = dispatchDistribution->var8.min;
      if (v196->var8.count)
      {
        if (v197 < v196->var8.min)
        {
          v196->var8.min = v197;
          v196 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v198 = dispatchDistribution->var8.max;
        if (v198 > v196->var8.max)
        {
          v196->var8.max = v198;
        }
      }

      else
      {
        v196->var8.min = v197;
        selfCopy2->_telemetryDevice->dispatchDistribution->var8.max = dispatchDistribution->var8.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var8.total += dispatchDistribution->var8.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var8.count += v195;
    }

    v199 = dispatchDistribution->var9.count;
    if (v199)
    {
      v200 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v201 = dispatchDistribution->var9.min;
      if (v200->var9.count)
      {
        if (v201 < v200->var9.min)
        {
          v200->var9.min = v201;
          v200 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v202 = dispatchDistribution->var9.max;
        if (v202 > v200->var9.max)
        {
          v200->var9.max = v202;
        }
      }

      else
      {
        v200->var9.min = v201;
        selfCopy2->_telemetryDevice->dispatchDistribution->var9.max = dispatchDistribution->var9.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var9.total += dispatchDistribution->var9.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var9.count += v199;
    }

    v203 = dispatchDistribution->var10.count;
    if (v203)
    {
      v204 = selfCopy2->_telemetryDevice->dispatchDistribution;
      v205 = dispatchDistribution->var10.min;
      if (v204->var10.count)
      {
        if (v205 < v204->var10.min)
        {
          v204->var10.min = v205;
          v204 = selfCopy2->_telemetryDevice->dispatchDistribution;
        }

        v206 = dispatchDistribution->var10.max;
        if (v206 > v204->var10.max)
        {
          v204->var10.max = v206;
        }
      }

      else
      {
        v204->var10.min = v205;
        selfCopy2->_telemetryDevice->dispatchDistribution->var10.max = dispatchDistribution->var10.max;
      }

      selfCopy2->_telemetryDevice->dispatchDistribution->var10.total += dispatchDistribution->var10.total;
      selfCopy2->_telemetryDevice->dispatchDistribution->var10.count += v203;
    }
  }

  for (m = selfCopy2->blitMap.__table_.__first_node_.__next_; m; m = *m)
  {
    v208 = selfCopy2->_telemetryDevice;
    *&v263.pbAlloc = m + 2;
    v209 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(&v208->blitMap.__table_.__bucket_list_.__ptr_, m + 2);
    v210 = 0;
    v211 = m;
    do
    {
      v212 = 0;
      v213 = v209;
      v214 = v211;
      do
      {
        v215 = 0x1FFFFFFFFFFFFFD9;
        do
        {
          v216 = v214[v215 + 42];
          if (v216)
          {
            LODWORD(v213[v215 + 42]) += v216;
            v217 = v214[v215 + 45];
            if (v217)
            {
              v218 = &v213[v215];
              v219 = v213[v215 + 45];
              v220 = v214[v215 + 43];
              if (v219)
              {
                if (v220 < v218[86])
                {
                  v218[86] = v220;
                }

                v221 = HIDWORD(v214[v215 + 43]);
                if (v221 > HIDWORD(v213[v215 + 43]))
                {
                  HIDWORD(v213[v215 + 43]) = v221;
                }
              }

              else
              {
                v218[86] = v220;
                v218[87] = HIDWORD(v214[v215 + 43]);
              }

              v213[v215 + 44] += v214[v215 + 44];
              v218[90] = v219 + v217;
            }

            v222 = &v214[v215];
            v223 = v214[v215 + 48];
            if (v223)
            {
              v224 = &v213[v215];
              v225 = v213[v215 + 48];
              v226 = *(v222 + 92);
              if (v225)
              {
                if (v226 < v224[92])
                {
                  v224[92] = v226;
                }

                v227 = HIDWORD(v214[v215 + 46]);
                if (v227 > HIDWORD(v213[v215 + 46]))
                {
                  HIDWORD(v213[v215 + 46]) = v227;
                }
              }

              else
              {
                v224[92] = v226;
                v224[93] = HIDWORD(v214[v215 + 46]);
              }

              v213[v215 + 47] += v214[v215 + 47];
              v224[96] = v225 + v223;
            }

            v228 = *(v222 + 102);
            if (v228)
            {
              v229 = &v213[v215];
              v230 = v213[v215 + 51];
              v231 = v214[v215 + 49];
              if (v230)
              {
                if (v231 < v229[98])
                {
                  v229[98] = v231;
                }

                v232 = HIDWORD(v214[v215 + 49]);
                if (v232 > HIDWORD(v213[v215 + 49]))
                {
                  HIDWORD(v213[v215 + 49]) = v232;
                }
              }

              else
              {
                v229[98] = v231;
                v229[99] = HIDWORD(v214[v215 + 49]);
              }

              v213[v215 + 50] += v214[v215 + 50];
              v229[102] = v230 + v228;
            }

            v233 = v214[v215 + 54];
            if (v233)
            {
              v234 = &v213[v215];
              v235 = v213[v215 + 54];
              v236 = v214[v215 + 52];
              if (v235)
              {
                if (v236 < v234[104])
                {
                  v234[104] = v236;
                }

                v237 = HIDWORD(v214[v215 + 52]);
                if (v237 > HIDWORD(v213[v215 + 52]))
                {
                  HIDWORD(v213[v215 + 52]) = v237;
                }
              }

              else
              {
                v234[104] = v236;
                v234[105] = HIDWORD(v214[v215 + 52]);
              }

              v213[v215 + 53] += v214[v215 + 53];
              v234[108] = v235 + v233;
            }
          }

          v215 += 13;
        }

        while (v215 * 8);
        ++v212;
        v214 += 39;
        v213 += 39;
      }

      while (v212 != 3);
      ++v210;
      v211 += 117;
      v209 += 117;
    }

    while (v210 != 6);
  }

  depthClipModeClampCount = selfCopy2->depthClipModeClampCount;
  if (depthClipModeClampCount)
  {
    depthClipModeClampDistribution = selfCopy2->_telemetryDevice->depthClipModeClampDistribution;
    if (depthClipModeClampDistribution->count)
    {
      if (depthClipModeClampCount > depthClipModeClampDistribution->max)
      {
        depthClipModeClampDistribution->max = depthClipModeClampCount;
        depthClipModeClampDistribution = selfCopy2->_telemetryDevice->depthClipModeClampDistribution;
      }

      if (depthClipModeClampCount >= depthClipModeClampDistribution->min)
      {
LABEL_444:
        selfCopy2->_telemetryDevice->depthClipModeClampDistribution->total += depthClipModeClampCount;
        ++selfCopy2->_telemetryDevice->depthClipModeClampDistribution->count;
        goto LABEL_445;
      }
    }

    else
    {
      depthClipModeClampDistribution->max = depthClipModeClampCount;
      depthClipModeClampDistribution = selfCopy2->_telemetryDevice->depthClipModeClampDistribution;
    }

    depthClipModeClampDistribution->min = depthClipModeClampCount;
    goto LABEL_444;
  }

LABEL_445:
  getKernelTelemetryState(&v263);
  pbAlloc = selfCopy2->_initKernelState.pbAlloc;
  v241 = v263.pbAlloc - pbAlloc;
  if (v263.pbAlloc != pbAlloc)
  {
    kernelDistribution = selfCopy2->_telemetryDevice->kernelDistribution;
    if (kernelDistribution->var0.var3)
    {
      if (v241 > kernelDistribution->var0.var1)
      {
        kernelDistribution->var0.var1 = v241;
        kernelDistribution = selfCopy2->_telemetryDevice->kernelDistribution;
      }

      if (v241 >= kernelDistribution->var0.var0)
      {
LABEL_453:
        selfCopy2->_telemetryDevice->kernelDistribution->var0.var2 += v241;
        ++selfCopy2->_telemetryDevice->kernelDistribution->var0.var3;
        goto LABEL_454;
      }
    }

    else
    {
      kernelDistribution->var0.var1 = v241;
      kernelDistribution = selfCopy2->_telemetryDevice->kernelDistribution;
    }

    kernelDistribution->var0.var0 = v241;
    goto LABEL_453;
  }

LABEL_454:
  v243 = v263.spmRenderCount - selfCopy2->_initKernelState.spmRenderCount;
  v244 = selfCopy2->_telemetryDevice->kernelDistribution;
  if (!v244->var1.var3)
  {
    v244->var1.var1 = v243;
    v245 = &selfCopy2->_telemetryDevice->kernelDistribution->var1;
LABEL_460:
    v245->var0 = v243;
    goto LABEL_461;
  }

  if (v243 > v244->var1.var1)
  {
    v244->var1.var1 = v243;
    v244 = selfCopy2->_telemetryDevice->kernelDistribution;
  }

  v246 = v244->var1.var0;
  v245 = &v244->var1;
  if (v243 < v246)
  {
    goto LABEL_460;
  }

LABEL_461:
  selfCopy2->_telemetryDevice->kernelDistribution->var1.var2 += v243;
  ++selfCopy2->_telemetryDevice->kernelDistribution->var1.var3;
  tiledSceneBytes = selfCopy2->_initKernelState.tiledSceneBytes;
  v248 = v263.tiledSceneBytes - tiledSceneBytes;
  if (v263.tiledSceneBytes == tiledSceneBytes)
  {
    goto LABEL_470;
  }

  v249 = selfCopy2->_telemetryDevice->kernelDistribution;
  if (!v249->var2.var3)
  {
    v249->var2.var1 = v248;
    v250 = &selfCopy2->_telemetryDevice->kernelDistribution->var2;
LABEL_468:
    v250->var0 = v248;
    goto LABEL_469;
  }

  if (v248 > v249->var2.var1)
  {
    v249->var2.var1 = v248;
    v249 = selfCopy2->_telemetryDevice->kernelDistribution;
  }

  v251 = v249->var2.var0;
  v250 = &v249->var2;
  if (v248 < v251)
  {
    goto LABEL_468;
  }

LABEL_469:
  selfCopy2->_telemetryDevice->kernelDistribution->var2.var2 += v248;
  ++selfCopy2->_telemetryDevice->kernelDistribution->var2.var3;
LABEL_470:
  v252 = v263.renderCount - selfCopy2->_initKernelState.renderCount;
  if (v252)
  {
    v253 = selfCopy2->_telemetryDevice->kernelDistribution;
    if (v253->var3.var3)
    {
      if (v252 > v253->var3.var1)
      {
        v253->var3.var1 = v252;
        v253 = selfCopy2->_telemetryDevice->kernelDistribution;
      }

      v255 = v253->var3.var0;
      v254 = &v253->var3;
      if (v252 >= v255)
      {
LABEL_478:
        selfCopy2->_telemetryDevice->kernelDistribution->var3.var2 += v252;
        ++selfCopy2->_telemetryDevice->kernelDistribution->var3.var3;
        goto LABEL_479;
      }
    }

    else
    {
      v253->var3.var1 = v252;
      v254 = &selfCopy2->_telemetryDevice->kernelDistribution->var3;
    }

    v254->var0 = v252;
    goto LABEL_478;
  }

LABEL_479:
  v256 = 0;
  anisoClippedCounts = selfCopy2->anisoClippedCounts;
  do
  {
    selfCopy2->_telemetryDevice->anisoClippedCounts->var0[v256] += anisoClippedCounts->var0[v256];
    ++v256;
  }

  while (v256 != 4);
}

- (void)postCompletionHandlers
{
  if (__cxa_guard_acquire(&qword_27DA61190))
  {
    _MergedGlobals_0 = getenv("MTL_TELEMETRY_EMIT_ON_COMMIT");

    __cxa_guard_release(&qword_27DA61190);
  }
}

uint64_t __51__MTLTelemetryCommandBuffer_postCompletionHandlers__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) mergeDistributions];
  if (_MergedGlobals_0 && *_MergedGlobals_0 == 49)
  {
    v3 = *(*(a1 + 32) + 352);

    return [v3 emitTelemetry];
  }

  return result;
}

- (id)blitCommandEncoder
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = [[MTLTelemetryBlitCommandEncoder alloc] initWithBlitCommandEncoder:result commandBuffer:self descriptor:0];
    ++self->encoderCount->var1;

    return v4;
  }

  return result;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = [[MTLTelemetryRenderCommandEncoder alloc] initWithRenderCommandEncoder:result parent:self descriptor:descriptor];
    ++self->encoderCount->var0;

    return v6;
  }

  return result;
}

- (id)computeCommandEncoder
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = [[MTLTelemetryComputeCommandEncoder alloc] initWithComputeCommandEncoder:result commandBuffer:self descriptor:0];
    ++self->encoderCount->var2;

    return v4;
  }

  return result;
}

- (id)computeCommandEncoderWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = [[MTLTelemetryComputeCommandEncoder alloc] initWithComputeCommandEncoder:result commandBuffer:self descriptor:descriptor];
    ++self->encoderCount->var2;

    return v6;
  }

  return result;
}

- (id)blitCommandEncoderWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = [[MTLTelemetryBlitCommandEncoder alloc] initWithBlitCommandEncoder:result commandBuffer:self descriptor:descriptor];
    ++self->encoderCount->var1;

    return v6;
  }

  return result;
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)descriptor
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = [[MTLTelemetryParallelRenderCommandEncoder alloc] initWithBaseRenderPass:result commandBuffer:self descriptor:descriptor];
    ++self->encoderCount->var3;

    return v6;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 72) = 1065353216;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 82) = 1065353216;
  return self;
}

@end